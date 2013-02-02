use "hw2.sml";

(* 1a *)
val abc = ["a", "b", "c"];
val ab = ["a", "b"];
all_except_option("c", []) = NONE;
all_except_option("f", abc) = NONE;
all_except_option("b", ab) = SOME ["a"];
all_except_option("a", ab) = SOME ["b"];
all_except_option("b", abc) = SOME ["a", "c"];
(* 1b *)
get_substitutions1([], "Fred") = [];
get_substitutions1([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], 
"Fred") = ["Fredrick","Freddie","F"];
get_substitutions1([["Fred","Fredrick"],["Jeff","Jeffrey"],["Geoff","Jeff","Jeffrey"]], 
"Jeff") = ["Jeffrey","Geoff","Jeffrey"];
(* 1c *)
get_substitutions2([], "Fred") = [];
get_substitutions2([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], 
"Fred") = ["Fredrick","Freddie","F"];
get_substitutions2([["Fred","Fredrick"],["Jeff","Jeffrey"],["Geoff","Jeff","Jeffrey"]], 
"Jeff") = ["Jeffrey","Geoff","Jeffrey"]; 
(* 1d *)
similar_names([], {first="Fred", middle="W", last="Smith"}) = [{first="Fred", last="Smith", middle="W"}];
similar_names([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]],
{first="Fred", middle="W", last="Smith"}) = [{first="Fred", last="Smith", middle="W"},
					     {first="Fredrick", last="Smith", middle="W"},
					     {first="Freddie", last="Smith", middle="W"},
					     {first="F", last="Smith", middle="W"}];
(* 2a *)
card_color(Clubs, Jack) = "Black";
card_color(Diamonds, Jack) = "Red";
card_color(Hearts, Jack) = "Red";
card_color(Spades, Jack) = "Black";


(* These are just two tests for problem 2; you will want more.

   Naturally these tests and your tests will use bindings defined 
   in your solution, in particular the officiate function, 
   so they will not type-check if officiate is not defined.
 *)
(*
fun provided_test1 () = (* correct behavior: raise IllegalMove *)
    let val cards = [(Clubs,Jack),(Spades,Num(8))]
	val moves = [Draw,Discard(Hearts,Jack)]
    in
	officiate(cards,moves,42)
    end

fun provided_test2 () = (* correct behavior: return 3 *)
    let val cards = [(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)]
	val moves = [Draw,Draw,Draw,Draw,Draw]
    in
 	officiate(cards,moves,42)
    end
*)
