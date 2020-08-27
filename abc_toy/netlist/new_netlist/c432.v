// Benchmark "c432_blif" written by ABC on Sun Apr 14 20:00:24 2019

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
    n137, n138, n139, n141, n142, n143, n144, n145, n146, n147, n148, n149,
    n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
    n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
    n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
    n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
    n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
    n210, n211, n212, n213, n214, n215, n216, n218, n219, n220, n221, n222,
    n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
    n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n247,
    n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
    n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n271, n272,
    n273, n274, n275, n276, n277, n278, n279, n280, n281, n283, n284, n285,
    n286, n287, n288, n289, n290, n291, n292, n293;
  inv1   g000(.a(G82gat), .O(n44));
  nor2   g001(.a(n44), .b(G76gat), .O(n45));
  inv1   g002(.a(G43gat), .O(n46));
  nor2   g003(.a(n46), .b(G37gat), .O(n47));
  inv1   g004(.a(G69gat), .O(n48));
  nor2   g005(.a(n48), .b(G63gat), .O(n49));
  nor2   g006(.a(n49), .b(n47), .O(n50));
  inv1   g007(.a(n50), .O(n51));
  nor2   g008(.a(n51), .b(n45), .O(n52));
  inv1   g009(.a(n52), .O(n53));
  inv1   g010(.a(G4gat), .O(n54));
  nor2   g011(.a(n54), .b(G1gat), .O(n55));
  inv1   g012(.a(G17gat), .O(n56));
  nor2   g013(.a(n56), .b(G11gat), .O(n57));
  nor2   g014(.a(n57), .b(n55), .O(n58));
  inv1   g015(.a(n58), .O(n59));
  inv1   g016(.a(G30gat), .O(n60));
  nor2   g017(.a(n60), .b(G24gat), .O(n61));
  inv1   g018(.a(G108gat), .O(n62));
  nor2   g019(.a(n62), .b(G102gat), .O(n63));
  nor2   g020(.a(n63), .b(n61), .O(n64));
  inv1   g021(.a(n64), .O(n65));
  inv1   g022(.a(G95gat), .O(n66));
  nor2   g023(.a(n66), .b(G89gat), .O(n67));
  inv1   g024(.a(G56gat), .O(n68));
  nor2   g025(.a(n68), .b(G50gat), .O(n69));
  nor2   g026(.a(n69), .b(n67), .O(n70));
  inv1   g027(.a(n70), .O(n71));
  nor2   g028(.a(n71), .b(n65), .O(n72));
  inv1   g029(.a(n72), .O(n73));
  nor2   g030(.a(n73), .b(n59), .O(n74));
  inv1   g031(.a(n74), .O(n75));
  nor2   g032(.a(n75), .b(n53), .O(n76));
  inv1   g033(.a(n76), .O(G223gat));
  inv1   g034(.a(G76gat), .O(n78));
  nor2   g035(.a(n76), .b(n78), .O(n79));
  nor2   g036(.a(n79), .b(n44), .O(n80));
  inv1   g037(.a(n80), .O(n81));
  nor2   g038(.a(n81), .b(G86gat), .O(n82));
  inv1   g039(.a(G37gat), .O(n83));
  nor2   g040(.a(n76), .b(n83), .O(n84));
  nor2   g041(.a(n84), .b(n46), .O(n85));
  inv1   g042(.a(n85), .O(n86));
  nor2   g043(.a(n86), .b(G47gat), .O(n87));
  inv1   g044(.a(G63gat), .O(n88));
  nor2   g045(.a(n76), .b(n88), .O(n89));
  nor2   g046(.a(n89), .b(n48), .O(n90));
  inv1   g047(.a(n90), .O(n91));
  nor2   g048(.a(n91), .b(G73gat), .O(n92));
  nor2   g049(.a(n92), .b(n87), .O(n93));
  inv1   g050(.a(n93), .O(n94));
  nor2   g051(.a(n94), .b(n82), .O(n95));
  inv1   g052(.a(n95), .O(n96));
  inv1   g053(.a(G1gat), .O(n97));
  nor2   g054(.a(n76), .b(n97), .O(n98));
  nor2   g055(.a(n98), .b(n54), .O(n99));
  inv1   g056(.a(n99), .O(n100));
  nor2   g057(.a(n100), .b(G8gat), .O(n101));
  inv1   g058(.a(G24gat), .O(n102));
  nor2   g059(.a(n76), .b(n102), .O(n103));
  nor2   g060(.a(n103), .b(n60), .O(n104));
  inv1   g061(.a(n104), .O(n105));
  nor2   g062(.a(n105), .b(G34gat), .O(n106));
  nor2   g063(.a(n106), .b(n101), .O(n107));
  inv1   g064(.a(n107), .O(n108));
  inv1   g065(.a(G11gat), .O(n109));
  nor2   g066(.a(n76), .b(n109), .O(n110));
  nor2   g067(.a(n110), .b(n56), .O(n111));
  inv1   g068(.a(n111), .O(n112));
  nor2   g069(.a(n112), .b(G21gat), .O(n113));
  nor2   g070(.a(G223gat), .b(n69), .O(n114));
  inv1   g071(.a(n69), .O(n115));
  nor2   g072(.a(n76), .b(n115), .O(n116));
  nor2   g073(.a(n116), .b(n114), .O(n117));
  nor2   g074(.a(G60gat), .b(n68), .O(n118));
  inv1   g075(.a(n118), .O(n119));
  nor2   g076(.a(n119), .b(n117), .O(n120));
  nor2   g077(.a(n120), .b(n113), .O(n121));
  inv1   g078(.a(n121), .O(n122));
  inv1   g079(.a(G102gat), .O(n123));
  nor2   g080(.a(n76), .b(n123), .O(n124));
  nor2   g081(.a(n124), .b(n62), .O(n125));
  inv1   g082(.a(n125), .O(n126));
  nor2   g083(.a(n126), .b(G112gat), .O(n127));
  inv1   g084(.a(G89gat), .O(n128));
  nor2   g085(.a(n76), .b(n128), .O(n129));
  nor2   g086(.a(n129), .b(n66), .O(n130));
  inv1   g087(.a(n130), .O(n131));
  nor2   g088(.a(n131), .b(G99gat), .O(n132));
  nor2   g089(.a(n132), .b(n127), .O(n133));
  inv1   g090(.a(n133), .O(n134));
  nor2   g091(.a(n134), .b(n122), .O(n135));
  inv1   g092(.a(n135), .O(n136));
  nor2   g093(.a(n136), .b(n108), .O(n137));
  inv1   g094(.a(n137), .O(n138));
  nor2   g095(.a(n138), .b(n96), .O(n139));
  inv1   g096(.a(n139), .O(G329gat));
  inv1   g097(.a(G21gat), .O(n141));
  nor2   g098(.a(n139), .b(n141), .O(n142));
  nor2   g099(.a(n142), .b(n112), .O(n143));
  inv1   g100(.a(n143), .O(n144));
  nor2   g101(.a(n144), .b(G27gat), .O(n145));
  inv1   g102(.a(G34gat), .O(n146));
  nor2   g103(.a(n139), .b(n146), .O(n147));
  nor2   g104(.a(n147), .b(n105), .O(n148));
  inv1   g105(.a(n148), .O(n149));
  nor2   g106(.a(n149), .b(G40gat), .O(n150));
  inv1   g107(.a(G8gat), .O(n151));
  nor2   g108(.a(n139), .b(n151), .O(n152));
  nor2   g109(.a(n152), .b(n100), .O(n153));
  inv1   g110(.a(n153), .O(n154));
  nor2   g111(.a(n154), .b(G14gat), .O(n155));
  nor2   g112(.a(n155), .b(n150), .O(n156));
  inv1   g113(.a(n156), .O(n157));
  nor2   g114(.a(n157), .b(n145), .O(n158));
  inv1   g115(.a(n158), .O(n159));
  inv1   g116(.a(G112gat), .O(n160));
  nor2   g117(.a(n139), .b(n160), .O(n161));
  nor2   g118(.a(n161), .b(n126), .O(n162));
  inv1   g119(.a(n162), .O(n163));
  nor2   g120(.a(n163), .b(G115gat), .O(n164));
  inv1   g121(.a(n132), .O(n165));
  nor2   g122(.a(G329gat), .b(n165), .O(n166));
  nor2   g123(.a(n139), .b(n132), .O(n167));
  nor2   g124(.a(n131), .b(G105gat), .O(n168));
  inv1   g125(.a(n168), .O(n169));
  nor2   g126(.a(n169), .b(n167), .O(n170));
  inv1   g127(.a(n170), .O(n171));
  nor2   g128(.a(n171), .b(n166), .O(n172));
  nor2   g129(.a(n172), .b(n164), .O(n173));
  inv1   g130(.a(n173), .O(n174));
  inv1   g131(.a(G47gat), .O(n175));
  nor2   g132(.a(n139), .b(n175), .O(n176));
  nor2   g133(.a(n176), .b(n86), .O(n177));
  inv1   g134(.a(n177), .O(n178));
  inv1   g135(.a(n87), .O(n179));
  nor2   g136(.a(G329gat), .b(n179), .O(n180));
  nor2   g137(.a(n180), .b(G53gat), .O(n181));
  inv1   g138(.a(n181), .O(n182));
  nor2   g139(.a(n182), .b(n178), .O(n183));
  inv1   g140(.a(n120), .O(n184));
  nor2   g141(.a(G329gat), .b(n184), .O(n185));
  nor2   g142(.a(n139), .b(n120), .O(n186));
  nor2   g143(.a(G66gat), .b(n68), .O(n187));
  inv1   g144(.a(n187), .O(n188));
  nor2   g145(.a(n188), .b(n117), .O(n189));
  inv1   g146(.a(n189), .O(n190));
  nor2   g147(.a(n190), .b(n186), .O(n191));
  inv1   g148(.a(n191), .O(n192));
  nor2   g149(.a(n192), .b(n185), .O(n193));
  nor2   g150(.a(n193), .b(n183), .O(n194));
  inv1   g151(.a(n194), .O(n195));
  inv1   g152(.a(G86gat), .O(n196));
  nor2   g153(.a(n139), .b(n196), .O(n197));
  nor2   g154(.a(n197), .b(n81), .O(n198));
  inv1   g155(.a(n198), .O(n199));
  nor2   g156(.a(n199), .b(G92gat), .O(n200));
  inv1   g157(.a(G73gat), .O(n201));
  nor2   g158(.a(n139), .b(n201), .O(n202));
  nor2   g159(.a(n202), .b(n91), .O(n203));
  inv1   g160(.a(n203), .O(n204));
  inv1   g161(.a(n92), .O(n205));
  nor2   g162(.a(G329gat), .b(n205), .O(n206));
  nor2   g163(.a(n206), .b(G79gat), .O(n207));
  inv1   g164(.a(n207), .O(n208));
  nor2   g165(.a(n208), .b(n204), .O(n209));
  nor2   g166(.a(n209), .b(n200), .O(n210));
  inv1   g167(.a(n210), .O(n211));
  nor2   g168(.a(n211), .b(n195), .O(n212));
  inv1   g169(.a(n212), .O(n213));
  nor2   g170(.a(n213), .b(n174), .O(n214));
  inv1   g171(.a(n214), .O(n215));
  nor2   g172(.a(n215), .b(n159), .O(n216));
  inv1   g173(.a(n216), .O(G370gat));
  inv1   g174(.a(G14gat), .O(n218));
  nor2   g175(.a(n216), .b(n218), .O(n219));
  nor2   g176(.a(n219), .b(n154), .O(n220));
  inv1   g177(.a(G66gat), .O(n221));
  nor2   g178(.a(n216), .b(n221), .O(n222));
  inv1   g179(.a(G60gat), .O(n223));
  nor2   g180(.a(n139), .b(n223), .O(n224));
  inv1   g181(.a(G50gat), .O(n225));
  nor2   g182(.a(n76), .b(n225), .O(n226));
  nor2   g183(.a(n226), .b(n68), .O(n227));
  inv1   g184(.a(n227), .O(n228));
  nor2   g185(.a(n228), .b(n224), .O(n229));
  inv1   g186(.a(n229), .O(n230));
  nor2   g187(.a(n230), .b(n222), .O(n231));
  inv1   g188(.a(G53gat), .O(n232));
  nor2   g189(.a(n216), .b(n232), .O(n233));
  nor2   g190(.a(n233), .b(n178), .O(n234));
  nor2   g191(.a(n234), .b(n231), .O(n235));
  inv1   g192(.a(n235), .O(n236));
  inv1   g193(.a(G27gat), .O(n237));
  nor2   g194(.a(n216), .b(n237), .O(n238));
  nor2   g195(.a(n238), .b(n144), .O(n239));
  inv1   g196(.a(G40gat), .O(n240));
  nor2   g197(.a(n216), .b(n240), .O(n241));
  nor2   g198(.a(n241), .b(n149), .O(n242));
  nor2   g199(.a(n242), .b(n239), .O(n243));
  inv1   g200(.a(n243), .O(n244));
  nor2   g201(.a(n244), .b(n236), .O(n245));
  inv1   g202(.a(n245), .O(G430gat));
  inv1   g203(.a(G92gat), .O(n247));
  nor2   g204(.a(n216), .b(n247), .O(n248));
  nor2   g205(.a(n248), .b(n199), .O(n249));
  inv1   g206(.a(G105gat), .O(n250));
  nor2   g207(.a(n216), .b(n250), .O(n251));
  inv1   g208(.a(G99gat), .O(n252));
  nor2   g209(.a(n139), .b(n252), .O(n253));
  nor2   g210(.a(n253), .b(n131), .O(n254));
  inv1   g211(.a(n254), .O(n255));
  nor2   g212(.a(n255), .b(n251), .O(n256));
  nor2   g213(.a(n256), .b(n249), .O(n257));
  inv1   g214(.a(n257), .O(n258));
  inv1   g215(.a(G79gat), .O(n259));
  nor2   g216(.a(n216), .b(n259), .O(n260));
  nor2   g217(.a(n260), .b(n204), .O(n261));
  inv1   g218(.a(G115gat), .O(n262));
  nor2   g219(.a(n216), .b(n262), .O(n263));
  nor2   g220(.a(n263), .b(n163), .O(n264));
  nor2   g221(.a(n264), .b(n261), .O(n265));
  inv1   g222(.a(n265), .O(n266));
  nor2   g223(.a(n266), .b(n258), .O(n267));
  inv1   g224(.a(n267), .O(n268));
  nor2   g225(.a(n268), .b(G430gat), .O(n269));
  nor2   g226(.a(n269), .b(n220), .O(G421gat));
  inv1   g227(.a(n249), .O(n271));
  nor2   g228(.a(n271), .b(n236), .O(n272));
  nor2   g229(.a(n242), .b(n234), .O(n273));
  inv1   g230(.a(n273), .O(n274));
  inv1   g231(.a(n261), .O(n275));
  nor2   g232(.a(n275), .b(n231), .O(n276));
  inv1   g233(.a(n276), .O(n277));
  nor2   g234(.a(n277), .b(n274), .O(n278));
  nor2   g235(.a(n278), .b(n244), .O(n279));
  inv1   g236(.a(n279), .O(n280));
  nor2   g237(.a(n280), .b(n272), .O(n281));
  inv1   g238(.a(n281), .O(G431gat));
  inv1   g239(.a(n256), .O(n283));
  nor2   g240(.a(n283), .b(n249), .O(n284));
  inv1   g241(.a(n284), .O(n285));
  nor2   g242(.a(n285), .b(n274), .O(n286));
  inv1   g243(.a(n234), .O(n287));
  nor2   g244(.a(n242), .b(n287), .O(n288));
  nor2   g245(.a(n288), .b(n239), .O(n289));
  inv1   g246(.a(n289), .O(n290));
  nor2   g247(.a(n290), .b(n278), .O(n291));
  inv1   g248(.a(n291), .O(n292));
  nor2   g249(.a(n292), .b(n286), .O(n293));
  inv1   g250(.a(n293), .O(G432gat));
endmodule


