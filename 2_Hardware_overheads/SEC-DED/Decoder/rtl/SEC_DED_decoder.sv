module SEC_DED_syndrome_gen(input [71:0] codeword, output [7:0] syndrome);

    assign syndrome[7] = ^(codeword&72'b1000101001001001001010101001001001010100101010010010100100100010_01000100);
    assign syndrome[6] = ^(codeword&72'b0010001001001001001001010100100100101010010101001111110001001000_10010010);
    assign syndrome[5] = ^(codeword&72'b0001001000100100100101001010100100100101001001010010001111111111_00010010);
    assign syndrome[4] = ^(codeword&72'b0100010001000100100100100101010010100100100100101001001001001001_00100100);
    assign syndrome[3] = ^(codeword&72'b0100100100100100010010010010011110010010100100100100100100100100_10001010);
    assign syndrome[2] = ^(codeword&72'b0100100100100010001001001001001001001001010010100101001001111111_10010011);
    assign syndrome[1] = ^(codeword&72'b0100100100010001000100100100100010010010010010010010010010011111_11111001);
    assign syndrome[0] = ^(codeword&72'b0100100010001000100010010010010001001001001001001010010011100111_11111111);

endmodule


module SEC_DED_errorinfo_gen(input [7:0] syndrome, output reg [6:0] error_addr, output reg [1:0] error_type);

    always @(syndrome) begin
        case (syndrome)
            // No error
            8'b00000000 : begin error_type = 2'b00; error_addr = 7'd0; end

            // SE
            8'b10000000 : begin error_type = 2'b01; error_addr = 7'd71; end
            8'b00011111 : begin error_type = 2'b01; error_addr = 7'd70; end
            8'b01000000 : begin error_type = 2'b01; error_addr = 7'd69; end
            8'b00100000 : begin error_type = 2'b01; error_addr = 7'd68; end
            8'b10001111 : begin error_type = 2'b01; error_addr = 7'd67; end
            8'b00010000 : begin error_type = 2'b01; error_addr = 7'd66; end
            8'b11100000 : begin error_type = 2'b01; error_addr = 7'd65; end
            8'b00001110 : begin error_type = 2'b01; error_addr = 7'd64; end
            8'b00000001 : begin error_type = 2'b01; error_addr = 7'd63; end
            8'b11010000 : begin error_type = 2'b01; error_addr = 7'd62; end
            8'b00101100 : begin error_type = 2'b01; error_addr = 7'd61; end
            8'b00000010 : begin error_type = 2'b01; error_addr = 7'd60; end
            8'b11000001 : begin error_type = 2'b01; error_addr = 7'd59; end
            8'b00111000 : begin error_type = 2'b01; error_addr = 7'd58; end
            8'b00000100 : begin error_type = 2'b01; error_addr = 7'd57; end
            8'b11000010 : begin error_type = 2'b01; error_addr = 7'd56; end
            8'b00110001 : begin error_type = 2'b01; error_addr = 7'd55; end
            8'b00001000 : begin error_type = 2'b01; error_addr = 7'd54; end
            8'b11000100 : begin error_type = 2'b01; error_addr = 7'd53; end
            8'b00110010 : begin error_type = 2'b01; error_addr = 7'd52; end
            8'b10001001 : begin error_type = 2'b01; error_addr = 7'd51; end
            8'b01100100 : begin error_type = 2'b01; error_addr = 7'd50; end
            8'b10010010 : begin error_type = 2'b01; error_addr = 7'd49; end
            8'b01001001 : begin error_type = 2'b01; error_addr = 7'd48; end
            8'b10100100 : begin error_type = 2'b01; error_addr = 7'd47; end
            8'b01010010 : begin error_type = 2'b01; error_addr = 7'd46; end
            8'b00101001 : begin error_type = 2'b01; error_addr = 7'd45; end
            8'b10010100 : begin error_type = 2'b01; error_addr = 7'd44; end
            8'b01100010 : begin error_type = 2'b01; error_addr = 7'd43; end
            8'b00011001 : begin error_type = 2'b01; error_addr = 7'd42; end
            8'b10001100 : begin error_type = 2'b01; error_addr = 7'd41; end
            8'b01101000 : begin error_type = 2'b01; error_addr = 7'd40; end
            8'b00011010 : begin error_type = 2'b01; error_addr = 7'd39; end
            8'b10000101 : begin error_type = 2'b01; error_addr = 7'd38; end
            8'b01110000 : begin error_type = 2'b01; error_addr = 7'd37; end
            8'b10001010 : begin error_type = 2'b01; error_addr = 7'd36; end
            8'b01000101 : begin error_type = 2'b01; error_addr = 7'd35; end
            8'b10110000 : begin error_type = 2'b01; error_addr = 7'd34; end
            8'b01001010 : begin error_type = 2'b01; error_addr = 7'd33; end
            8'b00100101 : begin error_type = 2'b01; error_addr = 7'd32; end
            8'b10011000 : begin error_type = 2'b01; error_addr = 7'd31; end
            8'b01000110 : begin error_type = 2'b01; error_addr = 7'd30; end
            8'b10100001 : begin error_type = 2'b01; error_addr = 7'd29; end
            8'b01011000 : begin error_type = 2'b01; error_addr = 7'd28; end
            8'b10000110 : begin error_type = 2'b01; error_addr = 7'd27; end
            8'b01100001 : begin error_type = 2'b01; error_addr = 7'd26; end
            8'b00011100 : begin error_type = 2'b01; error_addr = 7'd25; end
            8'b10100010 : begin error_type = 2'b01; error_addr = 7'd24; end
            8'b01010001 : begin error_type = 2'b01; error_addr = 7'd23; end
            8'b01001100 : begin error_type = 2'b01; error_addr = 7'd22; end
            8'b11100011 : begin error_type = 2'b01; error_addr = 7'd21; end
            8'b01010100 : begin error_type = 2'b01; error_addr = 7'd20; end
            8'b11001000 : begin error_type = 2'b01; error_addr = 7'd19; end
            8'b01000011 : begin error_type = 2'b01; error_addr = 7'd18; end
            8'b00110100 : begin error_type = 2'b01; error_addr = 7'd17; end
            8'b10101000 : begin error_type = 2'b01; error_addr = 7'd16; end
            8'b00100011 : begin error_type = 2'b01; error_addr = 7'd15; end
            8'b01110101 : begin error_type = 2'b01; error_addr = 7'd14; end
            8'b10101101 : begin error_type = 2'b01; error_addr = 7'd13; end
            8'b00100110 : begin error_type = 2'b01; error_addr = 7'd12; end
            8'b01110110 : begin error_type = 2'b01; error_addr = 7'd11; end
            8'b00101111 : begin error_type = 2'b01; error_addr = 7'd10; end
            8'b10100111 : begin error_type = 2'b01; error_addr = 7'd9; end
            8'b00110111 : begin error_type = 2'b01; error_addr = 7'd8; end
            8'b01001111 : begin error_type = 2'b01; error_addr = 7'd7; end
            8'b10000011 : begin error_type = 2'b01; error_addr = 7'd6; end
            8'b00010011 : begin error_type = 2'b01; error_addr = 7'd5; end
            8'b01100111 : begin error_type = 2'b01; error_addr = 7'd4; end
            8'b00001011 : begin error_type = 2'b01; error_addr = 7'd3; end
            8'b10010001 : begin error_type = 2'b01; error_addr = 7'd2; end
            8'b01101101 : begin error_type = 2'b01; error_addr = 7'd1; end
            8'b00000111 : begin error_type = 2'b01; error_addr = 7'd0; end

            // Uncorrectable
            default : begin error_type = 2'b11; error_addr = 7'd0; end
        endcase
    end
endmodule

module SEC_DED_decoder(input [71:0] codeword, output [63:0] message, output [1:0] error_type);
    
    wire [7:0] syndrome;
    wire [6:0] error_addr;
    reg [71:0] decoded;

    SEC_DED_syndrome_gen syndrome_gen(.codeword(codeword), .syndrome(syndrome));
    SEC_DED_errorinfo_gen errorinfo_gen(.syndrome(syndrome), .error_addr(error_addr), .error_type(error_type));

    always @(error_type) begin
        if (error_type == 2'b00) begin       // No error
            decoded = codeword;
        end
        else if (error_type == 2'b01) begin  // SE
            decoded = codeword ^ (1 << error_addr);
        end
        else begin                          // Uncorrectable
            decoded = codeword;
        end
    end

    assign message = decoded[71:8];

endmodule