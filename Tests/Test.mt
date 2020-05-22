(* Mathematica Test File *)


(* ----------Test internal functions ----------------*)
<<AutomaticUnits`

Begin["AutomaticUnits`private`"];
Test[
	Last/@Sort[{FundamentalUnits[#],#}&/@{Angstrom,Day,Meter},UnitSortfn],
		{Angstrom,Meter,Day},TestID->"UnitSortfn"];
		
Test[TimesCancelTest[{Meter,Meter},{FundamentalUnits[Inch],Inch}],False,TestID->"TimesCancelTest1"];
Test[TimesCancelTest[{Meter,Meter},{FundamentalUnits[1/Inch],1/Inch}],True,TestID->"TimesCancelTest2"];
Test[TimesCancelTest[{Meter^2,Meter^2},{FundamentalUnits[1/Inch],1/Inch}],False,TestID->"TimesCancelTest3"];
Test[TimesCancelTest[{Meter,Meter},{FundamentalUnits[1/Inch^2],1/Inch^2}],False,TestID->"TimesCancelTest4"];
Test[TimesCancelTest[{Meter^2,Meter^2},{FundamentalUnits[1/Inch^2],1/Inch^2}],True,
	TestID->"TimesCancelTest5"];
Test[TimesCancelTest[{Meter^2,Meter^2},{FundamentalUnits[Inch^2],Inch^2}],False,
	TestID->"TimesCancelTest6"];
	
Test[ToObjectPower[x],{HeldPower[x, 1]},TestID->"CollectObectPowers1"];
Test[ToObjectPower[x^2],{HeldPower[x, 2]},TestID->"CollectObectPowers2"];
Test[ToObjectPower[x y],{HeldPower[x, 1],HeldPower[y,1]},TestID->"CollectObectPowers3"];
Test[ToObjectPower[x^2 y /z],{HeldPower[x, 2], HeldPower[y, 1], HeldPower[z, -1]},
	TestID->"CollectObectPowers4"];
Test[OppositePowersOfTheSameThingQ[x,x],False,TestID->"PowersOfTheSameThingQ1"];
Test[OppositePowersOfTheSameThingQ[x,x^2],False,TestID->"PowersOfTheSameThingQ2"];
Test[OppositePowersOfTheSameThingQ[x^2,x^3],False,TestID->"PowersOfTheSameThingQ3"];
Test[OppositePowersOfTheSameThingQ[x,1/x],True,TestID->"PowersOfTheSameThingQ4"];
Test[OppositePowersOfTheSameThingQ[x/y,y/x],True,TestID->"PowersOfTheSameThingQ5"];
Test[OppositePowersOfTheSameThingQ[x^2,1/x^3],False,TestID->"PowersOfTheSameThingQ6"];

Test[DimensionCompatibleUnitQ[Meter,Meter],True,TestID->"DimensionCompatibleUnitQ1"];
Test[DimensionCompatibleUnitQ[Meter,Inch],True,TestID->"DimensionCompatibleUnitQ2"];
Test[DimensionCompatibleUnitQ[Inch,Yard],True,TestID->"DimensionCompatibleUnitQ3"];
Test[DimensionCompatibleUnitQ[Meter^2,Yard^2],True,TestID->"DimensionCompatibleUnitQ4"];
Test[DimensionCompatibleUnitQ[Meter/Day,Meter/Year],True,TestID->"DimensionCompatibleUnitQ5"];
Test[DimensionCompatibleUnitQ[10 Meter,Inch],True,TestID->"DimensionCompatibleUnitQ6"];
Test[DimensionCompatibleUnitQ[10. Meter,Inch],True,TestID->"DimensionCompatibleUnitQ7"];
Test[Quiet@DimensionCompatibleUnitQ[Day,Meter],False,TestID->"DimensionCompatibleUnitQ8"];
Test[Quiet@DimensionCompatibleUnitQ[10 Day,Meter],False,TestID->"DimensionCompatibleUnitQ9"];
Test[Quiet@DimensionCompatibleUnitQ[10. Day,Meter],False,TestID->"DimensionCompatibleUnitQ10"];
Test[Head[Normal[$ExactUnitRules][[1,1]]],String,TestID->"$ExactUnitRules1"];
Test[Head[Normal[$ToFundamental][[1,1]]],String,TestID->"$ToFundamental1"];

End[];
(*----------------Compatibility coverage of old V7 Units package-----------------*)
(* Mathematica Test File *)


Test[Abampere,Unit[1,"Abampere"],TestID->"0"];
Test[Abcoulomb,Unit[1,"Abcoulomb"],TestID->"1"];
Test[Abfarad,Unit[1,"Abfarad"],TestID->"2"];
Test[Abhenry,Unit[1,"Abhenry"],TestID->"3"];
Test[Abmho,Unit[1,"Abmho"],TestID->"4"];
Test[Abohm,Unit[1,"Abohm"],TestID->"5"];
Test[Abvolt,Unit[1,"Abvolt"],TestID->"6"];
Test[Acre,Unit[1,"Acre"],TestID->"7"];
Test[Amp,Unit[1,"Amp"],TestID->"8"];
Test[Ampere,Unit[1,"Ampere"],TestID->"9"];
Test[AMU,Unit[1,"AMU"],TestID->"10"];
Test[Angstrom,Unit[1,"Angstrom"],TestID->"11"];
Test[Apostilb,Unit[1,"Apostilb"],TestID->"12"];
Test[ArcMinute,Unit[1,"ArcMinute"],TestID->"13"];
Test[ArcSecond,Unit[1,"ArcSecond"],TestID->"14"];
Test[Are,Unit[1,"Are"],TestID->"15"];
Test[AssayTon,Unit[1,"AssayTon"],TestID->"16"];
Test[AstronomicalUnit,Unit[1,"AstronomicalUnit"],TestID->"17"];
Test[Atmosphere,Unit[1,"Atmosphere"],TestID->"18"];
Test[AtomicMassUnit,Unit[1,"AtomicMassUnit"],TestID->"19"];
Test[AU,Unit[1,"AU"],TestID->"21"];
Test[AvoirdupoisOunce,Unit[1,"AvoirdupoisOunce"],TestID->"22"];
Test[AvoirdupoisPound,Unit[1,"AvoirdupoisPound"],TestID->"23"];
Test[Bag,Unit[1,"Bag"],TestID->"24"];

Test[Bale,Unit[1,"Bale"],TestID->"26"];
Test[Bar,Unit[1,"Bar"],TestID->"27"];
Test[Barn,Unit[1,"Barn"],TestID->"28"];
Test[Barrel,Unit[1,"Barrel"],TestID->"29"];
Test[Barye,Unit[1,"Barye"],TestID->"30"];
Test[Baud,Unit[1,"Baud"],TestID->"31"];
Test[Becquerel,Unit[1,"Becquerel"],TestID->"32"];
Test[Biot,Unit[1,"Biot"],TestID->"33"];
Test[BoardFoot,Unit[1,"BoardFoot"],TestID->"35"];
Test[BohrMagneton,Unit[1,"BohrMagneton"],TestID->"36"];
Test[Bolt,Unit[1,"Bolt"],TestID->"37"];
Test[BritishThermalUnit,Unit[1,"BritishThermalUnit"],TestID->"38"];
Test[BTU,Unit[1,"BTU"],TestID->"39"];
Test[Bucket,Unit[1,"Bucket"],TestID->"40"];
Test[Bushel,Unit[1,"Bushel"],TestID->"41"];
Test[Butt,Unit[1,"Butt"],TestID->"42"];
Test[Cable,Unit[1,"Cable"],TestID->"43"];
Test[Caliber,Unit[1,"Caliber"],TestID->"44"];
Test[Candela,Unit[1,"Candela"],TestID->"46"];
Test[Calorie,Unit[1,"Calorie"],TestID->"45"];
Test[Candle,Unit[1,"Candle"],TestID->"47"];
Test[Carat,Unit[1,"Carat"],TestID->"48"];
Test[Celsius,Unit[1,"Celsius"],TestID->"49"];
Test[Cental,Unit[1,"Cental"],TestID->"50"];
Test[Centigrade,Unit[1,"Centigrade"],TestID->"52"];
Test[Centimeter,Unit[1,"Centimeter"],TestID->"53"];
Test[Century,Unit[1,"Century"],TestID->"54"];
Test[Chain,Unit[1 ,"Chain"],TestID->"56"];
Test[ChevalVapeur,Unit[1,"ChevalVapeur"],TestID->"57"];
Test[Cicero,Unit[1,"Cicero"],TestID->"58"];
Test[Cord,Unit[1,"Cord"],TestID->"61"];
Test[Coulomb,Unit[1,"Coulomb"],TestID->"62"];
Test[Cubit,Unit[1,"Cubit"],TestID->"63"];
Test[Curie,Unit[1,"Curie"],TestID->"64"];
Test[Dalton,Unit[1,"Dalton"],TestID->"65"];
Test[Day,Unit[1,"Day"],TestID->"66"];
Test[Decade,Unit[1,"Decade"],TestID->"68"];
Test[Denier,Unit[1,"Denier"],TestID->"70"];
Test[Didot,Unit[1,"Didot"],TestID->"71"];
Test[DidotPoint,Unit[1,"DidotPoint"],TestID->"72"];
Test[Diopter,Unit[1,"Diopter"],TestID->"73"];
Test[Drachma,Unit[1,"Drachma"],TestID->"75"];
Test[Dyne,Unit[1,"Dyne"],TestID->"76"];
Test[ElectronVolt,Unit[1,"ElectronVolt"],TestID->"77"];
Test[Ell,Unit[1,"Ell"],TestID->"78"];
Test[Ephah,Unit[1,"Ephah"],TestID->"79"];
Test[Erg,Unit[1,"Erg"],TestID->"80"];
Test[Fahrenheit,Unit[1,"Fahrenheit"],TestID->"82"];
Test[Farad,Unit[1,"Farad"],TestID->"83"];
Test[Fathom,Unit[1,"Fathom"],TestID->"84"];
Test[Feet,Unit[1,"Feet"],TestID->"85"];
Test[Fermi,Unit[1,"Fermi"],TestID->"87"];
Test[Fifth,Unit[1,"Fifth"],TestID->"88"];
Test[Firkin,Unit[1,"Firkin"],TestID->"89"];
Test[FluidDram,Unit[1,"FluidDram"],TestID->"90"];
Test[FluidOunce,Unit[1,"FluidOunce"],TestID->"91"];
Test[Foot,Unit[1,"Foot"],TestID->"92"];
Test[FootCandle,Unit[1,"FootCandle"],TestID->"93"];
Test[Fortnight,Unit[1,"Fortnight"],TestID->"94"];
Test[Furlong,Unit[1,"Furlong"],TestID->"95"];
Test[Gal,Unit[1,"Gal"],TestID->"96"];
Test[Gallon,Unit[1,"Gallon"],TestID->"97"];
Test[Gauss,Unit[1,"Gauss"],TestID->"98"];
Test[Geepound,Unit[1,"Geepound"],TestID->"99"];
Test[Gilbert,Unit[1,"Gilbert"],TestID->"101"];
Test[Gill,Unit[1,"Gill"],TestID->"102"];
Test[Grade,Unit[1,"Grade"],TestID->"103"];
Test[Grain,Unit[1,"Grain"],TestID->"104"];
Test[Gram,Unit[1,"Gram"],TestID->"105"];
Test[GramWeight,Unit[1,"GramWeight"],TestID->"106"];
Test[Gravity,Unit[1,"Gravity"],TestID->"107"];
Test[GrayDose,Unit[1,"GrayDose"],TestID->"108"];
Test[GrossHundredweight,Unit[1,"GrossHundredweight"],TestID->"110"];
Test[Hand,Unit[1,"Hand"],TestID->"111"];
Test[Hectare,Unit[1,"Hectare"],TestID->"112"];
Test[Hefner,Unit[1,"Hefner"],TestID->"114"];
Test[Henry,Unit[1,"Henry"],TestID->"115"];
Test[Hertz,Unit[1,"Hertz"],TestID->"116"];
Test[Hogshead,Unit[1,"Hogshead"],TestID->"117"];
Test[Horsepower,Unit[1,"Horsepower"],TestID->"118"];
Test[Hour,Unit[1,"Hour"],TestID->"119"];
Test[Hundredweight,Unit[1,"Hundredweight"],TestID->"120"];
Test[ImperialGallon,Unit[1,"ImperialGallon"],TestID->"121"];
Test[ImperialPint,Unit[1,"ImperialPint"],TestID->"122"];
Test[Inch,Unit[1,"Inch"],TestID->"123"];
Test[InchMercury,Unit[1,"InchMercury"],TestID->"124"];
Test[Jeroboam,Unit[1,"Jeroboam"],TestID->"125"];
Test[Jigger,Unit[1,"Jigger"],TestID->"126"];
Test[Joule,Unit[1,"Joule"],TestID->"127"];
Test[Kayser,Unit[1,"Kayser"],TestID->"128"];
Test[Kelvin,Unit[1,"Kelvin"],TestID->"129"];
Test[Kilogram,Unit[1,"Kilogram"],TestID->"131"];
Test[KilogramForce,Unit[1,"KilogramForce"],TestID->"132"];
Test[KilogramWeight,Unit[1,"KilogramWeight"],TestID->"133"];
Test[Knot,Unit[1,"Knot"],TestID->"134"];
Test[Lambert,Unit[1,"Lambert"],TestID->"135"];
Test[League,Unit[1,"League"],TestID->"136"];
Test[Libra,Unit[1,"Libra"],TestID->"137"];
Test[LightYear,Unit[1,"LightYear"],TestID->"138"];
Test[Link,Unit[1,"Link"],TestID->"139"];
Test[Liter,Unit[1,"Liter"],TestID->"140"];
Test[LongTon,Unit[1,"LongTon"],TestID->"141"];
Test[Lumen,Unit[1,"Lumen"],TestID->"142"];
Test[Lumerg,Unit[1,"Lumerg"],TestID->"143"];
Test[Lux,Unit[1,"Lux"],TestID->"144"];
Test[Magnum,Unit[1,"Magnum"],TestID->"145"];
Test[Maxwell,Unit[1,"Maxwell"],TestID->"146"];
Test[Meter,Unit[1,"Meter"],TestID->"148"];
Test[MetricTon,Unit[1,"MetricTon"],TestID->"149"];
Test[Mho,Unit[1,"Mho"],TestID->"150"];
Test[Micron,Unit[1,"Micron"],TestID->"152"];
Test[Mil,Unit[1,"Mil"],TestID->"153"];
Test[Mile,Unit[1,"Mile"],TestID->"154"];
Test[Millennium,Unit[1,"Millennium"],TestID->"155"];
Test[MillimeterMercury,Unit[1,"MillimeterMercury"],TestID->"157"];
Test[Mina,Unit[1,"Mina"],TestID->"158"];
Test[Minim,Unit[1,"Minim"],TestID->"159"];
Test[Minute,Unit[1,"Minute"],TestID->"160"];
Test[Month,Unit[1,"Month"],TestID->"163"];
Test[NauticalMile,Unit[1,"NauticalMile"],TestID->"165"];
Test[NetHundredweight,Unit[1,"NetHundredweight"],TestID->"166"];
Test[Newton,Unit[1,"Newton"],TestID->"167"];
Test[Nibble,Unit[1,"Nibble"],TestID->"168"];
Test[Nit,Unit[1,"Nit"],TestID->"169"];
Test[Noggin,Unit[1,"Noggin"],TestID->"170"];
Test[NuclearMagneton,Unit[1,"NuclearMagneton"],TestID->"171"];
Test[Obolos,Unit[1,"Obolos"],TestID->"172"];
Test[Oersted,Unit[1,"Oersted"],TestID->"173"];
Test[Ohm,Unit[1,"Ohm"],TestID->"174"];
Test[Omer,Unit[1,"Omer"],TestID->"175"];
Test[Ounce,Unit[1,"Ounce"],TestID->"176"];
Test[Parsec,Unit[1,"Parsec"],TestID->"177"];
Test[Pascal,Unit[1,"Pascal"],TestID->"178"];
Test[Peck,Unit[1,"Peck"],TestID->"179"];
Test[Pennyweight,Unit[1,"Pennyweight"],TestID->"180"];
Test[Perch,Unit[1,"Perch"],TestID->"182"];
Test[Phot,Unit[1,"Phot"],TestID->"184"];
Test[Pica,Unit[1,"Pica"],TestID->"185"];
Test[Pint,Unit[1,"Pint"],TestID->"187"];
Test[Poise,Unit[1,"Poise"],TestID->"188"];
Test[Pole,Unit[1,"Pole"],TestID->"189"];
Test[Pondus,Unit[1,"Pondus"],TestID->"190"];
Test[Pony,Unit[1,"Pony"],TestID->"191"];
Test[Pound,Unit[1,"Pound"],TestID->"192"];
Test[Poundal,Unit[1,"Poundal"],TestID->"193"];
Test[PoundForce,Unit[1,"PoundForce"],TestID->"194"];
Test[PoundsPerSquareInch,Unit[1,"PoundsPerSquareInch"],TestID->"195"];
Test[PoundWeight,Unit[1,"PoundWeight"],TestID->"196"];
Test[PrintersPoint,Unit[1,"PrintersPoint"],TestID->"197"];
Test[PSI,Unit[1,"PSI"],TestID->"198"];
Test[Puncheon,Unit[1,"Puncheon"],TestID->"199"];
Test[Quadrant,Unit[1,"Quadrant"],TestID->"200"];
Test[Quart,Unit[1,"Quart"],TestID->"201"];
Test[Quintal,Unit[1,"Quintal"],TestID->"202"];
Test[Rad,Unit[1,"Rad"],TestID->"203"];
Test[Radian,Unit[1,"Radian"],TestID->"204"];
Test[Rankine,Unit[1,"Rankine"],TestID->"205"];
Test[RegisterTon,Unit[1,"RegisterTon"],TestID->"206"];
Test[Reyn,Unit[1,"Reyn"],TestID->"207"];
Test[Rhes,Unit[1,"Rhes"],TestID->"208"];
Test[RightAngle,Unit[1,"RightAngle"],TestID->"209"];
Test[Rod,Unit[1,"Rod"],TestID->"210"];
Test[Roentgen,Unit[1,"Roentgen"],TestID->"211"];
Test[Rontgen,Unit[1,"Rontgen"],TestID->"212"];
Test[Rood,Unit[1,"Rood"],TestID->"213"];
Test[Rope,Unit[1,"Rope"],TestID->"214"];
Test[Rutherford,Unit[1,"Rutherford"],TestID->"215"];
Test[Rydberg,Unit[1,"Rydberg"],TestID->"216"];
Test[Seam,Unit[1,"Seam"],TestID->"217"];
Test[Second,Unit[1,"Second"],TestID->"218"];
Test[Section,Unit[1,"Section"],TestID->"219"];
Test[Shekel,Unit[1,"Shekel"],TestID->"220"];
Test[ShortHundredweight,Unit[1,"ShortHundredweight"],TestID->"221"];
Test[ShortTon,Unit[1,"ShortTon"],TestID->"222"];
Test[Shot,Unit[1,"Shot"],TestID->"223"];
Test[SiderealSecond,Unit[1,"SiderealSecond"],TestID->"225"];
Test[SiderealYear,Unit[1,"SiderealYear"],TestID->"226"];
Test[Siemens,Unit[1,"Siemens"],TestID->"227"];
Test[Skein,Unit[1,"Skein"],TestID->"228"];
Test[Slug,Unit[1,"Slug"],TestID->"229"];
Test[SolarMass,Unit[1,"SolarMass"],TestID->"230"];
Test[Stadion,Unit[1,"Stadion"],TestID->"231"];
Test[Stadium,Unit[1,"Stadium"],TestID->"232"];
Test[Statampere,Unit[1,"Statampere"],TestID->"233"];
Test[Statcoulomb,Unit[1,"Statcoulomb"],TestID->"234"];
Test[Statfarad,Unit[1,"Statfarad"],TestID->"235"];
Test[Stathenry,Unit[1,"Stathenry"],TestID->"236"];
Test[Statohm,Unit[1,"Statohm"],TestID->"237"];
Test[StatuteMile,Unit[1,"StatuteMile"],TestID->"238"];
Test[Statvolt,Unit[1,"Statvolt"],TestID->"239"];
Test[Steradian,Unit[1,"Steradian"],TestID->"240"];
Test[Stere,Unit[1,"Stere"],TestID->"241"];
Test[Stilb,Unit[1,"Stilb"],TestID->"242"];
Test[Stokes,Unit[1,"Stokes"],TestID->"243"];
Test[Stone,Unit[1,"Stone"],TestID->"244"];
Test[SurveyMile,Unit[1,"SurveyMile"],TestID->"245"];
Test[Tablespoon,Unit[1,"Tablespoon"],TestID->"246"];
Test[Talbot,Unit[1,"Talbot"],TestID->"247"];
Test[Talent,Unit[1,"Talent"],TestID->"248"];
Test[Teaspoon,Unit[1,"Teaspoon"],TestID->"249"];
Test[Tesla,Unit[1,"Tesla"],TestID->"251"];
Test[Therm,Unit[1,"Therm"],TestID->"252"];
Test[Ton,Unit[1,"Ton"],TestID->"253"];
Test[TonForce,Unit[1,"TonForce"],TestID->"254"];
Test[Tonne,Unit[1,"Tonne"],TestID->"255"];
Test[Torr,Unit[1,"Torr"],TestID->"256"];
Test[Township,Unit[1,"Township"],TestID->"257"];
Test[TropicalYear,Unit[1,"TropicalYear"],TestID->"258"];
Test[TroyOunce,Unit[1,"TroyOunce"],TestID->"259"];
Test[Tun,Unit[1,"Tun"],TestID->"260"];
Test[UKGallon,Unit[1,"UKGallon"],TestID->"261"];
Test[UKPint,Unit[1,"UKPint"],TestID->"262"];
Test[Volt,Unit[1,"Volt"],TestID->"263"];
Test[Watt,Unit[1,"Watt"],TestID->"264"];
Test[Weber,Unit[1,"Weber"],TestID->"265"];
Test[Week,Unit[1,"Week"],TestID->"266"];
Test[Wey,Unit[1,"Wey"],TestID->"267"];
Test[WineBottle,Unit[1,"WineBottle"],TestID->"268"];
Test[XUnit,Unit[1,"XUnit"],TestID->"269"];
Test[Yard,Unit[1,"Yard"],TestID->"270"];
Test[Year,Unit[1,"Year"],TestID->"271"];


(*Dimensionless*)
Test[NumberQ@Atto,True,TestID->"20"];
Test[NumberQ@BakersDozen,True,TestID->"25"];
Test[NumberQ@Deca,True,TestID->"67"];
Test[NumberQ@Deci,True,TestID->"69"];
Test[NumberQ@Dozen,True,TestID->"74"];
Test[NumberQ@Exa,True,TestID->"81"];
Test[NumberQ@Femto,True,TestID->"86"];
Test[NumberQ@Giga,True,TestID->"100"];
Test[NumberQ@Gross,True,TestID->"109"];
Test[NumberQ@Hecto,True,TestID->"113"];
Test[NumberQ@Kilo,True,TestID->"130"];
Test[NumberQ@Mega,True,TestID->"147"];
Test[NumberQ@Micro,True,TestID->"151"];
Test[NumberQ@Milli,True,TestID->"156"];
Test[NumberQ@Mole,True,TestID->"162"];
Test[NumberQ@Nano,True,TestID->"164"];
Test[NumberQ@Percent,True,TestID->"181"];
Test[NumberQ@Peta,True,TestID->"183"];
Test[NumberQ@Pico,True,TestID->"186"];
Test[NumberQ@Tera,True,TestID->"250"];
Test[NumberQ@Yocto,True,TestID->"272"];
Test[NumberQ@Yotta,True,TestID->"273"];
Test[NumberQ@Zepto,True,TestID->"274"];
Test[NumberQ@Zetta,True,TestID->"275"];
Test[NumberQ@Centi,True,TestID->"51"];

(*Compatibility special cases*)
Test[Bit,Unit[1,"Bit"],TestID->"34"];
(*----------------Test public functionality-----------------*)

(* Mathematica Test File *)
Test[FundamentalUnits[Meter],Meter,TestID->"FundamentalUnits1"];
Test[FundamentalUnits[Inch],127/5000 Meter,TestID->"FundamentalUnits2"];
Test[FundamentalUnits[Inch/Minute],127/300000 Meter/Second,TestID->"FundamentalUnits3"];

Test[Inch+Yard,4699/5000 Meter,TestID->"Exact sum"];
Test[Convert[Foot,Inch],12Inch,TestID->"Convert exact"];
Test[Convert[Inch,Foot],1/12Foot,TestID->"Convert exact back"];
Test[Convert[Meter,Inch],5000/127 Inch,TestID->"Convert exact 2"];
(*Test[Convert[{Inch,Yard,Foot}],{Inch,36 Inch,12 Inch} ,TestID->"Convert list exact"];*)(*Exactified*)
Test[Convert[{Inch,Yard,Foot}],{Unit[127/5000, "Meter"], Unit[1143/1250, "Meter"], Unit[381/1250, "Meter"]},TestID->"Convert list exact"];
Test[Convert[{Meter,1. Inch}],{Meter,0.0254 Meter},TestID->"Convert list approx"];
Test[SI[Newton/Meter^2],Pascal,TestID->"SI"];
Test[Sqrt[(Meter^2)],Meter,TestID->"Sqrt"];
Test[Last[Inch+Meter],"Meter",TestID->"Approx sum"];
Test[Meter>Yard,True,TestID->"Greater"];
Test[Inch<Meter>Yard,True,TestID->"Inequality1"];
Test[Meter<Inch>Yard,False,TestID->"Inequality2"];
Test[Sort[{Meter,Inch,Yard}],{Inch,Yard,Meter},TestID->"Sort1"];
Test[Sort[{Foot,Inch,Yard}],{Inch,Foot,Yard},TestID->"Sort2"];
Test[Min[Inch,Yard],Inch,TestID->"Min1"];
Test[Min[{Inch,Yard}],Inch,TestID->"Min2"];
Test[Min[Inch,Meter],Inch,TestID->"Min3"];
Test[Min[{Inch,Meter}],Inch,TestID->"Min4"];
Test[3.5 Abs[Meter], 3.5 Meter, TestID -> "Abs"];
Test[3.5 Re[Meter], 3.5 Meter, TestID -> "Re"];
Test[3.5 Im[Meter], 0. Meter, TestID -> "Im"];
Test[3.5 Conjugate[Meter], 3.5 Meter, TestID -> "Conjugate"];
Test[Round[3.5 Meter], 4 Meter, TestID -> "Round"];
Test[Arg[Meter], 0 Meter, TestID -> "Arg"];
Test[Ceiling[3.5 Meter], 4 Meter, TestID -> "Ceiling"];
Test[Floor[3.5 Meter], 3 Meter, TestID -> "Floor"];
Test[IntegerPart[3.5 Meter], 3 Meter, TestID -> "IntegerPart"];
Test[Chop[0.000000000000000001 Meter], 0 Meter, TestID -> "Chop"];
Test[Minus[3.5 Meter], -3.5 Meter, TestID -> "Minus"];
Test[Range[3.5 Meter], {1 Meter, 2 Meter, 3 Meter}, TestID -> "Range"];
Test[FundamentalUnits[.17 Inch], 0.004318 Meter,TestID->"Fundamental"];
Test[Union[Cases[Last /@ Normal[AutomaticUnits`private`$ToFundamental], _String, \[Infinity]]],
  {"Ampere", "Bit", "Candela",  "Kelvin", "Kilogram",  "Meter",  "Radian", "Second"},
  TestID->"Optimal base unit declaration"];
Test[Meter==Inch,False,TestID->"Equal1"];
Test[Meter==3,False,TestID->"Equal2"];
Test[Yard==Inch,False,TestID->"Equal3"];
Test[Yard==36Inch,True,TestID->"Equal4"];
Test[Meter==39.370078740157474 Inch,True,TestID->"Equal5"];
Test[Range[3 Meter],{1 Meter,2 Meter,3Meter},TestID->"Range1"];
Test[Range[3 Meter, 4Meter],{3Meter,4 Meter},TestID->"Range2"];
Test[Range[3 Meter,7 Meter,2 Meter],{3 Meter,5 Meter,7Meter},TestID->"Range3"];
(*
Test[Range[10 Inch, Foot],{10Inch,11Inch,12Inch},TestID->"Range4"];
Test[Range[10 Inch, Foot],{Unit[127/500, "Meter"]},TestID->"Range4"];
Test[Range[10Inch, Foot, 2Inch],{10Inch,12Inch},TestID->"Range5"];
*)(*Exactify*)
Test[Range[10 Inch, Foot],{Unit[127/500, "Meter"]},TestID->"Range4"];
Test[Range[10Inch, Foot, 2Inch],{Unit[127/500, "Meter"], Unit[381/1250, "Meter"]},TestID->"Range5"];
Test[Range[10 Meter, 13 Yard, 4 Foot],{10 Meter, 7012/625 Meter},TestID->"Range6"];


Test[(Meter/Liter)[[2]],"Meter"/"Liter",TestID->"PowerCancellation1"];
Test[(Inch Meter)[[2]],"Inch" "Meter",TestID->"PowerCancellation2"];
Test[NumberQ[Inch/Meter],True,TestID->"PowerCancellation3"];

Test[Sin[RightAngle],1,TestID->"TrigTest1"];
Test[Sin[RightAngle/2],1/Sqrt[2],TestID->"TrigTest2"];
Test[Quiet[Head[Sin[3 Day]]],Sin,TestID->"Trig3"];

Test[Convert[4 Unit[1, ("Joule"^(3/2)*"Second")/(Sqrt["Kilogram"]*"Meter"^2)], Newton],4 Newton,TestID->"TrickyConvert"];


(*<< PhysicalConstants`
tricky = (4*Unit[1, "Kilogram"]*Sqrt[Pi]*BoltzmannConstant*300*
    Unit[1, "Kelvin"]*
        ((BoltzmannConstant*300*Unit[1, "Kelvin"]*ProtonMass*2*Pi*
         PlanckConstantReduced^2)/
             ((PlanckConstant*SpeedOfLight)*(BoltzmannConstant*300*
           Unit[1, "Kelvin"]*
                   ProtonMass^2)))^(3/2))/(2*PlanckConstant*
        (Sqrt[(22*29*12)/Unit[1, "Centimeter"]^3]*(Unit[1, "Meter"]^2*
        Unit[1, "Second"])));
