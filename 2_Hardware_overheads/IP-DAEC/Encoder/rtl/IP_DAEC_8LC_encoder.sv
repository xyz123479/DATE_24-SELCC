module IP_DAEC_8LC_encoder(input [63:0] message, output [21:0] IP_word, output IP, output [48:0] codeword);

    assign IP = message[63] & message[60] & message[57] & message[54] & message[51] & message[48] & message[45] &
                message[42] & message[39] & message[36] & message[33] & message[30] & message[27] & message[24] &
                message[21] & message[18] & message[15] & message[12] & message[9] & message[6] & message[3] & message[0];
    
    assign IP_word[21] = message[63];
    assign IP_word[20] = message[60];
    assign IP_word[19] = message[57];
    assign IP_word[18] = message[54];
    assign IP_word[17] = message[51];
    assign IP_word[16] = message[48];
    assign IP_word[15] = message[45];
    assign IP_word[14] = message[42];
    assign IP_word[13] = message[39];
    assign IP_word[12] = message[36];
    assign IP_word[11] = message[33];
    assign IP_word[10] = message[30];
    assign IP_word[9] = message[27];
    assign IP_word[8] = message[24];
    assign IP_word[7] = message[21];
    assign IP_word[6] = message[18];
    assign IP_word[5] = message[15];
    assign IP_word[4] = message[12];
    assign IP_word[3] = message[9];
    assign IP_word[2] = message[6];
    assign IP_word[1] = message[3];
    assign IP_word[0] = message[0];

    assign codeword[48:47] = message[62:61];
    assign codeword[46:45] = message[59:58];
    assign codeword[44:43] = message[56:55];
    assign codeword[42:41] = message[53:52];
    assign codeword[40:39] = message[50:49];
    assign codeword[38:37] = message[47:46];
    assign codeword[36:35] = message[44:43];
    assign codeword[34:33] = message[41:40];
    assign codeword[32:31] = message[38:37];
    assign codeword[30:29] = message[35:34];
    assign codeword[28:27] = message[32:31];
    assign codeword[26:25] = message[29:28];
    assign codeword[24:23] = message[26:25];
    assign codeword[22:21] = message[23:22];
    assign codeword[20:19] = message[20:19];
    assign codeword[18:17] = message[17:16];
    assign codeword[16:15] = message[14:13];
    assign codeword[14:13] = message[11:10];
    assign codeword[12:11] = message[8:7];
    assign codeword[10:9] = message[5:4];
    assign codeword[8:7] = message[2:1];

    // parity
    assign codeword[6] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b100111000110100101101000100010111001111101);
    assign codeword[5] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b010100001101110111011100010011100101100011);
    assign codeword[4] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b001101101010011110001110001011001001101100);
    assign codeword[3] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b100110010111001111001111100101100100011110);
    assign codeword[2] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b110011100001100111100111010010110010000111);
    assign codeword[1] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b011110111110010110011011001011100000110110);
    assign codeword[0] = ^({message[62:61], message[59:58], message[56:55], message[53:52], message[50:49], message[47:46], message[44:43], message[41:40], message[38:37], message[35:34], message[32:31], message[29:28], message[26:25], message[23:22], message[20:19], message[17:16], message[14:13], message[11:10], message[8:7], message[5:4], message[2:1]}&42'b001111011101001011000101000101110010111011);

endmodule