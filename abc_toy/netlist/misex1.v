// Benchmark "./input_blif/misex1" written by ABC on Sat Mar 30 19:40:57 2019

module \./input_blif/misex1  ( 
    dmpst3, dmpst2, dmpst1, dmpst0, xskip, yskip, page, rmwB,
    dmnst3B, dmnst2B, dmnst1B, dmnst0B, adctlp2B, adctlp1B, adctlp0B  );
  input  dmpst3, dmpst2, dmpst1, dmpst0, xskip, yskip, page, rmwB;
  output dmnst3B, dmnst2B, dmnst1B, dmnst0B, adctlp2B, adctlp1B, adctlp0B;
  wire n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30,
    n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
    n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
    n60, n61, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
    n75, n76, n77, n78, n79, n81, n82, n83, n85, n87, n88, n89, n90, n91,
    n92;
  inv1   g00(.a(dmpst0), .O(n16));
  inv1   g01(.a(dmpst2), .O(n17));
  nor2   g02(.a(n17), .b(dmpst3), .O(n18));
  nor2   g03(.a(n18), .b(n16), .O(n19));
  inv1   g04(.a(dmpst1), .O(n20));
  inv1   g05(.a(dmpst3), .O(n21));
  nor2   g06(.a(dmpst2), .b(n21), .O(n22));
  nor2   g07(.a(n22), .b(dmpst0), .O(n23));
  nor2   g08(.a(n23), .b(n20), .O(n24));
  inv1   g09(.a(n24), .O(n25));
  nor2   g10(.a(n25), .b(n19), .O(dmnst3B));
  inv1   g11(.a(n22), .O(n27));
  nor2   g12(.a(n16), .b(dmpst1), .O(n28));
  inv1   g13(.a(n28), .O(n29));
  nor2   g14(.a(n29), .b(n27), .O(n30));
  nor2   g15(.a(dmpst0), .b(n20), .O(n31));
  inv1   g16(.a(n31), .O(n32));
  nor2   g17(.a(n32), .b(yskip), .O(n33));
  nor2   g18(.a(n20), .b(n17), .O(n34));
  nor2   g19(.a(n34), .b(dmpst3), .O(n35));
  inv1   g20(.a(n35), .O(n36));
  nor2   g21(.a(n36), .b(n33), .O(n37));
  inv1   g22(.a(n37), .O(n38));
  inv1   g23(.a(page), .O(n39));
  nor2   g24(.a(n39), .b(dmpst0), .O(n40));
  nor2   g25(.a(dmpst1), .b(dmpst2), .O(n41));
  inv1   g26(.a(n41), .O(n42));
  nor2   g27(.a(n42), .b(n40), .O(n43));
  nor2   g28(.a(n43), .b(n38), .O(n44));
  nor2   g29(.a(n44), .b(n30), .O(n45));
  inv1   g30(.a(n45), .O(dmnst2B));
  inv1   g31(.a(xskip), .O(n47));
  nor2   g32(.a(n47), .b(dmpst1), .O(n48));
  nor2   g33(.a(n48), .b(dmpst0), .O(n49));
  nor2   g34(.a(n49), .b(n17), .O(n50));
  inv1   g35(.a(yskip), .O(n51));
  nor2   g36(.a(n51), .b(n20), .O(n52));
  nor2   g37(.a(n39), .b(dmpst1), .O(n53));
  nor2   g38(.a(dmpst0), .b(dmpst2), .O(n54));
  inv1   g39(.a(n54), .O(n55));
  nor2   g40(.a(n55), .b(n53), .O(n56));
  inv1   g41(.a(n56), .O(n57));
  nor2   g42(.a(n57), .b(n52), .O(n58));
  nor2   g43(.a(n58), .b(n50), .O(n59));
  nor2   g44(.a(n59), .b(dmpst3), .O(n60));
  nor2   g45(.a(n60), .b(n30), .O(n61));
  inv1   g46(.a(n61), .O(dmnst1B));
  nor2   g47(.a(n31), .b(dmpst3), .O(n63));
  nor2   g48(.a(n31), .b(n28), .O(n64));
  nor2   g49(.a(n64), .b(dmpst2), .O(n65));
  inv1   g50(.a(n65), .O(n66));
  nor2   g51(.a(n66), .b(n63), .O(n67));
  inv1   g52(.a(n67), .O(n68));
  nor2   g53(.a(n37), .b(n20), .O(n69));
  inv1   g54(.a(n69), .O(n70));
  nor2   g55(.a(n70), .b(n68), .O(n71));
  inv1   g56(.a(rmwB), .O(n72));
  nor2   g57(.a(xskip), .b(dmpst0), .O(n73));
  nor2   g58(.a(n73), .b(n72), .O(n74));
  inv1   g59(.a(n18), .O(n75));
  nor2   g60(.a(n75), .b(dmpst1), .O(n76));
  inv1   g61(.a(n76), .O(n77));
  nor2   g62(.a(n77), .b(n74), .O(n78));
  nor2   g63(.a(n78), .b(n71), .O(n79));
  inv1   g64(.a(n79), .O(dmnst0B));
  inv1   g65(.a(n63), .O(n81));
  nor2   g66(.a(n65), .b(n81), .O(n82));
  nor2   g67(.a(n82), .b(n67), .O(n83));
  inv1   g68(.a(n83), .O(adctlp2B));
  nor2   g69(.a(dmnst2B), .b(dmnst3B), .O(n85));
  inv1   g70(.a(n85), .O(adctlp1B));
  nor2   g71(.a(xskip), .b(dmpst1), .O(n87));
  nor2   g72(.a(n87), .b(dmpst0), .O(n88));
  nor2   g73(.a(n88), .b(n75), .O(n89));
  nor2   g74(.a(n89), .b(n30), .O(n90));
  inv1   g75(.a(n90), .O(n91));
  nor2   g76(.a(n91), .b(n71), .O(n92));
  inv1   g77(.a(n92), .O(adctlp0B));
endmodule