Test[Head[tricky],Unit,TestID->"TrickyHead"];
Test[FundamentalUnits[tricky/Newton],7.723950829907722*^-16 ,TestID->"Trickya"];
Test[FundamentalUnits[FundamentalUnits[tricky]/Newton],7.723950829907722*^-16 ,TestID->"Trickyb"];
Test[Convert[tricky,Newton],7.723950829907722*^-16 Newton,TestID->"Tricky0"];
Test[SI[tricky],7.723950829907722*^-16 Newton,TestID->"Tricky1"];
Test[SI[FundamentalUnits[tricky]],7.723950829907722*^-16 Newton,TestID->"Tricky2"];
Test[FundamentalUnits[tricky],7.723950829907722*^-16 Unit[1, ("Kilogram"*"Meter")/"Second"^2],
	TestID->"Tricky3"];
Test[FundamentalUnits[SI[tricky]],7.723950829907722*^-16 Unit[1, ("Kilogram"*"Meter")/"Second"^2],
	TestID->"Tricky4"];
	*)
Test[Convert[Kilogram*((Joule*Second^2)/(Kilogram*Meter))^(3/2)/(Sqrt[
      1/Centimeter^3]*Meter^2*Second^2), Newton],Newton/1000,TestID->"Tricky debug2"];
