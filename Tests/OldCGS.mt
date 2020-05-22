(* Mathematica Test File *)
(*These are results from the old package for CGS. New behaviour may be better*)




 Test[CGS[Acre], Unit[5058570528/125, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestAcre"]; 
  
 Test[CGS[AMU], Unit[1.66054*10^-24, "Gram"], 
  TestID -> "OldPackageCGSTestAMU"]; 
 Test[CGS[Angstrom], Unit[1/100000000, "Centimeter"], 
  TestID -> "OldPackageCGSTestAngstrom"]; 
 Test[CGS[Apostilb], 
  Unit[1/(10000 \[Pi]), ("Lumen")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestApostilb"]; 
 Test[CGS[ArcMinute], Unit[\[Pi]/10800, "Radian"], 
  TestID -> "OldPackageCGSTestArcMinute"]; 
 Test[CGS[ArcSecond], Unit[\[Pi]/648000, "Radian"], 
  TestID -> "OldPackageCGSTestArcSecond"]; 
 Test[CGS[Are], Unit[1000000, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestAre"]; 
 Test[CGS[AssayTon], Unit[29.167, "Gram"], 
  TestID -> "OldPackageCGSTestAssayTon"]; 
 Test[CGS[AstronomicalUnit], Unit[1.49598*10^13, "Centimeter"], 
  TestID -> "OldPackageCGSTestAstronomicalUnit"]; 
 Test[CGS[Atmosphere], Unit[1.01325*10^6, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestAtmosphere"]; 
 Test[CGS[AtomicMassUnit], Unit[1.66054*10^-24, "Gram"], 
  TestID -> "OldPackageCGSTestAtomicMassUnit"]; 
 Test[CGS[Atto], 1/1000000000000000000, 
  TestID -> "OldPackageCGSTestAtto"]; 
 Test[CGS[AU], Unit[1.49598*10^13, "Centimeter"], 
  TestID -> "OldPackageCGSTestAU"]; 
 Test[CGS[AvoirdupoisOunce], Unit[28.3495, "Gram"], 
  TestID -> "OldPackageCGSTestAvoirdupoisOunce"]; 
 Test[CGS[AvoirdupoisPound], Unit[453.592, "Gram"], 
  TestID -> "OldPackageCGSTestAvoirdupoisPound"]; 
 Test[CGS[Bag], Unit[105720., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestBag"]; 
 Test[CGS[BakersDozen], 13, TestID -> "OldPackageCGSTestBakersDozen"];
  Test[CGS[Bale], Unit[226796., "Gram"], 
  TestID -> "OldPackageCGSTestBale"]; 
 Test[CGS[Bar], Unit[1000000, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestBar"]; 
 Test[CGS[Barn], Unit[1/1000000000000000000000000, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestBarn"]; 
 Test[CGS[Barrel], Unit[159000., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestBarrel"]; 
 Test[CGS[Barye], Unit[1, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestBarye"]; 
 Test[CGS[Baud], Unit[1, ("Bit")/("Second")], 
  TestID -> "OldPackageCGSTestBaud"]; 
 Test[CGS[Becquerel], Becquerel, 
  TestID -> "OldPackageCGSTestBecquerel"]; 
 Test[CGS[Biot], Unit[10, "Ampere"], 
  TestID -> "OldPackageCGSTestBiot"]; 
 Test[CGS[Bit], Bit, TestID -> "OldPackageCGSTestBit"]; 
 Test[CGS[BoardFoot], Unit[36870894/15625, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestBoardFoot"]; 
 Test[CGS[BohrMagneton], Unit[9.27402*10^-21, ("Erg")/("Gauss")], 
  TestID -> "OldPackageCGSTestBohrMagneton"]; 
 Test[CGS[Bolt], Unit[18288/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestBolt"]; 
 Test[CGS[BritishThermalUnit], Unit[1.05506*10^10, "Erg"], 
  TestID -> "OldPackageCGSTestBritishThermalUnit"]; 
 Test[CGS[BTU], Unit[1.05506*10^10, "Erg"], 
  TestID -> "OldPackageCGSTestBTU"]; 
 Test[CGS[Bucket], Unit[15141.6, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestBucket"]; 
 Test[CGS[Bushel], Unit[35240., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestBushel"]; 
 Test[CGS[Butt], Unit[476961., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestButt"]; 
 Test[CGS[Cable], Unit[109728/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestCable"]; 
 Test[CGS[Caliber], Unit[127/5000, "Centimeter"], 
  TestID -> "OldPackageCGSTestCaliber"]; 
 Test[CGS[Calorie], Unit[4.1868*10^7, "Erg"], 
  TestID -> "OldPackageCGSTestCalorie"]; 
 Test[CGS[Candela], Candela, TestID -> "OldPackageCGSTestCandela"]; 
 Test[CGS[Candle], Candela, TestID -> "OldPackageCGSTestCandle"]; 
 Test[CGS[Carat], Unit[0.2, "Gram"], 
  TestID -> "OldPackageCGSTestCarat"]; 
 Test[CGS[Celsius], Kelvin, TestID -> "OldPackageCGSTestCelsius"]; 
 Test[CGS[Cental], Unit[45359.2, "Gram"], 
  TestID -> "OldPackageCGSTestCental"]; 
 Test[CGS[Centi], 1/100, TestID -> "OldPackageCGSTestCenti"]; 
 Test[CGS[Centigrade], Kelvin, 
  TestID -> "OldPackageCGSTestCentigrade"]; 
 Test[CGS[Centimeter], Centimeter, 
  TestID -> "OldPackageCGSTestCentimeter"]; 
 Test[CGS[Century], Unit[3153600000, "Second"], 
  TestID -> "OldPackageCGSTestCentury"]; 
 Test[CGS[CGS], CGS, TestID -> "OldPackageCGSTestCGS"]; 
 Test[CGS[Chain], Unit[50292/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestChain"]; 
 Test[CGS[ChevalVapeur], Unit[735.499, "Watt"], 
  TestID -> "OldPackageCGSTestChevalVapeur"]; 
 Test[CGS[Cicero], Unit[60/133, "Centimeter"], 
  TestID -> "OldPackageCGSTestCicero"]; 
 Test[CGS[Convert], Convert, TestID -> "OldPackageCGSTestConvert"]; 
 Test[CGS[ConvertTemperature], ConvertTemperature, 
  TestID -> "OldPackageCGSTestConvertTemperature"]; 
 Test[CGS[Cord], Unit[56633693184/15625, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestCord"]; 
 Test[CGS[Coulomb], Coulomb, TestID -> "OldPackageCGSTestCoulomb"]; 
 Test[CGS[Cubit], Unit[1143/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestCubit"]; 
 Test[CGS[Curie], Unit[37000000000, "Becquerel"], 
  TestID -> "OldPackageCGSTestCurie"]; 
 Test[CGS[Dalton], Unit[1.66054*10^-24, "Gram"], 
  TestID -> "OldPackageCGSTestDalton"]; 
 Test[CGS[Day], Unit[86400, "Second"], 
  TestID -> "OldPackageCGSTestDay"]; 
 Test[CGS[Deca], 10, TestID -> "OldPackageCGSTestDeca"]; 
 Test[CGS[Decade], Unit[315360000, "Second"], 
  TestID -> "OldPackageCGSTestDecade"]; 
 Test[CGS[Deci], 1/10, TestID -> "OldPackageCGSTestDeci"]; 
 Test[CGS[Denier], Unit[1/900000, ("Gram")/("Centimeter")], 
  TestID -> "OldPackageCGSTestDenier"]; 
 Test[CGS[Didot], Unit[5/133, "Centimeter"], 
  TestID -> "OldPackageCGSTestDidot"]; 
 Test[CGS[DidotPoint], Unit[5/133, "Centimeter"], 
  TestID -> "OldPackageCGSTestDidotPoint"]; 
 Test[CGS[Diopter], Unit[1/100, 1/("Centimeter")], 
  TestID -> "OldPackageCGSTestDiopter"]; 
 Test[CGS[Dozen], 12, TestID -> "OldPackageCGSTestDozen"]; 
 Test[CGS[Drachma], Unit[4.2923, "Gram"], 
  TestID -> "OldPackageCGSTestDrachma"]; 
 Test[CGS[Dyne], Dyne, TestID -> "OldPackageCGSTestDyne"]; 
 Test[CGS[ElectronVolt], Unit[1.60218*10^-12, "Erg"], 
  TestID -> "OldPackageCGSTestElectronVolt"]; 
 Test[CGS[Ell], Unit[1143/10, "Centimeter"], 
  TestID -> "OldPackageCGSTestEll"]; 
 Test[CGS[Ephah], Unit[39645., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestEphah"]; 
 Test[CGS[Erg], Erg, TestID -> "OldPackageCGSTestErg"]; 
 Test[CGS[Exa], 1000000000000000000, 
  TestID -> "OldPackageCGSTestExa"]; 
 Test[CGS[Fahrenheit], Unit[5/9, "Kelvin"], 
  TestID -> "OldPackageCGSTestFahrenheit"]; 
 Test[CGS[Farad], Farad, TestID -> "OldPackageCGSTestFarad"]; 
 Test[CGS[Fathom], Unit[4572/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestFathom"]; 
 Test[CGS[Feet], Unit[762/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestFeet"]; 
 Test[CGS[Femto], 1/1000000000000000, 
  TestID -> "OldPackageCGSTestFemto"]; 
 Test[CGS[Fermi], Unit[1/10000000000000, "Centimeter"], 
  TestID -> "OldPackageCGSTestFermi"]; 
 Test[CGS[Fifth], Unit[757.082, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestFifth"]; 
 Test[CGS[Firkin], Unit[40914.8, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestFirkin"]; 
 Test[CGS[FluidDram], Unit[3.69669, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestFluidDram"]; 
 Test[CGS[FluidOunce], Unit[29.5735, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestFluidOunce"]; 
 Test[CGS[Foot], Unit[762/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestFoot"]; 
 Test[CGS[FootCandle], Unit[625/580644, "Phot"], 
  TestID -> "OldPackageCGSTestFootCandle"]; 
 Test[CGS[Fortnight], Unit[1209600, "Second"], 
  TestID -> "OldPackageCGSTestFortnight"]; 
 Test[CGS[Furlong], Unit[100584/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestFurlong"]; 
 Test[CGS[Gal], Unit[1, ("Centimeter")/("Second")^2], 
  TestID -> "OldPackageCGSTestGal"]; 
 Test[CGS[Gallon], Unit[3785.41, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestGallon"]; 
 Test[CGS[Gauss], Gauss, TestID -> "OldPackageCGSTestGauss"]; 
 Test[CGS[Geepound], Unit[14593.9, "Gram"], 
  TestID -> "OldPackageCGSTestGeepound"]; 
 Test[CGS[Giga], 1000000000, TestID -> "OldPackageCGSTestGiga"]; 
 Test[CGS[Gilbert], Unit[5/(2 \[Pi]), "Ampere"], 
  TestID -> "OldPackageCGSTestGilbert"]; 
 Test[CGS[Gill], Unit[118.294, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestGill"]; 
 Test[CGS[Grade], Unit[\[Pi]/200, "Radian"], 
  TestID -> "OldPackageCGSTestGrade"]; 
 Test[CGS[Grain], Unit[0.064799, "Gram"], 
  TestID -> "OldPackageCGSTestGrain"]; 
 Test[CGS[Gram], Gram, TestID -> "OldPackageCGSTestGram"]; 
 Test[CGS[GramWeight], Unit[980.665, "Dyne"], 
  TestID -> "OldPackageCGSTestGramWeight"]; 
 Test[CGS[Gravity], Unit[980.665, ("Centimeter")/("Second")^2], 
  TestID -> "OldPackageCGSTestGravity"]; 
 Test[CGS[GrayDose], GrayDose, TestID -> "OldPackageCGSTestGrayDose"];
  Test[CGS[Gross], 144, TestID -> "OldPackageCGSTestGross"]; 
 Test[CGS[GrossHundredweight], Unit[50802.3, "Gram"], 
  TestID -> "OldPackageCGSTestGrossHundredweight"]; 
 Test[CGS[Hand], Unit[254/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestHand"]; 
 Test[CGS[Hectare], Unit[100000000, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestHectare"]; 
 Test[CGS[Hecto], 100, TestID -> "OldPackageCGSTestHecto"]; 
 Test[CGS[Hefner], Unit[0.92, "Candela"], 
  TestID -> "OldPackageCGSTestHefner"]; 
 Test[CGS[Henry], Henry, TestID -> "OldPackageCGSTestHenry"]; 
 Test[CGS[Hertz], Hertz, TestID -> "OldPackageCGSTestHertz"]; 
 Test[CGS[Hogshead], Unit[238481., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestHogshead"]; 
 Test[CGS[Horsepower], Unit[745.7, "Watt"], 
  TestID -> "OldPackageCGSTestHorsepower"]; 
 Test[CGS[Hour], Unit[3600, "Second"], 
  TestID -> "OldPackageCGSTestHour"]; 
 Test[CGS[Hundredweight], Unit[50802.3, "Gram"], 
  TestID -> "OldPackageCGSTestHundredweight"]; 
 Test[CGS[ImperialGallon], Unit[4546.09, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestImperialGallon"]; 
 Test[CGS[ImperialPint], Unit[568.261, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestImperialPint"]; 
 Test[CGS[Inch], Unit[127/50, "Centimeter"], 
  TestID -> "OldPackageCGSTestInch"]; 
 Test[CGS[InchMercury], Unit[33863.9, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestInchMercury"]; 
 Test[CGS[Jeroboam], Unit[3028.33, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestJeroboam"]; 
 Test[CGS[Jigger], Unit[44.3603, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestJigger"]; 
 Test[CGS[Joule], Unit[10000000, "Erg"], 
  TestID -> "OldPackageCGSTestJoule"]; 
 Test[CGS[Kayser], 1/Centimeter, TestID -> "OldPackageCGSTestKayser"];
  Test[CGS[Kelvin], Kelvin, TestID -> "OldPackageCGSTestKelvin"]; 
 Test[CGS[Kilo], 1000, TestID -> "OldPackageCGSTestKilo"]; 
 Test[CGS[Kilogram], Unit[1000, "Gram"], 
  TestID -> "OldPackageCGSTestKilogram"]; 
 Test[CGS[KilogramForce], Unit[980665., "Dyne"], 
  TestID -> "OldPackageCGSTestKilogramForce"]; 
 Test[CGS[KilogramWeight], Unit[980665., "Dyne"], 
  TestID -> "OldPackageCGSTestKilogramWeight"]; 
 Test[CGS[Knot], Unit[51.4444, ("Centimeter")/("Second")], 
  TestID -> "OldPackageCGSTestKnot"]; 
 Test[CGS[Lambert], Unit[1/\[Pi], ("Lumen")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestLambert"]; 
 Test[CGS[League], Unit[2414016/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestLeague"]; 
 Test[CGS[Libra], Unit[325.971, "Gram"], 
  TestID -> "OldPackageCGSTestLibra"]; 
 Test[CGS[LightYear], Unit[9.46073*10^17, "Centimeter"], 
  TestID -> "OldPackageCGSTestLightYear"]; 
 Test[CGS[Link], Unit[20.1168, "Centimeter"], 
  TestID -> "OldPackageCGSTestLink"]; 
 Test[CGS[Liter], Unit[1000, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestLiter"]; 
 Test[CGS[LongTon], Unit[1.01605*10^6, "Gram"], 
  TestID -> "OldPackageCGSTestLongTon"]; 
 Test[CGS[Lumen], Lumen, TestID -> "OldPackageCGSTestLumen"]; 
 Test[CGS[Lumerg], Unit[1, "Lumen" "Second"], 
  TestID -> "OldPackageCGSTestLumerg"]; 
 Test[CGS[Lux], Unit[1/10000, "Phot"], 
  TestID -> "OldPackageCGSTestLux"]; 
 Test[CGS[Magnum], Unit[1892.7, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestMagnum"]; 
 Test[CGS[Maxwell], Maxwell, TestID -> "OldPackageCGSTestMaxwell"]; 
 Test[CGS[Mega], 1000000, TestID -> "OldPackageCGSTestMega"]; 
 Test[CGS[Meter], Unit[100, "Centimeter"], 
  TestID -> "OldPackageCGSTestMeter"]; 
 Test[CGS[MetricTon], Unit[1000000, "Gram"], 
  TestID -> "OldPackageCGSTestMetricTon"]; 
 Test[CGS[Mho], 1/Ohm, TestID -> "OldPackageCGSTestMho"]; 
 Test[CGS[Micro], 1/1000000, TestID -> "OldPackageCGSTestMicro"]; 
 Test[CGS[Micron], Unit[1/10000, "Centimeter"], 
  TestID -> "OldPackageCGSTestMicron"]; 
 Test[CGS[Mil], Unit[127/50000, "Centimeter"], 
  TestID -> "OldPackageCGSTestMil"]; 
 Test[CGS[Mile], Unit[804672/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestMile"]; 
 Test[CGS[Millennium], Unit[31536000000, "Second"], 
  TestID -> "OldPackageCGSTestMillennium"]; 
 Test[CGS[Milli], 1/1000, TestID -> "OldPackageCGSTestMilli"]; 
 Test[CGS[MillimeterMercury], 
  Unit[1333.22, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestMillimeterMercury"]; 
 Test[CGS[Mina], Unit[429.234, "Gram"], 
  TestID -> "OldPackageCGSTestMina"]; 
 Test[CGS[Minim], Unit[0.0616115, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestMinim"]; 
 Test[CGS[Minute], Unit[60, "Second"], 
  TestID -> "OldPackageCGSTestMinute"]; 
 Test[CGS[SI], SI, TestID -> "OldPackageCGSTestSI"]; 
 Test[CGS[Mole], 6.02214*10^23, TestID -> "OldPackageCGSTestMole"]; 
 Test[CGS[Month], Unit[2628000, "Second"], 
  TestID -> "OldPackageCGSTestMonth"]; 
 Test[CGS[Nano], 1/1000000000, TestID -> "OldPackageCGSTestNano"]; 
 Test[CGS[NauticalMile], Unit[185200., "Centimeter"], 
  TestID -> "OldPackageCGSTestNauticalMile"]; 
 Test[CGS[NetHundredweight], Unit[45359.2, "Gram"], 
  TestID -> "OldPackageCGSTestNetHundredweight"]; 
 Test[CGS[Newton], Unit[100000, "Dyne"], 
  TestID -> "OldPackageCGSTestNewton"]; 
 Test[CGS[Nibble], Unit[4, "Bit"], 
  TestID -> "OldPackageCGSTestNibble"]; 
 Test[CGS[Nit], Unit[1/10000, "Stilb"], 
  TestID -> "OldPackageCGSTestNit"]; 
 Test[CGS[Noggin], Unit[118.294, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestNoggin"]; 
 Test[CGS[NuclearMagneton], Unit[5.05079*10^-24, ("Erg")/("Gauss")], 
  TestID -> "OldPackageCGSTestNuclearMagneton"]; 
 Test[CGS[Obolos], Unit[0.71538, "Gram"], 
  TestID -> "OldPackageCGSTestObolos"]; 
 Test[CGS[Oersted], Unit[5/(2 \[Pi]), ("Ampere")/("Centimeter")], 
  TestID -> "OldPackageCGSTestOersted"]; 
 Test[CGS[Ohm], Ohm, TestID -> "OldPackageCGSTestOhm"]; 
 Test[CGS[Omer], Unit[3964.5, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestOmer"]; 
 Test[CGS[Ounce], Unit[28.3495, "Gram"], 
  TestID -> "OldPackageCGSTestOunce"]; 
 Test[CGS[Parsec], Unit[3085700000000000000, "Centimeter"], 
  TestID -> "OldPackageCGSTestParsec"]; 
 Test[CGS[Pascal], Unit[10, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestPascal"]; 
 Test[CGS[Peck], Unit[8810., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestPeck"]; 
 Test[CGS[Pennyweight], Unit[1.555, "Gram"], 
  TestID -> "OldPackageCGSTestPennyweight"]; 
 Test[CGS[Percent], 1/100, TestID -> "OldPackageCGSTestPercent"]; 
 Test[CGS[Perch], Unit[502.92, "Centimeter"], 
  TestID -> "OldPackageCGSTestPerch"]; 
 Test[CGS[Peta], 1000000000000000, TestID -> "OldPackageCGSTestPeta"];
  Test[CGS[Phot], Phot, TestID -> "OldPackageCGSTestPhot"]; 
 Test[CGS[Pica], Unit[127/300, "Centimeter"], 
  TestID -> "OldPackageCGSTestPica"]; 
 Test[CGS[Pico], 1/1000000000000, TestID -> "OldPackageCGSTestPico"]; 
 Test[CGS[Pint], Unit[473.176, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestPint"]; 
 Test[CGS[Poise], Unit[1., ("Dyne" "Second")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestPoise"]; 
 Test[CGS[Pole], Unit[502.92, "Centimeter"], 
  TestID -> "OldPackageCGSTestPole"]; 
 Test[CGS[Pondus], Unit[325.969, "Gram"], 
  TestID -> "OldPackageCGSTestPondus"]; 
 Test[CGS[Pony], Unit[22.1801, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestPony"]; 
 Test[CGS[Pound], Unit[453.592, "Gram"], 
  TestID -> "OldPackageCGSTestPound"]; 
 Test[CGS[Poundal], Unit[13825.5, "Dyne"], 
  TestID -> "OldPackageCGSTestPoundal"]; 
 Test[CGS[PoundForce], Unit[444822., "Dyne"], 
  TestID -> "OldPackageCGSTestPoundForce"]; 
 Test[CGS[PoundsPerSquareInch], 
  Unit[68947.6, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestPoundsPerSquareInch"]; 
 Test[CGS[PoundWeight], Unit[444822., "Dyne"], 
  TestID -> "OldPackageCGSTestPoundWeight"]; 
 Test[CGS[PrintersPoint], Unit[0.035146, "Centimeter"], 
  TestID -> "OldPackageCGSTestPrintersPoint"]; 
 Test[CGS[PSI], Unit[68947.6, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestPSI"]; 
 Test[CGS[Puncheon], Unit[317974., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestPuncheon"]; 
 Test[CGS[Quadrant], Unit[\[Pi]/2, "Radian"], 
  TestID -> "OldPackageCGSTestQuadrant"]; 
 Test[CGS[Quart], Unit[946.352, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestQuart"]; 
 Test[CGS[Quintal], Unit[100000, "Gram"], 
  TestID -> "OldPackageCGSTestQuintal"]; 
 Test[CGS[Rad], Unit[0.01, "GrayDose"], 
  TestID -> "OldPackageCGSTestRad"]; 
 Test[CGS[Radian], Radian, TestID -> "OldPackageCGSTestRadian"]; 
 Test[CGS[Rankine], Unit[5/9, "Kelvin"], 
  TestID -> "OldPackageCGSTestRankine"]; 
 Test[CGS[RegisterTon], Unit[1769802912/625, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestRegisterTon"]; 
 Test[CGS[Reyn], Unit[68947.6, ("Dyne" "Second")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestReyn"]; 
 Test[CGS[Rhes], 
  Unit[1., "Times"[("Centimeter")^2, 1/("Dyne"), 1/("Second")]], 
  TestID -> "OldPackageCGSTestRhes"]; 
 Test[CGS[RightAngle], Unit[\[Pi]/2, "Radian"], 
  TestID -> "OldPackageCGSTestRightAngle"]; 
 Test[CGS[Rod], Unit[502.92, "Centimeter"], 
  TestID -> "OldPackageCGSTestRod"]; 
 Test[CGS[Roentgen], Unit[2.58*10^-7, ("Coulomb")/("Gram")], 
  TestID -> "OldPackageCGSTestRoentgen"]; 
 Test[CGS[Rontgen], Unit[2.58*10^-7, ("Coulomb")/("Gram")], 
  TestID -> "OldPackageCGSTestRontgen"]; 
 Test[CGS[Rood], Unit[1264642632/125, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestRood"]; 
 Test[CGS[Rope], Unit[3048/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestRope"]; 
 Test[CGS[Rutherford], Unit[1000000, 1/("Second")], 
  TestID -> "OldPackageCGSTestRutherford"]; 
 Test[CGS[Rydberg], Unit[2.1799*10^-11, "Erg"], 
  TestID -> "OldPackageCGSTestRydberg"]; 
 Test[CGS[Seam], Unit[281920., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestSeam"]; 
 Test[CGS[Second], Second, TestID -> "OldPackageCGSTestSecond"]; 
 Test[CGS[Section], Unit[647497027584/25, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestSection"]; 
 Test[CGS[Shekel], Unit[14.1, "Gram"], 
  TestID -> "OldPackageCGSTestShekel"]; 
 Test[CGS[ShortHundredweight], Unit[45359.2, "Gram"], 
  TestID -> "OldPackageCGSTestShortHundredweight"]; 
 Test[CGS[ShortTon], Unit[907184., "Gram"], 
  TestID -> "OldPackageCGSTestShortTon"]; 
 Test[CGS[Shot], Unit[29.5735, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestShot"]; 
 Test[CGS[SI], SI, TestID -> "OldPackageCGSTestSI"]; 
 Test[CGS[SiderealSecond], Unit[0.99727, "Second"], 
  TestID -> "OldPackageCGSTestSiderealSecond"]; 
 Test[CGS[SiderealYear], Unit[3.15581*10^7, "Second"], 
  TestID -> "OldPackageCGSTestSiderealYear"]; 
 Test[CGS[Siemens], Siemens, TestID -> "OldPackageCGSTestSiemens"]; 
 Test[CGS[Skein], Unit[54864/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestSkein"]; 
 Test[CGS[Slug], Unit[14593.9, "Gram"], 
  TestID -> "OldPackageCGSTestSlug"]; 
 Test[CGS[SolarMass], Unit[1.9891*10^33, "Gram"], 
  TestID -> "OldPackageCGSTestSolarMass"]; 
 Test[CGS[Stadion], Unit[473964/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestStadion"]; 
 Test[CGS[Stadium], Unit[461772/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestStadium"]; 
 Test[CGS[Statampere], Unit[3.33564*10^-10, "Ampere"], 
  TestID -> "OldPackageCGSTestStatampere"]; 
 Test[CGS[Statcoulomb], Unit[3.33564*10^-10, "Coulomb"], 
  TestID -> "OldPackageCGSTestStatcoulomb"]; 
 Test[CGS[Statfarad], Unit[1.11265*10^-12, "Farad"], 
  TestID -> "OldPackageCGSTestStatfarad"]; 
 Test[CGS[Stathenry], Unit[8.98758*10^11, "Henry"], 
  TestID -> "OldPackageCGSTestStathenry"]; 
 Test[CGS[Statohm], Unit[8.98758*10^11, "Ohm"], 
  TestID -> "OldPackageCGSTestStatohm"]; 
 Test[CGS[StatuteMile], Unit[804672/5, "Centimeter"], 
  TestID -> "OldPackageCGSTestStatuteMile"]; 
 Test[CGS[Statvolt], Unit[299.793, "Volt"], 
  TestID -> "OldPackageCGSTestStatvolt"]; 
 Test[CGS[Steradian], Steradian, 
  TestID -> "OldPackageCGSTestSteradian"]; 
 Test[CGS[Stere], Unit[1000000, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestStere"]; 
 Test[CGS[Stilb], Unit[1, ("Candela")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestStilb"]; 
 Test[CGS[Stokes], Unit[1, "Times"[("Centimeter")^2, 1/("Second")]], 
  TestID -> "OldPackageCGSTestStokes"]; 
 Test[CGS[Stone], Unit[6350.29, "Gram"], 
  TestID -> "OldPackageCGSTestStone"]; 
 Test[CGS[SurveyMile], Unit[160934., "Centimeter"], 
  TestID -> "OldPackageCGSTestSurveyMile"]; 
 Test[CGS[Tablespoon], Unit[14.7868, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestTablespoon"]; 
 Test[CGS[Talbot], Unit[1, "Lumen" "Second"], 
  TestID -> "OldPackageCGSTestTalbot"]; 
 Test[CGS[Talent], Unit[25754., "Gram"], 
  TestID -> "OldPackageCGSTestTalent"]; 
 Test[CGS[Teaspoon], Unit[4.92892, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestTeaspoon"]; 
 Test[CGS[Tera], 1000000000000, TestID -> "OldPackageCGSTestTera"]; 
 Test[CGS[Tesla], Unit[10000, "Gauss"], 
  TestID -> "OldPackageCGSTestTesla"]; 
 Test[CGS[Therm], Unit[1.05506*10^15, "Erg"], 
  TestID -> "OldPackageCGSTestTherm"]; 
 Test[CGS[Ton], Unit[907184., "Gram"], 
  TestID -> "OldPackageCGSTestTon"]; 
 Test[CGS[TonForce], Unit[9.96402*10^8, "Dyne"], 
  TestID -> "OldPackageCGSTestTonForce"]; 
 Test[CGS[Tonne], Unit[1000000, "Gram"], 
  TestID -> "OldPackageCGSTestTonne"]; 
 Test[CGS[Torr], Unit[1333.22, ("Dyne")/("Centimeter")^2], 
  TestID -> "OldPackageCGSTestTorr"]; 
 Test[CGS[Township], Unit[23309892993024/25, ("Centimeter")^2], 
  TestID -> "OldPackageCGSTestTownship"]; 
 Test[CGS[TropicalYear], Unit[3.15569*10^7, "Second"], 
  TestID -> "OldPackageCGSTestTropicalYear"]; 
 Test[CGS[TroyOunce], Unit[31.103, "Gram"], 
  TestID -> "OldPackageCGSTestTroyOunce"]; 
 Test[CGS[Tun], Unit[953923., ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestTun"]; 
 Test[CGS[UKGallon], Unit[4546.09, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestUKGallon"]; 
 Test[CGS[UKPint], Unit[568.261, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestUKPint"]; 
 Test[CGS[Volt], Volt, TestID -> "OldPackageCGSTestVolt"]; 
 Test[CGS[Watt], Watt, TestID -> "OldPackageCGSTestWatt"]; 
 Test[CGS[Weber], Unit[100000000, "Maxwell"], 
  TestID -> "OldPackageCGSTestWeber"]; 
 Test[CGS[Week], Unit[604800, "Second"], 
  TestID -> "OldPackageCGSTestWeek"]; 
 Test[CGS[Wey], Unit[114305., "Gram"], 
  TestID -> "OldPackageCGSTestWey"]; 
 Test[CGS[WineBottle], Unit[757.678, ("Centimeter")^3], 
  TestID -> "OldPackageCGSTestWineBottle"]; 
 Test[CGS[XUnit], Unit[1.002*10^-11, "Centimeter"], 
  TestID -> "OldPackageCGSTestXUnit"]; 
 Test[CGS[Yard], Unit[2286/25, "Centimeter"], 
  TestID -> "OldPackageCGSTestYard"]; 
 Test[CGS[Year], Unit[31536000, "Second"], 
  TestID -> "OldPackageCGSTestYear"]; 
 Test[CGS[Yocto], 1/1000000000000000000000000, 
  TestID -> "OldPackageCGSTestYocto"]; 
 Test[CGS[Yotta], 1000000000000000000000000, 
  TestID -> "OldPackageCGSTestYotta"]; 
 Test[CGS[Zepto], 1/1000000000000000000000, 
  TestID -> "OldPackageCGSTestZepto"]; 
 Test[CGS[Zetta], 1000000000000000000000, 
  TestID -> "OldPackageCGSTestZetta"];
  
  (*The following returned non-CGS units in the old package*)
  (*
   Test[CGS[Abampere], Unit[10, "Ampere"], 
  TestID -> "OldPackageCGSTestAbampere"]; 
  
   Test[CGS[Abcoulomb], Unit[10, "Coulomb"], 
  TestID -> "OldPackageCGSTestAbcoulomb"]; 
  
   Test[CGS[Abfarad], Unit[1000000000, "Farad"], 
  TestID -> "OldPackageCGSTestAbfarad"]; 
 Test[CGS[Abhenry], Unit[1/1000000000, "Henry"], 
  TestID -> "OldPackageCGSTestAbhenry"]; 
 Test[CGS[Abmho], Unit[1000000000, 1/("Ohm")], 
  TestID -> "OldPackageCGSTestAbmho"]; 
 Test[CGS[Abohm], Unit[1/1000000000, "Ohm"], 
  TestID -> "OldPackageCGSTestAbohm"]; 
 Test[CGS[Abvolt], Unit[1/100000000, "Volt"], 
  TestID -> "OldPackageCGSTestAbvolt"]; 
  
  Test[CGS[Amp], Ampere, TestID -> "OldPackageCGSTestAmp"]; 
 Test[CGS[Ampere], Ampere, TestID -> "OldPackageCGSTestAmpere"];
 
  
  
  *)