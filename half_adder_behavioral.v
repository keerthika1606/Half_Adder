--------Behavioral Model----------
module half_adder_-Behavioral(
    input a,b,
    output reg sum,carry
);
always @(a or b) begin
sum = a ^ b;
carry = a & b;
end
endmodule