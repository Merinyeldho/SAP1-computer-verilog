// to obtain t states
module state_counter (
      input clock,
      input res, output [5:0] q);
    reg[5:0] a;
    always @(negedge clk or res)
    if (reset)
        a = 6'b000001;
 
      else
        begin
        a <=  a<<1; 
        a[0]<=a[5];
        end
 
    assign q = a;
    endmodule