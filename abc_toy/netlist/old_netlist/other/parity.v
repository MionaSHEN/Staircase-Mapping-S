// Benchmark "PARITYFDS" written by ABC on Sat Mar 30 18:58:45 2019

module PARITYFDS ( 
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
    q  );
  input  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
  output q;
  wire n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
    n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
    n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
    n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
    n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
    n88, n89, n90, n91, n92;
  nor2   g00(.a(o), .b(n), .O(n18));
  inv1   g01(.a(n), .O(n19));
  inv1   g02(.a(o), .O(n20));
  nor2   g03(.a(n20), .b(n19), .O(n21));
  nor2   g04(.a(n21), .b(n18), .O(n22));
  inv1   g05(.a(n22), .O(n23));
  inv1   g06(.a(m), .O(n24));
  nor2   g07(.a(p), .b(n24), .O(n25));
  inv1   g08(.a(p), .O(n26));
  nor2   g09(.a(n26), .b(m), .O(n27));
  nor2   g10(.a(n27), .b(n25), .O(n28));
  inv1   g11(.a(n28), .O(n29));
  nor2   g12(.a(n29), .b(n23), .O(n30));
  nor2   g13(.a(n28), .b(n22), .O(n31));
  nor2   g14(.a(n31), .b(n30), .O(n32));
  inv1   g15(.a(n32), .O(n33));
  inv1   g16(.a(k), .O(n34));
  nor2   g17(.a(l), .b(n34), .O(n35));
  inv1   g18(.a(l), .O(n36));
  nor2   g19(.a(n36), .b(k), .O(n37));
  nor2   g20(.a(n37), .b(n35), .O(n38));
  inv1   g21(.a(n38), .O(n39));
  inv1   g22(.a(i), .O(n40));
  nor2   g23(.a(j), .b(n40), .O(n41));
  inv1   g24(.a(j), .O(n42));
  nor2   g25(.a(n42), .b(i), .O(n43));
  nor2   g26(.a(n43), .b(n41), .O(n44));
  nor2   g27(.a(n44), .b(n39), .O(n45));
  inv1   g28(.a(n44), .O(n46));
  nor2   g29(.a(n46), .b(n38), .O(n47));
  nor2   g30(.a(n47), .b(n45), .O(n48));
  inv1   g31(.a(n48), .O(n49));
  nor2   g32(.a(n49), .b(n33), .O(n50));
  nor2   g33(.a(n48), .b(n32), .O(n51));
  nor2   g34(.a(n51), .b(n50), .O(n52));
  inv1   g35(.a(n52), .O(n53));
  nor2   g36(.a(g), .b(f), .O(n54));
  inv1   g37(.a(f), .O(n55));
  inv1   g38(.a(g), .O(n56));
  nor2   g39(.a(n56), .b(n55), .O(n57));
  nor2   g40(.a(n57), .b(n54), .O(n58));
  inv1   g41(.a(n58), .O(n59));
  inv1   g42(.a(e), .O(n60));
  nor2   g43(.a(h), .b(n60), .O(n61));
  inv1   g44(.a(h), .O(n62));
  nor2   g45(.a(n62), .b(e), .O(n63));
  nor2   g46(.a(n63), .b(n61), .O(n64));
  inv1   g47(.a(n64), .O(n65));
  nor2   g48(.a(n65), .b(n59), .O(n66));
  nor2   g49(.a(n64), .b(n58), .O(n67));
  nor2   g50(.a(n67), .b(n66), .O(n68));
  inv1   g51(.a(n68), .O(n69));
  inv1   g52(.a(c), .O(n70));
  nor2   g53(.a(d), .b(n70), .O(n71));
  inv1   g54(.a(d), .O(n72));
  nor2   g55(.a(n72), .b(c), .O(n73));
  nor2   g56(.a(n73), .b(n71), .O(n74));
  inv1   g57(.a(n74), .O(n75));
  inv1   g58(.a(a), .O(n76));
  nor2   g59(.a(b), .b(n76), .O(n77));
  inv1   g60(.a(b), .O(n78));
  nor2   g61(.a(n78), .b(a), .O(n79));
  nor2   g62(.a(n79), .b(n77), .O(n80));
  nor2   g63(.a(n80), .b(n75), .O(n81));
  inv1   g64(.a(n80), .O(n82));
  nor2   g65(.a(n82), .b(n74), .O(n83));
  nor2   g66(.a(n83), .b(n81), .O(n84));
  nor2   g67(.a(n84), .b(n69), .O(n85));
  inv1   g68(.a(n84), .O(n86));
  nor2   g69(.a(n86), .b(n68), .O(n87));
  nor2   g70(.a(n87), .b(n85), .O(n88));
  inv1   g71(.a(n88), .O(n89));
  nor2   g72(.a(n89), .b(n53), .O(n90));
  nor2   g73(.a(n88), .b(n52), .O(n91));
  nor2   g74(.a(n91), .b(n90), .O(n92));
  inv1   g75(.a(n92), .O(q));
endmodule


