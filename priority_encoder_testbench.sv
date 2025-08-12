module priority_encoder_4to2_tb;
    reg  [3:0] in;
    wire [1:0] out;
    wire valid;

    priority_encoder_4to2 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
      $dumpfile("priority_encoder.vcd");
      $dumpvars(1,priority_encoder_4to2_tb);
      $display(" IN  | OUT  | VAILD" );
      $monitor("%b | %b   | %b", in, out, valid);
        in = 4'b0000; #10; // No input
        in = 4'b0001; #10; 
        in = 4'b0010; #10; 
        in = 4'b0011; #10; 
        in = 4'b0100; #10; 
        in = 4'b0110; #10; 
        in = 4'b1000; #10; 
        in = 4'b1011; #10; 
        $finish;
    end
endmodule
