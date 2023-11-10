import numpy as np
import random

np.set_printoptions(linewidth=np.inf)

# SEC-DAEC-TAEC

# If you want to make another error case, change
#  1) range of 'error_pos' in the for statement
#  2) method of making error using 'error_pos'
#  3) # of total cases in the print statement

def make_syndrome(codeword, H_matrix) :
    # Calculate syndrome using H-matrix
    codeword_transpose = codeword.transpose()
    syndrome = H_matrix.dot(codeword_transpose) % 2
    return syndrome

def correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix) :
    corrected_codeword = codeword
    codeword_len = len(codeword)
    detectable = False   # true if nonzero syndrome
    correctable = False  # true if the syndrome exists in the H_matrix

    # Try error correction if nonzero syndrome (There are 2 types of correction)
    if not np.all(syndrome == 0) :
        detectable = True
        # Single error correction using H-matrix
        for error_idx in range(codeword_len):
            if np.array_equal(H_matrix[:, error_idx], syndrome) :
                corrected_codeword[error_idx] ^= 1  # correct error
                correctable = True
                break
        else :
            # Double adjacent error correction using DAE-matrix
            for error_idx in range(codeword_len - 1) :
                if np.array_equal(DAE_matrix[:, error_idx], syndrome) :
                    corrected_codeword[error_idx] ^= 1
                    corrected_codeword[error_idx + 1] ^= 1
                    correctable = True
                    break
            # Triple adjacent error correction using TAE-matrix
            else :
                for error_idx in range(codeword_len - 2) :
                    if np.array_equal(TAE_matrix[:, error_idx], syndrome) :
                        corrected_codeword[error_idx] ^= 1  # correct error
                        corrected_codeword[error_idx + 1] ^= 1
                        corrected_codeword[error_idx + 2] ^= 1
                        correctable = True
                        break

    return corrected_codeword, detectable, correctable

def verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt) :
    # Verify if the error correction has successfully finished
    if not detectable :
        SDC_cnt += 1          # error but zero syndrome
    else :
        if not correctable :
            DUE_cnt += 1      # detected but not correctable
        else :
            if not np.all(corrected_codeword == 0) :
                SDC_cnt += 1  # detected but miscorrected
            else :
                CE_cnt += 1   # detected and well-corrected

    return CE_cnt, DUE_cnt, SDC_cnt

