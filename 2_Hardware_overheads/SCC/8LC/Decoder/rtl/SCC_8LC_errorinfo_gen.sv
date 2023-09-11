module SCC_8LC_errorinfo_gen(input [7:0] syndrome, output reg [6:0] error_addr, output reg [2:0] error_type);

    always @(syndrome) begin
        case (syndrome)
            // No error
            8'b00000000 : begin error_type = 3'b000; error_addr = 7'd0; end

            // SE
            8'b00110111 : begin error_type = 3'b001; error_addr = 7'd71; end
            8'b10010101 : begin error_type = 3'b001; error_addr = 7'd70; end
            8'b11000100 : begin error_type = 3'b001; error_addr = 7'd69; end
            8'b01100010 : begin error_type = 3'b001; error_addr = 7'd68; end
            8'b00110001 : begin error_type = 3'b001; error_addr = 7'd67; end
            8'b10010110 : begin error_type = 3'b001; error_addr = 7'd66; end
            8'b01001011 : begin error_type = 3'b001; error_addr = 7'd65; end
            8'b10101011 : begin error_type = 3'b001; error_addr = 7'd64; end
            8'b11011011 : begin error_type = 3'b001; error_addr = 7'd63; end
            8'b11100011 : begin error_type = 3'b001; error_addr = 7'd62; end
            8'b11111111 : begin error_type = 3'b001; error_addr = 7'd61; end
            8'b11110001 : begin error_type = 3'b001; error_addr = 7'd60; end
            8'b11110110 : begin error_type = 3'b001; error_addr = 7'd59; end
            8'b01111011 : begin error_type = 3'b001; error_addr = 7'd58; end
            8'b10110011 : begin error_type = 3'b001; error_addr = 7'd57; end
            8'b11010111 : begin error_type = 3'b001; error_addr = 7'd56; end
            8'b11100101 : begin error_type = 3'b001; error_addr = 7'd55; end
            8'b11111100 : begin error_type = 3'b001; error_addr = 7'd54; end
            8'b01111110 : begin error_type = 3'b001; error_addr = 7'd53; end
            8'b00111111 : begin error_type = 3'b001; error_addr = 7'd52; end
            8'b10010001 : begin error_type = 3'b001; error_addr = 7'd51; end
            8'b11000110 : begin error_type = 3'b001; error_addr = 7'd50; end
            8'b01100011 : begin error_type = 3'b001; error_addr = 7'd49; end
            8'b10111111 : begin error_type = 3'b001; error_addr = 7'd48; end
            8'b00001101 : begin error_type = 3'b001; error_addr = 7'd47; end
            8'b10001000 : begin error_type = 3'b001; error_addr = 7'd46; end
            8'b01000100 : begin error_type = 3'b001; error_addr = 7'd45; end
            8'b00100010 : begin error_type = 3'b001; error_addr = 7'd44; end
            8'b00010001 : begin error_type = 3'b001; error_addr = 7'd43; end
            8'b10000110 : begin error_type = 3'b001; error_addr = 7'd42; end
            8'b01000011 : begin error_type = 3'b001; error_addr = 7'd41; end
            8'b10101111 : begin error_type = 3'b001; error_addr = 7'd40; end
            8'b11011001 : begin error_type = 3'b001; error_addr = 7'd39; end
            8'b11100010 : begin error_type = 3'b001; error_addr = 7'd38; end
            8'b01110001 : begin error_type = 3'b001; error_addr = 7'd37; end
            8'b10110110 : begin error_type = 3'b001; error_addr = 7'd36; end
            8'b01011011 : begin error_type = 3'b001; error_addr = 7'd35; end
            8'b10100011 : begin error_type = 3'b001; error_addr = 7'd34; end
            8'b11011111 : begin error_type = 3'b001; error_addr = 7'd33; end
            8'b11100001 : begin error_type = 3'b001; error_addr = 7'd32; end
            8'b11111110 : begin error_type = 3'b001; error_addr = 7'd31; end
            8'b01111111 : begin error_type = 3'b001; error_addr = 7'd30; end
            8'b10110001 : begin error_type = 3'b001; error_addr = 7'd29; end
            8'b11010110 : begin error_type = 3'b001; error_addr = 7'd28; end
            8'b01101011 : begin error_type = 3'b001; error_addr = 7'd27; end
            8'b10111011 : begin error_type = 3'b001; error_addr = 7'd26; end
            8'b11010011 : begin error_type = 3'b001; error_addr = 7'd25; end
            8'b11100111 : begin error_type = 3'b001; error_addr = 7'd24; end
            8'b11001001 : begin error_type = 3'b001; error_addr = 7'd23; end
            8'b11101010 : begin error_type = 3'b001; error_addr = 7'd22; end
            8'b01110101 : begin error_type = 3'b001; error_addr = 7'd21; end
            8'b10110100 : begin error_type = 3'b001; error_addr = 7'd20; end
            8'b01011010 : begin error_type = 3'b001; error_addr = 7'd19; end
            8'b00101101 : begin error_type = 3'b001; error_addr = 7'd18; end
            8'b10011000 : begin error_type = 3'b001; error_addr = 7'd17; end
            8'b01001100 : begin error_type = 3'b001; error_addr = 7'd16; end
            8'b00100110 : begin error_type = 3'b001; error_addr = 7'd15; end
            8'b00010011 : begin error_type = 3'b001; error_addr = 7'd14; end
            8'b10000111 : begin error_type = 3'b001; error_addr = 7'd13; end
            8'b11001101 : begin error_type = 3'b001; error_addr = 7'd12; end
            8'b11101000 : begin error_type = 3'b001; error_addr = 7'd11; end
            8'b01110100 : begin error_type = 3'b001; error_addr = 7'd10; end
            8'b00111010 : begin error_type = 3'b001; error_addr = 7'd9; end
            8'b00011101 : begin error_type = 3'b001; error_addr = 7'd8; end
            8'b10000000 : begin error_type = 3'b001; error_addr = 7'd7; end
            8'b01000000 : begin error_type = 3'b001; error_addr = 7'd6; end
            8'b00100000 : begin error_type = 3'b001; error_addr = 7'd5; end
            8'b00010000 : begin error_type = 3'b001; error_addr = 7'd4; end
            8'b00001000 : begin error_type = 3'b001; error_addr = 7'd3; end
            8'b00000100 : begin error_type = 3'b001; error_addr = 7'd2; end
            8'b00000010 : begin error_type = 3'b001; error_addr = 7'd1; end
            8'b00000001 : begin error_type = 3'b001; error_addr = 7'd0; end

            // DE (DAE)
            8'b10100010 : begin error_type = 3'b010; error_addr = 7'd70; end
            8'b01010001 : begin error_type = 3'b010; error_addr = 7'd69; end
            8'b01010011 : begin error_type = 3'b010; error_addr = 7'd67; end
            8'b10100111 : begin error_type = 3'b010; error_addr = 7'd66; end
            8'b11100000 : begin error_type = 3'b010; error_addr = 7'd64; end
            8'b01110000 : begin error_type = 3'b010; error_addr = 7'd63; end
            8'b00011100 : begin error_type = 3'b010; error_addr = 7'd61; end
            8'b00001110 : begin error_type = 3'b010; error_addr = 7'd60; end
            8'b10001101 : begin error_type = 3'b010; error_addr = 7'd58; end
            8'b11001000 : begin error_type = 3'b010; error_addr = 7'd57; end
            8'b00110010 : begin error_type = 3'b010; error_addr = 7'd55; end
            8'b00011001 : begin error_type = 3'b010; error_addr = 7'd54; end
            8'b01000001 : begin error_type = 3'b010; error_addr = 7'd52; end
            8'b10101110 : begin error_type = 3'b010; error_addr = 7'd51; end
            8'b10100101 : begin error_type = 3'b010; error_addr = 7'd49; end
            8'b11011100 : begin error_type = 3'b010; error_addr = 7'd48; end
            8'b10000101 : begin error_type = 3'b010; error_addr = 7'd46; end
            8'b11001100 : begin error_type = 3'b010; error_addr = 7'd45; end
            8'b00110011 : begin error_type = 3'b010; error_addr = 7'd43; end
            8'b10010111 : begin error_type = 3'b010; error_addr = 7'd42; end
            8'b11101100 : begin error_type = 3'b010; error_addr = 7'd40; end
            8'b01110110 : begin error_type = 3'b010; error_addr = 7'd39; end
            8'b10010011 : begin error_type = 3'b010; error_addr = 7'd37; end
            8'b11000111 : begin error_type = 3'b010; error_addr = 7'd36; end
            8'b11111000 : begin error_type = 3'b010; error_addr = 7'd34; end
            8'b01111100 : begin error_type = 3'b010; error_addr = 7'd33; end
            8'b00011111 : begin error_type = 3'b010; error_addr = 7'd31; end
            8'b10000001 : begin error_type = 3'b010; error_addr = 7'd30; end
            8'b01100111 : begin error_type = 3'b010; error_addr = 7'd28; end
            8'b10111101 : begin error_type = 3'b010; error_addr = 7'd27; end
            8'b01101000 : begin error_type = 3'b010; error_addr = 7'd25; end
            8'b00110100 : begin error_type = 3'b010; error_addr = 7'd24; end
            8'b00100011 : begin error_type = 3'b010; error_addr = 7'd22; end
            8'b10011111 : begin error_type = 3'b010; error_addr = 7'd21; end
            8'b11101110 : begin error_type = 3'b010; error_addr = 7'd19; end
            8'b01110111 : begin error_type = 3'b010; error_addr = 7'd18; end
            8'b11010100 : begin error_type = 3'b010; error_addr = 7'd16; end
            8'b01101010 : begin error_type = 3'b010; error_addr = 7'd15; end
            8'b10010100 : begin error_type = 3'b010; error_addr = 7'd13; end
            8'b01001010 : begin error_type = 3'b010; error_addr = 7'd12; end
            8'b10011100 : begin error_type = 3'b010; error_addr = 7'd10; end
            8'b01001110 : begin error_type = 3'b010; error_addr = 7'd9; end
            8'b10011101 : begin error_type = 3'b010; error_addr = 7'd7; end
            8'b11000000 : begin error_type = 3'b010; error_addr = 7'd6; end
            8'b00110000 : begin error_type = 3'b010; error_addr = 7'd4; end
            8'b00011000 : begin error_type = 3'b010; error_addr = 7'd3; end
            8'b00000110 : begin error_type = 3'b010; error_addr = 7'd1; end
            8'b00000011 : begin error_type = 3'b010; error_addr = 7'd0; end

            // DE (non-DAE)
            8'b11110011 : begin error_type = 3'b011; error_addr = 7'd69; end
            8'b11110100 : begin error_type = 3'b011; error_addr = 7'd66; end
            8'b10010000 : begin error_type = 3'b011; error_addr = 7'd63; end
            8'b00010010 : begin error_type = 3'b011; error_addr = 7'd60; end
            8'b01000101 : begin error_type = 3'b011; error_addr = 7'd57; end
            8'b00101011 : begin error_type = 3'b011; error_addr = 7'd54; end
            8'b11101111 : begin error_type = 3'b011; error_addr = 7'd51; end
            8'b01111001 : begin error_type = 3'b011; error_addr = 7'd48; end
            8'b01001001 : begin error_type = 3'b011; error_addr = 7'd45; end
            8'b10100100 : begin error_type = 3'b011; error_addr = 7'd42; end
            8'b10011010 : begin error_type = 3'b011; error_addr = 7'd39; end
            8'b01010100 : begin error_type = 3'b011; error_addr = 7'd36; end
            8'b10000100 : begin error_type = 3'b011; error_addr = 7'd33; end
            8'b10011110 : begin error_type = 3'b011; error_addr = 7'd30; end
            8'b11011010 : begin error_type = 3'b011; error_addr = 7'd27; end
            8'b01011100 : begin error_type = 3'b011; error_addr = 7'd24; end
            8'b10111100 : begin error_type = 3'b011; error_addr = 7'd21; end
            8'b10011001 : begin error_type = 3'b011; error_addr = 7'd18; end
            8'b10111110 : begin error_type = 3'b011; error_addr = 7'd15; end
            8'b11011110 : begin error_type = 3'b011; error_addr = 7'd12; end
            8'b11010010 : begin error_type = 3'b011; error_addr = 7'd9; end
            8'b01011101 : begin error_type = 3'b011; error_addr = 7'd6; end
            8'b00101000 : begin error_type = 3'b011; error_addr = 7'd3; end
            8'b00000101 : begin error_type = 3'b011; error_addr = 7'd0; end

            // TE
            8'b01100110 : begin error_type = 3'b100; error_addr = 7'd69; end
            8'b11000101 : begin error_type = 3'b100; error_addr = 7'd66; end
            8'b00111011 : begin error_type = 3'b100; error_addr = 7'd63; end
            8'b11101101 : begin error_type = 3'b100; error_addr = 7'd60; end
            8'b00111110 : begin error_type = 3'b100; error_addr = 7'd57; end
            8'b11001110 : begin error_type = 3'b100; error_addr = 7'd54; end
            8'b11010000 : begin error_type = 3'b100; error_addr = 7'd51; end
            8'b00011010 : begin error_type = 3'b100; error_addr = 7'd48; end
            8'b11000001 : begin error_type = 3'b100; error_addr = 7'd45; end
            8'b10110101 : begin error_type = 3'b100; error_addr = 7'd42; end
            8'b00110101 : begin error_type = 3'b100; error_addr = 7'd39; end
            8'b00100101 : begin error_type = 3'b100; error_addr = 7'd36; end
            8'b00100111 : begin error_type = 3'b100; error_addr = 7'd33; end
            8'b01100000 : begin error_type = 3'b100; error_addr = 7'd30; end
            8'b00001100 : begin error_type = 3'b100; error_addr = 7'd27; end
            8'b10001111 : begin error_type = 3'b100; error_addr = 7'd24; end
            8'b01010110 : begin error_type = 3'b100; error_addr = 7'd21; end
            8'b11000011 : begin error_type = 3'b100; error_addr = 7'd18; end
            8'b11110010 : begin error_type = 3'b100; error_addr = 7'd15; end
            8'b01011001 : begin error_type = 3'b100; error_addr = 7'd12; end
            8'b10100110 : begin error_type = 3'b100; error_addr = 7'd9; end
            8'b11011101 : begin error_type = 3'b100; error_addr = 7'd6; end
            8'b00111000 : begin error_type = 3'b100; error_addr = 7'd3; end
            8'b00000111 : begin error_type = 3'b100; error_addr = 7'd0; end

            // Uncorrectable
            default : begin error_type = 3'b111; error_addr = 7'd0; end
        endcase
    end
endmodule
