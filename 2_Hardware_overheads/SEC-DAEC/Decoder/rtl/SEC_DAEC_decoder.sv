module SEC_DAEC_syndrome_gen(input [71:0] codeword, output [7:0] syndrome);

    assign syndrome[7] = ^(codeword&72'b1001010111010110010100100100001011000100110010001101000011100000_10000000);
    assign syndrome[6] = ^(codeword&72'b1011100110000010101001001000010110001001100100011010000111000001_01000000);
    assign syndrome[5] = ^(codeword&72'b0110101010111010110010010000101100010011001000110100001110000011_00100000);
    assign syndrome[4] = ^(codeword&72'b1111011001011001100100101001011000100110010001101000011000000111_00010000);
    assign syndrome[3] = ^(codeword&72'b1001011000111101101001010010110001001100100011000000110100001110_00001000);
    assign syndrome[2] = ^(codeword&72'b1110110011111101110010100101100010011000000110010001101000011100_00000100);
    assign syndrome[1] = ^(codeword&72'b0110101101101111000101001011000000110001001100100011010000111000_00000010);
    assign syndrome[0] = ^(codeword&72'b0101111011100111001010010110000101100010011001000110100001110000_00000001);

endmodule


module SEC_DAEC_errorinfo_gen(input [7:0] syndrome, output reg [6:0] error_addr, output reg [1:0] error_type);

    always @(syndrome) begin
        case (syndrome)
            // No error
            8'b00000000 : begin error_type = 2'b00; error_addr = 7'd0; end

            // SE
            8'b11011100 : begin error_type = 2'b01; error_addr = 7'd71; end
            8'b00110111 : begin error_type = 2'b01; error_addr = 7'd70; end
            8'b01110110 : begin error_type = 2'b01; error_addr = 7'd69; end
            8'b11011001 : begin error_type = 2'b01; error_addr = 7'd68; end
            8'b01100111 : begin error_type = 2'b01; error_addr = 7'd67; end
            8'b10011101 : begin error_type = 2'b01; error_addr = 7'd66; end
            8'b00111011 : begin error_type = 2'b01; error_addr = 7'd65; end
            8'b11000010 : begin error_type = 2'b01; error_addr = 7'd64; end
            8'b11100101 : begin error_type = 2'b01; error_addr = 7'd63; end
            8'b10010111 : begin error_type = 2'b01; error_addr = 7'd62; end
            8'b00101111 : begin error_type = 2'b01; error_addr = 7'd61; end
            8'b10111100 : begin error_type = 2'b01; error_addr = 7'd60; end
            8'b00111110 : begin error_type = 2'b01; error_addr = 7'd59; end
            8'b10001111 : begin error_type = 2'b01; error_addr = 7'd58; end
            8'b11100011 : begin error_type = 2'b01; error_addr = 7'd57; end
            8'b00011111 : begin error_type = 2'b01; error_addr = 7'd56; end
            8'b01111100 : begin error_type = 2'b01; error_addr = 7'd55; end
            8'b10100100 : begin error_type = 2'b01; error_addr = 7'd54; end
            8'b01001001 : begin error_type = 2'b01; error_addr = 7'd53; end
            8'b10010010 : begin error_type = 2'b01; error_addr = 7'd52; end
            8'b00100101 : begin error_type = 2'b01; error_addr = 7'd51; end
            8'b01001010 : begin error_type = 2'b01; error_addr = 7'd50; end
            8'b10010100 : begin error_type = 2'b01; error_addr = 7'd49; end
            8'b00101001 : begin error_type = 2'b01; error_addr = 7'd48; end
            8'b01010010 : begin error_type = 2'b01; error_addr = 7'd47; end
            8'b10000101 : begin error_type = 2'b01; error_addr = 7'd46; end
            8'b00001011 : begin error_type = 2'b01; error_addr = 7'd45; end
            8'b00010110 : begin error_type = 2'b01; error_addr = 7'd44; end
            8'b00101100 : begin error_type = 2'b01; error_addr = 7'd43; end
            8'b01011000 : begin error_type = 2'b01; error_addr = 7'd42; end
            8'b10110000 : begin error_type = 2'b01; error_addr = 7'd41; end
            8'b01100001 : begin error_type = 2'b01; error_addr = 7'd40; end
            8'b11000100 : begin error_type = 2'b01; error_addr = 7'd39; end
            8'b10001001 : begin error_type = 2'b01; error_addr = 7'd38; end
            8'b00010011 : begin error_type = 2'b01; error_addr = 7'd37; end
            8'b00100110 : begin error_type = 2'b01; error_addr = 7'd36; end
            8'b01001100 : begin error_type = 2'b01; error_addr = 7'd35; end
            8'b10011000 : begin error_type = 2'b01; error_addr = 7'd34; end
            8'b00110001 : begin error_type = 2'b01; error_addr = 7'd33; end
            8'b01100010 : begin error_type = 2'b01; error_addr = 7'd32; end
            8'b11001000 : begin error_type = 2'b01; error_addr = 7'd31; end
            8'b10010001 : begin error_type = 2'b01; error_addr = 7'd30; end
            8'b00100011 : begin error_type = 2'b01; error_addr = 7'd29; end
            8'b01000110 : begin error_type = 2'b01; error_addr = 7'd28; end
            8'b10001100 : begin error_type = 2'b01; error_addr = 7'd27; end
            8'b00011001 : begin error_type = 2'b01; error_addr = 7'd26; end
            8'b00110010 : begin error_type = 2'b01; error_addr = 7'd25; end
            8'b01100100 : begin error_type = 2'b01; error_addr = 7'd24; end
            8'b11010000 : begin error_type = 2'b01; error_addr = 7'd23; end
            8'b10100001 : begin error_type = 2'b01; error_addr = 7'd22; end
            8'b01000011 : begin error_type = 2'b01; error_addr = 7'd21; end
            8'b10000110 : begin error_type = 2'b01; error_addr = 7'd20; end
            8'b00001101 : begin error_type = 2'b01; error_addr = 7'd19; end
            8'b00011010 : begin error_type = 2'b01; error_addr = 7'd18; end
            8'b00110100 : begin error_type = 2'b01; error_addr = 7'd17; end
            8'b01101000 : begin error_type = 2'b01; error_addr = 7'd16; end
            8'b11100000 : begin error_type = 2'b01; error_addr = 7'd15; end
            8'b11000001 : begin error_type = 2'b01; error_addr = 7'd14; end
            8'b10000011 : begin error_type = 2'b01; error_addr = 7'd13; end
            8'b00000111 : begin error_type = 2'b01; error_addr = 7'd12; end
            8'b00001110 : begin error_type = 2'b01; error_addr = 7'd11; end
            8'b00011100 : begin error_type = 2'b01; error_addr = 7'd10; end
            8'b00111000 : begin error_type = 2'b01; error_addr = 7'd9; end
            8'b01110000 : begin error_type = 2'b01; error_addr = 7'd8; end
            8'b10000000 : begin error_type = 2'b01; error_addr = 7'd7; end
            8'b01000000 : begin error_type = 2'b01; error_addr = 7'd6; end
            8'b00100000 : begin error_type = 2'b01; error_addr = 7'd5; end
            8'b00010000 : begin error_type = 2'b01; error_addr = 7'd4; end
            8'b00001000 : begin error_type = 2'b01; error_addr = 7'd3; end
            8'b00000100 : begin error_type = 2'b01; error_addr = 7'd2; end
            8'b00000010 : begin error_type = 2'b01; error_addr = 7'd1; end
            8'b00000001 : begin error_type = 2'b01; error_addr = 7'd0; end

            // DAE
            8'b11101011 : begin error_type = 2'b10; error_addr = 7'd70; end
            8'b01000001 : begin error_type = 2'b10; error_addr = 7'd69; end
            8'b10101111 : begin error_type = 2'b10; error_addr = 7'd68; end
            8'b10111110 : begin error_type = 2'b10; error_addr = 7'd67; end
            8'b11111010 : begin error_type = 2'b10; error_addr = 7'd66; end
            8'b10100110 : begin error_type = 2'b10; error_addr = 7'd65; end
            8'b11111001 : begin error_type = 2'b10; error_addr = 7'd64; end
            8'b00100111 : begin error_type = 2'b10; error_addr = 7'd63; end
            8'b01110010 : begin error_type = 2'b10; error_addr = 7'd62; end
            8'b10111000 : begin error_type = 2'b10; error_addr = 7'd61; end
            8'b10010011 : begin error_type = 2'b10; error_addr = 7'd60; end
            8'b10000010 : begin error_type = 2'b10; error_addr = 7'd59; end
            8'b10110001 : begin error_type = 2'b10; error_addr = 7'd58; end
            8'b01101100 : begin error_type = 2'b10; error_addr = 7'd57; end
            8'b11111100 : begin error_type = 2'b10; error_addr = 7'd56; end
            8'b01100011 : begin error_type = 2'b10; error_addr = 7'd55; end
            8'b11011000 : begin error_type = 2'b10; error_addr = 7'd54; end
            8'b11101101 : begin error_type = 2'b10; error_addr = 7'd53; end
            8'b11011011 : begin error_type = 2'b10; error_addr = 7'd52; end
            8'b10110111 : begin error_type = 2'b10; error_addr = 7'd51; end
            8'b01101111 : begin error_type = 2'b10; error_addr = 7'd50; end
            8'b11011110 : begin error_type = 2'b10; error_addr = 7'd49; end
            8'b10111101 : begin error_type = 2'b10; error_addr = 7'd48; end
            8'b01111011 : begin error_type = 2'b10; error_addr = 7'd47; end
            8'b11010111 : begin error_type = 2'b10; error_addr = 7'd46; end
            8'b10001110 : begin error_type = 2'b10; error_addr = 7'd45; end
            8'b00011101 : begin error_type = 2'b10; error_addr = 7'd44; end
            8'b00111010 : begin error_type = 2'b10; error_addr = 7'd43; end
            8'b01110100 : begin error_type = 2'b10; error_addr = 7'd42; end
            8'b11101000 : begin error_type = 2'b10; error_addr = 7'd41; end
            8'b11010001 : begin error_type = 2'b10; error_addr = 7'd40; end
            8'b10100101 : begin error_type = 2'b10; error_addr = 7'd39; end
            8'b01001101 : begin error_type = 2'b10; error_addr = 7'd38; end
            8'b10011010 : begin error_type = 2'b10; error_addr = 7'd37; end
            8'b00110101 : begin error_type = 2'b10; error_addr = 7'd36; end
            8'b01101010 : begin error_type = 2'b10; error_addr = 7'd35; end
            8'b11010100 : begin error_type = 2'b10; error_addr = 7'd34; end
            8'b10101001 : begin error_type = 2'b10; error_addr = 7'd33; end
            8'b01010011 : begin error_type = 2'b10; error_addr = 7'd32; end
            8'b10101010 : begin error_type = 2'b10; error_addr = 7'd31; end
            8'b01011001 : begin error_type = 2'b10; error_addr = 7'd30; end
            8'b10110010 : begin error_type = 2'b10; error_addr = 7'd29; end
            8'b01100101 : begin error_type = 2'b10; error_addr = 7'd28; end
            8'b11001010 : begin error_type = 2'b10; error_addr = 7'd27; end
            8'b10010101 : begin error_type = 2'b10; error_addr = 7'd26; end
            8'b00101011 : begin error_type = 2'b10; error_addr = 7'd25; end
            8'b01010110 : begin error_type = 2'b10; error_addr = 7'd24; end
            8'b10110100 : begin error_type = 2'b10; error_addr = 7'd23; end
            8'b01110001 : begin error_type = 2'b10; error_addr = 7'd22; end
            8'b11100010 : begin error_type = 2'b10; error_addr = 7'd21; end
            8'b11000101 : begin error_type = 2'b10; error_addr = 7'd20; end
            8'b10001011 : begin error_type = 2'b10; error_addr = 7'd19; end
            8'b00010111 : begin error_type = 2'b10; error_addr = 7'd18; end
            8'b00101110 : begin error_type = 2'b10; error_addr = 7'd17; end
            8'b01011100 : begin error_type = 2'b10; error_addr = 7'd16; end
            8'b10001000 : begin error_type = 2'b10; error_addr = 7'd15; end
            8'b00100001 : begin error_type = 2'b10; error_addr = 7'd14; end
            8'b01000010 : begin error_type = 2'b10; error_addr = 7'd13; end
            8'b10000100 : begin error_type = 2'b10; error_addr = 7'd12; end
            8'b00001001 : begin error_type = 2'b10; error_addr = 7'd11; end
            8'b00010010 : begin error_type = 2'b10; error_addr = 7'd10; end
            8'b00100100 : begin error_type = 2'b10; error_addr = 7'd9; end
            8'b01001000 : begin error_type = 2'b10; error_addr = 7'd8; end
            8'b11110000 : begin error_type = 2'b10; error_addr = 7'd7; end
            8'b11000000 : begin error_type = 2'b10; error_addr = 7'd6; end
            8'b01100000 : begin error_type = 2'b10; error_addr = 7'd5; end
            8'b00110000 : begin error_type = 2'b10; error_addr = 7'd4; end
            8'b00011000 : begin error_type = 2'b10; error_addr = 7'd3; end
            8'b00001100 : begin error_type = 2'b10; error_addr = 7'd2; end
            8'b00000110 : begin error_type = 2'b10; error_addr = 7'd1; end
            8'b00000011 : begin error_type = 2'b10; error_addr = 7'd0; end

            // Uncorrectable
            default : begin error_type = 2'b11; error_addr = 7'd0; end
        endcase
    end
endmodule

module SEC_DAEC_decoder(input [71:0] codeword, output [63:0] message, output [1:0] error_type);
    
    wire [7:0] syndrome;
    wire [6:0] error_addr;
    reg [71:0] decoded;

    SEC_DAEC_syndrome_gen syndrome_gen(.codeword(codeword), .syndrome(syndrome));
    SEC_DAEC_errorinfo_gen errorinfo_gen(.syndrome(syndrome), .error_addr(error_addr), .error_type(error_type));

    always @(error_type) begin
        if (error_type == 2'b00) begin       // No error
            decoded = codeword;
        end
        else if (error_type == 2'b01) begin  // SE
            decoded = codeword ^ (1 << error_addr);
        end
        else if (error_type == 2'b10) begin  // DAE
            decoded = codeword ^ (3 << error_addr);
        end
        else begin                          // Uncorrectable
            decoded = codeword;
        end
    end

    assign message = decoded[71:8];

endmodule