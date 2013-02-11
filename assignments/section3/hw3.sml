(* Coursera Programming Languages, Homework 3, Provided Code *)

exception NoAnswer

datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end

(**** for the challenge problem only ****)

datatype typ = Anything
	     | UnitT
	     | IntT
	     | TupleT of typ list
	     | Datatype of string

(**** you can put all your code here ****)

(* 1 *)
fun only_capitals strings = List.filter (fn string => Char.isUpper(String.sub(string, 0))) strings
(* 2 *)
fun longest_string1 strings = 
    List.foldl (fn (s1, s2) => if String.size s1 > String.size s2 then s1 else s2) "" strings
(* 3 *)
fun longest_string2 strings = 
    List.foldl (fn (s1, s2) => if String.size s2 > String.size s1 then s2 else s1) "" strings
(* 4 *) 
fun longest_string_helper f (strings : string list) =
    List.foldl (fn (s1, s2) => f) "" strings
val longest_string3 = longest_string_helper
val longest_string4 = longest_string_helper

    
