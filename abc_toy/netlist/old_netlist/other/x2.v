// Benchmark "x2" written by ABC on Sat Mar 30 18:58:45 2019

module x2 ( 
    a, b, c, d, e, f, g, h, i, j,
    k, l, m, n, o, p, q  );
  input  a, b, c, d, e, f, g, h, i, j;
  output k, l, m, n, o, p, q;
  wire n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n31, n32, n33, n34,
    n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n47, n48, n49, n50,
    n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
    n65, n66, n67, n68, n69, n70, n71, n73, n74, n75, n76, n77, n78, n79,
    n80, n81, n82, n83, n84;
  inv1   g00(.a(i), .O(n18));
  inv1   g01(.a(h), .O(n19));
  nor2   g02(.a(j), .b(n19), .O(n20));
  inv1   g03(.a(n20), .O(n21));
  nor2   g04(.a(n21), .b(n18), .O(n22));
  inv1   g05(.a(n22), .O(k));
  inv1   g06(.a(j), .O(n24));
  nor2   g07(.a(n24), .b(h), .O(n25));
  nor2   g08(.a(n20), .b(i), .O(n26));
  inv1   g09(.a(n26), .O(n27));
  nor2   g10(.a(n27), .b(n25), .O(n28));
  inv1   g11(.a(n28), .O(l));
  nor2   g12(.a(l), .b(j), .O(m));
  nor2   g13(.a(b), .b(a), .O(n31));
  inv1   g14(.a(n31), .O(n32));
  nor2   g15(.a(j), .b(n18), .O(n33));
  inv1   g16(.a(n33), .O(n34));
  nor2   g17(.a(h), .b(c), .O(n35));
  inv1   g18(.a(n35), .O(n36));
  nor2   g19(.a(n36), .b(n34), .O(n37));
  inv1   g20(.a(n37), .O(n38));
  nor2   g21(.a(n38), .b(n32), .O(n39));
  inv1   g22(.a(n39), .O(n));
  nor2   g23(.a(n24), .b(n18), .O(n41));
  inv1   g24(.a(g), .O(n42));
  nor2   g25(.a(n19), .b(n42), .O(n43));
  inv1   g26(.a(n43), .O(n44));
  nor2   g27(.a(n44), .b(n41), .O(n45));
  inv1   g28(.a(n45), .O(o));
  inv1   g29(.a(d), .O(n47));
  nor2   g30(.a(e), .b(n47), .O(n48));
  inv1   g31(.a(n48), .O(n49));
  nor2   g32(.a(n49), .b(j), .O(n50));
  inv1   g33(.a(n41), .O(n51));
  inv1   g34(.a(c), .O(n52));
  nor2   g35(.a(n32), .b(n52), .O(n53));
  inv1   g36(.a(n53), .O(n54));
  nor2   g37(.a(n54), .b(n51), .O(n55));
  nor2   g38(.a(n55), .b(n50), .O(n56));
  nor2   g39(.a(n56), .b(n19), .O(n57));
  nor2   g40(.a(h), .b(n52), .O(n58));
  inv1   g41(.a(n58), .O(n59));
  nor2   g42(.a(n59), .b(n32), .O(n60));
  nor2   g43(.a(n60), .b(n24), .O(n61));
  nor2   g44(.a(n61), .b(i), .O(n62));
  inv1   g45(.a(f), .O(n63));
  nor2   g46(.a(h), .b(n63), .O(n64));
  inv1   g47(.a(n64), .O(n65));
  nor2   g48(.a(n65), .b(n51), .O(n66));
  nor2   g49(.a(n66), .b(n42), .O(n67));
  inv1   g50(.a(n67), .O(n68));
  nor2   g51(.a(n68), .b(n62), .O(n69));
  inv1   g52(.a(n69), .O(n70));
  nor2   g53(.a(n70), .b(n57), .O(n71));
  inv1   g54(.a(n71), .O(p));
  nor2   g55(.a(n24), .b(c), .O(n73));
  inv1   g56(.a(n73), .O(n74));
  nor2   g57(.a(n74), .b(n32), .O(n75));
  inv1   g58(.a(e), .O(n76));
  nor2   g59(.a(n76), .b(n47), .O(n77));
  inv1   g60(.a(n77), .O(n78));
  nor2   g61(.a(n78), .b(n34), .O(n79));
  nor2   g62(.a(n79), .b(n75), .O(n80));
  nor2   g63(.a(n80), .b(n19), .O(n81));
  nor2   g64(.a(n68), .b(n28), .O(n82));
  inv1   g65(.a(n82), .O(n83));
  nor2   g66(.a(n83), .b(n81), .O(n84));
  inv1   g67(.a(n84), .O(q));
endmodule


