module full_adder_1bit ( 
    x0, x1, x2, x3,
    G5, G6, G7  );
  input  x0, x1, x2, x3;
  output G5, G6, G7;
  wire n1, n2, n3, n4, n5, n6;
  nor2	g00(.a(x2), .b(x3), .O(n2));
  nor2	g01(.a(x0), .b(x1), .O(n1));
  nor2	g02(.a(n1), .b(n2), .O(n4));
  nor2	g03(.a(x1), .b(x2), .O(n3));
  inv1  g08(.a(n4), .O(n5));
  nor2	g04(.a(n3), .b(n5), .O(n6));
  nor2	g05(.a(x1), .b(n2), .O(G5));
  nor2	g06(.a(n2), .b(n6), .O(G6));
  nor2	g07(.a(x3), .b(n6), .O(G7));
endmodule
