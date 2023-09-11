module SCC_4LC_decoder(input [70:0] codeword, output [63:0] message, output [1:0] error_type_result);
    
    wire [6:0] syndrome;
    wire [6:0] error_addr;
    wire [1:0] error_type;
    reg [70:0] decoded;

    SCC_4LC_syndrome_gen syndrome_gen(.codeword(codeword), .syndrome(syndrome));
    SCC_4LC_errorinfo_gen errorinfo_gen(.syndrome(syndrome), .error_addr(error_addr), .error_type(error_type));

    always_comb begin
        if (error_type == 2'b00) begin       // No error
            $display("No error case!");
            decoded = codeword;
        end
        else if (error_type == 2'b01) begin  // SE
            $display("SE case!");
            decoded = codeword ^ (1 << error_addr);
        end
        else if (error_type == 2'b10) begin  // DE (DAE)
            $display("DE (DAE) case!");
            decoded = codeword ^ (3 << error_addr);
        end
        else begin                          // Uncorrectable
            $display("UE case!");
            decoded = codeword;
        end
    end

    assign error_type_result = error_type;
    assign message = decoded[70:7];

endmodule