Test[SI[Centimeter^(3/2)/Meter^(7/2)],1/(1000 Meter^2),TestID->"No available unit test"];
Test[FundamentalUnits[Unit[1, "Centimeter"]^(3/2)/Unit[1, "Meter"]^(7/2)],1/(1000 Meter^2),TestID->"Tricky debug3"];
Test[SI[(Unit[1, "Joule"/"Meter"])*Unit[1, "Inch"]],127/5000 Joule,TestID->"Multiplication test"];
	
(*Test[Union[Head /@ (ToExpression /@ Names["PhysicalConstants`*"])],{Real,Unit},TestID->"AllPhysicalConstantsAreUnitsOrNumberTest"];
*)
Test[Times[-1, Times[10, Unit[1, "Meter"]]],-10 Meter,TestID->"Product bug reported by mikeh"]

(*Tests against the old units package*)
(*SI*)
(*XXXXXX*)
Test[SI[Abampere], Unit[10, "Ampere"], 
  TestID -> "OldPackageSITestAbampere"]; 
 Test[SI[Abcoulomb], Unit[10, "Coulomb"], 
  TestID -> "OldPackageSITestAbcoulomb"]; 
 Test[SI[Abfarad], Unit[1000000000, "Farad"], 
  TestID -> "OldPackageSITestAbfarad"]; 
 Test[SI[Abhenry], Unit[1/1000000000, "Henry"], 
  TestID -> "OldPackageSITestAbhenry"]; 
