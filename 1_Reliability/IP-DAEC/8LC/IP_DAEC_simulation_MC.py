import numpy as np
import random

np.set_printoptions(linewidth=np.inf)

# IP-DAEC (64-bit data + 8-bit redundancy)
#  1) IP with 22-bit (MSB of 22 data cells) -> protect 22-bit data
#  2) (49, 42) SEC-DAEC -> protect 42-bit data

def make_full_codeword(IP, IP_word, codeword) :
    full_codeword = np.zeros(0, dtype = int)  # 72-bit encoded data
    ip_idx = 0
    cw_idx = 0
    for i in range(72) :
        if i < 64 :
            if i % 3 == 0 :
                full_codeword = np.append(full_codeword, IP_word[ip_idx])
                ip_idx += 1
            else :
                full_codeword = np.append(full_codeword, codeword[cw_idx])
                cw_idx += 1
        elif i < 71 :
            full_codeword = np.append(full_codeword, codeword[cw_idx])
            cw_idx += 1
        else :
            full_codeword = np.append(full_codeword, IP[0])

    assert len(full_codeword) == 72, 'length of full_codeword is not 72'

    return full_codeword

def split_full_codeword(full_codeword) :
    IP = np.zeros(0, dtype = int)        # 1-bit
    IP_word = np.zeros(0, dtype = int)   # 22-bit
    codeword = np.zeros(0, dtype = int)  # 49-bit

    for i in range(len(full_codeword)) :
        if i < 64 :  # data + IP_word
            if i % 3 == 0 :
                IP_word = np.append(IP_word, full_codeword[i])
            else :
                codeword = np.append(codeword, full_codeword[i])
        elif i < 71 :  # parity
            codeword = np.append(codeword, full_codeword[i])
        else :  # IP
            IP = np.append(IP, full_codeword[i])

    assert len(IP) == 1 and len(IP_word) == 22 and len(codeword) == 49, 'split error'
    
    return IP, IP_word, codeword

def make_syndrome(full_codeword, H_matrix) :
    # Split full_codeword into IP, IP_word and codeword
    IP, IP_word, codeword = split_full_codeword(full_codeword)

    # Calculate IP_syndrome using XOR
    IP_syndrome = IP[0]
    for i in range(len(IP_word)) :
        IP_syndrome = IP_syndrome ^ IP_word[i]

    # Calculate syndrome using H-matrix
    codeword_transpose = codeword.transpose()
    syndrome = H_matrix.dot(codeword_transpose) % 2

    return IP, IP_word, codeword, IP_syndrome, syndrome

def correction_IP_DAEC(IP, IP_word, codeword, IP_syndrome, syndrome, H_matrix, Sum_matrix) :
    error_cell_idx = -1  # >= 0 if error is corrected by SEC-DAEC
    corrected_codeword = codeword
    corrected_IP_word = IP_word
    corrected_IP = IP
    H_matrix_len = len(H_matrix[0])
    Sum_matrix_len = len(Sum_matrix[0])
    detectable = False   # true if nonzero syndrome
    correctable = False  # true if the syndrome exists in the H_matrix

    # Try error correction if detectable (nonzero syndrome)
    if not np.all(syndrome == 0) :
        detectable = True
        # 1) Try SEC-DAEC
        # a. SEC using H-matrix
        for error_idx in range(H_matrix_len) :
            if np.array_equal(H_matrix[:, error_idx], syndrome) :
                corrected_codeword[error_idx] ^= 1  # correct error
                if error_idx >= 44 and error_idx <= 46 :
                    error_cell_idx = 22
                elif error_idx >= 47 :
                    error_cell_idx = 23
                else :
                    error_cell_idx = error_idx // 2
                correctable = True
                break
        # b. DAEC' using Sum-matrix
        else :
            for error_idx in range(Sum_matrix_len) :
                if np.array_equal(Sum_matrix[:, error_idx], syndrome) :
                    # known syndrome
                    if error_idx < 22 :  # error in data cell
                        error_cell_idx = error_idx
                        corrected_codeword[error_cell_idx * 2] ^= 1
                        corrected_codeword[error_cell_idx * 2 + 1] ^= 1
                        correctable = True
                        break
                    elif error_idx == 22 :
                        error_cell_idx = 22
                        corrected_codeword[44] ^= 1
                        corrected_codeword[45] ^= 1
                        correctable = True
                        break
                    elif error_idx == 23 :
                        error_cell_idx = 22
                        corrected_codeword[45] ^= 1
                        corrected_codeword[46] ^= 1
                        correctable = True
                        break
                    elif error_idx == 24 :
                        error_cell_idx = 22
                        corrected_codeword[44] ^= 1
                        corrected_codeword[46] ^= 1
                        correctable = True
                        break
                    elif error_idx == 25 :
                        error_cell_idx = 22
                        corrected_codeword[44] ^= 1
                        corrected_codeword[45] ^= 1
                        corrected_codeword[46] ^= 1
                        correctable = True
                        break
                    elif error_idx == 26 :
                        error_cell_idx = 23
                        corrected_codeword[47] ^= 1
                        corrected_codeword[48] ^= 1
                        correctable = True
                        break
            else :
                # unknown syndrome
                correctable = False
        
        # 2) Try MSB correction
        if correctable and IP_syndrome != 0 :
            if error_cell_idx == 23 :  # error on IP
                corrected_IP[0] ^= 1
            elif error_cell_idx <= 21:  # error on IP_word
                corrected_IP_word[error_cell_idx] ^= 1
    else :
        if IP_syndrome != 0 :
            detectable = True

    return corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable

def verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt) :
    # Verify if the error correction has successfully finished
    if not detectable :
        SDC_cnt += 1          # error but zero syndrome
    else :
        if not correctable :
            DUE_cnt += 1      # detected but not correctable
        else :
            if not np.all(corrected_full_codeword == 0) :
                SDC_cnt += 1  # detected but miscorrected
            else :
                CE_cnt += 1   # detected and well-corrected

    return CE_cnt, DUE_cnt, SDC_cnt

def main() :
    MC_SIM_CNT = 1000000

    H_matrix_T  = np.loadtxt("IP_DAEC_H_matrix_T.txt", dtype = "int")  # 49 * 7
    H_matrix  = H_matrix_T.transpose()
    Sum_matrix_T = np.loadtxt("IP_DAEC_Sum_matrix_T.txt", dtype = "int")  # 27 * 7
    Sum_matrix = Sum_matrix_T.transpose()

    codeword_len = len(H_matrix[0])

    # DE + TAE
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :  # make 2-bit error in error_cell_idx1
            error_pos2 = random.randrange(error_cell_idx1 * 3, error_cell_idx1 * 3 + 3)
            if error_pos2 != error_pos1 :
                break
        while (True) :
            error_cell_idx2 = random.randrange(full_codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :
                break

        error_pos3 = error_cell_idx2 * 3
        error_pos4 = error_cell_idx2 * 3 + 1
        error_pos5 = error_cell_idx2 * 3 + 2

        full_codeword[error_pos1] ^= 1  # inject 5-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword[error_pos4] ^= 1
        full_codeword[error_pos5] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-5 : 2-bit error in a cell + 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    # TAE + TAE
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_cell_idx1 = random.randrange(full_codeword_len // 3)
        while (True) :
            error_cell_idx2 = random.randrange(full_codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :
                break

        error_pos1 = error_cell_idx1 * 3
        error_pos2 = error_cell_idx1 * 3 + 1
        error_pos3 = error_cell_idx1 * 3 + 2
        error_pos4 = error_cell_idx2 * 3
        error_pos5 = error_cell_idx2 * 3 + 1
        error_pos6 = error_cell_idx2 * 3 + 2

        full_codeword[error_pos1] ^= 1  # inject 6-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword[error_pos4] ^= 1
        full_codeword[error_pos5] ^= 1
        full_codeword[error_pos6] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-6 : 3-bit error in a cell + 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")
    return

    # This is IP-DAEC
    print("-----------------------------------------------------------")
    print(" IP-DAEC with 64-bit data, 8-bit parity (include IP)")
    print("-----------------------------------------------------------")

    # Now evaluation starts. Evaluated error scenarios are below.
    #
    #   1. 1-cell error
    #      1) 1-bit error
    #      2) 2-bit error
    #      3) 3-bit error
    #
    #   2. 2-cell error
    #      1) 1-bit error + 1-bit error
    #      2) 1-bit error + 2-bit error
    #      3) 1-bit error + 3-bit error
    #      4) 2-bit error + 2-bit error

    # 1. 1-cell error
    print(" 1-cell error scenarios")
    print("-----------------------------------------------------------")

    #
    # 1-1) Error case : 1-cell error -> 1-bit error
    #                                   [error_pos1]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        full_codeword[error_pos1] ^= 1  # inject 1-bit error
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 1-1 : 1-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 1-2) Error case : 1-cell error -> 2-bit error
    #                                   [error_pos1, error_pos2]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(error_cell_idx * 3, error_cell_idx * 3 + 3)
            if error_pos1 == error_pos2 :  # need to rechoose error_pos2
                continue
            else :
                break

        full_codeword[error_pos1] ^= 1  # inject 2-bit error
        full_codeword[error_pos2] ^= 1  
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 1-2 : 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 1-3) Error case : 1-cell error -> 3-bit error
    #                                   [error_pos1, error_pos2, error_pos3]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_cell_idx = random.randrange(full_codeword_len // 3)
        error_pos1 = error_cell_idx * 3
        error_pos2 = error_cell_idx * 3 + 1
        error_pos3 = error_cell_idx * 3 + 2

        full_codeword[error_pos1] ^= 1  # inject 3-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 1-3 : 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    # 2. 2-cell error
    # Detection is important !!
    print(" 2-cell error scenarios")
    print("-----------------------------------------------------------")

    #
    # 2-1) Error case : 2-cell error -> 1-bit error + 1-bit error
    #                                   [error_pos1] + [error_pos2]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(full_codeword_len)
            error_cell_idx2 = error_pos2 // 3
            if error_cell_idx1 != error_cell_idx2 :
                break

        full_codeword[error_pos1] ^= 1  # inject 2-bit error
        full_codeword[error_pos2] ^= 1  
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-1 : 1-bit error in a cell + 1-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-2) Error case : 2-cell error -> 1-bit error + 2-bit error
    #                                   [error_pos1] + [error_pos2, error_pos3]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(full_codeword_len)
            error_cell_idx2 = error_pos2 // 3
            if error_cell_idx1 == error_cell_idx2 :  # need to rechoose error_cell_idx2
                continue
            else :
                break
        while (True) :  # make 2-bit error in error_cell_idx2
            error_pos3 = random.randrange(error_cell_idx2 * 3, error_cell_idx2 * 3 + 3)
            if error_pos3 == error_pos2 :  # need to rechoose error_pos3
                continue
            else :
                break

        full_codeword[error_pos1] ^= 1  # inject 3-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-2 : 1-bit error in a cell + 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-3) Error case : 2-cell error -> 1-bit error + 3-bit error
    #                                   [error_pos1] + [error_pos2, error_pos3, error_pos4]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_cell_idx2 = random.randrange(full_codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :  # need to rechoose error_cell_idx2
                break

        # make 3-bit error in error_cell_idx2
        error_pos2 = error_cell_idx2 * 3
        error_pos3 = error_cell_idx2 * 3 + 1
        error_pos4 = error_cell_idx2 * 3 + 2

        full_codeword[error_pos1] ^= 1  # inject 4-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword[error_pos4] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-3 : 1-bit error in a cell + 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-4) Error case : 2-cell error -> 2-bit error + 2-bit error
    #                                   [error_pos1, error_pos2] + [error_pos3, error_pos4]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        IP = np.zeros(1, dtype = int)                   # 1-bit IP
        IP_word = np.zeros(22, dtype = int)             # 22-bit word for IP
        codeword = np.zeros(codeword_len, dtype = int)  # 49-bit SEC-DAEC codeword

        # Make full codeword = IP + IP_word + codeword
        full_codeword = make_full_codeword(IP, IP_word, codeword)
        full_codeword_len = len(full_codeword)

        # Generate error
        error_pos1 = random.randrange(full_codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos3 = random.randrange(full_codeword_len)
            error_cell_idx2 = error_pos3 // 3
            if error_cell_idx1 != error_cell_idx2 :
                break
        while (True) :  # make 2-bit error in error_cell_idx1
            error_pos2 = random.randrange(error_cell_idx1 * 3, error_cell_idx1 * 3 + 3)
            if error_pos2 != error_pos1 :
                break
        while (True) :  # make 2-bit error in error_cell_idx2
            error_pos4 = random.randrange(error_cell_idx2 * 3, error_cell_idx2 * 3 + 3)
            if error_pos4 != error_pos3 :
                break

        full_codeword[error_pos1] ^= 1  # inject 4-bit error
        full_codeword[error_pos2] ^= 1
        full_codeword[error_pos3] ^= 1
        full_codeword[error_pos4] ^= 1
        full_codeword_ = full_codeword

        # Decoding
        IP_, IP_word_, codeword_, IP_syndrome, syndrome = make_syndrome(full_codeword_, H_matrix)
        corrected_IP, corrected_IP_word, corrected_codeword, detectable, correctable = correction_IP_DAEC(IP_, IP_word_, codeword_, IP_syndrome, syndrome, H_matrix, Sum_matrix)
        corrected_full_codeword = make_full_codeword(corrected_IP, corrected_IP_word, corrected_codeword)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_full_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-4 : 2-bit error in a cell + 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

if __name__ == "__main__":
    main()
