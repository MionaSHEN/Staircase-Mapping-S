// Benchmark "full_adder_1bit" written by ABC on Sun Mar 24 18:53:00 2019

module full_adder_1bit ( 
    A, B, Cin,
    S, Cout  );
  input  A, B, Cin;
  output S, Cout;
  wire n6, n7, n8, n9, n10, n11, n12, n13, n14, n16;
  inv1   g00(.a(Cin), .O(n6));
  inv1   g01(.a(A), .O(n7));
  inv1   g02(.a(B), .O(n8));
  nor2   g03(.a(n8), .b(n7), .O(n9));
  nor2   g04(.a(B), .b(A), .O(n10));
  nor2   g05(.a(n10), .b(n9), .O(n11));
  inv1   g06(.a(n11), .O(n12));
  nor2   g07(.a(n12), .b(n6), .O(n13));
  nor2   g08(.a(n11), .b(Cin), .O(n14));
  nor2   g09(.a(n14), .b(n13), .O(S));
  nor2   g10(.a(n13), .b(n9), .O(n16));
  inv1   g11(.a(n16), .O(Cout));
endmodule


