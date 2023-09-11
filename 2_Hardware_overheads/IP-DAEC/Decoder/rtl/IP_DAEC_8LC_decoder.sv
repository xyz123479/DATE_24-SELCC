module IP_DAEC_8LC_syndrome_gen(input [48:0] codeword, output [6:0] syndrome);

    assign syndrome[6] = ^(codeword&49'b100111000110100101101000100010111001111101_1000000);
    assign syndrome[5] = ^(codeword&49'b010100001101110111011100010011100101100011_0100000);
    assign syndrome[4] = ^(codeword&49'b001101101010011110001110001011001001101100_0010000);
    assign syndrome[3] = ^(codeword&49'b100110010111001111001111100101100100011110_0001000);
    assign syndrome[2] = ^(codeword&49'b110011100001100111100111010010110010000111_0000100);
    assign syndrome[1] = ^(codeword&49'b011110111110010110011011001011100000110110_0000010);
    assign syndrome[0] = ^(codeword&49'b001111011101001011000101000101110010111011_0000001);

endmodule


module IP_DAEC_8LC_IP_syndrome_gen(input [21:0] IP_word, input IP, output IP_syndrome);

    assign IP_syndrome = (^(IP_word))^IP;

endmodule


module IP_DAEC_8LC_errorinfo_gen(input [6:0] syndrome, output reg [6:0] error_addr, output reg [2:0] error_type);

    always @(syndrome) begin
        case (syndrome)
            // No error
            7'b00000000 : begin error_type = 3'b000; error_addr = 7'd0; end

            // SE
            7'b1001100 : begin error_type = 3'b001; error_addr = 7'd70; end
            7'b0100110 : begin error_type = 3'b001; error_addr = 7'd69; end
            7'b0010011 : begin error_type = 3'b001; error_addr = 7'd67; end
            7'b1111011 : begin error_type = 3'b001; error_addr = 7'd66; end
            7'b1001111 : begin error_type = 3'b001; error_addr = 7'd64; end
            7'b1010101 : begin error_type = 3'b001; error_addr = 7'd63; end
            7'b0010110 : begin error_type = 3'b001; error_addr = 7'd61; end
            7'b0001011 : begin error_type = 3'b001; error_addr = 7'd60; end
            7'b0110011 : begin error_type = 3'b001; error_addr = 7'd58; end
            7'b1101011 : begin error_type = 3'b001; error_addr = 7'd57; end
            7'b1011010 : begin error_type = 3'b001; error_addr = 7'd55; end
            7'b0101101 : begin error_type = 3'b001; error_addr = 7'd54; end
            7'b1100100 : begin error_type = 3'b001; error_addr = 7'd52; end
            7'b0110010 : begin error_type = 3'b001; error_addr = 7'd51; end
            7'b0011001 : begin error_type = 3'b001; error_addr = 7'd49; end
            7'b1111110 : begin error_type = 3'b001; error_addr = 7'd48; end
            7'b0111111 : begin error_type = 3'b001; error_addr = 7'd46; end
            7'b1101101 : begin error_type = 3'b001; error_addr = 7'd45; end
            7'b1000100 : begin error_type = 3'b001; error_addr = 7'd43; end
            7'b0100010 : begin error_type = 3'b001; error_addr = 7'd42; end
            7'b1111010 : begin error_type = 3'b001; error_addr = 7'd40; end
            7'b0111101 : begin error_type = 3'b001; error_addr = 7'd39; end
            7'b0011110 : begin error_type = 3'b001; error_addr = 7'd37; end
            7'b0001111 : begin error_type = 3'b001; error_addr = 7'd36; end
            7'b1001000 : begin error_type = 3'b001; error_addr = 7'd34; end
            7'b0100100 : begin error_type = 3'b001; error_addr = 7'd33; end
            7'b0010010 : begin error_type = 3'b001; error_addr = 7'd31; end
            7'b0001001 : begin error_type = 3'b001; error_addr = 7'd30; end
            7'b1110110 : begin error_type = 3'b001; error_addr = 7'd28; end
            7'b0111011 : begin error_type = 3'b001; error_addr = 7'd27; end
            7'b1101111 : begin error_type = 3'b001; error_addr = 7'd25; end
            7'b1000101 : begin error_type = 3'b001; error_addr = 7'd24; end
            7'b1010000 : begin error_type = 3'b001; error_addr = 7'd22; end
            7'b0101000 : begin error_type = 3'b001; error_addr = 7'd21; end
            7'b0000101 : begin error_type = 3'b001; error_addr = 7'd19; end
            7'b1110000 : begin error_type = 3'b001; error_addr = 7'd18; end
            7'b1110011 : begin error_type = 3'b001; error_addr = 7'd16; end
            7'b1001011 : begin error_type = 3'b001; error_addr = 7'd15; end
            7'b1011001 : begin error_type = 3'b001; error_addr = 7'd13; end
            7'b1011110 : begin error_type = 3'b001; error_addr = 7'd12; end
            7'b0101111 : begin error_type = 3'b001; error_addr = 7'd10; end
            7'b1100101 : begin error_type = 3'b001; error_addr = 7'd9; end
            7'b1000000 : begin error_type = 3'b001; error_addr = 7'd7; end
            7'b0100000 : begin error_type = 3'b001; error_addr = 7'd6; end
            7'b0010000 : begin error_type = 3'b001; error_addr = 7'd5; end
            7'b0001000 : begin error_type = 3'b001; error_addr = 7'd4; end
            7'b0000100 : begin error_type = 3'b001; error_addr = 7'd3; end
            7'b0000010 : begin error_type = 3'b001; error_addr = 7'd2; end
            7'b0000001 : begin error_type = 3'b001; error_addr = 7'd1; end

            // DE (DAE')
            7'b1101010 : begin error_type = 3'b010; error_addr = 7'd69; end
            7'b1101000 : begin error_type = 3'b010; error_addr = 7'd66; end
            7'b0011010 : begin error_type = 3'b010; error_addr = 7'd63; end
            7'b0011101 : begin error_type = 3'b010; error_addr = 7'd60; end
            7'b1011000 : begin error_type = 3'b010; error_addr = 7'd57; end
            7'b1110111 : begin error_type = 3'b010; error_addr = 7'd54; end
            7'b1010110 : begin error_type = 3'b010; error_addr = 7'd51; end
            7'b1100111 : begin error_type = 3'b010; error_addr = 7'd48; end
            7'b1010010 : begin error_type = 3'b010; error_addr = 7'd45; end
            7'b1100110 : begin error_type = 3'b010; error_addr = 7'd42; end
            7'b1000111 : begin error_type = 3'b010; error_addr = 7'd39; end
            7'b0010001 : begin error_type = 3'b010; error_addr = 7'd36; end
            7'b1101100 : begin error_type = 3'b010; error_addr = 7'd33; end
            7'b0011011 : begin error_type = 3'b010; error_addr = 7'd30; end
            7'b1001101 : begin error_type = 3'b010; error_addr = 7'd27; end
            7'b0101010 : begin error_type = 3'b010; error_addr = 7'd24; end
            7'b1111000 : begin error_type = 3'b010; error_addr = 7'd21; end
            7'b1110101 : begin error_type = 3'b010; error_addr = 7'd18; end
            7'b0111000 : begin error_type = 3'b010; error_addr = 7'd15; end
            7'b0000111 : begin error_type = 3'b010; error_addr = 7'd12; end
            7'b1001010 : begin error_type = 3'b010; error_addr = 7'd9; end
            7'b1100000 : begin error_type = 3'b010; error_addr = 7'd6; end
            7'b0011000 : begin error_type = 3'b010; error_addr = 7'd4; end
            7'b0001100 : begin error_type = 3'b010; error_addr = 7'd3; end
            7'b0010100 : begin error_type = 3'b011; error_addr = 7'd3; end
            7'b0011100 : begin error_type = 3'b100; error_addr = 7'd3; end
            7'b0000011 : begin error_type = 3'b010; error_addr = 7'd1; end

            // Uncorrectable
            default : begin error_type = 3'b111; error_addr = 7'd0; end
        endcase
    end
endmodule


module IP_DAEC_8LC_SEC_DAEC_decoder(input [21:0] IP_word, input [48:0] codeword, input IP, output reg [71:0] SEC_DAEC_decoded, output reg [6:0] error_addr, output reg [2:0] error_type, output IP_syndrome);
    
    wire [6:0] syndrome;

    IP_DAEC_8LC_IP_syndrome_gen(.IP_word(IP_word), .IP(IP), .IP_syndrome(IP_syndrome))
    IP_DAEC_8LC_syndrome_gen syndrome_gen(.codeword(codeword), .syndrome(syndrome));
    IP_DAEC_8LC_errorinfo_gen errorinfo_gen(.syndrome(syndrome), .error_addr(error_addr), .error_type(error_type));

    always @(error_type) begin
        if (error_type == 3'b000) begin       // No error
            decoded = {IP_word[21], codeword[48], codeword[47], IP_word[20], codeword[46], codeword[45], IP_word[19], codeword[44], codeword[43],
                       IP_word[18], codeword[42], codeword[41], IP_word[17], codeword[40], codeword[39], IP_word[16], codeword[38], codeword[37], 
                       IP_word[15], codeword[36], codeword[35], IP_word[14], codeword[34], codeword[33], IP_word[13], codeword[32], codeword[31],
                       IP_word[12], codeword[30], codeword[29], IP_word[11], codeword[28], codeword[27], IP_word[10], codeword[26], codeword[25], 
                       IP_word[9], codeword[24], codeword[23], IP_word[8], codeword[22], codeword[21], IP_word[7], codeword[20], codeword[19], 
                       IP_word[6], codeword[18], codeword[17], IP_word[5], codeword[16], codeword[15], IP_word[4], codeword[14], codeword[13], 
                       IP_word[3], codeword[12], codeword[11], IP_word[2], codeword[10], codeword[9], IP_word[1], codeword[8], codeword[7], 
                       IP_word[0], codeword[6:0], IP}; 
        end
        else if (error_type == 3'b001) begin  // SE
            decoded = {IP_word[21], codeword[48], codeword[47], IP_word[20], codeword[46], codeword[45], IP_word[19], codeword[44], codeword[43],
                       IP_word[18], codeword[42], codeword[41], IP_word[17], codeword[40], codeword[39], IP_word[16], codeword[38], codeword[37], 
                       IP_word[15], codeword[36], codeword[35], IP_word[14], codeword[34], codeword[33], IP_word[13], codeword[32], codeword[31],
                       IP_word[12], codeword[30], codeword[29], IP_word[11], codeword[28], codeword[27], IP_word[10], codeword[26], codeword[25], 
                       IP_word[9], codeword[24], codeword[23], IP_word[8], codeword[22], codeword[21], IP_word[7], codeword[20], codeword[19], 
                       IP_word[6], codeword[18], codeword[17], IP_word[5], codeword[16], codeword[15], IP_word[4], codeword[14], codeword[13], 
                       IP_word[3], codeword[12], codeword[11], IP_word[2], codeword[10], codeword[9], IP_word[1], codeword[8], codeword[7], 
                       IP_word[0], codeword[6:0], IP} ^ (1 << error_addr);
        end
        else if (error_type == 3'b010) begin  // DE (DAE)
            decoded = {IP_word[21], codeword[48], codeword[47], IP_word[20], codeword[46], codeword[45], IP_word[19], codeword[44], codeword[43],
                       IP_word[18], codeword[42], codeword[41], IP_word[17], codeword[40], codeword[39], IP_word[16], codeword[38], codeword[37], 
                       IP_word[15], codeword[36], codeword[35], IP_word[14], codeword[34], codeword[33], IP_word[13], codeword[32], codeword[31],
                       IP_word[12], codeword[30], codeword[29], IP_word[11], codeword[28], codeword[27], IP_word[10], codeword[26], codeword[25], 
                       IP_word[9], codeword[24], codeword[23], IP_word[8], codeword[22], codeword[21], IP_word[7], codeword[20], codeword[19], 
                       IP_word[6], codeword[18], codeword[17], IP_word[5], codeword[16], codeword[15], IP_word[4], codeword[14], codeword[13], 
                       IP_word[3], codeword[12], codeword[11], IP_word[2], codeword[10], codeword[9], IP_word[1], codeword[8], codeword[7], 
                       IP_word[0], codeword[6:0], IP} ^ (3 << error_addr);
        end
        else if (error_type == 3'b011) begin  // DE (non-DAE)
            decoded = {IP_word[21], codeword[48], codeword[47], IP_word[20], codeword[46], codeword[45], IP_word[19], codeword[44], codeword[43],
                       IP_word[18], codeword[42], codeword[41], IP_word[17], codeword[40], codeword[39], IP_word[16], codeword[38], codeword[37], 
                       IP_word[15], codeword[36], codeword[35], IP_word[14], codeword[34], codeword[33], IP_word[13], codeword[32], codeword[31],
                       IP_word[12], codeword[30], codeword[29], IP_word[11], codeword[28], codeword[27], IP_word[10], codeword[26], codeword[25], 
                       IP_word[9], codeword[24], codeword[23], IP_word[8], codeword[22], codeword[21], IP_word[7], codeword[20], codeword[19], 
                       IP_word[6], codeword[18], codeword[17], IP_word[5], codeword[16], codeword[15], IP_word[4], codeword[14], codeword[13], 
                       IP_word[3], codeword[12], codeword[11], IP_word[2], codeword[10], codeword[9], IP_word[1], codeword[8], codeword[7], 
                       IP_word[0], codeword[6:0], IP} ^ (5 << error_addr);
        end
        else if (error_type == 3'b100) begin  // TE
            decoded = {IP_word[21], codeword[48], codeword[47], IP_word[20], codeword[46], codeword[45], IP_word[19], codeword[44], codeword[43],
                       IP_word[18], codeword[42], codeword[41], IP_word[17], codeword[40], codeword[39], IP_word[16], codeword[38], codeword[37], 
                       IP_word[15], codeword[36], codeword[35], IP_word[14], codeword[34], codeword[33], IP_word[13], codeword[32], codeword[31],
                       IP_word[12], codeword[30], codeword[29], IP_word[11], codeword[28], codeword[27], IP_word[10], codeword[26], codeword[25], 
                       IP_word[9], codeword[24], codeword[23], IP_word[8], codeword[22], codeword[21], IP_word[7], codeword[20], codeword[19], 
                       IP_word[6], codeword[18], codeword[17], IP_word[5], codeword[16], codeword[15], IP_word[4], codeword[14], codeword[13], 
                       IP_word[3], codeword[12], codeword[11], IP_word[2], codeword[10], codeword[9], IP_word[1], codeword[8], codeword[7], 
                       IP_word[0], codeword[6:0], IP} ^ (7 << error_addr);
        end
        else begin
            decoded = codeword;
        end
    end

endmodule


module IP_DAEC_8LC_IP_decoder(input [2:0] error_type, input [6:0] error_addr, input [71:0] SEC_DAEC_decoded, output reg [71:0] decoded);
    
    case (error_type)
        3'b001 :   // SE
            if (IP_syndrome == 1) begin
                case (error_addr)
                    7'd70 :
                        decoded = SEC_DAEC_decoded ^ (1 << 71);
                    7'd69 :
                        decoded = SEC_DAEC_decoded ^ (1 << 71);
                    7'd67 :
                        decoded = SEC_DAEC_decoded ^ (1 << 68);
                    7'd66 :
                        decoded = SEC_DAEC_decoded ^ (1 << 68);
                    7'd64 :
                        decoded = SEC_DAEC_decoded ^ (1 << 65);
                    7'd63 :
                        decoded = SEC_DAEC_decoded ^ (1 << 65);
                    7'd61 :
                        decoded = SEC_DAEC_decoded ^ (1 << 62);
                    7'd60 :
                        decoded = SEC_DAEC_decoded ^ (1 << 62);
                    7'd58 :
                        decoded = SEC_DAEC_decoded ^ (1 << 59);
                    7'd57 :
                        decoded = SEC_DAEC_decoded ^ (1 << 59);
                    7'd55 :
                        decoded = SEC_DAEC_decoded ^ (1 << 56);
                    7'd54 :
                        decoded = SEC_DAEC_decoded ^ (1 << 56);
                    7'd52 :
                        decoded = SEC_DAEC_decoded ^ (1 << 53);
                    7'd51 :
                        decoded = SEC_DAEC_decoded ^ (1 << 53);
                    7'd49 :
                        decoded = SEC_DAEC_decoded ^ (1 << 50);
                    7'd48 :
                        decoded = SEC_DAEC_decoded ^ (1 << 50);
                    7'd46 :
                        decoded = SEC_DAEC_decoded ^ (1 << 47);
                    7'd45 :
                        decoded = SEC_DAEC_decoded ^ (1 << 47);
                    7'd43 :
                        decoded = SEC_DAEC_decoded ^ (1 << 44);
                    7'd42 :
                        decoded = SEC_DAEC_decoded ^ (1 << 44);
                    7'd40 :
                        decoded = SEC_DAEC_decoded ^ (1 << 41);
                    7'd39 :
                        decoded = SEC_DAEC_decoded ^ (1 << 41);
                    7'd37 :
                        decoded = SEC_DAEC_decoded ^ (1 << 38);
                    7'd36 :
                        decoded = SEC_DAEC_decoded ^ (1 << 38);
                    7'd34 :
                        decoded = SEC_DAEC_decoded ^ (1 << 35);
                    7'd33 :
                        decoded = SEC_DAEC_decoded ^ (1 << 35);
                    7'd31 :
                        decoded = SEC_DAEC_decoded ^ (1 << 32);
                    7'd30 :
                        decoded = SEC_DAEC_decoded ^ (1 << 32);
                    7'd28 :
                        decoded = SEC_DAEC_decoded ^ (1 << 29);
                    7'd27 :
                        decoded = SEC_DAEC_decoded ^ (1 << 29);
                    7'd25 :
                        decoded = SEC_DAEC_decoded ^ (1 << 26);
                    7'd24 :
                        decoded = SEC_DAEC_decoded ^ (1 << 26);
                    7'd22 :
                        decoded = SEC_DAEC_decoded ^ (1 << 23);
                    7'd21 :
                        decoded = SEC_DAEC_decoded ^ (1 << 23);
                    7'd19 :
                        decoded = SEC_DAEC_decoded ^ (1 << 20);
                    7'd18 :
                        decoded = SEC_DAEC_decoded ^ (1 << 20);
                    7'd16 :
                        decoded = SEC_DAEC_decoded ^ (1 << 17);
                    7'd15 :
                        decoded = SEC_DAEC_decoded ^ (1 << 17);
                    7'd13 :
                        decoded = SEC_DAEC_decoded ^ (1 << 14);
                    7'd12 :
                        decoded = SEC_DAEC_decoded ^ (1 << 14);
                    7'd10 :
                        decoded = SEC_DAEC_decoded ^ (1 << 11);
                    7'd9 :
                        decoded = SEC_DAEC_decoded ^ (1 << 11);
                    7'd7 :
                        decoded = SEC_DAEC_decoded ^ (1 << 8);
                    7'd6 :
                        decoded = SEC_DAEC_decoded ^ (1 << 8);
                    7'd2 :
                        decoded = SEC_DAEC_decoded ^ (1 << 0);
                    7'd1 :
                        decoded = SEC_DAEC_decoded ^ (1 << 0);
                    default :
                        decoded = SEC_DAEC_decoded;
                endcase   
            end
            else begin
                decoded = SEC_DAEC_decoded;
            end
        3'b010 :   // DAE
            if (IP_syndrome == 1) begin
                case (error_addr)
                    7'd69 :
                        decoded = SEC_DAEC_decoded ^ (1 << 71);
                    7'd66 :
                        decoded = SEC_DAEC_decoded ^ (1 << 68);
                    7'd63 :
                        decoded = SEC_DAEC_decoded ^ (1 << 65);
                    7'd60 :
                        decoded = SEC_DAEC_decoded ^ (1 << 62);
                    7'd57 :
                        decoded = SEC_DAEC_decoded ^ (1 << 59);
                    7'd54 :
                        decoded = SEC_DAEC_decoded ^ (1 << 56);
                    7'd51 :
                        decoded = SEC_DAEC_decoded ^ (1 << 53);
                    7'd48 :
                        decoded = SEC_DAEC_decoded ^ (1 << 50);
                    7'd45 :
                        decoded = SEC_DAEC_decoded ^ (1 << 47);
                    7'd42 :
                        decoded = SEC_DAEC_decoded ^ (1 << 44);
                    7'd39 :
                        decoded = SEC_DAEC_decoded ^ (1 << 41);
                    7'd36 :
                        decoded = SEC_DAEC_decoded ^ (1 << 38);
                    7'd33 :
                        decoded = SEC_DAEC_decoded ^ (1 << 35);
                    7'd30 :
                        decoded = SEC_DAEC_decoded ^ (1 << 32);
                    7'd27 :
                        decoded = SEC_DAEC_decoded ^ (1 << 29);
                    7'd24 :
                        decoded = SEC_DAEC_decoded ^ (1 << 26);
                    7'd21 :
                        decoded = SEC_DAEC_decoded ^ (1 << 23);
                    7'd18 :
                        decoded = SEC_DAEC_decoded ^ (1 << 20);
                    7'd15 :
                        decoded = SEC_DAEC_decoded ^ (1 << 17);
                    7'd12 :
                        decoded = SEC_DAEC_decoded ^ (1 << 14);
                    7'd9 :
                        decoded = SEC_DAEC_decoded ^ (1 << 11);
                    7'd6 :
                        decoded = SEC_DAEC_decoded ^ (1 << 8);
                    7'd1 :
                        decoded = SEC_DAEC_decoded ^ (1 << 0);         
                    default :
                        decoded = SEC_DAEC_decoded;
                endcase
            end
            else begin
                decoded = SEC_DAEC_decoded;
            end
        default :  // No error / Uncorrectable / TE / non-DAE
            decoded = SEC_DAEC_decoded;
    endcase

endmodule


module IP_DAEC_decoder(input [21:0] IP_word, input [48:0] codeword, input IP, output [2:0] error_type, output [63:0] message);

    wire [6:0] error_addr;
    wire [71:0] SEC_DAEC_decoded;
    wire IP_syndrome;
    reg [71:0] decoded;

    IP_DAEC_8LC_SEC_DAEC_decoder(.IP_word(IP_word), .codeword(codeword), .IP(IP), .SEC_DAEC_decoded(SEC_DAEC_decoded), .error_addr(error_addr), .error_type(error_type), .IP_syndrome(IP_syndrome));
    IP_DAEC_8LC_IP_decoder(.error_type(error_type), .error_addr(error_addr), .SEC_DAEC_decoded(SEC_DAEC_decoded), .decoded(decoded));

    assign message = decoded[71:8];

endmodule