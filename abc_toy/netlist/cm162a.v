// Benchmark "CM162" written by ABC on Sat Mar 30 18:58:45 2019

module CM162 ( 
    a, b, c, d, e, f, g, h, i, j, k, l, m, n,
    o, p, q, r, s  );
  input  a, b, c, d, e, f, g, h, i, j, k, l, m, n;
  output o, p, q, r, s;
  wire n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
    n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48,
    n49, n50, n51, n52, n53, n54, n55, n56, n58, n59, n60, n61, n62, n63,
    n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n75, n76, n77;
  inv1   g00(.a(a), .O(n20));
  inv1   g01(.a(f), .O(n21));
  nor2   g02(.a(n21), .b(d), .O(n22));
  inv1   g03(.a(n22), .O(n23));
  nor2   g04(.a(n23), .b(n20), .O(n24));
  inv1   g05(.a(e), .O(n25));
  inv1   g06(.a(c), .O(n26));
  inv1   g07(.a(d), .O(n27));
  nor2   g08(.a(n27), .b(n26), .O(n28));
  inv1   g09(.a(n28), .O(n29));
  nor2   g10(.a(n29), .b(n25), .O(n30));
  inv1   g11(.a(n30), .O(n31));
  inv1   g12(.a(j), .O(n32));
  inv1   g13(.a(n), .O(n33));
  nor2   g14(.a(n33), .b(n32), .O(n34));
  inv1   g15(.a(n34), .O(n35));
  nor2   g16(.a(n35), .b(n31), .O(n36));
  nor2   g17(.a(n21), .b(n27), .O(n37));
  inv1   g18(.a(n37), .O(n38));
  nor2   g19(.a(n38), .b(n36), .O(n39));
  inv1   g20(.a(n39), .O(n40));
  nor2   g21(.a(n31), .b(i), .O(n41));
  inv1   g22(.a(i), .O(n42));
  nor2   g23(.a(n30), .b(n42), .O(n43));
  nor2   g24(.a(n43), .b(n41), .O(n44));
  inv1   g25(.a(n44), .O(n45));
  nor2   g26(.a(n45), .b(n40), .O(n46));
  nor2   g27(.a(n46), .b(n24), .O(o));
  inv1   g28(.a(b), .O(n48));
  nor2   g29(.a(n23), .b(n48), .O(n49));
  inv1   g30(.a(k), .O(n50));
  nor2   g31(.a(n41), .b(n50), .O(n51));
  inv1   g32(.a(n41), .O(n52));
  nor2   g33(.a(n52), .b(k), .O(n53));
  nor2   g34(.a(n53), .b(n40), .O(n54));
  inv1   g35(.a(n54), .O(n55));
  nor2   g36(.a(n55), .b(n51), .O(n56));
  nor2   g37(.a(n56), .b(n49), .O(p));
  inv1   g38(.a(g), .O(n58));
  nor2   g39(.a(n23), .b(n58), .O(n59));
  inv1   g40(.a(l), .O(n60));
  nor2   g41(.a(n53), .b(n60), .O(n61));
  nor2   g42(.a(l), .b(k), .O(n62));
  inv1   g43(.a(n62), .O(n63));
  nor2   g44(.a(n63), .b(n52), .O(n64));
  nor2   g45(.a(n64), .b(n40), .O(n65));
  inv1   g46(.a(n65), .O(n66));
  nor2   g47(.a(n66), .b(n61), .O(n67));
  nor2   g48(.a(n67), .b(n59), .O(q));
  inv1   g49(.a(h), .O(n69));
  nor2   g50(.a(n23), .b(n69), .O(n70));
  inv1   g51(.a(n64), .O(n71));
  nor2   g52(.a(n71), .b(m), .O(n72));
  inv1   g53(.a(m), .O(n73));
  nor2   g54(.a(n64), .b(n73), .O(n74));
  nor2   g55(.a(n74), .b(n40), .O(n75));
  inv1   g56(.a(n75), .O(n76));
  nor2   g57(.a(n76), .b(n72), .O(n77));
  nor2   g58(.a(n77), .b(n70), .O(r));
  nor2   g59(.a(n35), .b(n25), .O(s));
endmodule


