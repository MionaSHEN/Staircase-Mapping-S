// Benchmark "c432_blif" written by ABC on Sun Mar 24 18:39:12 2019

module c432_blif  ( 
    G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat, G27gat,
    G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat, G56gat,
    G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat, G86gat,
    G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat, G112gat,
    G115gat,
    G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat  );
  input  G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat,
    G27gat, G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat,
    G56gat, G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat,
    G86gat, G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat,
    G112gat, G115gat;
  output G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat;
  wire n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
    n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
    n72, n73, n74, n75, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86,
    n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
    n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
    n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
    n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
    n137, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
    n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
    n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
    n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
    n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
    n198, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
    n211, n212, n213, n214, n215, n216, n217, n218, n219, n221, n222, n223,
    n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
    n236, n237, n238, n239, n241, n242, n244, n245, n246, n247, n248, n249,
    n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260;
  inv1   g000(.a(G95gat), .O(n44));
  nor2   g001(.a(n44), .b(G89gat), .O(n45));
  inv1   g002(.a(G82gat), .O(n46));
  nor2   g003(.a(n46), .b(G76gat), .O(n47));
  inv1   g004(.a(G108gat), .O(n48));
  nor2   g005(.a(n48), .b(G102gat), .O(n49));
  nor2   g006(.a(n49), .b(n47), .O(n50));
  inv1   g007(.a(n50), .O(n51));
  nor2   g008(.a(n51), .b(n45), .O(n52));
  inv1   g009(.a(n52), .O(n53));
  inv1   g010(.a(G56gat), .O(n54));
  nor2   g011(.a(n54), .b(G50gat), .O(n55));
  inv1   g012(.a(G17gat), .O(n56));
  nor2   g013(.a(n56), .b(G11gat), .O(n57));
  nor2   g014(.a(n57), .b(n55), .O(n58));
  inv1   g015(.a(n58), .O(n59));
  inv1   g016(.a(G69gat), .O(n60));
  nor2   g017(.a(n60), .b(G63gat), .O(n61));
  inv1   g018(.a(G30gat), .O(n62));
  nor2   g019(.a(n62), .b(G24gat), .O(n63));
  nor2   g020(.a(n63), .b(n61), .O(n64));
  inv1   g021(.a(n64), .O(n65));
  inv1   g022(.a(G43gat), .O(n66));
  nor2   g023(.a(n66), .b(G37gat), .O(n67));
  inv1   g024(.a(G4gat), .O(n68));
  nor2   g025(.a(n68), .b(G1gat), .O(n69));
  nor2   g026(.a(n69), .b(n67), .O(n70));
  inv1   g027(.a(n70), .O(n71));
  nor2   g028(.a(n71), .b(n65), .O(n72));
  inv1   g029(.a(n72), .O(n73));
  nor2   g030(.a(n73), .b(n59), .O(n74));
  inv1   g031(.a(n74), .O(n75));
  nor2   g032(.a(n75), .b(n53), .O(n76));
  inv1   g033(.a(n76), .O(G223gat));
  inv1   g034(.a(G89gat), .O(n78));
  nor2   g035(.a(n76), .b(n78), .O(n79));
  nor2   g036(.a(n79), .b(n44), .O(n80));
  inv1   g037(.a(n80), .O(n81));
  nor2   g038(.a(n81), .b(G99gat), .O(n82));
  inv1   g039(.a(G11gat), .O(n83));
  nor2   g040(.a(n76), .b(n83), .O(n84));
  nor2   g041(.a(n84), .b(n56), .O(n85));
  inv1   g042(.a(n85), .O(n86));
  nor2   g043(.a(n86), .b(G21gat), .O(n87));
  inv1   g044(.a(G1gat), .O(n88));
  nor2   g045(.a(n76), .b(n88), .O(n89));
  nor2   g046(.a(n89), .b(n68), .O(n90));
  inv1   g047(.a(n90), .O(n91));
  nor2   g048(.a(n91), .b(G8gat), .O(n92));
  nor2   g049(.a(n92), .b(n87), .O(n93));
  inv1   g050(.a(n93), .O(n94));
  nor2   g051(.a(n94), .b(n82), .O(n95));
  inv1   g052(.a(n95), .O(n96));
  inv1   g053(.a(G24gat), .O(n97));
  nor2   g054(.a(n76), .b(n97), .O(n98));
  nor2   g055(.a(n98), .b(n62), .O(n99));
  inv1   g056(.a(n99), .O(n100));
  nor2   g057(.a(n100), .b(G34gat), .O(n101));
  inv1   g058(.a(G76gat), .O(n102));
  nor2   g059(.a(n76), .b(n102), .O(n103));
  nor2   g060(.a(n103), .b(n46), .O(n104));
  inv1   g061(.a(n104), .O(n105));
  nor2   g062(.a(n105), .b(G86gat), .O(n106));
  nor2   g063(.a(n106), .b(n101), .O(n107));
  inv1   g064(.a(n107), .O(n108));
  inv1   g065(.a(G63gat), .O(n109));
  nor2   g066(.a(n76), .b(n109), .O(n110));
  nor2   g067(.a(n110), .b(n60), .O(n111));
  inv1   g068(.a(n111), .O(n112));
  nor2   g069(.a(n112), .b(G73gat), .O(n113));
  inv1   g070(.a(G37gat), .O(n114));
  nor2   g071(.a(n76), .b(n114), .O(n115));
  nor2   g072(.a(n115), .b(n66), .O(n116));
  inv1   g073(.a(n116), .O(n117));
  nor2   g074(.a(n117), .b(G47gat), .O(n118));
  nor2   g075(.a(n118), .b(n113), .O(n119));
  inv1   g076(.a(n119), .O(n120));
  inv1   g077(.a(G102gat), .O(n121));
  nor2   g078(.a(n76), .b(n121), .O(n122));
  nor2   g079(.a(n122), .b(n48), .O(n123));
  inv1   g080(.a(n123), .O(n124));
  nor2   g081(.a(n124), .b(G112gat), .O(n125));
  inv1   g082(.a(G50gat), .O(n126));
  nor2   g083(.a(n76), .b(n126), .O(n127));
  nor2   g084(.a(n127), .b(n54), .O(n128));
  inv1   g085(.a(n128), .O(n129));
  nor2   g086(.a(n129), .b(G60gat), .O(n130));
  nor2   g087(.a(n130), .b(n125), .O(n131));
  inv1   g088(.a(n131), .O(n132));
  nor2   g089(.a(n132), .b(n120), .O(n133));
  inv1   g090(.a(n133), .O(n134));
  nor2   g091(.a(n134), .b(n108), .O(n135));
  inv1   g092(.a(n135), .O(n136));
  nor2   g093(.a(n136), .b(n96), .O(n137));
  inv1   g094(.a(n137), .O(G329gat));
  inv1   g095(.a(G8gat), .O(n139));
  nor2   g096(.a(n137), .b(n139), .O(n140));
  nor2   g097(.a(n140), .b(n91), .O(n141));
  inv1   g098(.a(n141), .O(n142));
  nor2   g099(.a(n142), .b(G14gat), .O(n143));
  inv1   g100(.a(G21gat), .O(n144));
  nor2   g101(.a(n137), .b(n144), .O(n145));
  nor2   g102(.a(n145), .b(n86), .O(n146));
  inv1   g103(.a(n146), .O(n147));
  nor2   g104(.a(n147), .b(G27gat), .O(n148));
  inv1   g105(.a(G34gat), .O(n149));
  nor2   g106(.a(n137), .b(n149), .O(n150));
  nor2   g107(.a(n150), .b(n100), .O(n151));
  inv1   g108(.a(n151), .O(n152));
  nor2   g109(.a(n152), .b(G40gat), .O(n153));
  nor2   g110(.a(n153), .b(n148), .O(n154));
  inv1   g111(.a(n154), .O(n155));
  nor2   g112(.a(n155), .b(n143), .O(n156));
  inv1   g113(.a(n156), .O(n157));
  inv1   g114(.a(G86gat), .O(n158));
  nor2   g115(.a(n137), .b(n158), .O(n159));
  nor2   g116(.a(n159), .b(n105), .O(n160));
  inv1   g117(.a(n160), .O(n161));
  nor2   g118(.a(n161), .b(G92gat), .O(n162));
  inv1   g119(.a(G99gat), .O(n163));
  nor2   g120(.a(n137), .b(n163), .O(n164));
  nor2   g121(.a(n164), .b(n81), .O(n165));
  inv1   g122(.a(n165), .O(n166));
  nor2   g123(.a(n166), .b(G105gat), .O(n167));
  nor2   g124(.a(n167), .b(n162), .O(n168));
  inv1   g125(.a(n168), .O(n169));
  inv1   g126(.a(G60gat), .O(n170));
  nor2   g127(.a(n137), .b(n170), .O(n171));
  nor2   g128(.a(n171), .b(n129), .O(n172));
  inv1   g129(.a(n172), .O(n173));
  nor2   g130(.a(n173), .b(G66gat), .O(n174));
  inv1   g131(.a(G47gat), .O(n175));
  nor2   g132(.a(n137), .b(n175), .O(n176));
  nor2   g133(.a(n176), .b(n117), .O(n177));
  inv1   g134(.a(n177), .O(n178));
  nor2   g135(.a(n178), .b(G53gat), .O(n179));
  nor2   g136(.a(n179), .b(n174), .O(n180));
  inv1   g137(.a(n180), .O(n181));
  inv1   g138(.a(G73gat), .O(n182));
  nor2   g139(.a(n137), .b(n182), .O(n183));
  nor2   g140(.a(n183), .b(n112), .O(n184));
  inv1   g141(.a(n184), .O(n185));
  nor2   g142(.a(n185), .b(G79gat), .O(n186));
  inv1   g143(.a(G112gat), .O(n187));
  nor2   g144(.a(n137), .b(n187), .O(n188));
  nor2   g145(.a(n188), .b(n124), .O(n189));
  inv1   g146(.a(n189), .O(n190));
  nor2   g147(.a(n190), .b(G115gat), .O(n191));
  nor2   g148(.a(n191), .b(n186), .O(n192));
  inv1   g149(.a(n192), .O(n193));
  nor2   g150(.a(n193), .b(n181), .O(n194));
  inv1   g151(.a(n194), .O(n195));
  nor2   g152(.a(n195), .b(n169), .O(n196));
  inv1   g153(.a(n196), .O(n197));
  nor2   g154(.a(n197), .b(n157), .O(n198));
  inv1   g155(.a(n198), .O(G370gat));
  inv1   g156(.a(G14gat), .O(n200));
  nor2   g157(.a(n198), .b(n200), .O(n201));
  nor2   g158(.a(n201), .b(n142), .O(n202));
  inv1   g159(.a(G66gat), .O(n203));
  nor2   g160(.a(n198), .b(n203), .O(n204));
  nor2   g161(.a(n204), .b(n173), .O(n205));
  inv1   g162(.a(G53gat), .O(n206));
  nor2   g163(.a(n198), .b(n206), .O(n207));
  nor2   g164(.a(n207), .b(n178), .O(n208));
  nor2   g165(.a(n208), .b(n205), .O(n209));
  inv1   g166(.a(n209), .O(n210));
  inv1   g167(.a(G27gat), .O(n211));
  nor2   g168(.a(n198), .b(n211), .O(n212));
  nor2   g169(.a(n212), .b(n147), .O(n213));
  inv1   g170(.a(G40gat), .O(n214));
  nor2   g171(.a(n198), .b(n214), .O(n215));
  nor2   g172(.a(n215), .b(n152), .O(n216));
  nor2   g173(.a(n216), .b(n213), .O(n217));
  inv1   g174(.a(n217), .O(n218));
  nor2   g175(.a(n218), .b(n210), .O(n219));
  inv1   g176(.a(n219), .O(G430gat));
  inv1   g177(.a(G92gat), .O(n221));
  nor2   g178(.a(n198), .b(n221), .O(n222));
  nor2   g179(.a(n222), .b(n161), .O(n223));
  inv1   g180(.a(G79gat), .O(n224));
  nor2   g181(.a(n198), .b(n224), .O(n225));
  nor2   g182(.a(n225), .b(n185), .O(n226));
  nor2   g183(.a(n226), .b(n223), .O(n227));
  inv1   g184(.a(n227), .O(n228));
  inv1   g185(.a(G115gat), .O(n229));
  nor2   g186(.a(n198), .b(n229), .O(n230));
  nor2   g187(.a(n230), .b(n190), .O(n231));
  inv1   g188(.a(G105gat), .O(n232));
  nor2   g189(.a(n198), .b(n232), .O(n233));
  nor2   g190(.a(n233), .b(n166), .O(n234));
  nor2   g191(.a(n234), .b(n231), .O(n235));
  inv1   g192(.a(n235), .O(n236));
  nor2   g193(.a(n236), .b(n228), .O(n237));
  inv1   g194(.a(n237), .O(n238));
  nor2   g195(.a(n238), .b(G430gat), .O(n239));
  nor2   g196(.a(n239), .b(n202), .O(G421gat));
  nor2   g197(.a(n227), .b(n210), .O(n241));
  nor2   g198(.a(n241), .b(n218), .O(n242));
  inv1   g199(.a(n242), .O(G431gat));
  nor2   g200(.a(n216), .b(n208), .O(n244));
  inv1   g201(.a(n244), .O(n245));
  inv1   g202(.a(n226), .O(n246));
  nor2   g203(.a(n246), .b(n205), .O(n247));
  inv1   g204(.a(n247), .O(n248));
  nor2   g205(.a(n248), .b(n245), .O(n249));
  inv1   g206(.a(n234), .O(n250));
  nor2   g207(.a(n250), .b(n223), .O(n251));
  inv1   g208(.a(n251), .O(n252));
  nor2   g209(.a(n252), .b(n245), .O(n253));
  inv1   g210(.a(n208), .O(n254));
  nor2   g211(.a(n216), .b(n254), .O(n255));
  nor2   g212(.a(n255), .b(n213), .O(n256));
  inv1   g213(.a(n256), .O(n257));
  nor2   g214(.a(n257), .b(n253), .O(n258));
  inv1   g215(.a(n258), .O(n259));
  nor2   g216(.a(n259), .b(n249), .O(n260));
  inv1   g217(.a(n260), .O(G432gat));
endmodule