(* Test[SI[Abmho], Unit[1000000000, 1/("Ohm")], TestID -> "OldPackageSITestAbmho"]; *)(*Old value is equivelent ot new value*)
  Test[SI[Abmho], Unit[1000000000, "Siemens"], TestID -> "OldPackageSITestAbmho"]; 
  Test[SI[Abohm], Unit[1/1000000000, "Ohm"], 
  TestID -> "OldPackageSITestAbohm"]; 
 Test[SI[Abvolt], Unit[1/100000000, "Volt"], 
  TestID -> "OldPackageSITestAbvolt"]; 
 Test[SI[Acre], Unit[316160658/78125, ("Meter")^2], 
  TestID -> "OldPackageSITestAcre"]; 
 Test[SI[Amp], Ampere, TestID -> "OldPackageSITestAmp"]; 
 Test[SI[Ampere], Ampere, TestID -> "OldPackageSITestAmpere"]; 
 (*
 Test[SI[AMU], Unit[1.66054*10^-27, "Kilogram"], TestID -> "OldPackageSITestAMU"];
  Test[SI[AtomicMassUnit], Unit[1.66054*10^-27, "Kilogram"],   TestID -> "OldPackageSITestAtomicMassUnit"]; 
   *)
 (*Value improved per http://en.wikipedia.org/wiki/Atomic_mass_unit*)
 Test[SI[Angstrom], Unit[1/10000000000, "Meter"], 
  TestID -> "OldPackageSITestAngstrom"]; 
 (*Test[SI[Apostilb], Unit[1/\[Pi], ("Lumen")/("Meter")^2],  TestID -> "OldPackageSITestApostilb"]; *)(*Equivelent output*)
 Test[SI[Apostilb], Unit[1,"Lux"]/Pi,  TestID -> "OldPackageSITestApostilb"]; 
 Test[SI[ArcMinute], Unit[\[Pi]/10800, "Radian"], 
  TestID -> "OldPackageSITestArcMinute"]; 
 Test[SI[ArcSecond], Unit[\[Pi]/648000, "Radian"], 
  TestID -> "OldPackageSITestArcSecond"]; 
 Test[SI[Are], Unit[100, ("Meter")^2], 
  TestID -> "OldPackageSITestAre"]; 
 Test[SI[AssayTon], Unit[0.029167, "Kilogram"], 
  TestID -> "OldPackageSITestAssayTon"]; 
 (*Test[SI[AstronomicalUnit], Unit[1.49598*10^11, "Meter"],   TestID -> "OldPackageSITestAstronomicalUnit"]; 
  Test[SI[AU], Unit[1.49598*10^11, "Meter"],   TestID -> "OldPackageSITestAU"]; *)
  (*New defn per http://en.wikipedia.org/wiki/Astronomical_unit *)
  
 (*Test[SI[Atmosphere], Unit[101325., "Pascal"], TestID -> "OldPackageSITestAtmosphere"]; *) (*Exactify*)
 Test[SI[Atmosphere], Unit[101325, "Pascal"], TestID -> "OldPackageSITestAtmosphere"];

 Test[SI[Atto], 1/1000000000000000000, 
  TestID -> "OldPackageSITestAtto"]; 

(* Test[SI[AvoirdupoisOunce], Unit[0.0283495, "Kilogram"], TestID -> "OldPackageSITestAvoirdupoisOunce"]; *)(*Exactfy*)
 Test[SI[AvoirdupoisOunce], Unit[45359237/1600000000, "Kilogram"], TestID -> "OldPackageSITestAvoirdupoisOunce"]; 
(* Test[SI[AvoirdupoisPound], Unit[0.453592, "Kilogram"],   TestID -> "OldPackageSITestAvoirdupoisPound"]; *)(*Exactify*)
 Test[SI[AvoirdupoisPound], Unit[45359237/100000000, "Kilogram"],   TestID -> "OldPackageSITestAvoirdupoisPound"]; 
 Test[SI[Bag], Unit[0.10572, ("Meter")^3], 
  TestID -> "OldPackageSITestBag"]; 
 Test[SI[BakersDozen], 13, TestID -> "OldPackageSITestBakersDozen"]; 
(* Test[SI[Bale], Unit[226.796, "Kilogram"],   TestID -> "OldPackageSITestBale"]; *)(*Exactify*)
 Test[SI[Bale], Unit[45359237/200000, "Kilogram"],   TestID -> "OldPackageSITestBale"]; 
 Test[SI[Bar], Unit[100000, "Pascal"], 
  TestID -> "OldPackageSITestBar"]; 
 Test[SI[Barn], Unit[1/10000000000000000000000000000, ("Meter")^2], 
  TestID -> "OldPackageSITestBarn"]; 

 Test[SI[Barye], Unit[1/10, "Pascal"], 
  TestID -> "OldPackageSITestBarye"]; 
 Test[SI[Baud], Unit[1, ("Bit")/("Second")], 
  TestID -> "OldPackageSITestBaud"]; 
 (*Test[SI[Becquerel], Becquerel, TestID -> "OldPackageSITestBecquerel"]; *)(*Old value is equivelent to new value*)
 Test[SI[Becquerel], Hertz, TestID -> "OldPackageSITestBecquerel"]; 
 Test[SI[Biot], Unit[10, "Ampere"], TestID -> "OldPackageSITestBiot"];
  Test[SI[Bit], Bit, TestID -> "OldPackageSITestBit"]; 
 Test[SI[BoardFoot], Unit[18435447/7812500000, ("Meter")^3], 
  TestID -> "OldPackageSITestBoardFoot"]; 
(* Test[SI[BohrMagneton], Unit[9.27402*10^-24, ("Joule")/("Tesla")], TestID -> "OldPackageSITestBohrMagneton"]; *)(*More digitst*)
Test[SI[BohrMagneton], Unit[9.2740091523*^-24, ("Joule")/("Tesla")], TestID -> "OldPackageSITestBohrMagneton"]; 
 Test[SI[Bolt], Unit[4572/125, "Meter"], 
  TestID -> "OldPackageSITestBolt"]; 
 (*Test[SI[BritishThermalUnit], Unit[1055.06, "Joule"],  TestID -> "OldPackageSITestBritishThermalUnit"]; 
 Test[SI[BTU], Unit[1055.06, "Joule"], TestID -> "OldPackageSITestBTU"]; *)(*More digits and new defn*)
 Test[SI[BritishThermalUnit], Unit[1055.05585257348, "Joule"],  TestID -> "OldPackageSITestBritishThermalUnit"]; 
 Test[SI[BTU], Unit[1055.05585257348, "Joule"], TestID -> "OldPackageSITestBTU"]; 
 (*Test[SI[Bucket], Unit[0.0151416, ("Meter")^3],   TestID -> "OldPackageSITestBucket"]; *)(*Exactify*)
 Test[SI[Bucket], Unit[473176473/31250000000, ("Meter")^3],   TestID -> "OldPackageSITestBucket"];
 Test[SI[Bushel], Unit[0.03524, ("Meter")^3], 
  TestID -> "OldPackageSITestBushel"]; 
 (*Test[SI[Butt], Unit[0.476961, ("Meter")^3],   TestID -> "OldPackageSITestButt"]; *)(*Exactify*)
  Test[SI[Butt], Unit[29810117799/62500000000, "Meter"^3],   TestID -> "OldPackageSITestButt"]; 
 Test[SI[Cable], Unit[27432/125, "Meter"], 
  TestID -> "OldPackageSITestCable"]; 
 Test[SI[Caliber], Unit[127/500000, "Meter"], 
  TestID -> "OldPackageSITestCaliber"]; 
 Test[SI[Calorie], Unit[4.1868, "Joule"], 
  TestID -> "OldPackageSITestCalorie"]; 
 Test[SI[Candela], Candela, TestID -> "OldPackageSITestCandela"]; 
 Test[SI[Candle], Candela, TestID -> "OldPackageSITestCandle"]; 
 Test[SI[Carat], Unit[0.0002, "Kilogram"], 
  TestID -> "OldPackageSITestCarat"]; 
 Test[SI[Celsius], Kelvin, TestID -> "OldPackageSITestCelsius"]; 
(* Test[SI[Cental], Unit[45.3592, "Kilogram"],  TestID -> "OldPackageSITestCental"]; *)(*Exactify*)
 Test[SI[Cental], Unit[45359237/1000000, "Kilogram"],  TestID -> "OldPackageSITestCental"]; 
 Test[SI[Centi], 1/100, TestID -> "OldPackageSITestCenti"]; 
 Test[SI[Centigrade], Kelvin, TestID -> "OldPackageSITestCentigrade"];
  Test[SI[Centimeter], Unit[1/100, "Meter"], 
  TestID -> "OldPackageSITestCentimeter"]; 
 Test[SI[Century], Unit[3153600000, "Second"], 
  TestID -> "OldPackageSITestCentury"]; 
 Test[SI[CGS], CGS, TestID -> "OldPackageSITestCGS"]; 
 Test[SI[Chain], Unit[12573/625, "Meter"], 
  TestID -> "OldPackageSITestChain"]; 
 Test[SI[ChevalVapeur], Unit[735.499, "Watt"], 
  TestID -> "OldPackageSITestChevalVapeur"]; 
 Test[SI[Cicero], Unit[3/665, "Meter"], 
  TestID -> "OldPackageSITestCicero"]; 
 Test[SI[Convert], Convert, TestID -> "OldPackageSITestConvert"]; 
 Test[SI[ConvertTemperature], ConvertTemperature, 
  TestID -> "OldPackageSITestConvertTemperature"]; 
 Test[SI[Cord], Unit[884901456/244140625, ("Meter")^3], 
  TestID -> "OldPackageSITestCord"]; 
 Test[SI[Coulomb], Coulomb, TestID -> "OldPackageSITestCoulomb"]; 
 Test[SI[Cubit], Unit[1143/2500, "Meter"], 
  TestID -> "OldPackageSITestCubit"]; 
(* Test[SI[Curie], Unit[37000000000, "Becquerel"],  TestID -> "OldPackageSITestCurie"]; *)(*New value equivelent to old*)
 Test[SI[Curie], Unit[37000000000, "Hertz"],  TestID -> "OldPackageSITestCurie"]; 
(* Test[SI[Dalton], Unit[1.66054*10^-27, "Kilogram"], TestID -> "OldPackageSITestDalton"]; *)(*More digits*)
 Test[SI[Dalton], Unit[1.66053878283*^-27, "Kilogram"], TestID -> "OldPackageSITestDalton"]; 
 Test[SI[Day], Unit[86400, "Second"], 
  TestID -> "OldPackageSITestDay"]; 
 Test[SI[Deca], 10, TestID -> "OldPackageSITestDeca"]; 
 Test[SI[Decade], Unit[315360000, "Second"], 
  TestID -> "OldPackageSITestDecade"]; 
 Test[SI[Deci], 1/10, TestID -> "OldPackageSITestDeci"]; 
 Test[SI[Denier], Unit[1/9000000, ("Kilogram")/("Meter")], 
  TestID -> "OldPackageSITestDenier"]; 
 Test[SI[Didot], Unit[1/2660, "Meter"], 
  TestID -> "OldPackageSITestDidot"]; 
 Test[SI[DidotPoint], Unit[1/2660, "Meter"], 
  TestID -> "OldPackageSITestDidotPoint"]; 
 Test[SI[Diopter], 1/Meter, TestID -> "OldPackageSITestDiopter"]; 
 Test[SI[Dozen], 12, TestID -> "OldPackageSITestDozen"]; 
 Test[SI[Drachma], Unit[0.0042923, "Kilogram"], 
  TestID -> "OldPackageSITestDrachma"]; 
 Test[SI[Dyne], Unit[1/100000, "Newton"], 
  TestID -> "OldPackageSITestDyne"]; 
(* Test[SI[ElectronVolt], Unit[1.60218*10^-19, "Joule"],   TestID -> "OldPackageSITestElectronVolt"]; *)(*More digists*)
 Test[SI[ElectronVolt], Unit[1.602176487*^-19, "Joule"],   TestID -> "OldPackageSITestElectronVolt"]; 
 Test[SI[Ell], Unit[1143/1000, "Meter"], 
  TestID -> "OldPackageSITestEll"]; 
 Test[SI[Ephah], Unit[0.039645, ("Meter")^3], 
  TestID -> "OldPackageSITestEphah"]; 
 Test[SI[Erg], Unit[1/10000000, "Joule"],   TestID -> "OldPackageSITestErg"]; 
 Test[SI[Exa], 1000000000000000000, TestID -> "OldPackageSITestExa"]; 
 Test[SI[Fahrenheit], Unit[5/9, "Kelvin"], 
  TestID -> "OldPackageSITestFahrenheit"]; 
 Test[SI[Farad], Farad, TestID -> "OldPackageSITestFarad"]; 
 Test[SI[Fathom], Unit[1143/625, "Meter"], 
  TestID -> "OldPackageSITestFathom"]; 
 Test[SI[Feet], Unit[381/1250, "Meter"], 
  TestID -> "OldPackageSITestFeet"]; 
 Test[SI[Femto], 1/1000000000000000, 
  TestID -> "OldPackageSITestFemto"]; 
 Test[SI[Fermi], Unit[1/1000000000000000, "Meter"],   TestID -> "OldPackageSITestFermi"]; 
(* Test[SI[Fifth], Unit[0.000757082, ("Meter")^3], TestID -> "OldPackageSITestFifth"]; *)(*Exactify*)
 Test[SI[Fifth], Unit[473176473/625000000000, "Meter"^3], TestID -> "OldPackageSITestFifth"]; 

 (* Test[SI[Firkin], Unit[0.0409148, ("Meter")^3],  TestID -> "OldPackageSITestFirkin"]; *)(*Exactify*)
  Test[SI[Firkin], Unit[4091481/100000000, "Meter"^3],  TestID -> "OldPackageSITestFirkin"]; 
(* Test[SI[FluidDram], Unit[3.69669*10^-6, ("Meter")^3],   TestID -> "OldPackageSITestFluidDram"]; *)(*Exactify*)
  Test[SI[FluidDram], Unit[473176473/128000000000000, "Meter"^3],   TestID -> "OldPackageSITestFluidDram"]; 
 (*Test[SI[FluidOunce], Unit[0.0000295735, ("Meter")^3],   TestID -> "OldPackageSITestFluidOunce"]; *)(*Exactify*)
 Test[SI[FluidOunce], Unit[473176473/16000000000000, "Meter"^3],   TestID -> "OldPackageSITestFluidOunce"];
 Test[SI[Foot], Unit[381/1250, "Meter"], 
  TestID -> "OldPackageSITestFoot"]; 
 Test[SI[FootCandle], Unit[1562500/145161, "Lux"], 
  TestID -> "OldPackageSITestFootCandle"]; 
 Test[SI[Fortnight], Unit[1209600, "Second"], 
  TestID -> "OldPackageSITestFortnight"]; 
 Test[SI[Furlong], Unit[25146/125, "Meter"], 
  TestID -> "OldPackageSITestFurlong"]; 
 Test[SI[Gal], Unit[1/100, ("Meter")/("Second")^2], 
  TestID -> "OldPackageSITestGal"]; 
 (*Test[SI[Gallon], Unit[0.00378541, ("Meter")^3],   TestID -> "OldPackageSITestGallon"];*)(*Exactify*) 
  Test[SI[Gallon], Unit[473176473/125000000000, "Meter"^3],   TestID -> "OldPackageSITestGallon"]; 
 Test[SI[Gauss], Unit[1/10000, "Tesla"], 
  TestID -> "OldPackageSITestGauss"]; 
 Test[SI[Geepound], Unit[14.5939, "Kilogram"], 
  TestID -> "OldPackageSITestGeepound"]; 
 Test[SI[Giga], 1000000000, TestID -> "OldPackageSITestGiga"]; 
 Test[SI[Gilbert], Unit[5/(2 \[Pi]), "Ampere"], 
  TestID -> "OldPackageSITestGilbert"]; 
 (*Test[SI[Gill], Unit[0.000118294, ("Meter")^3],   TestID -> "OldPackageSITestGill"]; *)(*Exactify*)
  Test[SI[Gill], Unit[473176473/4000000000000, "Meter"^3],   TestID -> "OldPackageSITestGill"]; 
 Test[SI[Grade], Unit[\[Pi]/200, "Radian"], 
  TestID -> "OldPackageSITestGrade"]; 
 (*Test[SI[Grain], Unit[0.000064799, "Kilogram"], TestID -> "OldPackageSITestGrain"];*)(*Exactify*) 
  Test[SI[Grain], Unit[6479891/100000000000, "Kilogram"], TestID -> "OldPackageSITestGrain"]; 
 Test[SI[Gram], Unit[1/1000, "Kilogram"], 
  TestID -> "OldPackageSITestGram"]; 
 Test[SI[GramWeight], Unit[0.00980665, "Newton"], 
  TestID -> "OldPackageSITestGramWeight"]; 
 Test[SI[Gravity], Unit[9.80665, ("Meter")/("Second")^2], 
  TestID -> "OldPackageSITestGravity"]; 
 Test[SI[GrayDose], GrayDose, TestID -> "OldPackageSITestGrayDose"]; 
 Test[SI[Gross], 144, TestID -> "OldPackageSITestGross"]; 
(* Test[SI[GrossHundredweight], Unit[50.8023, "Kilogram"],   TestID -> "OldPackageSITestGrossHundredweight"];*)(*Exactify*)
 Test[SI[GrossHundredweight], Unit[317514659/6250000, "Kilogram"],   TestID -> "OldPackageSITestGrossHundredweight"]; 
 Test[SI[Hand], Unit[127/1250, "Meter"], 
  TestID -> "OldPackageSITestHand"]; 
 Test[SI[Hectare], Unit[10000, ("Meter")^2], 
  TestID -> "OldPackageSITestHectare"]; 
 Test[SI[Hecto], 100, TestID -> "OldPackageSITestHecto"]; 
 Test[SI[Hefner], Unit[0.92, "Candela"], 
  TestID -> "OldPackageSITestHefner"]; 
 Test[SI[Henry], Henry, TestID -> "OldPackageSITestHenry"]; 
 Test[SI[Hertz], Hertz, TestID -> "OldPackageSITestHertz"]; 
(* Test[SI[Hogshead], Unit[0.238481, ("Meter")^3],   TestID -> "OldPackageSITestHogshead"]; *)(*Exactify*)
 Test[SI[Hogshead], Unit[29810117799/125000000000, "Meter"^3],   TestID -> "OldPackageSITestHogshead"];
 Test[SI[Horsepower], Unit[745.7, "Watt"], 
  TestID -> "OldPackageSITestHorsepower"]; 
 Test[SI[Hour], Unit[3600, "Second"], 
  TestID -> "OldPackageSITestHour"]; 
(* Test[SI[Hundredweight], Unit[50.8023, "Kilogram"],   TestID -> "OldPackageSITestHundredweight"]; *)(*Exactify*)
 Test[SI[Hundredweight], Unit[317514659/6250000, "Kilogram"],   TestID -> "OldPackageSITestHundredweight"]; 
(* Test[SI[ImperialGallon], Unit[0.00454609, ("Meter")^3],   TestID -> "OldPackageSITestImperialGallon"]; *)(*Exactify*)
 Test[SI[ImperialGallon], Unit[454609/100000000, "Meter"^3],   TestID -> "OldPackageSITestImperialGallon"]; 
(* Test[SI[ImperialPint], Unit[0.000568261, ("Meter")^3],  TestID -> "OldPackageSITestImperialPint"]; *)(*Exactify*)
 Test[SI[ImperialPint], Unit[454609/800000000, "Meter"^3],  TestID -> "OldPackageSITestImperialPint"]; 
 Test[SI[Inch], Unit[127/5000, "Meter"], 
  TestID -> "OldPackageSITestInch"]; 
 Test[SI[InchMercury], Unit[3386.39, "Pascal"], 
  TestID -> "OldPackageSITestInchMercury"]; 
 (*Test[SI[Jeroboam], Unit[0.00302833, ("Meter")^3],   TestID -> "OldPackageSITestJeroboam"]; *)(*Exactiry*)
 (* Test[SI[Jeroboam], Unit[473176473/156250000000, "Meter"^3],   TestID -> "OldPackageSITestJeroboam"]; *)
    Test[SI[Jeroboam], Unit[3/1000, "Meter"^3],   TestID -> "NewValueJeroboam"]; (*Use Metric value*)
 (*Test[SI[Jigger], Unit[0.0000443603, ("Meter")^3],  TestID -> "OldPackageSITestJigger"];*)(*Exactify*)
  Test[SI[Jigger], Unit[1419529419/32000000000000, "Meter"^3],  TestID -> "OldPackageSITestJigger"];  
 Test[SI[Joule], Joule, TestID -> "OldPackageSITestJoule"]; 
 Test[SI[Kayser], Unit[100, 1/("Meter")], 
  TestID -> "OldPackageSITestKayser"]; 
 Test[SI[Kelvin], Kelvin, TestID -> "OldPackageSITestKelvin"]; 
 Test[SI[Kilo], 1000, TestID -> "OldPackageSITestKilo"]; 
 Test[SI[Kilogram], Kilogram, TestID -> "OldPackageSITestKilogram"]; 
 Test[SI[KilogramForce], Unit[9.80665, "Newton"], 
  TestID -> "OldPackageSITestKilogramForce"]; 
 Test[SI[KilogramWeight], Unit[9.80665, "Newton"], 
  TestID -> "OldPackageSITestKilogramWeight"]; 
 (*Test[SI[Knot], Unit[0.514444, ("Meter")/("Second")],   TestID -> "OldPackageSITestKnot"]; *)(*Exactify*)
 Test[SI[Knot], Unit[463/900, "Meter"/"Second"],   TestID -> "OldPackageSITestKnot"]; 
(* Test[SI[Lambert], Unit[10000/\[Pi], ("Lumen")/("Meter")^2], TestID -> "OldPackageSITestLambert"]; *)(*Equivelent result*)
 Test[SI[Lambert], Unit[10000/\[Pi], "Lux"], TestID -> "OldPackageSITestLambert"]; 

 Test[SI[Libra], Unit[0.325971, "Kilogram"], 
  TestID -> "OldPackageSITestLibra"]; 
(* Test[SI[LightYear], Unit[9.46073*10^15, "Meter"],  TestID -> "OldPackageSITestLightYear"]; *)(*Exactify*)
 Test[SI[LightYear], Unit[9460730472580800, "Meter"],  TestID -> "OldPackageSITestLightYear"]; 
(*Test[SI[Link], Unit[0.201168, "Meter"],   TestID -> "OldPackageSITestLink"]; *)(*Exactify*)
Test[SI[Link], Unit[12573/62500, "Meter"],   TestID -> "OldPackageSITestLink"]; 
 Test[SI[Liter], Unit[1/1000, ("Meter")^3], 
  TestID -> "OldPackageSITestLiter"]; 
(* Test[SI[LongTon], Unit[1016.05, "Kilogram"],  TestID -> "OldPackageSITestLongTon"]; *)(*Exactify*)
 Test[SI[LongTon], Unit[317514659/312500, "Kilogram"],  TestID -> "OldPackageSITestLongTon"]; 
 Test[SI[Lumen], Lumen, TestID -> "OldPackageSITestLumen"]; 

 Test[SI[Lux], Lux, TestID -> "OldPackageSITestLux"]; 
 (*Test[SI[Magnum], Unit[0.0018927, ("Meter")^3],   TestID -> "OldPackageSITestMagnum"]; *)(*Exactify*)
 (* Test[SI[Magnum], Unit[473176473/250000000000, "Meter"^3],   TestID -> "OldPackageSITestMagnum"]; *)
  Test[SI[Magnum], Unit[3/2000, "Meter"^3],   TestID -> "NewValueSITestMagnum"]; (*Now use Metric value*)
 Test[SI[Maxwell], Unit[1/100000000, "Weber"], 
  TestID -> "OldPackageSITestMaxwell"]; 
 Test[SI[Mega], 1000000, TestID -> "OldPackageSITestMega"]; 
 Test[SI[Meter], Meter, TestID -> "OldPackageSITestMeter"]; 
 Test[SI[MetricTon], Unit[1000, "Kilogram"], 
  TestID -> "OldPackageSITestMetricTon"]; 
(* Test[SI[Mho], 1/Ohm, TestID -> "OldPackageSITestMho"]; *)(*New value is equivelent*)
 Test[SI[Mho], Siemens, TestID -> "OldPackageSITestMho"]; 
 Test[SI[Micro], 1/1000000, TestID -> "OldPackageSITestMicro"]; 
 Test[SI[Micron], Unit[1/1000000, "Meter"], 
  TestID -> "OldPackageSITestMicron"]; 
 Test[SI[Mil], Unit[127/5000000, "Meter"], 
  TestID -> "OldPackageSITestMil"]; 
 Test[SI[Mile], Unit[201168/125, "Meter"], 
  TestID -> "OldPackageSITestMile"]; 
 Test[SI[Millennium], Unit[31536000000, "Second"], 
  TestID -> "OldPackageSITestMillennium"]; 
 Test[SI[Milli], 1/1000, TestID -> "OldPackageSITestMilli"]; 
 (*Test[SI[MillimeterMercury], Unit[133.322, "Pascal"],   TestID -> "OldPackageSITestMillimeterMercury"]; *)(*Exactify*)
  Test[SI[MillimeterMercury], Unit[20265/152, "Pascal"],   TestID -> "OldPackageSITestMillimeterMercury"]; 
(* Test[SI[Mina], Unit[0.429234, "Kilogram"],  TestID -> "OldPackageSITestMina"]; *)(*More digits*)(*Need reference*)
 (*Test[SI[Minim], Unit[6.16115*10^-8, ("Meter")^3],   TestID -> "OldPackageSITestMinim"]; *)(*Exactify*)
 Test[SI[Minim], Unit[157725491/2560000000000000, "Meter"^3],   TestID -> "OldPackageSITestMinim"]; 
 Test[SI[Minute], Unit[60, "Second"], 
  TestID -> "OldPackageSITestMinute"]; 
 Test[SI[SI], SI, TestID -> "OldPackageSITestSI"]; 
 (*Test[SI[Mole], 6.02214*10^23, TestID -> "OldPackageSITestMole"]; *)(*More digits*)
  Test[SI[Mole], 6.0221415*10^23, TestID -> "OldPackageSITestMole"]; 
 Test[SI[Month], Unit[2628000, "Second"], 
  TestID -> "OldPackageSITestMonth"]; 
 Test[SI[Nano], 1/1000000000, TestID -> "OldPackageSITestNano"]; 
(* Test[SI[NauticalMile], Unit[1852., "Meter"],   TestID -> "OldPackageSITestNauticalMile"]; *)(*Exactify*)
 Test[SI[NauticalMile], Unit[1852, "Meter"],   TestID -> "OldPackageSITestNauticalMile"];
(* Test[SI[NetHundredweight], Unit[45.3592, "Kilogram"],TestID -> "OldPackageSITestNetHundredweight"]; *)(*Exactify*)
 Test[SI[NetHundredweight], Unit[45359237/1000000, "Kilogram"],TestID -> "OldPackageSITestNetHundredweight"]; 
 Test[SI[Newton], Newton, TestID -> "OldPackageSITestNewton"]; 
 Test[SI[Nibble], Unit[4, "Bit"], TestID -> "OldPackageSITestNibble"];
  Test[SI[Nit], Unit[1, ("Candela")/("Meter")^2], 
  TestID -> "OldPackageSITestNit"]; 
 (*Test[SI[Noggin], Unit[0.000118294, ("Meter")^3],TestID -> "OldPackageSITestNoggin"]; *)(*Exactify*)
  Test[SI[Noggin], Unit[473176473/4000000000000, "Meter"^3],TestID -> "OldPackageSITestNoggin"]; 
(* Test[SI[NuclearMagneton], Unit[5.05079*10^-27, ("Joule")/("Tesla")],   TestID -> "OldPackageSITestNuclearMagneton"]; *)(*More digits*)
 Test[SI[NuclearMagneton], Unit[5.0507832413*^-27, ("Joule")/("Tesla")],   TestID -> "OldPackageSITestNuclearMagneton"]; 
 Test[SI[Obolos], Unit[0.00071538, "Kilogram"], 
  TestID -> "OldPackageSITestObolos"]; 
 Test[SI[Oersted], Unit[250/\[Pi], ("Ampere")/("Meter")], 
  TestID -> "OldPackageSITestOersted"]; 
 Test[SI[Ohm], Ohm, TestID -> "OldPackageSITestOhm"]; 
 Test[SI[Omer], Unit[0.0039645, ("Meter")^3], 
  TestID -> "OldPackageSITestOmer"]; 
(* Test[SI[Ounce], Unit[0.0283495, "Kilogram"], TestID -> "OldPackageSITestOunce"]; *)(*Exactify*)
 Test[SI[Ounce], Unit[45359237/1600000000, "Kilogram"], TestID -> "OldPackageSITestOunce"]; 
 Test[SI[Parsec], Unit[30857000000000000, "Meter"], 
  TestID -> "OldPackageSITestParsec"]; 
 Test[SI[Pascal], Pascal, TestID -> "OldPackageSITestPascal"]; 
 Test[SI[Peck], Unit[0.00881, ("Meter")^3], 
  TestID -> "OldPackageSITestPeck"]; 
(* Test[SI[Pennyweight], Unit[0.001555, "Kilogram"],  TestID -> "OldPackageSITestPennyweight"]; *)(*Exactify*)
 Test[SI[Pennyweight], Unit[19439673/12500000000, "Kilogram"],  TestID -> "OldPackageSITestPennyweight"]; 
 Test[SI[Percent], 1/100, TestID -> "OldPackageSITestPercent"]; 
 (*Test[SI[Perch], Unit[5.0292, "Meter"],   TestID -> "OldPackageSITestPerch"]; *)(*Exactidy*)
  Test[SI[Perch], Unit[12573/2500, "Meter"],   TestID -> "OldPackageSITestPerch"]; 
 Test[SI[Peta], 1000000000000000, TestID -> "OldPackageSITestPeta"]; 
 Test[SI[Phot], Unit[10000, "Lux"], TestID -> "OldPackageSITestPhot"];
  Test[SI[Pica], Unit[127/30000, "Meter"], 
  TestID -> "OldPackageSITestPica"]; 
 Test[SI[Pico], 1/1000000000000, TestID -> "OldPackageSITestPico"]; 
(* Test[SI[Pint], Unit[0.000473176, ("Meter")^3],  TestID -> "OldPackageSITestPint"]; *)(*Exactify*)
 Test[SI[Pint], Unit[473176473/1000000000000, "Meter"^3],  TestID -> "OldPackageSITestPint"]; 
 Test[SI[Poise], Unit[0.1, "Pascal" "Second"], 
  TestID -> "OldPackageSITestPoise"]; 
(* Test[SI[Pole], Unit[5.0292, "Meter"],   TestID -> "OldPackageSITestPole"]; *)(*Exactify*)
 Test[SI[Pole], Unit[12573/2500, "Meter"],   TestID -> "OldPackageSITestPole"]; 
(* Test[SI[Pondus], Unit[0.325969, "Kilogram"],  TestID -> "OldPackageSITestPondus"]; *)(*More digits*)(*Reference needed*)
 Test[SI[Pondus], Unit[0.3259696207768, "Kilogram"],  TestID -> "OldPackageSITestPondus"]; 
(* Test[SI[Pony], Unit[0.0000221801, ("Meter")^3],  TestID -> "OldPackageSITestPony"]; *)(*Exactify*)
 Test[SI[Pony], Unit[1419529419/64000000000000, "Meter"^3],  TestID -> "OldPackageSITestPony"]; 
(* Test[SI[Pound], Unit[0.453592, "Kilogram"], TestID -> "OldPackageSITestPound"]; *)(*Exactify*)
 Test[SI[Pound], Unit[45359237/100000000, "Kilogram"], TestID -> "OldPackageSITestPound"]; 
 Test[SI[Poundal], Unit[0.138255, "Newton"], 
  TestID -> "OldPackageSITestPoundal"]; 
 Test[SI[PoundForce], Unit[4.44822, "Newton"], 
  TestID -> "OldPackageSITestPoundForce"]; 
(* Test[SI[PoundsPerSquareInch], Unit[6894.76, "Pascal"],  TestID -> "OldPackageSITestPoundsPerSquareInch"]; *)(*More digits*)
 Test[SI[PoundsPerSquareInch], Unit[6894.754789509579, "Pascal"],  TestID -> "OldPackageSITestPoundsPerSquareInch"]; 
 Test[SI[PoundWeight], Unit[4.44822, "Newton"], 
  TestID -> "OldPackageSITestPoundWeight"]; 
 (*Test[SI[PrintersPoint], Unit[0.00035146, "Meter"], TestID -> "OldPackageSITestPrintersPoint"];*)(*Exactify*)
 Test[SI[PrintersPoint], Unit[127/36135000, "Meter"], TestID -> "OldPackageSITestPrintersPoint"]; 
(* Test[SI[PSI], Unit[6894.76, "Pascal"],  TestID -> "OldPackageSITestPSI"];*)(*More digits*)
 Test[SI[PSI], Unit[6894.754789509579, "Pascal"],  TestID -> "OldPackageSITestPSI"]; 
 (*Test[SI[Puncheon], Unit[0.317974, ("Meter")^3], TestID -> "OldPackageSITestPuncheon"]; *)(*Exactify*)
 Test[SI[Puncheon], Unit[9936705933/31250000000, "Meter"^3], TestID -> "OldPackageSITestPuncheon"]; 
 Test[SI[Quadrant], Unit[\[Pi]/2, "Radian"], 
  TestID -> "OldPackageSITestQuadrant"]; 
(* Test[SI[Quart], Unit[0.000946352, ("Meter")^3],   TestID -> "OldPackageSITestQuart"]; *)(*Exactify*)
 Test[SI[Quart], Unit[473176473/500000000000, "Meter"^3],   TestID -> "OldPackageSITestQuart"]; 
 Test[SI[Quintal], Unit[100, "Kilogram"], 
  TestID -> "OldPackageSITestQuintal"]; 
(* Test[SI[Rad], Unit[0.01, "GrayDose"], TestID -> "OldPackageSITestRad"]; *)(*Exactify*)
 Test[SI[Rad], Unit[1/100, "GrayDose"], TestID -> "OldPackageSITestRad"]; 
 Test[SI[Radian], Radian, TestID -> "OldPackageSITestRadian"]; 
 Test[SI[Rankine], Unit[5/9, "Kelvin"], 
  TestID -> "OldPackageSITestRankine"]; 
 Test[SI[RegisterTon], Unit[55306341/19531250, ("Meter")^3], 
  TestID -> "OldPackageSITestRegisterTon"]; 
 Test[SI[Reyn], Unit[6894.76, "Pascal" "Second"], 
  TestID -> "OldPackageSITestReyn"]; 
 Test[SI[Rhes], Unit[10., 1/("Pascal" "Second")],   TestID -> "OldPackageSITestRhes"]; 
 Test[SI[RightAngle], Unit[\[Pi]/2, "Radian"], 
  TestID -> "OldPackageSITestRightAngle"]; 
 (*Test[SI[Rod], Unit[5.0292, "Meter"], TestID -> "OldPackageSITestRod"]; *)(*Exactify*)
  Test[SI[Rod], Unit[12573/2500, "Meter"], TestID -> "OldPackageSITestRod"]; 
 Test[SI[Roentgen], Unit[0.000258, ("Coulomb")/("Kilogram")], 
  TestID -> "OldPackageSITestRoentgen"]; 
 Test[SI[Rontgen], Unit[0.000258, ("Coulomb")/("Kilogram")], 
  TestID -> "OldPackageSITestRontgen"]; 
 Test[SI[Rood], Unit[158080329/156250, ("Meter")^2], 
  TestID -> "OldPackageSITestRood"]; 
 Test[SI[Rope], Unit[762/125, "Meter"], 
  TestID -> "OldPackageSITestRope"]; 
 (*Test[SI[Rutherford], Unit[1000000, 1/("Second")],  TestID -> "OldPackageSITestRutherford"]; *) (*Old behaviour wrong*)
 Test[SI[Rydberg], Unit[2.1799*10^-18, "Joule"], 
  TestID -> "OldPackageSITestRydberg"]; 
 Test[SI[Seam], Unit[0.28192, ("Meter")^3], 
  TestID -> "OldPackageSITestSeam"]; 
 Test[SI[Second], Second, TestID -> "OldPackageSITestSecond"]; 

 Test[SI[Shekel], Unit[0.0141, "Kilogram"], 
  TestID -> "OldPackageSITestShekel"]; 
(* Test[SI[ShortHundredweight], Unit[45.3592, "Kilogram"],  TestID -> "OldPackageSITestShortHundredweight"]; *)(*Exactify*)
 Test[SI[ShortHundredweight], Unit[45359237/1000000, "Kilogram"],  TestID -> "OldPackageSITestShortHundredweight"]; 
(* Test[SI[ShortTon], Unit[907.184, "Kilogram"], TestID -> "OldPackageSITestShortTon"]; *)(*Exactify*)
 Test[SI[ShortTon], Unit[45359237/50000, "Kilogram"], TestID -> "OldPackageSITestShortTon"]; 
(* Test[SI[Shot], Unit[0.0000295735, ("Meter")^3],   TestID -> "OldPackageSITestShot"]; *)(*Exactify*)
Test[SI[Shot], Unit[473176473/16000000000000, "Meter"^3],   TestID -> "OldPackageSITestShot"];
 Test[SI[SI], SI, TestID -> "OldPackageSITestSI"]; 
(* Test[SI[SiderealSecond], Unit[0.99727, "Second"],  TestID -> "OldPackageSITestSiderealSecond"]; *)(*More digits*)
 Test[SI[SiderealSecond], Unit[0.9972696, "Second"],  TestID -> "OldPackageSITestSiderealSecond"]; 
 (*Test[SI[SiderealYear], Unit[3.15581*10^7, "Second"], TestID -> "OldPackageSITestSiderealYear"]; *)(*New value*)
  Test[SI[SiderealYear], Unit[3.1558149763545603*^7, "Second"], TestID -> "OldPackageSITestSiderealYear"]; 
 Test[SI[Siemens], Siemens, TestID -> "OldPackageSITestSiemens"]; 
 Test[SI[Skein], Unit[13716/125, "Meter"], 
  TestID -> "OldPackageSITestSkein"]; 
 Test[SI[Slug], Unit[14.5939, "Kilogram"], 
  TestID -> "OldPackageSITestSlug"]; 
 (*Test[SI[SolarMass], Unit[1.9891*10^30, "Kilogram"], TestID -> "OldPackageSITestSolarMass"];*) (*New value http://en.wikipedia.org/wiki/Solar_Mass#cite_note-0*)
 Test[SI[SolarMass], Unit[1.998922*^30, "Kilogram"], TestID -> "OldPackageSITestSolarMass"]
 Test[SI[Stadion], Unit[118491/625, "Meter"], 
  TestID -> "OldPackageSITestStadion"]; 
 Test[SI[Stadium], Unit[115443/625, "Meter"], 
  TestID -> "OldPackageSITestStadium"]; 
(* Test[SI[Statampere], Unit[3.33564*10^-10, "Ampere"],   TestID -> "OldPackageSITestStatampere"]; *)(*More digits*)
 Test[SI[Statampere], Unit[3.335635*10^-10, "Ampere"],   TestID -> "OldPackageSITestStatampere"]; 
(* Test[SI[Statcoulomb], Unit[3.33564*10^-10, "Coulomb"], TestID -> "OldPackageSITestStatcoulomb"];*)(*Exactify*)
 Test[SI[Statcoulomb], Unit[1/2997924580, "Coulomb"], TestID -> "OldPackageSITestStatcoulomb"];  
(* Test[SI[Statfarad], Unit[1.11265*10^-12, "Farad"],  TestID -> "OldPackageSITestStatfarad"]; *)(*More digits*)
 Test[SI[Statfarad], Unit[1.112646*10^-12, "Farad"],  TestID -> "OldPackageSITestStatfarad"]; 
(* Test[SI[Stathenry], Unit[8.98758*10^11, "Henry"],  TestID -> "OldPackageSITestStathenry"]; *)(*More digits*)
 Test[SI[Stathenry], Unit[8.987584*10^11, "Henry"],  TestID -> "OldPackageSITestStathenry"]; 
(* Test[SI[Statohm], Unit[8.98758*10^11, "Ohm"],  TestID -> "OldPackageSITestStatohm"]; *)(*More digits*)
 Test[SI[Statohm], Unit[8.987584*10^11, "Ohm"],  TestID -> "OldPackageSITestStatohm"]; 
(* Test[SI[StatuteMile], Unit[201168/125, "Meter"],  TestID -> "OldPackageSITestStatuteMile"]; *)
(*Statute was defined as international in old package, but appears to be ambiguius but typically taken to mean SurveyMile*)
 Test[SI[StatuteMile], Unit[6336000/3937, "Meter"],  TestID -> "OldPackageSITestStatuteMile"]; 
(* Test[SI[Statvolt], Unit[299.793, "Volt"], TestID -> "OldPackageSITestStatvolt"]; *)(*Exactify*)
 Test[SI[Statvolt], Unit[149896229/500000, "Volt"], TestID -> "OldPackageSITestStatvolt"]; 
 (*Test[SI[Steradian], Steradian, TestID -> "OldPackageSITestSteradian"]; *) (*Dimensionally same as Radian*)
 Test[SI[Stere], Meter^3, TestID -> "OldPackageSITestStere"]; 
 Test[SI[Stilb], Unit[10000, ("Candela")/("Meter")^2], 
  TestID -> "OldPackageSITestStilb"]; 
 Test[SI[Stokes], Unit[1/10000, ("Meter")^2/("Second")], 
  TestID -> "OldPackageSITestStokes"]; 
(* Test[SI[Stone], Unit[6.35029, "Kilogram"],   TestID -> "OldPackageSITestStone"]; *)(*Exactify*)
 Test[SI[Stone], Unit[317514659/50000000, "Kilogram"],   TestID -> "OldPackageSITestStone"]; 
(* Test[SI[SurveyMile], Unit[1609.34, "Meter"],TestID -> "OldPackageSITestSurveyMile"];*)(*Exactify*)
 Test[SI[SurveyMile],Unit[6336000/3937, "Meter"],TestID -> "OldPackageSITestSurveyMile"];  
(* Test[SI[Tablespoon], Unit[0.0000147868, ("Meter")^3], TestID -> "OldPackageSITestTablespoon"]; *)(*Exactify*)
 Test[SI[Tablespoon], Unit[473176473/32000000000000, "Meter"^3], TestID -> "OldPackageSITestTablespoon"]; 

(* Test[SI[Talent], Unit[25.754, "Kilogram"], TestID -> "OldPackageSITestTalent"]; *)(*More digits*)
 Test[SI[Talent], Unit[25.75406758386, "Kilogram"], TestID -> "OldPackageSITestTalent"]; 
 (*Test[SI[Teaspoon], Unit[4.92892*10^-6, ("Meter")^3],   TestID -> "OldPackageSITestTeaspoon"]; *)(*Exactify*)
  Test[SI[Teaspoon], Unit[157725491/32000000000000, "Meter"^3],   TestID -> "OldPackageSITestTeaspoon"]; 
 Test[SI[Tera], 1000000000000, TestID -> "OldPackageSITestTera"]; 
 Test[SI[Tesla], Tesla, TestID -> "OldPackageSITestTesla"]; 
(* Test[SI[Therm], Unit[1.05506*10^8, "Joule"],TestID -> "OldPackageSITestTherm"]; *)(*More digits*)
 Test[SI[Therm], Unit[1.05505585257348*^8, "Joule"],TestID -> "OldPackageSITestTherm"]; 
(* Test[SI[Ton], Unit[907.184, "Kilogram"],  TestID -> "OldPackageSITestTon"]; *)(*Exactify*)
 Test[SI[Ton], Unit[45359237/50000, "Kilogram"],  TestID -> "OldPackageSITestTon"]; 
 Test[SI[TonForce], Unit[9964.02, "Newton"], 
  TestID -> "OldPackageSITestTonForce"]; 
 Test[SI[Tonne], Unit[1000, "Kilogram"], 
  TestID -> "OldPackageSITestTonne"]; 
(* Test[SI[Torr], Unit[133.322, "Pascal"],  TestID -> "OldPackageSITestTorr"]; *)(*Exactified*)
 (* Test[SI[TropicalYear], Unit[3.15569*10^7, "Second"],  TestID -> "OldPackageSITestTropicalYear"]; *)(*More digits*)
 Test[SI[TropicalYear], Unit[3.1556925177984*^7, "Second"],  TestID -> "OldPackageSITestTropicalYear"]; 
(* Test[SI[TroyOunce], Unit[0.031103, "Kilogram"],  TestID -> "OldPackageSITestTroyOunce"]; *)(*Exactify*)
 Test[SI[TroyOunce], Unit[19439673/625000000, "Kilogram"],  TestID -> "OldPackageSITestTroyOunce"]; 
 (*Test[SI[Tun], Unit[0.953923, ("Meter")^3],   TestID -> "OldPackageSITestTun"]; *)(*Exactify*)
  Test[SI[Tun], Unit[29810117799/31250000000, "Meter"^3],   TestID -> "OldPackageSITestTun"]; 
 Test[SI[UKGallon], Unit[0.00454609, ("Meter")^3], 
  TestID -> "OldPackageSITestUKGallon"]; 
 Test[SI[UKPint], Unit[0.000568261, ("Meter")^3], 
  TestID -> "OldPackageSITestUKPint"]; 
 Test[SI[Volt], Volt, TestID -> "OldPackageSITestVolt"]; 
 Test[SI[Watt], Watt, TestID -> "OldPackageSITestWatt"]; 
 Test[SI[Weber], Weber, TestID -> "OldPackageSITestWeber"]; 
 Test[SI[Week], Unit[604800, "Second"], 
  TestID -> "OldPackageSITestWeek"]; 
(* Test[SI[Wey], Unit[114.305, "Kilogram"], TestID -> "OldPackageSITestWey"]; *)(*Exactify*)
 Test[SI[Wey], Unit[2857631931/25000000, "Kilogram"], TestID -> "OldPackageSITestWey"]; 
(*New definition*)(* Test[SI[WineBottle], Unit[0.000757678, ("Meter")^3],  TestID -> "OldPackageSITestWineBottle"]; *)
 Test[SI[WineBottle], Unit[473176473/625000000000, ("Meter")^3],  TestID -> "OldPackageSITestWineBottle"]; 
 Test[SI[XUnit], Unit[1.002*10^-13, "Meter"], 
  TestID -> "OldPackageSITestXUnit"]; 
 Test[SI[Yard], Unit[1143/1250, "Meter"], 
  TestID -> "OldPackageSITestYard"]; 
 Test[SI[Year], Unit[31536000, "Second"], 
  TestID -> "OldPackageSITestYear"]; 
 Test[SI[Yocto], 1/1000000000000000000000000, 
  TestID -> "OldPackageSITestYocto"]; 
 Test[SI[Yotta], 1000000000000000000000000, 
  TestID -> "OldPackageSITestYotta"]; 
 Test[SI[Zepto], 1/1000000000000000000000, 
  TestID -> "OldPackageSITestZepto"]; 
 Test[SI[Zetta], 1000000000000000000000, 
  TestID -> "OldPackageSITestZetta"];
  (* I believe the following to be WRONG in the original package -jonm*)
  (*
  Test[SI[Township], Unit[1456868312064/15625, ("Meter")^2],  TestID -> "OldPackageSITestTownship"];    http://en.wikipedia.org/wiki/US_customary_units#cite_note-Roberts-7
   Test[SI[Section], Unit[40468564224/15625, ("Meter")^2], TestID -> "OldPackageSITestSection"]; 
    Test[SI[League], Unit[603504/125, "Meter"],  TestID -> "OldPackageSITestLeague"]; 
   Test[SI[Barrel], Unit[0.159, ("Meter")^3],  TestID -> "OldPackageSITestBarrel"];  http://en.wikipedia.org/wiki/United_States_customary_units
   *)
   
   (*And these are better results*)
   (* 
   Test[SI[Lumerg], Unit[1, "Lumen" "Second"],  TestID -> "OldPackageSITestLumerg"]; 
   Test[SI[Talbot], Unit[1, "Lumen" "Second"], TestID -> "OldPackageSITestTalbot"]; 
  *)
 
 Test[Sqrt[2] Unit[1,"Meter"],Unit[Sqrt[2],"Meter"],TestID->"Radical times test"];
 Test[Sin[1] Unit[1,"Meter"],Unit[Sin[1],"Meter"],TestID->"Numeric function times test"];
 (*Test fails but shouldn't!
 Test[
 	Convert[{Unit[1,"Meter"], Unit[1,"Day"]}],{Unit[1,"Meter"],Unit[1,"Day"]},
 		{Message[Unit::incomp1, {Unit[1, "Day"], Unit[1, "Meter"]}]},
 		TestID->"Incompatible convert test"];*)
 Test[
	SimplifyUnits[Unit[3.4,"Newton"]]
	,
	Unit[3.4,"Newton"]
	,
	TestID->"Inexact unsimplifieable unit"
]

Test[
	Round[0.7 Unit["Meter"]]
	,
	Unit[1,"Meter"]
	,
	TestID->"Test-20110107-D4J4H4"
]

Test[
	Round[Unit[0.72,"Meter"],Unit[0.1,"Meter"]]
	,
	Unit[0.7, "Meter"]
	,
	TestID->"Test-20110107-P2M0F0"
]
 