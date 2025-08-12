module priority_encoder_4to2 (
  input  [3:0] in,       // Inputs: I3 (highest), I2, I1, I0 (lowest)
    output reg [1:0] out,  // Binary output
    output reg valid       // Valid signal
);
    always @(*) begin
        valid = 1'b1; 
        casez (in)    
            4'b1???: out = 2'b11;
            4'b01??: out = 2'b10; 
            4'b001?: out = 2'b01; 
            4'b0001: out = 2'b00; 
            default: begin
                out   = 2'b00;   
                valid = 1'b0;     
            end
        endcase
    end
endmodule
