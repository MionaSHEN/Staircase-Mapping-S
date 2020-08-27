// Benchmark "CM163" written by ABC on Sat Mar 30 18:58:45 2019

module CM163 ( 
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
    q, r, s, t, u  );
  input  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
  output q, r, s, t, u;
  wire n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
    n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n51,
    n52, n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64, n65, n66,
    n67, n68, n69, n70, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81;
  inv1   g00(.a(a), .O(n22));
  inv1   g01(.a(f), .O(n23));
  nor2   g02(.a(n23), .b(e), .O(n24));
  inv1   g03(.a(n24), .O(n25));
  nor2   g04(.a(n25), .b(n22), .O(n26));
  inv1   g05(.a(j), .O(n27));
  inv1   g06(.a(c), .O(n28));
  inv1   g07(.a(d), .O(n29));
  nor2   g08(.a(n29), .b(n28), .O(n30));
  nor2   g09(.a(n30), .b(n27), .O(n31));
  inv1   g10(.a(n30), .O(n32));
  nor2   g11(.a(n32), .b(j), .O(n33));
  inv1   g12(.a(e), .O(n34));
  nor2   g13(.a(n23), .b(n34), .O(n35));
  inv1   g14(.a(n35), .O(n36));
  nor2   g15(.a(n36), .b(n33), .O(n37));
  inv1   g16(.a(n37), .O(n38));
  nor2   g17(.a(n38), .b(n31), .O(n39));
  nor2   g18(.a(n39), .b(n26), .O(q));
  inv1   g19(.a(b), .O(n41));
  nor2   g20(.a(n25), .b(n41), .O(n42));
  inv1   g21(.a(n33), .O(n43));
  nor2   g22(.a(n43), .b(l), .O(n44));
  inv1   g23(.a(l), .O(n45));
  nor2   g24(.a(n33), .b(n45), .O(n46));
  nor2   g25(.a(n46), .b(n36), .O(n47));
  inv1   g26(.a(n47), .O(n48));
  nor2   g27(.a(n48), .b(n44), .O(n49));
  nor2   g28(.a(n49), .b(n42), .O(r));
  inv1   g29(.a(g), .O(n51));
  nor2   g30(.a(n25), .b(n51), .O(n52));
  inv1   g31(.a(m), .O(n53));
  nor2   g32(.a(n44), .b(n53), .O(n54));
  nor2   g33(.a(m), .b(l), .O(n55));
  inv1   g34(.a(n55), .O(n56));
  nor2   g35(.a(n56), .b(n43), .O(n57));
  nor2   g36(.a(n57), .b(n36), .O(n58));
  inv1   g37(.a(n58), .O(n59));
  nor2   g38(.a(n59), .b(n54), .O(n60));
  nor2   g39(.a(n60), .b(n52), .O(s));
  inv1   g40(.a(h), .O(n62));
  nor2   g41(.a(n25), .b(n62), .O(n63));
  inv1   g42(.a(n57), .O(n64));
  nor2   g43(.a(n64), .b(n), .O(n65));
  inv1   g44(.a(n), .O(n66));
  nor2   g45(.a(n57), .b(n66), .O(n67));
  nor2   g46(.a(n67), .b(n36), .O(n68));
  inv1   g47(.a(n68), .O(n69));
  nor2   g48(.a(n69), .b(n65), .O(n70));
  nor2   g49(.a(n70), .b(n63), .O(t));
  inv1   g50(.a(i), .O(n72));
  nor2   g51(.a(n72), .b(n29), .O(n73));
  inv1   g52(.a(n73), .O(n74));
  inv1   g53(.a(p), .O(n75));
  inv1   g54(.a(k), .O(n76));
  inv1   g55(.a(o), .O(n77));
  nor2   g56(.a(n77), .b(n76), .O(n78));
  inv1   g57(.a(n78), .O(n79));
  nor2   g58(.a(n79), .b(n75), .O(n80));
  inv1   g59(.a(n80), .O(n81));
  nor2   g60(.a(n81), .b(n74), .O(u));
endmodule


