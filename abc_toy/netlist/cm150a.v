// Benchmark "CM150" written by ABC on Sat Mar 30 18:58:45 2019

module CM150 ( 
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u,
    v  );
  input  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u;
  output v;
  wire n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
    n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
    n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
    n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
    n79, n80, n81, n82, n83;
  inv1   g00(.a(s), .O(n23));
  nor2   g01(.a(q), .b(m), .O(n24));
  inv1   g02(.a(q), .O(n25));
  nor2   g03(.a(n25), .b(n), .O(n26));
  nor2   g04(.a(n26), .b(r), .O(n27));
  inv1   g05(.a(n27), .O(n28));
  nor2   g06(.a(n28), .b(n24), .O(n29));
  nor2   g07(.a(q), .b(o), .O(n30));
  inv1   g08(.a(r), .O(n31));
  nor2   g09(.a(n25), .b(p), .O(n32));
  nor2   g10(.a(n32), .b(n31), .O(n33));
  inv1   g11(.a(n33), .O(n34));
  nor2   g12(.a(n34), .b(n30), .O(n35));
  nor2   g13(.a(n35), .b(n29), .O(n36));
  nor2   g14(.a(n36), .b(n23), .O(n37));
  inv1   g15(.a(t), .O(n38));
  nor2   g16(.a(n25), .b(l), .O(n39));
  nor2   g17(.a(q), .b(k), .O(n40));
  nor2   g18(.a(n40), .b(n31), .O(n41));
  inv1   g19(.a(n41), .O(n42));
  nor2   g20(.a(n42), .b(n39), .O(n43));
  nor2   g21(.a(n25), .b(j), .O(n44));
  nor2   g22(.a(q), .b(i), .O(n45));
  nor2   g23(.a(n45), .b(r), .O(n46));
  inv1   g24(.a(n46), .O(n47));
  nor2   g25(.a(n47), .b(n44), .O(n48));
  nor2   g26(.a(n48), .b(n43), .O(n49));
  nor2   g27(.a(n49), .b(s), .O(n50));
  nor2   g28(.a(n50), .b(n38), .O(n51));
  inv1   g29(.a(n51), .O(n52));
  nor2   g30(.a(n52), .b(n37), .O(n53));
  nor2   g31(.a(q), .b(e), .O(n54));
  nor2   g32(.a(n25), .b(f), .O(n55));
  nor2   g33(.a(n55), .b(r), .O(n56));
  inv1   g34(.a(n56), .O(n57));
  nor2   g35(.a(n57), .b(n54), .O(n58));
  nor2   g36(.a(q), .b(g), .O(n59));
  nor2   g37(.a(n25), .b(h), .O(n60));
  nor2   g38(.a(n60), .b(n31), .O(n61));
  inv1   g39(.a(n61), .O(n62));
  nor2   g40(.a(n62), .b(n59), .O(n63));
  nor2   g41(.a(n63), .b(n58), .O(n64));
  nor2   g42(.a(n64), .b(n23), .O(n65));
  nor2   g43(.a(n25), .b(d), .O(n66));
  nor2   g44(.a(q), .b(c), .O(n67));
  nor2   g45(.a(n67), .b(n31), .O(n68));
  inv1   g46(.a(n68), .O(n69));
  nor2   g47(.a(n69), .b(n66), .O(n70));
  nor2   g48(.a(n25), .b(b), .O(n71));
  nor2   g49(.a(q), .b(a), .O(n72));
  nor2   g50(.a(n72), .b(r), .O(n73));
  inv1   g51(.a(n73), .O(n74));
  nor2   g52(.a(n74), .b(n71), .O(n75));
  nor2   g53(.a(n75), .b(n70), .O(n76));
  nor2   g54(.a(n76), .b(s), .O(n77));
  nor2   g55(.a(n77), .b(t), .O(n78));
  inv1   g56(.a(n78), .O(n79));
  nor2   g57(.a(n79), .b(n65), .O(n80));
  nor2   g58(.a(n80), .b(u), .O(n81));
  inv1   g59(.a(n81), .O(n82));
  nor2   g60(.a(n82), .b(n53), .O(n83));
  inv1   g61(.a(n83), .O(v));
endmodule


