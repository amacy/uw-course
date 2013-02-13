use "hw3.sml";
val three_strings = ["First", "second", "Third"];
(* 1 *)
only_capitals([]) = [];
only_capitals(three_strings) = ["First", "Third"];
(* 2 *)
longest_string1([]) = "";
longest_string1(["First", "second"]) = "second";
longest_string1(["First", "Third"]) = "First";
(* 3 *)
longest_string2([]) = "";
longest_string2(["First", "second"]) = "second";
longest_string2(["First", "one", "Third"]) = "Third";
(* 4 *)
longest_string3([]) = "";
longest_string3(["First", "second"]) = "second";
longest_string3(["First", "Third"]) = "First";
longest_string4([]) = "";
longest_string4(["First", "second"]) = "second";
longest_string4(["First", "one", "Third"]) = "Third";
(* 5 *) 
(* longest_capitalized([] = ""; 
longest_capitalized(["second"] = ""; *)
longest_capitalized(["First"]) = "First";
longest_capitalized(three_strings) = "First";
longest_capitalized(["First", "Second", "Third"]) = "Second";
(* 6 *)
rev_string("test") = "tset";
(* 7 *)
(* verified that solution typechecks *)
(* 8 *)
(* verified that solution typechecks *)
(* 9a *)
val pattern1 = TupleP [Wildcard, Variable "var"];
val pattern2 = TupleP [Wildcard, Wildcard];
val pattern3 = TupleP([Wildcard, ConstructorP("a", Wildcard), Variable("z"), Wildcard]);
count_wildcards(Wildcard) = 1; 
count_wildcards(Variable("z")) = 0;
count_wildcards(pattern1) = 1;
count_wildcards(pattern2) = 2;
count_wildcards(ConstructorP("a", Wildcard)) = 1;
count_wildcards(pattern3) = 3;
(* 9b *)
count_wild_and_variable_lengths(Wildcard) = 1; 
count_wild_and_variable_lengths(Variable("z")) = 1;
count_wild_and_variable_lengths(pattern1) = 4;
count_wild_and_variable_lengths(pattern2) = 2;
count_wild_and_variable_lengths(ConstructorP("a", Wildcard)) = 1;
count_wild_and_variable_lengths(pattern3) = 4;
(* 9c *)
count_some_var("test", Variable "test") = 1;
count_some_var("test", Variable "zero") = 0;
count_some_var("needle", TupleP[Variable "needle", TupleP[Variable "needle", Variable "othervar"], Wildcard, UnitP, ConstP 42]) = 2;
