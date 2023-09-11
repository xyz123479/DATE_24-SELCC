module SCC_8LC_decoder(input [71:0] codeword, output [63:0] message, output [2:0] error_type_result);
    
    wire [7:0] syndrome;
    wire [6:0] error_addr;
    wire [2:0] error_type;
    reg [71:0] decoded;

    SCC_8LC_syndrome_gen syndrome_gen(.codeword(codeword), .syndrome(syndrome));
    SCC_8LC_errorinfo_gen errorinfo_gen(.syndrome(syndrome), .error_addr(error_addr), .error_type(error_type));

    always_comb begin
        if (error_type == 3'b000) begin       // No error
            decoded = codeword;
        end
        else if (error_type == 3'b001) begin  // SE
            decoded = codeword ^ (1 << error_addr);
        end
        else if (error_type == 3'b010) begin  // DE (DAE)
            decoded = codeword ^ (3 << error_addr);
        end
        else if (error_type == 3'b011) begin  // DE (non-DAE)
            decoded = codeword ^ (5 << error_addr);
        end
        else if (error_type == 3'b100) begin  // TE
            decoded = codeword ^ (7 << error_addr);
        end
        else begin
            decoded = codeword;
        end
    end

    assign error_type_result = error_type;
    assign message = decoded[71:8];

endmodule