def main() :
    MC_SIM_CNT = 1000000

    H_matrix = np.loadtxt("SEC_DAEC_TAEC_H_matrix.txt", dtype = "int")
    DAE_matrix_T = np.loadtxt("SEC_DAEC_TAEC_DAE_matrix_T.txt", dtype = "int")
    TAE_matrix_T = np.loadtxt("SEC_DAEC_TAEC_TAE_matrix_T.txt", dtype = "int")
    DAE_matrix = DAE_matrix_T.transpose()
    TAE_matrix = TAE_matrix_T.transpose()

    redundancy_len = len(H_matrix)
    codeword_len = len(H_matrix[0])
    data_len = codeword_len - redundancy_len

    # DE + TAE
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(error_cell_idx1 * 3, error_cell_idx1 * 3 + 3)
            if error_pos2 != error_pos1 :
                break
        while (True) :
            error_cell_idx2 = random.randrange(codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :
                break

        error_pos3 = error_cell_idx2 * 3
        error_pos4 = error_cell_idx2 * 3 + 1
        error_pos5 = error_cell_idx2 * 3 + 2

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1  # inject 5-bit error
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1
        codeword[error_pos4] ^= 1
        codeword[error_pos5] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, nonzero, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, nonzero, correctable, CE_cnt, DUE_cnt, SDC_cnt)

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
        error_cell_idx1 = random.randrange(codeword_len // 3)
        while (True) :
            error_cell_idx2 = random.randrange(codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :
                break

        error_pos1 = error_cell_idx1 * 3
        error_pos2 = error_cell_idx1 * 3 + 1
        error_pos3 = error_cell_idx1 * 3 + 2
        error_pos4 = error_cell_idx2 * 3
        error_pos5 = error_cell_idx2 * 3 + 1
        error_pos6 = error_cell_idx2 * 3 + 2

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1  # inject 6-bit error
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1
        codeword[error_pos4] ^= 1
        codeword[error_pos5] ^= 1
        codeword[error_pos6] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, nonzero, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, nonzero, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-6 : 3-bit error in a cell + 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")
    return

    # This is SEC-DAEC-TAEC
    print("-----------------------------------------------------------")
    print(" SEC-DAEC-TAEC with 64-bit data, 8-bit parity")
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
    #
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 1-bit error

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 1-1 : 1-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 1-2) Error case : 1-cell error -> 2-bit error
    #
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(error_cell_idx * 3, error_cell_idx * 3 + 3)
            if error_pos1 == error_pos2 :  # need to rechoose error_pos2
                continue
            else :
                break

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 2-bit error (in a cell)
        codeword[error_pos2] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 1-2 : 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 1-3) Error case : 1-cell error -> 3-bit error
    #
    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_cell_idx = random.randrange(codeword_len // 3)
        error_pos1 = error_cell_idx * 3
        error_pos2 = error_cell_idx * 3 + 1
        error_pos3 = error_cell_idx * 3 + 2

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 3-bit error (in a cell)
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

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
    #                                   [error_pos1] [error_pos2]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(codeword_len)
            error_cell_idx2 = error_pos2 // 3
            if error_cell_idx1 != error_cell_idx2 :
                break

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 2-bit error
        codeword[error_pos2] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-1 : 1-bit error in a cell + 1-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-2) Error case : 2-cell error -> 1-bit error + 2-bit error
    #                                   [error_pos1] [error_pos2, error_pos3]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_pos2 = random.randrange(codeword_len)
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

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 3-bit error
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-2 : 1-bit error in a cell + 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-3) Error case : 2-cell error -> 1-bit error + 3-bit error
    #                                   [error_pos1] [error_pos2, error_pos3, error_pos4]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx1 = error_pos1 // 3
        while (True) :
            error_cell_idx2 = random.randrange(codeword_len // 3)
            if error_cell_idx1 != error_cell_idx2 :  # need to rechoose error_cell_idx2
                break

        # make 3-bit error in error_cell_idx2
        error_pos2 = error_cell_idx2 * 3
        error_pos3 = error_cell_idx2 * 3 + 1
        error_pos4 = error_cell_idx2 * 3 + 2

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 4-bit error
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1
        codeword[error_pos4] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-3 : 1-bit error in a cell + 3-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

    #
    # 2-4) Error case : 2-cell error -> 2-bit error + 2-bit error
    #                                   [error_pos1, error_pos2] [error_pos3, error_pos4]

    Ncase = 0
    CE_cnt = 0
    DUE_cnt = 0
    SDC_cnt = 0

    for Nrun in range (0, MC_SIM_CNT) :
        error_pos1 = random.randrange(codeword_len)
        error_cell_idx1 = error_pos1 // 3

        while (True) :
            error_pos3 = random.randrange(codeword_len)
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

        # Generate error
        codeword = np.zeros(codeword_len, dtype = int)  # original codeword (no error)
        codeword[error_pos1] ^= 1                       # inject 4-bit error
        codeword[error_pos2] ^= 1
        codeword[error_pos3] ^= 1
        codeword[error_pos4] ^= 1

        # Decoding
        syndrome = make_syndrome(codeword, H_matrix)
        corrected_codeword, detectable, correctable = correction_SEC_DAEC_TAEC(codeword, syndrome, H_matrix, DAE_matrix, TAE_matrix)
        CE_cnt, DUE_cnt, SDC_cnt = verify(corrected_codeword, detectable, correctable, CE_cnt, DUE_cnt, SDC_cnt)

        Ncase = Ncase + 1

    print("-----------------------------------------------------------")
    print("   Case 2-4 : 2-bit error in a cell + 2-bit error in a cell")
    print("     - CE  : {0} / {1} ({2}%)".format(CE_cnt, Ncase, CE_cnt * 100 / Ncase))
    print("     - DUE : {0} / {1} ({2}%)".format(DUE_cnt, Ncase, DUE_cnt * 100 / Ncase))
    print("     - SDC : {0} / {1} ({2}%)".format(SDC_cnt, Ncase, SDC_cnt * 100 / Ncase))
    print("-----------------------------------------------------------")

if __name__ == "__main__":
    main()
