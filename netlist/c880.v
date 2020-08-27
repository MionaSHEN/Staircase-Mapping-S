// Benchmark "c880.blif" written by ABC on Mon Dec  9 16:21:36 2019

module \c880.blif  ( 
    G1gat, G8gat, G13gat, G17gat, G26gat, G29gat, G36gat, G42gat, G51gat,
    G55gat, G59gat, G68gat, G72gat, G73gat, G74gat, G75gat, G80gat, G85gat,
    G86gat, G87gat, G88gat, G89gat, G90gat, G91gat, G96gat, G101gat,
    G106gat, G111gat, G116gat, G121gat, G126gat, G130gat, G135gat, G138gat,
    G143gat, G146gat, G149gat, G152gat, G153gat, G156gat, G159gat, G165gat,
    G171gat, G177gat, G183gat, G189gat, G195gat, G201gat, G207gat, G210gat,
    G219gat, G228gat, G237gat, G246gat, G255gat, G259gat, G260gat, G261gat,
    G267gat, G268gat,
    G388gat, G389gat, G390gat, G391gat, G418gat, G419gat, G420gat, G421gat,
    G422gat, G423gat, G446gat, G447gat, G448gat, G449gat, G450gat, G767gat,
    G768gat, G850gat, G863gat, G864gat, G865gat, G866gat, G874gat, G878gat,
    G879gat, G880gat  );
  input  G1gat, G8gat, G13gat, G17gat, G26gat, G29gat, G36gat, G42gat,
    G51gat, G55gat, G59gat, G68gat, G72gat, G73gat, G74gat, G75gat, G80gat,
    G85gat, G86gat, G87gat, G88gat, G89gat, G90gat, G91gat, G96gat,
    G101gat, G106gat, G111gat, G116gat, G121gat, G126gat, G130gat, G135gat,
    G138gat, G143gat, G146gat, G149gat, G152gat, G153gat, G156gat, G159gat,
    G165gat, G171gat, G177gat, G183gat, G189gat, G195gat, G201gat, G207gat,
    G210gat, G219gat, G228gat, G237gat, G246gat, G255gat, G259gat, G260gat,
    G261gat, G267gat, G268gat;
  output G388gat, G389gat, G390gat, G391gat, G418gat, G419gat, G420gat,
    G421gat, G422gat, G423gat, G446gat, G447gat, G448gat, G449gat, G450gat,
    G767gat, G768gat, G850gat, G863gat, G864gat, G865gat, G866gat, G874gat,
    G878gat, G879gat, G880gat;
  wire new_n87_, new_n88_, new_n89_, new_n90_, new_n91_, new_n93_, new_n94_,
    new_n95_, new_n96_, new_n99_, new_n100_, new_n102_, new_n103_,
    new_n104_, new_n105_, new_n106_, new_n107_, new_n108_, new_n109_,
    new_n111_, new_n112_, new_n113_, new_n114_, new_n115_, new_n116_,
    new_n118_, new_n119_, new_n120_, new_n121_, new_n123_, new_n124_,
    new_n125_, new_n127_, new_n129_, new_n130_, new_n132_, new_n133_,
    new_n135_, new_n137_, new_n138_, new_n139_, new_n140_, new_n141_,
    new_n142_, new_n143_, new_n144_, new_n146_, new_n147_, new_n148_,
    new_n149_, new_n150_, new_n152_, new_n154_, new_n155_, new_n156_,
    new_n157_, new_n158_, new_n159_, new_n160_, new_n161_, new_n162_,
    new_n163_, new_n164_, new_n165_, new_n166_, new_n167_, new_n168_,
    new_n169_, new_n170_, new_n171_, new_n172_, new_n173_, new_n174_,
    new_n175_, new_n176_, new_n177_, new_n178_, new_n179_, new_n180_,
    new_n181_, new_n182_, new_n183_, new_n184_, new_n185_, new_n186_,
    new_n187_, new_n188_, new_n189_, new_n190_, new_n191_, new_n192_,
    new_n193_, new_n194_, new_n195_, new_n196_, new_n197_, new_n198_,
    new_n200_, new_n201_, new_n202_, new_n203_, new_n204_, new_n205_,
    new_n206_, new_n207_, new_n208_, new_n209_, new_n210_, new_n211_,
    new_n212_, new_n213_, new_n214_, new_n215_, new_n216_, new_n217_,
    new_n218_, new_n219_, new_n220_, new_n221_, new_n222_, new_n223_,
    new_n224_, new_n225_, new_n226_, new_n227_, new_n228_, new_n229_,
    new_n230_, new_n231_, new_n232_, new_n233_, new_n234_, new_n235_,
    new_n236_, new_n237_, new_n238_, new_n239_, new_n240_, new_n241_,
    new_n242_, new_n243_, new_n245_, new_n246_, new_n247_, new_n248_,
    new_n249_, new_n250_, new_n251_, new_n252_, new_n253_, new_n254_,
    new_n255_, new_n256_, new_n257_, new_n258_, new_n259_, new_n260_,
    new_n261_, new_n262_, new_n263_, new_n264_, new_n265_, new_n266_,
    new_n267_, new_n268_, new_n269_, new_n270_, new_n271_, new_n272_,
    new_n273_, new_n274_, new_n275_, new_n276_, new_n277_, new_n278_,
    new_n279_, new_n280_, new_n281_, new_n282_, new_n283_, new_n284_,
    new_n285_, new_n286_, new_n287_, new_n288_, new_n289_, new_n290_,
    new_n291_, new_n292_, new_n293_, new_n294_, new_n295_, new_n296_,
    new_n297_, new_n298_, new_n299_, new_n300_, new_n301_, new_n302_,
    new_n303_, new_n304_, new_n305_, new_n306_, new_n307_, new_n308_,
    new_n309_, new_n310_, new_n311_, new_n312_, new_n313_, new_n314_,
    new_n315_, new_n316_, new_n317_, new_n318_, new_n319_, new_n320_,
    new_n321_, new_n322_, new_n324_, new_n325_, new_n326_, new_n327_,
    new_n328_, new_n329_, new_n330_, new_n331_, new_n332_, new_n333_,
    new_n334_, new_n335_, new_n336_, new_n337_, new_n338_, new_n339_,
    new_n340_, new_n341_, new_n342_, new_n343_, new_n344_, new_n345_,
    new_n346_, new_n347_, new_n348_, new_n349_, new_n350_, new_n351_,
    new_n352_, new_n353_, new_n354_, new_n355_, new_n356_, new_n357_,
    new_n358_, new_n359_, new_n360_, new_n361_, new_n362_, new_n363_,
    new_n364_, new_n365_, new_n366_, new_n367_, new_n368_, new_n369_,
    new_n370_, new_n371_, new_n372_, new_n373_, new_n374_, new_n375_,
    new_n376_, new_n377_, new_n378_, new_n380_, new_n381_, new_n382_,
    new_n383_, new_n384_, new_n385_, new_n386_, new_n387_, new_n388_,
    new_n389_, new_n390_, new_n391_, new_n392_, new_n393_, new_n394_,
    new_n395_, new_n396_, new_n397_, new_n398_, new_n399_, new_n400_,
    new_n401_, new_n402_, new_n403_, new_n404_, new_n405_, new_n406_,
    new_n407_, new_n408_, new_n410_, new_n411_, new_n412_, new_n413_,
    new_n414_, new_n415_, new_n416_, new_n417_, new_n418_, new_n419_,
    new_n420_, new_n421_, new_n422_, new_n423_, new_n424_, new_n425_,
    new_n426_, new_n427_, new_n428_, new_n429_, new_n430_, new_n431_,
    new_n433_, new_n434_, new_n435_, new_n436_, new_n437_, new_n438_,
    new_n439_, new_n440_, new_n441_, new_n442_, new_n443_, new_n444_,
    new_n445_, new_n446_, new_n447_, new_n448_, new_n449_, new_n450_,
    new_n451_, new_n452_, new_n453_, new_n454_, new_n455_, new_n456_,
    new_n457_, new_n458_, new_n459_, new_n460_, new_n461_, new_n462_,
    new_n463_, new_n464_, new_n465_, new_n466_, new_n467_, new_n468_,
    new_n469_, new_n470_, new_n471_, new_n472_, new_n473_, new_n474_,
    new_n475_, new_n476_, new_n477_, new_n478_, new_n479_, new_n480_,
    new_n481_, new_n482_, new_n483_, new_n484_, new_n485_, new_n486_,
    new_n487_, new_n488_, new_n489_, new_n490_, new_n491_, new_n492_,
    new_n493_, new_n494_, new_n495_, new_n496_, new_n497_, new_n498_,
    new_n500_, new_n501_, new_n502_, new_n503_, new_n504_, new_n505_,
    new_n506_, new_n507_, new_n508_, new_n509_, new_n510_, new_n511_,
    new_n512_, new_n513_, new_n514_, new_n515_, new_n516_, new_n517_,
    new_n519_, new_n520_, new_n521_, new_n522_, new_n523_, new_n524_,
    new_n525_, new_n526_, new_n527_, new_n528_, new_n529_, new_n530_,
    new_n531_, new_n532_, new_n533_, new_n534_, new_n535_, new_n537_,
    new_n538_, new_n539_, new_n540_, new_n541_, new_n542_, new_n543_,
    new_n544_, new_n545_, new_n546_, new_n547_, new_n548_, new_n549_,
    new_n550_, new_n551_, new_n552_, new_n553_, new_n554_, new_n555_,
    new_n556_, new_n557_, new_n558_, new_n559_, new_n560_, new_n561_,
    new_n563_, new_n564_, new_n565_, new_n566_, new_n567_, new_n568_,
    new_n569_, new_n570_, new_n571_, new_n572_, new_n573_, new_n574_,
    new_n575_, new_n576_, new_n577_, new_n578_, new_n579_, new_n580_;
  inv1   g000(.a(G42gat), .O(new_n87_));
  inv1   g001(.a(G29gat), .O(new_n88_));
  inv1   g002(.a(G75gat), .O(new_n89_));
  nor2   g003(.a(new_n89_), .b(new_n88_), .O(new_n90_));
  inv1   g004(.a(new_n90_), .O(new_n91_));
  nor2   g005(.a(new_n91_), .b(new_n87_), .O(G388gat));
  inv1   g006(.a(G80gat), .O(new_n93_));
  inv1   g007(.a(G36gat), .O(new_n94_));
  nor2   g008(.a(new_n94_), .b(new_n88_), .O(new_n95_));
  inv1   g009(.a(new_n95_), .O(new_n96_));
  nor2   g010(.a(new_n96_), .b(new_n93_), .O(G389gat));
  nor2   g011(.a(new_n96_), .b(new_n87_), .O(G390gat));
  inv1   g012(.a(G85gat), .O(new_n99_));
  inv1   g013(.a(G86gat), .O(new_n100_));
  nor2   g014(.a(new_n100_), .b(new_n99_), .O(G391gat));
  inv1   g015(.a(G13gat), .O(new_n102_));
  inv1   g016(.a(G17gat), .O(new_n103_));
  nor2   g017(.a(new_n103_), .b(new_n102_), .O(new_n104_));
  inv1   g018(.a(new_n104_), .O(new_n105_));
  inv1   g019(.a(G1gat), .O(new_n106_));
  inv1   g020(.a(G8gat), .O(new_n107_));
  nor2   g021(.a(new_n107_), .b(new_n106_), .O(new_n108_));
  inv1   g022(.a(new_n108_), .O(new_n109_));
  nor2   g023(.a(new_n109_), .b(new_n105_), .O(G418gat));
  inv1   g024(.a(G26gat), .O(new_n111_));
  nor2   g025(.a(new_n111_), .b(new_n106_), .O(new_n112_));
  inv1   g026(.a(new_n112_), .O(new_n113_));
  nor2   g027(.a(new_n113_), .b(new_n105_), .O(new_n114_));
  inv1   g028(.a(new_n114_), .O(new_n115_));
  nor2   g029(.a(new_n115_), .b(G390gat), .O(new_n116_));
  inv1   g030(.a(new_n116_), .O(G419gat));
  inv1   g031(.a(G59gat), .O(new_n118_));
  nor2   g032(.a(new_n89_), .b(new_n118_), .O(new_n119_));
  inv1   g033(.a(new_n119_), .O(new_n120_));
  nor2   g034(.a(new_n120_), .b(new_n93_), .O(new_n121_));
  inv1   g035(.a(new_n121_), .O(G420gat));
  nor2   g036(.a(new_n118_), .b(new_n94_), .O(new_n123_));
  inv1   g037(.a(new_n123_), .O(new_n124_));
  nor2   g038(.a(new_n124_), .b(new_n93_), .O(new_n125_));
  inv1   g039(.a(new_n125_), .O(G421gat));
  nor2   g040(.a(new_n124_), .b(new_n87_), .O(new_n127_));
  inv1   g041(.a(new_n127_), .O(G422gat));
  inv1   g042(.a(G90gat), .O(new_n129_));
  nor2   g043(.a(G88gat), .b(G87gat), .O(new_n130_));
  nor2   g044(.a(new_n130_), .b(new_n129_), .O(G423gat));
  inv1   g045(.a(G390gat), .O(new_n132_));
  nor2   g046(.a(new_n115_), .b(new_n132_), .O(new_n133_));
  inv1   g047(.a(new_n133_), .O(G446gat));
  inv1   g048(.a(G51gat), .O(new_n135_));
  nor2   g049(.a(new_n113_), .b(new_n135_), .O(G447gat));
  inv1   g050(.a(G55gat), .O(new_n137_));
  nor2   g051(.a(new_n137_), .b(new_n102_), .O(new_n138_));
  inv1   g052(.a(new_n138_), .O(new_n139_));
  nor2   g053(.a(new_n139_), .b(new_n109_), .O(new_n140_));
  inv1   g054(.a(new_n140_), .O(new_n141_));
  inv1   g055(.a(G68gat), .O(new_n142_));
  nor2   g056(.a(new_n142_), .b(new_n88_), .O(new_n143_));
  inv1   g057(.a(new_n143_), .O(new_n144_));
  nor2   g058(.a(new_n144_), .b(new_n141_), .O(G448gat));
  inv1   g059(.a(G74gat), .O(new_n146_));
  nor2   g060(.a(new_n142_), .b(new_n118_), .O(new_n147_));
  inv1   g061(.a(new_n147_), .O(new_n148_));
  nor2   g062(.a(new_n148_), .b(new_n141_), .O(new_n149_));
  inv1   g063(.a(new_n149_), .O(new_n150_));
  nor2   g064(.a(new_n150_), .b(new_n146_), .O(G449gat));
  inv1   g065(.a(G89gat), .O(new_n152_));
  nor2   g066(.a(new_n130_), .b(new_n152_), .O(G450gat));
  inv1   g067(.a(G135gat), .O(new_n154_));
  nor2   g068(.a(G116gat), .b(G111gat), .O(new_n155_));
  inv1   g069(.a(G111gat), .O(new_n156_));
  inv1   g070(.a(G116gat), .O(new_n157_));
  nor2   g071(.a(new_n157_), .b(new_n156_), .O(new_n158_));
  nor2   g072(.a(new_n158_), .b(new_n155_), .O(new_n159_));
  nor2   g073(.a(new_n159_), .b(new_n154_), .O(new_n160_));
  inv1   g074(.a(new_n159_), .O(new_n161_));
  nor2   g075(.a(new_n161_), .b(G135gat), .O(new_n162_));
  nor2   g076(.a(new_n162_), .b(new_n160_), .O(new_n163_));
  inv1   g077(.a(new_n163_), .O(new_n164_));
  inv1   g078(.a(G130gat), .O(new_n165_));
  nor2   g079(.a(G96gat), .b(G91gat), .O(new_n166_));
  inv1   g080(.a(G91gat), .O(new_n167_));
  inv1   g081(.a(G96gat), .O(new_n168_));
  nor2   g082(.a(new_n168_), .b(new_n167_), .O(new_n169_));
  nor2   g083(.a(new_n169_), .b(new_n166_), .O(new_n170_));
  nor2   g084(.a(new_n170_), .b(new_n165_), .O(new_n171_));
  inv1   g085(.a(new_n170_), .O(new_n172_));
  nor2   g086(.a(new_n172_), .b(G130gat), .O(new_n173_));
  nor2   g087(.a(new_n173_), .b(new_n171_), .O(new_n174_));
  nor2   g088(.a(new_n174_), .b(new_n164_), .O(new_n175_));
  inv1   g089(.a(new_n174_), .O(new_n176_));
  nor2   g090(.a(new_n176_), .b(new_n163_), .O(new_n177_));
  nor2   g091(.a(new_n177_), .b(new_n175_), .O(new_n178_));
  inv1   g092(.a(new_n178_), .O(new_n179_));
  nor2   g093(.a(G106gat), .b(G101gat), .O(new_n180_));
  inv1   g094(.a(G101gat), .O(new_n181_));
  inv1   g095(.a(G106gat), .O(new_n182_));
  nor2   g096(.a(new_n182_), .b(new_n181_), .O(new_n183_));
  nor2   g097(.a(new_n183_), .b(new_n180_), .O(new_n184_));
  inv1   g098(.a(new_n184_), .O(new_n185_));
  inv1   g099(.a(G121gat), .O(new_n186_));
  nor2   g100(.a(G126gat), .b(new_n186_), .O(new_n187_));
  inv1   g101(.a(G126gat), .O(new_n188_));
  nor2   g102(.a(new_n188_), .b(G121gat), .O(new_n189_));
  nor2   g103(.a(new_n189_), .b(new_n187_), .O(new_n190_));
  nor2   g104(.a(new_n190_), .b(new_n185_), .O(new_n191_));
  inv1   g105(.a(new_n190_), .O(new_n192_));
  nor2   g106(.a(new_n192_), .b(new_n184_), .O(new_n193_));
  nor2   g107(.a(new_n193_), .b(new_n191_), .O(new_n194_));
  inv1   g108(.a(new_n194_), .O(new_n195_));
  nor2   g109(.a(new_n195_), .b(new_n179_), .O(new_n196_));
  nor2   g110(.a(new_n194_), .b(new_n178_), .O(new_n197_));
  nor2   g111(.a(new_n197_), .b(new_n196_), .O(new_n198_));
  inv1   g112(.a(new_n198_), .O(G767gat));
  inv1   g113(.a(G207gat), .O(new_n200_));
  nor2   g114(.a(G189gat), .b(G183gat), .O(new_n201_));
  inv1   g115(.a(G183gat), .O(new_n202_));
  inv1   g116(.a(G189gat), .O(new_n203_));
  nor2   g117(.a(new_n203_), .b(new_n202_), .O(new_n204_));
  nor2   g118(.a(new_n204_), .b(new_n201_), .O(new_n205_));
  nor2   g119(.a(new_n205_), .b(new_n200_), .O(new_n206_));
  inv1   g120(.a(new_n205_), .O(new_n207_));
  nor2   g121(.a(new_n207_), .b(G207gat), .O(new_n208_));
  nor2   g122(.a(new_n208_), .b(new_n206_), .O(new_n209_));
  inv1   g123(.a(new_n209_), .O(new_n210_));
  nor2   g124(.a(G165gat), .b(G159gat), .O(new_n211_));
  inv1   g125(.a(G159gat), .O(new_n212_));
  inv1   g126(.a(G165gat), .O(new_n213_));
  nor2   g127(.a(new_n213_), .b(new_n212_), .O(new_n214_));
  nor2   g128(.a(new_n214_), .b(new_n211_), .O(new_n215_));
  nor2   g129(.a(new_n215_), .b(new_n165_), .O(new_n216_));
  inv1   g130(.a(new_n215_), .O(new_n217_));
  nor2   g131(.a(new_n217_), .b(G130gat), .O(new_n218_));
  nor2   g132(.a(new_n218_), .b(new_n216_), .O(new_n219_));
  nor2   g133(.a(new_n219_), .b(new_n210_), .O(new_n220_));
  inv1   g134(.a(new_n219_), .O(new_n221_));
  nor2   g135(.a(new_n221_), .b(new_n209_), .O(new_n222_));
  nor2   g136(.a(new_n222_), .b(new_n220_), .O(new_n223_));
  inv1   g137(.a(new_n223_), .O(new_n224_));
  nor2   g138(.a(G177gat), .b(G171gat), .O(new_n225_));
  inv1   g139(.a(G171gat), .O(new_n226_));
  inv1   g140(.a(G177gat), .O(new_n227_));
  nor2   g141(.a(new_n227_), .b(new_n226_), .O(new_n228_));
  nor2   g142(.a(new_n228_), .b(new_n225_), .O(new_n229_));
  inv1   g143(.a(new_n229_), .O(new_n230_));
  inv1   g144(.a(G195gat), .O(new_n231_));
  nor2   g145(.a(G201gat), .b(new_n231_), .O(new_n232_));
  inv1   g146(.a(G201gat), .O(new_n233_));
  nor2   g147(.a(new_n233_), .b(G195gat), .O(new_n234_));
  nor2   g148(.a(new_n234_), .b(new_n232_), .O(new_n235_));
  nor2   g149(.a(new_n235_), .b(new_n230_), .O(new_n236_));
  inv1   g150(.a(new_n235_), .O(new_n237_));
  nor2   g151(.a(new_n237_), .b(new_n229_), .O(new_n238_));
  nor2   g152(.a(new_n238_), .b(new_n236_), .O(new_n239_));
  inv1   g153(.a(new_n239_), .O(new_n240_));
  nor2   g154(.a(new_n240_), .b(new_n224_), .O(new_n241_));
  nor2   g155(.a(new_n239_), .b(new_n223_), .O(new_n242_));
  nor2   g156(.a(new_n242_), .b(new_n241_), .O(new_n243_));
  inv1   g157(.a(new_n243_), .O(G768gat));
  inv1   g158(.a(G153gat), .O(new_n245_));
  inv1   g159(.a(G447gat), .O(new_n246_));
  inv1   g160(.a(G156gat), .O(new_n247_));
  nor2   g161(.a(new_n247_), .b(new_n118_), .O(new_n248_));
  nor2   g162(.a(new_n248_), .b(new_n246_), .O(new_n249_));
  inv1   g163(.a(new_n249_), .O(new_n250_));
  nor2   g164(.a(new_n250_), .b(new_n103_), .O(new_n251_));
  nor2   g165(.a(new_n251_), .b(new_n106_), .O(new_n252_));
  nor2   g166(.a(new_n252_), .b(new_n245_), .O(new_n253_));
  nor2   g167(.a(G42gat), .b(G17gat), .O(new_n254_));
  inv1   g168(.a(new_n248_), .O(new_n255_));
  nor2   g169(.a(new_n87_), .b(new_n103_), .O(new_n256_));
  nor2   g170(.a(new_n256_), .b(new_n255_), .O(new_n257_));
  inv1   g171(.a(new_n257_), .O(new_n258_));
  nor2   g172(.a(new_n258_), .b(new_n254_), .O(new_n259_));
  inv1   g173(.a(new_n259_), .O(new_n260_));
  nor2   g174(.a(new_n260_), .b(new_n246_), .O(new_n261_));
  nor2   g175(.a(new_n120_), .b(new_n87_), .O(new_n262_));
  nor2   g176(.a(new_n135_), .b(new_n103_), .O(new_n263_));
  inv1   g177(.a(new_n263_), .O(new_n264_));
  nor2   g178(.a(new_n264_), .b(new_n109_), .O(new_n265_));
  inv1   g179(.a(new_n265_), .O(new_n266_));
  nor2   g180(.a(new_n266_), .b(new_n262_), .O(new_n267_));
  nor2   g181(.a(new_n267_), .b(new_n261_), .O(new_n268_));
  nor2   g182(.a(new_n268_), .b(new_n188_), .O(new_n269_));
  nor2   g183(.a(new_n91_), .b(new_n93_), .O(new_n270_));
  inv1   g184(.a(new_n270_), .O(new_n271_));
  nor2   g185(.a(new_n271_), .b(new_n246_), .O(new_n272_));
  inv1   g186(.a(new_n272_), .O(new_n273_));
  nor2   g187(.a(G268gat), .b(new_n137_), .O(new_n274_));
  inv1   g188(.a(new_n274_), .O(new_n275_));
  nor2   g189(.a(new_n275_), .b(new_n273_), .O(new_n276_));
  nor2   g190(.a(new_n276_), .b(new_n269_), .O(new_n277_));
  inv1   g191(.a(new_n277_), .O(new_n278_));
  nor2   g192(.a(new_n278_), .b(new_n253_), .O(new_n279_));
  nor2   g193(.a(new_n279_), .b(new_n233_), .O(new_n280_));
  inv1   g194(.a(new_n279_), .O(new_n281_));
  nor2   g195(.a(new_n281_), .b(G201gat), .O(new_n282_));
  nor2   g196(.a(new_n282_), .b(new_n280_), .O(new_n283_));
  nor2   g197(.a(new_n283_), .b(G261gat), .O(new_n284_));
  inv1   g198(.a(G219gat), .O(new_n285_));
  inv1   g199(.a(G261gat), .O(new_n286_));
  nor2   g200(.a(new_n282_), .b(new_n286_), .O(new_n287_));
  inv1   g201(.a(new_n287_), .O(new_n288_));
  nor2   g202(.a(new_n288_), .b(new_n280_), .O(new_n289_));
  nor2   g203(.a(new_n289_), .b(new_n285_), .O(new_n290_));
  inv1   g204(.a(new_n290_), .O(new_n291_));
  nor2   g205(.a(new_n291_), .b(new_n284_), .O(new_n292_));
  inv1   g206(.a(G228gat), .O(new_n293_));
  inv1   g207(.a(new_n283_), .O(new_n294_));
  nor2   g208(.a(new_n294_), .b(new_n293_), .O(new_n295_));
  inv1   g209(.a(G237gat), .O(new_n296_));
  nor2   g210(.a(new_n296_), .b(new_n233_), .O(new_n297_));
  nor2   g211(.a(new_n297_), .b(G246gat), .O(new_n298_));
  nor2   g212(.a(new_n298_), .b(new_n279_), .O(new_n299_));
  inv1   g213(.a(G73gat), .O(new_n300_));
  inv1   g214(.a(G72gat), .O(new_n301_));
  nor2   g215(.a(new_n301_), .b(new_n87_), .O(new_n302_));
  inv1   g216(.a(new_n302_), .O(new_n303_));
  nor2   g217(.a(new_n303_), .b(new_n300_), .O(new_n304_));
  inv1   g218(.a(new_n304_), .O(new_n305_));
  nor2   g219(.a(new_n305_), .b(new_n150_), .O(new_n306_));
  inv1   g220(.a(new_n306_), .O(new_n307_));
  nor2   g221(.a(new_n307_), .b(new_n233_), .O(new_n308_));
  inv1   g222(.a(G210gat), .O(new_n309_));
  nor2   g223(.a(new_n309_), .b(new_n186_), .O(new_n310_));
  inv1   g224(.a(G255gat), .O(new_n311_));
  inv1   g225(.a(G267gat), .O(new_n312_));
  nor2   g226(.a(new_n312_), .b(new_n311_), .O(new_n313_));
  nor2   g227(.a(new_n313_), .b(new_n310_), .O(new_n314_));
  inv1   g228(.a(new_n314_), .O(new_n315_));
  nor2   g229(.a(new_n315_), .b(new_n308_), .O(new_n316_));
  inv1   g230(.a(new_n316_), .O(new_n317_));
  nor2   g231(.a(new_n317_), .b(new_n299_), .O(new_n318_));
  inv1   g232(.a(new_n318_), .O(new_n319_));
  nor2   g233(.a(new_n319_), .b(new_n295_), .O(new_n320_));
  inv1   g234(.a(new_n320_), .O(new_n321_));
  nor2   g235(.a(new_n321_), .b(new_n292_), .O(new_n322_));
  inv1   g236(.a(new_n322_), .O(G850gat));
  inv1   g237(.a(G143gat), .O(new_n324_));
  nor2   g238(.a(new_n252_), .b(new_n324_), .O(new_n325_));
  nor2   g239(.a(new_n268_), .b(new_n156_), .O(new_n326_));
  nor2   g240(.a(new_n326_), .b(new_n276_), .O(new_n327_));
  inv1   g241(.a(new_n327_), .O(new_n328_));
  nor2   g242(.a(new_n328_), .b(new_n325_), .O(new_n329_));
  inv1   g243(.a(new_n329_), .O(new_n330_));
  nor2   g244(.a(new_n330_), .b(G183gat), .O(new_n331_));
  nor2   g245(.a(new_n329_), .b(new_n202_), .O(new_n332_));
  nor2   g246(.a(new_n332_), .b(new_n331_), .O(new_n333_));
  nor2   g247(.a(new_n287_), .b(new_n280_), .O(new_n334_));
  inv1   g248(.a(G146gat), .O(new_n335_));
  nor2   g249(.a(new_n252_), .b(new_n335_), .O(new_n336_));
  nor2   g250(.a(new_n268_), .b(new_n157_), .O(new_n337_));
  nor2   g251(.a(new_n337_), .b(new_n276_), .O(new_n338_));
  inv1   g252(.a(new_n338_), .O(new_n339_));
  nor2   g253(.a(new_n339_), .b(new_n336_), .O(new_n340_));
  inv1   g254(.a(new_n340_), .O(new_n341_));
  nor2   g255(.a(new_n341_), .b(G189gat), .O(new_n342_));
  inv1   g256(.a(G149gat), .O(new_n343_));
  nor2   g257(.a(new_n252_), .b(new_n343_), .O(new_n344_));
  nor2   g258(.a(new_n268_), .b(new_n186_), .O(new_n345_));
  nor2   g259(.a(new_n345_), .b(new_n276_), .O(new_n346_));
  inv1   g260(.a(new_n346_), .O(new_n347_));
  nor2   g261(.a(new_n347_), .b(new_n344_), .O(new_n348_));
  inv1   g262(.a(new_n348_), .O(new_n349_));
  nor2   g263(.a(new_n349_), .b(G195gat), .O(new_n350_));
  nor2   g264(.a(new_n350_), .b(new_n342_), .O(new_n351_));
  inv1   g265(.a(new_n351_), .O(new_n352_));
  nor2   g266(.a(new_n352_), .b(new_n334_), .O(new_n353_));
  nor2   g267(.a(new_n340_), .b(new_n203_), .O(new_n354_));
  nor2   g268(.a(new_n348_), .b(new_n231_), .O(new_n355_));
  nor2   g269(.a(new_n355_), .b(new_n354_), .O(new_n356_));
  nor2   g270(.a(new_n356_), .b(new_n342_), .O(new_n357_));
  nor2   g271(.a(new_n357_), .b(new_n353_), .O(new_n358_));
  inv1   g272(.a(new_n358_), .O(new_n359_));
  nor2   g273(.a(new_n359_), .b(new_n333_), .O(new_n360_));
  inv1   g274(.a(new_n333_), .O(new_n361_));
  nor2   g275(.a(new_n358_), .b(new_n361_), .O(new_n362_));
  nor2   g276(.a(new_n362_), .b(new_n285_), .O(new_n363_));
  inv1   g277(.a(new_n363_), .O(new_n364_));
  nor2   g278(.a(new_n364_), .b(new_n360_), .O(new_n365_));
  nor2   g279(.a(new_n361_), .b(new_n293_), .O(new_n366_));
  nor2   g280(.a(new_n296_), .b(new_n202_), .O(new_n367_));
  nor2   g281(.a(new_n367_), .b(G246gat), .O(new_n368_));
  nor2   g282(.a(new_n368_), .b(new_n329_), .O(new_n369_));
  nor2   g283(.a(new_n307_), .b(new_n202_), .O(new_n370_));
  nor2   g284(.a(new_n309_), .b(new_n182_), .O(new_n371_));
  nor2   g285(.a(new_n371_), .b(new_n370_), .O(new_n372_));
  inv1   g286(.a(new_n372_), .O(new_n373_));
  nor2   g287(.a(new_n373_), .b(new_n369_), .O(new_n374_));
  inv1   g288(.a(new_n374_), .O(new_n375_));
  nor2   g289(.a(new_n375_), .b(new_n366_), .O(new_n376_));
  inv1   g290(.a(new_n376_), .O(new_n377_));
  nor2   g291(.a(new_n377_), .b(new_n365_), .O(new_n378_));
  inv1   g292(.a(new_n378_), .O(G863gat));
  nor2   g293(.a(new_n354_), .b(new_n342_), .O(new_n380_));
  nor2   g294(.a(new_n355_), .b(new_n350_), .O(new_n381_));
  inv1   g295(.a(new_n381_), .O(new_n382_));
  nor2   g296(.a(new_n382_), .b(new_n334_), .O(new_n383_));
  nor2   g297(.a(new_n383_), .b(new_n355_), .O(new_n384_));
  inv1   g298(.a(new_n384_), .O(new_n385_));
  nor2   g299(.a(new_n385_), .b(new_n380_), .O(new_n386_));
  inv1   g300(.a(new_n380_), .O(new_n387_));
  nor2   g301(.a(new_n384_), .b(new_n387_), .O(new_n388_));
  nor2   g302(.a(new_n388_), .b(new_n285_), .O(new_n389_));
  inv1   g303(.a(new_n389_), .O(new_n390_));
  nor2   g304(.a(new_n390_), .b(new_n386_), .O(new_n391_));
  nor2   g305(.a(new_n387_), .b(new_n293_), .O(new_n392_));
  nor2   g306(.a(new_n296_), .b(new_n203_), .O(new_n393_));
  nor2   g307(.a(new_n393_), .b(G246gat), .O(new_n394_));
  nor2   g308(.a(new_n394_), .b(new_n340_), .O(new_n395_));
  nor2   g309(.a(new_n307_), .b(new_n203_), .O(new_n396_));
  nor2   g310(.a(new_n309_), .b(new_n156_), .O(new_n397_));
  inv1   g311(.a(G259gat), .O(new_n398_));
  nor2   g312(.a(new_n398_), .b(new_n311_), .O(new_n399_));
  nor2   g313(.a(new_n399_), .b(new_n397_), .O(new_n400_));
  inv1   g314(.a(new_n400_), .O(new_n401_));
  nor2   g315(.a(new_n401_), .b(new_n396_), .O(new_n402_));
  inv1   g316(.a(new_n402_), .O(new_n403_));
  nor2   g317(.a(new_n403_), .b(new_n395_), .O(new_n404_));
  inv1   g318(.a(new_n404_), .O(new_n405_));
  nor2   g319(.a(new_n405_), .b(new_n392_), .O(new_n406_));
  inv1   g320(.a(new_n406_), .O(new_n407_));
  nor2   g321(.a(new_n407_), .b(new_n391_), .O(new_n408_));
  inv1   g322(.a(new_n408_), .O(G864gat));
  inv1   g323(.a(new_n334_), .O(new_n410_));
  nor2   g324(.a(new_n381_), .b(new_n410_), .O(new_n411_));
  nor2   g325(.a(new_n383_), .b(new_n285_), .O(new_n412_));
  inv1   g326(.a(new_n412_), .O(new_n413_));
  nor2   g327(.a(new_n413_), .b(new_n411_), .O(new_n414_));
  nor2   g328(.a(new_n382_), .b(new_n293_), .O(new_n415_));
  nor2   g329(.a(new_n296_), .b(new_n231_), .O(new_n416_));
  nor2   g330(.a(new_n416_), .b(G246gat), .O(new_n417_));
  nor2   g331(.a(new_n417_), .b(new_n348_), .O(new_n418_));
  nor2   g332(.a(new_n307_), .b(new_n231_), .O(new_n419_));
  nor2   g333(.a(new_n309_), .b(new_n157_), .O(new_n420_));
  inv1   g334(.a(G260gat), .O(new_n421_));
  nor2   g335(.a(new_n421_), .b(new_n311_), .O(new_n422_));
  nor2   g336(.a(new_n422_), .b(new_n420_), .O(new_n423_));
  inv1   g337(.a(new_n423_), .O(new_n424_));
  nor2   g338(.a(new_n424_), .b(new_n419_), .O(new_n425_));
  inv1   g339(.a(new_n425_), .O(new_n426_));
  nor2   g340(.a(new_n426_), .b(new_n418_), .O(new_n427_));
  inv1   g341(.a(new_n427_), .O(new_n428_));
  nor2   g342(.a(new_n428_), .b(new_n415_), .O(new_n429_));
  inv1   g343(.a(new_n429_), .O(new_n430_));
  nor2   g344(.a(new_n430_), .b(new_n414_), .O(new_n431_));
  inv1   g345(.a(new_n431_), .O(G865gat));
  nor2   g346(.a(new_n268_), .b(new_n167_), .O(new_n433_));
  nor2   g347(.a(new_n250_), .b(new_n137_), .O(new_n434_));
  inv1   g348(.a(new_n434_), .O(new_n435_));
  nor2   g349(.a(new_n435_), .b(new_n324_), .O(new_n436_));
  inv1   g350(.a(G138gat), .O(new_n437_));
  nor2   g351(.a(new_n437_), .b(new_n107_), .O(new_n438_));
  nor2   g352(.a(G268gat), .b(new_n103_), .O(new_n439_));
  inv1   g353(.a(new_n439_), .O(new_n440_));
  nor2   g354(.a(new_n440_), .b(new_n273_), .O(new_n441_));
  nor2   g355(.a(new_n441_), .b(new_n438_), .O(new_n442_));
  inv1   g356(.a(new_n442_), .O(new_n443_));
  nor2   g357(.a(new_n443_), .b(new_n436_), .O(new_n444_));
  inv1   g358(.a(new_n444_), .O(new_n445_));
  nor2   g359(.a(new_n445_), .b(new_n433_), .O(new_n446_));
  inv1   g360(.a(new_n446_), .O(new_n447_));
  nor2   g361(.a(new_n447_), .b(G159gat), .O(new_n448_));
  nor2   g362(.a(new_n446_), .b(new_n212_), .O(new_n449_));
  nor2   g363(.a(new_n449_), .b(new_n448_), .O(new_n450_));
  inv1   g364(.a(new_n450_), .O(new_n451_));
  nor2   g365(.a(new_n268_), .b(new_n182_), .O(new_n452_));
  nor2   g366(.a(new_n435_), .b(new_n245_), .O(new_n453_));
  inv1   g367(.a(G152gat), .O(new_n454_));
  nor2   g368(.a(new_n454_), .b(new_n437_), .O(new_n455_));
  nor2   g369(.a(new_n455_), .b(new_n441_), .O(new_n456_));
  inv1   g370(.a(new_n456_), .O(new_n457_));
  nor2   g371(.a(new_n457_), .b(new_n453_), .O(new_n458_));
  inv1   g372(.a(new_n458_), .O(new_n459_));
  nor2   g373(.a(new_n459_), .b(new_n452_), .O(new_n460_));
  nor2   g374(.a(new_n460_), .b(new_n227_), .O(new_n461_));
  nor2   g375(.a(new_n362_), .b(new_n332_), .O(new_n462_));
  inv1   g376(.a(new_n460_), .O(new_n463_));
  nor2   g377(.a(new_n463_), .b(G177gat), .O(new_n464_));
  nor2   g378(.a(new_n464_), .b(new_n461_), .O(new_n465_));
  inv1   g379(.a(new_n465_), .O(new_n466_));
  nor2   g380(.a(new_n466_), .b(new_n462_), .O(new_n467_));
  nor2   g381(.a(new_n467_), .b(new_n461_), .O(new_n468_));
  nor2   g382(.a(new_n268_), .b(new_n168_), .O(new_n469_));
  nor2   g383(.a(new_n435_), .b(new_n335_), .O(new_n470_));
  nor2   g384(.a(new_n437_), .b(new_n135_), .O(new_n471_));
  nor2   g385(.a(new_n471_), .b(new_n441_), .O(new_n472_));
  inv1   g386(.a(new_n472_), .O(new_n473_));
  nor2   g387(.a(new_n473_), .b(new_n470_), .O(new_n474_));
  inv1   g388(.a(new_n474_), .O(new_n475_));
  nor2   g389(.a(new_n475_), .b(new_n469_), .O(new_n476_));
  inv1   g390(.a(new_n476_), .O(new_n477_));
  nor2   g391(.a(new_n477_), .b(G165gat), .O(new_n478_));
  nor2   g392(.a(new_n268_), .b(new_n181_), .O(new_n479_));
  nor2   g393(.a(new_n435_), .b(new_n343_), .O(new_n480_));
  nor2   g394(.a(new_n437_), .b(new_n103_), .O(new_n481_));
  nor2   g395(.a(new_n481_), .b(new_n441_), .O(new_n482_));
  inv1   g396(.a(new_n482_), .O(new_n483_));
  nor2   g397(.a(new_n483_), .b(new_n480_), .O(new_n484_));
  inv1   g398(.a(new_n484_), .O(new_n485_));
  nor2   g399(.a(new_n485_), .b(new_n479_), .O(new_n486_));
  inv1   g400(.a(new_n486_), .O(new_n487_));
  nor2   g401(.a(new_n487_), .b(G171gat), .O(new_n488_));
  nor2   g402(.a(new_n488_), .b(new_n478_), .O(new_n489_));
  inv1   g403(.a(new_n489_), .O(new_n490_));
  nor2   g404(.a(new_n490_), .b(new_n468_), .O(new_n491_));
  nor2   g405(.a(new_n476_), .b(new_n213_), .O(new_n492_));
  nor2   g406(.a(new_n486_), .b(new_n226_), .O(new_n493_));
  nor2   g407(.a(new_n493_), .b(new_n492_), .O(new_n494_));
  nor2   g408(.a(new_n494_), .b(new_n478_), .O(new_n495_));
  nor2   g409(.a(new_n495_), .b(new_n491_), .O(new_n496_));
  inv1   g410(.a(new_n496_), .O(new_n497_));
  nor2   g411(.a(new_n497_), .b(new_n451_), .O(new_n498_));
  nor2   g412(.a(new_n498_), .b(new_n448_), .O(G866gat));
  inv1   g413(.a(new_n462_), .O(new_n500_));
  nor2   g414(.a(new_n465_), .b(new_n500_), .O(new_n501_));
  nor2   g415(.a(new_n467_), .b(new_n285_), .O(new_n502_));
  inv1   g416(.a(new_n502_), .O(new_n503_));
  nor2   g417(.a(new_n503_), .b(new_n501_), .O(new_n504_));
  nor2   g418(.a(new_n466_), .b(new_n293_), .O(new_n505_));
  nor2   g419(.a(new_n296_), .b(new_n227_), .O(new_n506_));
  nor2   g420(.a(new_n506_), .b(G246gat), .O(new_n507_));
  nor2   g421(.a(new_n507_), .b(new_n460_), .O(new_n508_));
  nor2   g422(.a(new_n307_), .b(new_n227_), .O(new_n509_));
  nor2   g423(.a(new_n309_), .b(new_n181_), .O(new_n510_));
  nor2   g424(.a(new_n510_), .b(new_n509_), .O(new_n511_));
  inv1   g425(.a(new_n511_), .O(new_n512_));
  nor2   g426(.a(new_n512_), .b(new_n508_), .O(new_n513_));
  inv1   g427(.a(new_n513_), .O(new_n514_));
  nor2   g428(.a(new_n514_), .b(new_n505_), .O(new_n515_));
  inv1   g429(.a(new_n515_), .O(new_n516_));
  nor2   g430(.a(new_n516_), .b(new_n504_), .O(new_n517_));
  inv1   g431(.a(new_n517_), .O(G874gat));
  nor2   g432(.a(new_n496_), .b(new_n450_), .O(new_n519_));
  nor2   g433(.a(new_n519_), .b(new_n498_), .O(new_n520_));
  nor2   g434(.a(new_n520_), .b(new_n285_), .O(new_n521_));
  nor2   g435(.a(new_n451_), .b(new_n293_), .O(new_n522_));
  nor2   g436(.a(new_n296_), .b(new_n212_), .O(new_n523_));
  nor2   g437(.a(new_n523_), .b(G246gat), .O(new_n524_));
  nor2   g438(.a(new_n524_), .b(new_n446_), .O(new_n525_));
  inv1   g439(.a(G268gat), .O(new_n526_));
  nor2   g440(.a(new_n526_), .b(new_n309_), .O(new_n527_));
  nor2   g441(.a(new_n307_), .b(new_n212_), .O(new_n528_));
  nor2   g442(.a(new_n528_), .b(new_n527_), .O(new_n529_));
  inv1   g443(.a(new_n529_), .O(new_n530_));
  nor2   g444(.a(new_n530_), .b(new_n525_), .O(new_n531_));
  inv1   g445(.a(new_n531_), .O(new_n532_));
  nor2   g446(.a(new_n532_), .b(new_n522_), .O(new_n533_));
  inv1   g447(.a(new_n533_), .O(new_n534_));
  nor2   g448(.a(new_n534_), .b(new_n521_), .O(new_n535_));
  inv1   g449(.a(new_n535_), .O(G878gat));
  nor2   g450(.a(new_n492_), .b(new_n478_), .O(new_n537_));
  nor2   g451(.a(new_n493_), .b(new_n488_), .O(new_n538_));
  inv1   g452(.a(new_n538_), .O(new_n539_));
  nor2   g453(.a(new_n539_), .b(new_n468_), .O(new_n540_));
  nor2   g454(.a(new_n540_), .b(new_n493_), .O(new_n541_));
  inv1   g455(.a(new_n541_), .O(new_n542_));
  nor2   g456(.a(new_n542_), .b(new_n537_), .O(new_n543_));
  inv1   g457(.a(new_n537_), .O(new_n544_));
  nor2   g458(.a(new_n541_), .b(new_n544_), .O(new_n545_));
  nor2   g459(.a(new_n545_), .b(new_n285_), .O(new_n546_));
  inv1   g460(.a(new_n546_), .O(new_n547_));
  nor2   g461(.a(new_n547_), .b(new_n543_), .O(new_n548_));
  nor2   g462(.a(new_n544_), .b(new_n293_), .O(new_n549_));
  nor2   g463(.a(new_n296_), .b(new_n213_), .O(new_n550_));
  nor2   g464(.a(new_n550_), .b(G246gat), .O(new_n551_));
  nor2   g465(.a(new_n551_), .b(new_n476_), .O(new_n552_));
  nor2   g466(.a(new_n307_), .b(new_n213_), .O(new_n553_));
  nor2   g467(.a(new_n309_), .b(new_n167_), .O(new_n554_));
  nor2   g468(.a(new_n554_), .b(new_n553_), .O(new_n555_));
  inv1   g469(.a(new_n555_), .O(new_n556_));
  nor2   g470(.a(new_n556_), .b(new_n552_), .O(new_n557_));
  inv1   g471(.a(new_n557_), .O(new_n558_));
  nor2   g472(.a(new_n558_), .b(new_n549_), .O(new_n559_));
  inv1   g473(.a(new_n559_), .O(new_n560_));
  nor2   g474(.a(new_n560_), .b(new_n548_), .O(new_n561_));
  inv1   g475(.a(new_n561_), .O(G879gat));
  inv1   g476(.a(new_n468_), .O(new_n563_));
  nor2   g477(.a(new_n538_), .b(new_n563_), .O(new_n564_));
  nor2   g478(.a(new_n540_), .b(new_n285_), .O(new_n565_));
  inv1   g479(.a(new_n565_), .O(new_n566_));
  nor2   g480(.a(new_n566_), .b(new_n564_), .O(new_n567_));
  nor2   g481(.a(new_n539_), .b(new_n293_), .O(new_n568_));
  nor2   g482(.a(new_n296_), .b(new_n226_), .O(new_n569_));
  nor2   g483(.a(new_n569_), .b(G246gat), .O(new_n570_));
  nor2   g484(.a(new_n570_), .b(new_n486_), .O(new_n571_));
  nor2   g485(.a(new_n307_), .b(new_n226_), .O(new_n572_));
  nor2   g486(.a(new_n309_), .b(new_n168_), .O(new_n573_));
  nor2   g487(.a(new_n573_), .b(new_n572_), .O(new_n574_));
  inv1   g488(.a(new_n574_), .O(new_n575_));
  nor2   g489(.a(new_n575_), .b(new_n571_), .O(new_n576_));
  inv1   g490(.a(new_n576_), .O(new_n577_));
  nor2   g491(.a(new_n577_), .b(new_n568_), .O(new_n578_));
  inv1   g492(.a(new_n578_), .O(new_n579_));
  nor2   g493(.a(new_n579_), .b(new_n567_), .O(new_n580_));
  inv1   g494(.a(new_n580_), .O(G880gat));
endmodule


