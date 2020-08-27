// Benchmark "./input_blif/5xp1" written by ABC on Sat Mar 30 19:42:07 2019

module s5xp1  ( 
    x0, x1, x2, x3, x4, x5, x6,
    z0, z1, z2, z3, z4, z5, z6, z7, z8, z9  );
  input  x0, x1, x2, x3, x4, x5, x6;
  output z0, z1, z2, z3, z4, z5, z6, z7, z8, z9;
  wire n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n32, n33,
    n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
    n49, n50, n51, n52, n53, n55, n56, n57, n58, n59, n60, n61, n62, n63,
    n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
    n78, n79, n80, n81, n82, n83, n84, n85, n87, n88, n89, n90, n91, n92,
    n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
    n106, n107, n109, n110, n111, n112, n113, n114, n115, n116, n119, n120,
    n121, n122, n123, n125, n126, n127, n128;
  inv1   g000(.a(x5), .O(n18));
  inv1   g001(.a(x4), .O(n19));
  inv1   g002(.a(x6), .O(n20));
  nor2   g003(.a(n20), .b(n19), .O(n21));
  inv1   g004(.a(x2), .O(n22));
  inv1   g005(.a(x3), .O(z8));
  nor2   g006(.a(z8), .b(n22), .O(n24));
  nor2   g007(.a(n24), .b(x0), .O(n25));
  nor2   g008(.a(x1), .b(x0), .O(n26));
  nor2   g009(.a(n26), .b(n19), .O(n27));
  inv1   g010(.a(n27), .O(n28));
  nor2   g011(.a(n28), .b(n25), .O(n29));
  nor2   g012(.a(n29), .b(n21), .O(n30));
  nor2   g013(.a(n30), .b(n18), .O(z9));
  inv1   g014(.a(n25), .O(n32));
  nor2   g015(.a(n32), .b(x1), .O(n33));
  nor2   g016(.a(n20), .b(n18), .O(n34));
  inv1   g017(.a(n34), .O(n35));
  nor2   g018(.a(n35), .b(n33), .O(n36));
  nor2   g019(.a(n36), .b(x4), .O(n37));
  nor2   g020(.a(n37), .b(z9), .O(z0));
  inv1   g021(.a(x0), .O(n39));
  nor2   g022(.a(x2), .b(x1), .O(n40));
  nor2   g023(.a(n40), .b(n20), .O(n41));
  inv1   g024(.a(x1), .O(n42));
  nor2   g025(.a(x3), .b(x2), .O(n43));
  nor2   g026(.a(n43), .b(n42), .O(n44));
  inv1   g027(.a(n44), .O(n45));
  nor2   g028(.a(n45), .b(n19), .O(n46));
  nor2   g029(.a(n46), .b(n41), .O(n47));
  nor2   g030(.a(n47), .b(n39), .O(n48));
  nor2   g031(.a(n21), .b(x5), .O(n49));
  inv1   g032(.a(n49), .O(n50));
  nor2   g033(.a(n50), .b(n48), .O(n51));
  nor2   g034(.a(n36), .b(z9), .O(n52));
  inv1   g035(.a(n52), .O(n53));
  nor2   g036(.a(n53), .b(n51), .O(z1));
  nor2   g037(.a(n18), .b(n39), .O(n55));
  nor2   g038(.a(n55), .b(x4), .O(n56));
  inv1   g039(.a(n56), .O(n57));
  nor2   g040(.a(n44), .b(x5), .O(n58));
  nor2   g041(.a(n58), .b(n39), .O(n59));
  inv1   g042(.a(n24), .O(n60));
  nor2   g043(.a(n60), .b(n18), .O(n61));
  nor2   g044(.a(n61), .b(n59), .O(n62));
  nor2   g045(.a(n62), .b(n45), .O(n63));
  nor2   g046(.a(n63), .b(n57), .O(n64));
  nor2   g047(.a(n62), .b(n19), .O(n65));
  nor2   g048(.a(n65), .b(x6), .O(n66));
  inv1   g049(.a(n66), .O(n67));
  nor2   g050(.a(n67), .b(n64), .O(n68));
  inv1   g051(.a(n65), .O(n69));
  nor2   g052(.a(x5), .b(x0), .O(n70));
  nor2   g053(.a(x3), .b(x0), .O(n71));
  nor2   g054(.a(n71), .b(n22), .O(n72));
  nor2   g055(.a(n72), .b(x1), .O(n73));
  nor2   g056(.a(n73), .b(n70), .O(n74));
  nor2   g057(.a(n74), .b(n57), .O(n75));
  nor2   g058(.a(n40), .b(n39), .O(n76));
  nor2   g059(.a(n76), .b(x5), .O(n77));
  nor2   g060(.a(n77), .b(n28), .O(n78));
  nor2   g061(.a(n78), .b(n75), .O(n79));
  inv1   g062(.a(n79), .O(n80));
  nor2   g063(.a(n80), .b(n69), .O(n81));
  nor2   g064(.a(n79), .b(n20), .O(n82));
  nor2   g065(.a(n82), .b(n81), .O(n83));
  inv1   g066(.a(n83), .O(n84));
  nor2   g067(.a(n84), .b(n68), .O(n85));
  inv1   g068(.a(n85), .O(z2));
  inv1   g069(.a(n72), .O(n87));
  nor2   g070(.a(x6), .b(x1), .O(n88));
  nor2   g071(.a(n88), .b(n87), .O(n89));
  nor2   g072(.a(z8), .b(n39), .O(n90));
  nor2   g073(.a(n90), .b(x6), .O(n91));
  nor2   g074(.a(n91), .b(n42), .O(n92));
  nor2   g075(.a(n70), .b(n55), .O(n93));
  inv1   g076(.a(n93), .O(n94));
  nor2   g077(.a(n94), .b(n92), .O(n95));
  inv1   g078(.a(n95), .O(n96));
  nor2   g079(.a(n96), .b(n89), .O(n97));
  nor2   g080(.a(n88), .b(n73), .O(n98));
  inv1   g081(.a(n98), .O(n99));
  nor2   g082(.a(n18), .b(z8), .O(n100));
  nor2   g083(.a(n72), .b(x6), .O(n101));
  inv1   g084(.a(n101), .O(n102));
  nor2   g085(.a(n102), .b(n100), .O(n103));
  nor2   g086(.a(n103), .b(n93), .O(n104));
  inv1   g087(.a(n104), .O(n105));
  nor2   g088(.a(n105), .b(n99), .O(n106));
  nor2   g089(.a(n106), .b(n97), .O(n107));
  inv1   g090(.a(n107), .O(z3));
  nor2   g091(.a(n101), .b(n98), .O(n109));
  nor2   g092(.a(n43), .b(n20), .O(n110));
  inv1   g093(.a(n110), .O(n111));
  nor2   g094(.a(n111), .b(n25), .O(n112));
  nor2   g095(.a(n102), .b(n90), .O(n113));
  nor2   g096(.a(n113), .b(n112), .O(n114));
  nor2   g097(.a(n114), .b(n42), .O(n115));
  nor2   g098(.a(n115), .b(n109), .O(n116));
  inv1   g099(.a(n116), .O(z4));
  nor2   g100(.a(n43), .b(n24), .O(z7));
  inv1   g101(.a(z7), .O(n119));
  nor2   g102(.a(n119), .b(n40), .O(n120));
  nor2   g103(.a(n120), .b(x0), .O(n121));
  inv1   g104(.a(n120), .O(n122));
  nor2   g105(.a(n122), .b(n39), .O(n123));
  nor2   g106(.a(n123), .b(n121), .O(z5));
  nor2   g107(.a(z8), .b(x2), .O(n125));
  inv1   g108(.a(n125), .O(n126));
  nor2   g109(.a(n126), .b(n42), .O(n127));
  nor2   g110(.a(n125), .b(x1), .O(n128));
  nor2   g111(.a(n128), .b(n127), .O(z6));
endmodule


