(* Mathematica Test File *)

(*Bugs:
IncompatibleUnits warning issued twice on most uses*)
Test[Day+Meter,Day+Meter,
	Message->{Message[Unit::incomp1, {Unit[1, Day], Unit[1, Meter]}]},
	TestID->"Double warning message"];

(*PreferredUnit selection happens prematurely in Solve,Reduce resulting in non-optimal unit choice*)
Test[$DefaultUnitSet="PrefixedSI";
Solve[30000 x + 200 Meter == 100 Foot, x],
x,TestID->"Premature conversion"];

(*AxesLabel traditionalizes on ListLinePlot of 1D data but not on 2D data*)


(*Declaring a new unit in terms of an undeclared unit might create problems???
*)


(*External reporter: bspulle1@binghamton.edu *)
lb=Pound;
a = 45.32 lb == 80 lb + F2 Cos[\[Theta] + 25 \[Degree]] + 52 (5/13) lb
b = -21.13 lb == -F2 Sin[\[Theta] + 25 \[Degree]] + 52 (12/13) lb
Solve[{a, b}, {F2, \[Theta]}]
(*Fails to find any solutions. Problem is zero testing in solution verification workaround is..*)


Solve[{a, b}, {F2, \[Theta]}, VerifySolutions -> False]

(*External reporter: bspulle1@binghamton.edu *)
(*and FindRoot not supported yet*)
FindRoot[{a, b}, {\[Theta], 1}, {F2, 1}]
(*Correct syntax will be...*)
FindRoot[{a, b}, {\[Theta], 1}, {F2, 1 Pound}]