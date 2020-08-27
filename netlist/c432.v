// Benchmark "c432.blif" written by ABC on Mon Dec  9 16:21:36 2019

module \c432.blif  ( 
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
  wire new_n44_, new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n50_,
    new_n51_, new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_,
    new_n58_, new_n59_, new_n60_, new_n61_, new_n62_, new_n63_, new_n64_,
    new_n65_, new_n66_, new_n67_, new_n68_, new_n69_, new_n70_, new_n71_,
    new_n72_, new_n73_, new_n74_, new_n75_, new_n76_, new_n78_, new_n79_,
    new_n80_, new_n81_, new_n82_, new_n83_, new_n84_, new_n85_, new_n86_,
    new_n87_, new_n88_, new_n89_, new_n90_, new_n91_, new_n92_, new_n93_,
    new_n94_, new_n95_, new_n96_, new_n97_, new_n98_, new_n99_, new_n100_,
    new_n101_, new_n102_, new_n103_, new_n104_, new_n105_, new_n106_,
    new_n107_, new_n108_, new_n109_, new_n110_, new_n111_, new_n112_,
    new_n113_, new_n114_, new_n115_, new_n116_, new_n117_, new_n118_,
    new_n119_, new_n120_, new_n121_, new_n122_, new_n123_, new_n124_,
    new_n125_, new_n126_, new_n127_, new_n128_, new_n129_, new_n130_,
    new_n131_, new_n132_, new_n133_, new_n134_, new_n135_, new_n136_,
    new_n137_, new_n139_, new_n140_, new_n141_, new_n142_, new_n143_,
    new_n144_, new_n145_, new_n146_, new_n147_, new_n148_, new_n149_,
    new_n150_, new_n151_, new_n152_, new_n153_, new_n154_, new_n155_,
    new_n156_, new_n157_, new_n158_, new_n159_, new_n160_, new_n161_,
    new_n162_, new_n163_, new_n164_, new_n165_, new_n166_, new_n167_,
    new_n168_, new_n169_, new_n170_, new_n171_, new_n172_, new_n173_,
    new_n174_, new_n175_, new_n176_, new_n177_, new_n178_, new_n179_,
    new_n180_, new_n181_, new_n182_, new_n183_, new_n184_, new_n185_,
    new_n186_, new_n187_, new_n188_, new_n189_, new_n190_, new_n191_,
    new_n192_, new_n193_, new_n194_, new_n195_, new_n196_, new_n197_,
    new_n198_, new_n199_, new_n200_, new_n202_, new_n203_, new_n204_,
    new_n205_, new_n206_, new_n207_, new_n208_, new_n209_, new_n210_,
    new_n211_, new_n212_, new_n213_, new_n214_, new_n215_, new_n216_,
    new_n217_, new_n218_, new_n219_, new_n220_, new_n221_, new_n222_,
    new_n223_, new_n225_, new_n226_, new_n227_, new_n228_, new_n229_,
    new_n230_, new_n231_, new_n232_, new_n233_, new_n234_, new_n235_,
    new_n236_, new_n237_, new_n238_, new_n239_, new_n240_, new_n241_,
    new_n242_, new_n243_, new_n244_, new_n245_, new_n246_, new_n247_,
    new_n248_, new_n249_, new_n250_, new_n251_, new_n252_, new_n253_,
    new_n255_, new_n256_, new_n258_, new_n259_, new_n260_, new_n261_,
    new_n262_, new_n263_, new_n264_, new_n265_, new_n266_, new_n267_,
    new_n268_, new_n269_, new_n270_, new_n271_, new_n272_, new_n273_,
    new_n274_;
  inv1   g000(.a(G4gat), .O(new_n44_));
  nor2   g001(.a(new_n44_), .b(G1gat), .O(new_n45_));
  inv1   g002(.a(G108gat), .O(new_n46_));
  nor2   g003(.a(new_n46_), .b(G102gat), .O(new_n47_));
  inv1   g004(.a(G30gat), .O(new_n48_));
  nor2   g005(.a(new_n48_), .b(G24gat), .O(new_n49_));
  nor2   g006(.a(new_n49_), .b(new_n47_), .O(new_n50_));
  inv1   g007(.a(new_n50_), .O(new_n51_));
  nor2   g008(.a(new_n51_), .b(new_n45_), .O(new_n52_));
  inv1   g009(.a(new_n52_), .O(new_n53_));
  inv1   g010(.a(G17gat), .O(new_n54_));
  nor2   g011(.a(new_n54_), .b(G11gat), .O(new_n55_));
  inv1   g012(.a(G56gat), .O(new_n56_));
  nor2   g013(.a(new_n56_), .b(G50gat), .O(new_n57_));
  nor2   g014(.a(new_n57_), .b(new_n55_), .O(new_n58_));
  inv1   g015(.a(new_n58_), .O(new_n59_));
  inv1   g016(.a(G82gat), .O(new_n60_));
  nor2   g017(.a(new_n60_), .b(G76gat), .O(new_n61_));
  inv1   g018(.a(G43gat), .O(new_n62_));
  nor2   g019(.a(new_n62_), .b(G37gat), .O(new_n63_));
  nor2   g020(.a(new_n63_), .b(new_n61_), .O(new_n64_));
  inv1   g021(.a(new_n64_), .O(new_n65_));
  inv1   g022(.a(G95gat), .O(new_n66_));
  nor2   g023(.a(new_n66_), .b(G89gat), .O(new_n67_));
  inv1   g024(.a(G69gat), .O(new_n68_));
  nor2   g025(.a(new_n68_), .b(G63gat), .O(new_n69_));
  nor2   g026(.a(new_n69_), .b(new_n67_), .O(new_n70_));
  inv1   g027(.a(new_n70_), .O(new_n71_));
  nor2   g028(.a(new_n71_), .b(new_n65_), .O(new_n72_));
  inv1   g029(.a(new_n72_), .O(new_n73_));
  nor2   g030(.a(new_n73_), .b(new_n59_), .O(new_n74_));
  inv1   g031(.a(new_n74_), .O(new_n75_));
  nor2   g032(.a(new_n75_), .b(new_n53_), .O(new_n76_));
  inv1   g033(.a(new_n76_), .O(G223gat));
  inv1   g034(.a(G1gat), .O(new_n78_));
  nor2   g035(.a(new_n76_), .b(new_n78_), .O(new_n79_));
  nor2   g036(.a(new_n79_), .b(new_n44_), .O(new_n80_));
  inv1   g037(.a(new_n80_), .O(new_n81_));
  nor2   g038(.a(new_n81_), .b(G8gat), .O(new_n82_));
  inv1   g039(.a(G11gat), .O(new_n83_));
  nor2   g040(.a(new_n76_), .b(new_n83_), .O(new_n84_));
  nor2   g041(.a(new_n84_), .b(new_n54_), .O(new_n85_));
  inv1   g042(.a(new_n85_), .O(new_n86_));
  nor2   g043(.a(new_n86_), .b(G21gat), .O(new_n87_));
  nor2   g044(.a(new_n87_), .b(new_n82_), .O(new_n88_));
  inv1   g045(.a(new_n88_), .O(new_n89_));
  inv1   g046(.a(G37gat), .O(new_n90_));
  nor2   g047(.a(new_n76_), .b(new_n90_), .O(new_n91_));
  nor2   g048(.a(new_n91_), .b(new_n62_), .O(new_n92_));
  inv1   g049(.a(new_n92_), .O(new_n93_));
  nor2   g050(.a(new_n93_), .b(G47gat), .O(new_n94_));
  inv1   g051(.a(G76gat), .O(new_n95_));
  nor2   g052(.a(new_n76_), .b(new_n95_), .O(new_n96_));
  nor2   g053(.a(new_n96_), .b(new_n60_), .O(new_n97_));
  inv1   g054(.a(new_n97_), .O(new_n98_));
  nor2   g055(.a(new_n98_), .b(G86gat), .O(new_n99_));
  nor2   g056(.a(new_n99_), .b(new_n94_), .O(new_n100_));
  inv1   g057(.a(new_n100_), .O(new_n101_));
  nor2   g058(.a(new_n101_), .b(new_n89_), .O(new_n102_));
  inv1   g059(.a(new_n102_), .O(new_n103_));
  inv1   g060(.a(G63gat), .O(new_n104_));
  nor2   g061(.a(new_n76_), .b(new_n104_), .O(new_n105_));
  nor2   g062(.a(new_n105_), .b(new_n68_), .O(new_n106_));
  inv1   g063(.a(new_n106_), .O(new_n107_));
  nor2   g064(.a(new_n107_), .b(G73gat), .O(new_n108_));
  inv1   g065(.a(G102gat), .O(new_n109_));
  nor2   g066(.a(new_n76_), .b(new_n109_), .O(new_n110_));
  nor2   g067(.a(G112gat), .b(new_n46_), .O(new_n111_));
  inv1   g068(.a(new_n111_), .O(new_n112_));
  nor2   g069(.a(new_n112_), .b(new_n110_), .O(new_n113_));
  inv1   g070(.a(G89gat), .O(new_n114_));
  nor2   g071(.a(new_n76_), .b(new_n114_), .O(new_n115_));
  nor2   g072(.a(G99gat), .b(new_n66_), .O(new_n116_));
  inv1   g073(.a(new_n116_), .O(new_n117_));
  nor2   g074(.a(new_n117_), .b(new_n115_), .O(new_n118_));
  nor2   g075(.a(new_n118_), .b(new_n113_), .O(new_n119_));
  inv1   g076(.a(new_n119_), .O(new_n120_));
  nor2   g077(.a(new_n120_), .b(new_n108_), .O(new_n121_));
  inv1   g078(.a(new_n121_), .O(new_n122_));
  inv1   g079(.a(G50gat), .O(new_n123_));
  nor2   g080(.a(new_n76_), .b(new_n123_), .O(new_n124_));
  nor2   g081(.a(new_n124_), .b(new_n56_), .O(new_n125_));
  inv1   g082(.a(new_n125_), .O(new_n126_));
  nor2   g083(.a(new_n126_), .b(G60gat), .O(new_n127_));
  inv1   g084(.a(G24gat), .O(new_n128_));
  nor2   g085(.a(new_n76_), .b(new_n128_), .O(new_n129_));
  nor2   g086(.a(new_n129_), .b(new_n48_), .O(new_n130_));
  inv1   g087(.a(new_n130_), .O(new_n131_));
  nor2   g088(.a(new_n131_), .b(G34gat), .O(new_n132_));
  nor2   g089(.a(new_n132_), .b(new_n127_), .O(new_n133_));
  inv1   g090(.a(new_n133_), .O(new_n134_));
  nor2   g091(.a(new_n134_), .b(new_n122_), .O(new_n135_));
  inv1   g092(.a(new_n135_), .O(new_n136_));
  nor2   g093(.a(new_n136_), .b(new_n103_), .O(new_n137_));
  inv1   g094(.a(new_n137_), .O(G329gat));
  inv1   g095(.a(G60gat), .O(new_n139_));
  nor2   g096(.a(new_n137_), .b(new_n139_), .O(new_n140_));
  nor2   g097(.a(new_n140_), .b(new_n126_), .O(new_n141_));
  inv1   g098(.a(new_n141_), .O(new_n142_));
  nor2   g099(.a(new_n142_), .b(G66gat), .O(new_n143_));
  inv1   g100(.a(G21gat), .O(new_n144_));
  nor2   g101(.a(new_n137_), .b(new_n144_), .O(new_n145_));
  nor2   g102(.a(new_n145_), .b(new_n86_), .O(new_n146_));
  inv1   g103(.a(new_n146_), .O(new_n147_));
  nor2   g104(.a(new_n147_), .b(G27gat), .O(new_n148_));
  inv1   g105(.a(G8gat), .O(new_n149_));
  nor2   g106(.a(new_n137_), .b(new_n149_), .O(new_n150_));
  nor2   g107(.a(new_n150_), .b(new_n81_), .O(new_n151_));
  inv1   g108(.a(new_n151_), .O(new_n152_));
  nor2   g109(.a(new_n152_), .b(G14gat), .O(new_n153_));
  nor2   g110(.a(new_n153_), .b(new_n148_), .O(new_n154_));
  inv1   g111(.a(new_n154_), .O(new_n155_));
  nor2   g112(.a(new_n155_), .b(new_n143_), .O(new_n156_));
  inv1   g113(.a(new_n156_), .O(new_n157_));
  nor2   g114(.a(new_n137_), .b(new_n118_), .O(new_n158_));
  nor2   g115(.a(new_n115_), .b(new_n66_), .O(new_n159_));
  inv1   g116(.a(new_n159_), .O(new_n160_));
  nor2   g117(.a(new_n160_), .b(G105gat), .O(new_n161_));
  inv1   g118(.a(new_n161_), .O(new_n162_));
  nor2   g119(.a(new_n162_), .b(new_n158_), .O(new_n163_));
  inv1   g120(.a(G73gat), .O(new_n164_));
  nor2   g121(.a(new_n137_), .b(new_n164_), .O(new_n165_));
  nor2   g122(.a(new_n107_), .b(G79gat), .O(new_n166_));
  inv1   g123(.a(new_n166_), .O(new_n167_));
  nor2   g124(.a(new_n167_), .b(new_n165_), .O(new_n168_));
  nor2   g125(.a(new_n168_), .b(new_n163_), .O(new_n169_));
  inv1   g126(.a(new_n169_), .O(new_n170_));
  nor2   g127(.a(new_n137_), .b(new_n113_), .O(new_n171_));
  nor2   g128(.a(new_n110_), .b(new_n46_), .O(new_n172_));
  inv1   g129(.a(new_n172_), .O(new_n173_));
  nor2   g130(.a(new_n173_), .b(G115gat), .O(new_n174_));
  inv1   g131(.a(new_n174_), .O(new_n175_));
  nor2   g132(.a(new_n175_), .b(new_n171_), .O(new_n176_));
  inv1   g133(.a(G47gat), .O(new_n177_));
  nor2   g134(.a(new_n137_), .b(new_n177_), .O(new_n178_));
  nor2   g135(.a(new_n93_), .b(G53gat), .O(new_n179_));
  inv1   g136(.a(new_n179_), .O(new_n180_));
  nor2   g137(.a(new_n180_), .b(new_n178_), .O(new_n181_));
  nor2   g138(.a(new_n181_), .b(new_n176_), .O(new_n182_));
  inv1   g139(.a(new_n182_), .O(new_n183_));
  nor2   g140(.a(new_n183_), .b(new_n170_), .O(new_n184_));
  inv1   g141(.a(new_n184_), .O(new_n185_));
  inv1   g142(.a(G34gat), .O(new_n186_));
  nor2   g143(.a(new_n137_), .b(new_n186_), .O(new_n187_));
  nor2   g144(.a(new_n187_), .b(new_n131_), .O(new_n188_));
  inv1   g145(.a(new_n188_), .O(new_n189_));
  nor2   g146(.a(new_n189_), .b(G40gat), .O(new_n190_));
  inv1   g147(.a(G86gat), .O(new_n191_));
  nor2   g148(.a(new_n137_), .b(new_n191_), .O(new_n192_));
  nor2   g149(.a(new_n192_), .b(new_n98_), .O(new_n193_));
  inv1   g150(.a(new_n193_), .O(new_n194_));
  nor2   g151(.a(new_n194_), .b(G92gat), .O(new_n195_));
  nor2   g152(.a(new_n195_), .b(new_n190_), .O(new_n196_));
  inv1   g153(.a(new_n196_), .O(new_n197_));
  nor2   g154(.a(new_n197_), .b(new_n185_), .O(new_n198_));
  inv1   g155(.a(new_n198_), .O(new_n199_));
  nor2   g156(.a(new_n199_), .b(new_n157_), .O(new_n200_));
  inv1   g157(.a(new_n200_), .O(G370gat));
  inv1   g158(.a(G14gat), .O(new_n202_));
  nor2   g159(.a(new_n200_), .b(new_n202_), .O(new_n203_));
  nor2   g160(.a(new_n203_), .b(new_n152_), .O(new_n204_));
  inv1   g161(.a(G27gat), .O(new_n205_));
  nor2   g162(.a(new_n200_), .b(new_n205_), .O(new_n206_));
  nor2   g163(.a(new_n206_), .b(new_n147_), .O(new_n207_));
  inv1   g164(.a(G40gat), .O(new_n208_));
  nor2   g165(.a(new_n200_), .b(new_n208_), .O(new_n209_));
  nor2   g166(.a(new_n209_), .b(new_n189_), .O(new_n210_));
  nor2   g167(.a(new_n210_), .b(new_n207_), .O(new_n211_));
  inv1   g168(.a(new_n211_), .O(new_n212_));
  inv1   g169(.a(G53gat), .O(new_n213_));
  nor2   g170(.a(new_n200_), .b(new_n213_), .O(new_n214_));
  nor2   g171(.a(new_n178_), .b(new_n93_), .O(new_n215_));
  inv1   g172(.a(new_n215_), .O(new_n216_));
  nor2   g173(.a(new_n216_), .b(new_n214_), .O(new_n217_));
  inv1   g174(.a(G66gat), .O(new_n218_));
  nor2   g175(.a(new_n200_), .b(new_n218_), .O(new_n219_));
  nor2   g176(.a(new_n219_), .b(new_n142_), .O(new_n220_));
  nor2   g177(.a(new_n220_), .b(new_n217_), .O(new_n221_));
  inv1   g178(.a(new_n221_), .O(new_n222_));
  nor2   g179(.a(new_n222_), .b(new_n212_), .O(new_n223_));
  inv1   g180(.a(new_n223_), .O(G430gat));
  inv1   g181(.a(G92gat), .O(new_n225_));
  nor2   g182(.a(new_n200_), .b(new_n225_), .O(new_n226_));
  nor2   g183(.a(new_n226_), .b(new_n194_), .O(new_n227_));
  inv1   g184(.a(G79gat), .O(new_n228_));
  nor2   g185(.a(new_n200_), .b(new_n228_), .O(new_n229_));
  nor2   g186(.a(new_n165_), .b(new_n107_), .O(new_n230_));
  inv1   g187(.a(new_n230_), .O(new_n231_));
  nor2   g188(.a(new_n231_), .b(new_n229_), .O(new_n232_));
  nor2   g189(.a(new_n232_), .b(new_n227_), .O(new_n233_));
  inv1   g190(.a(new_n233_), .O(new_n234_));
  inv1   g191(.a(G115gat), .O(new_n235_));
  nor2   g192(.a(new_n200_), .b(new_n235_), .O(new_n236_));
  inv1   g193(.a(G112gat), .O(new_n237_));
  nor2   g194(.a(new_n137_), .b(new_n237_), .O(new_n238_));
  nor2   g195(.a(new_n238_), .b(new_n173_), .O(new_n239_));
  inv1   g196(.a(new_n239_), .O(new_n240_));
  nor2   g197(.a(new_n240_), .b(new_n236_), .O(new_n241_));
  inv1   g198(.a(G105gat), .O(new_n242_));
  nor2   g199(.a(new_n200_), .b(new_n242_), .O(new_n243_));
  inv1   g200(.a(G99gat), .O(new_n244_));
  nor2   g201(.a(new_n137_), .b(new_n244_), .O(new_n245_));
  nor2   g202(.a(new_n245_), .b(new_n160_), .O(new_n246_));
  inv1   g203(.a(new_n246_), .O(new_n247_));
  nor2   g204(.a(new_n247_), .b(new_n243_), .O(new_n248_));
  nor2   g205(.a(new_n248_), .b(new_n241_), .O(new_n249_));
  inv1   g206(.a(new_n249_), .O(new_n250_));
  nor2   g207(.a(new_n250_), .b(new_n234_), .O(new_n251_));
  inv1   g208(.a(new_n251_), .O(new_n252_));
  nor2   g209(.a(new_n252_), .b(G430gat), .O(new_n253_));
  nor2   g210(.a(new_n253_), .b(new_n204_), .O(G421gat));
  nor2   g211(.a(new_n233_), .b(new_n222_), .O(new_n255_));
  nor2   g212(.a(new_n255_), .b(new_n212_), .O(new_n256_));
  inv1   g213(.a(new_n256_), .O(G431gat));
  nor2   g214(.a(new_n217_), .b(new_n210_), .O(new_n258_));
  inv1   g215(.a(new_n258_), .O(new_n259_));
  inv1   g216(.a(new_n248_), .O(new_n260_));
  nor2   g217(.a(new_n260_), .b(new_n227_), .O(new_n261_));
  inv1   g218(.a(new_n261_), .O(new_n262_));
  nor2   g219(.a(new_n262_), .b(new_n259_), .O(new_n263_));
  inv1   g220(.a(new_n232_), .O(new_n264_));
  nor2   g221(.a(new_n264_), .b(new_n220_), .O(new_n265_));
  inv1   g222(.a(new_n265_), .O(new_n266_));
  nor2   g223(.a(new_n266_), .b(new_n259_), .O(new_n267_));
  inv1   g224(.a(new_n217_), .O(new_n268_));
  nor2   g225(.a(new_n268_), .b(new_n210_), .O(new_n269_));
  nor2   g226(.a(new_n269_), .b(new_n207_), .O(new_n270_));
  inv1   g227(.a(new_n270_), .O(new_n271_));
  nor2   g228(.a(new_n271_), .b(new_n267_), .O(new_n272_));
  inv1   g229(.a(new_n272_), .O(new_n273_));
  nor2   g230(.a(new_n273_), .b(new_n263_), .O(new_n274_));
  inv1   g231(.a(new_n274_), .O(G432gat));
endmodule


