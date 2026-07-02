--------DataFlow Model----------
module half_adder_dataflow(
 input a, // First input bit
 input b, // Second input bit
 output sum, // Sum output
 output carry // Carry output
);
assign sum = a^b;
assign carry = a & b;
endmodule