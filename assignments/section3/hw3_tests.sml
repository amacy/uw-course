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
