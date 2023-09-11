module TB();

wire [70:0] codeword;
wire [63:0] message;
wire [1:0]  error_type;
reg [70:0] codeword_test;

initial begin
    //SE
    //codeword_test[70]    = 1'b1; // error value
    //codeword_test[69:0]  = 70'b0;  

    // DE
    //codeword_test[70:69]    = 2'b11; // error value
    //codeword_test[68:0]     = 69'b0;  

    // SE + SE
    //codeword_test[70]       = 1'b1; // error value
    //codeword_test[69:65]    = 5'b0;
    //codeword_test[64]       = 1'b1; // error value
    //codeword_test[63:0]     = 64'b0;  

    // SE + DE
    codeword_test[70]       = 1'b1; // error value
    codeword_test[69:65]    = 5'b0;
    codeword_test[64:63]    = 2'b11; // error value
    codeword_test[62:0]     = 63'b0; 
end

assign codeword = codeword_test;

  //AMDCHIPKILL_decodeR(codeword_in, error_location_out, decode_result_out, data_out, error_value_out,syndrome0_out,syndrome1_out);
  SCC_4LC_decoder decoder(codeword, message, error_type);

  initial begin
    # 20;
    $display("codeword   :         %b",codeword);
    $display("message    :         %b",message);
    $display("error_type :         %b",error_type);
  end

endmodule