module half_adder_tb;
reg a, b;
wire sum, carry;
// Instantiate Unit Under Test (UUT)
half_adder_gatelevel uut (   "Change instanation name for each flow"
 .a(a),
 .b(b),
 .sum(sum),
 .carry(carry)
);
initial begin
$display("Gate Level Half Adder Test");
$display("A B | Sum Carry");
$display("----------------");
a = 0; b = 0; #10 $display("%b %b | %b %b", a, b, sum,
carry);
a = 0; b = 1; #10 $display("%b %b | %b %b", a, b, sum,
carry);
a = 1; b = 0; #10 $display("%b %b | %b %b", a, b, sum,
carry);
a = 1; b = 1; #10 $display("%b %b | %b %b", a, b, sum,
carry);
$finish;
end
initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0, half_adder_tb);
end
endmodule