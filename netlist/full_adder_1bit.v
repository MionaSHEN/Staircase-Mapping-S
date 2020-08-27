// Benchmark "full_adder_1bit" written by ABC on Fri Dec 13 09:32:47 2019

module full_adder_1bit ( 
    A, B, Cin,
    S, Cout  );
  input  A, B, Cin;
  output S, Cout;
  wire new_n6_, new_n7_, new_n8_, new_n9_, new_n10_, new_n11_, new_n12_,
    new_n13_, new_n14_, new_n16_;
  inv1   g00(.a(Cin), .O(new_n6_));
  inv1   g01(.a(A), .O(new_n7_));
  inv1   g02(.a(B), .O(new_n8_));
  nor2   g03(.a(new_n8_), .b(new_n7_), .O(new_n9_));
  nor2   g04(.a(B), .b(A), .O(new_n10_));
  nor2   g05(.a(new_n10_), .b(new_n9_), .O(new_n11_));
  inv1   g06(.a(new_n11_), .O(new_n12_));
  nor2   g07(.a(new_n12_), .b(new_n6_), .O(new_n13_));
  nor2   g08(.a(new_n11_), .b(Cin), .O(new_n14_));
  nor2   g09(.a(new_n14_), .b(new_n13_), .O(S));
  nor2   g10(.a(new_n13_), .b(new_n9_), .O(new_n16_));
  inv1   g11(.a(new_n16_), .O(Cout));
endmodule


