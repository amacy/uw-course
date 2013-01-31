(* enumerations: *)
datatype suit = Club | Diamond | Heart | Spade
datatype rank = Jack | Queen | King | Ace | Num of int

(* alternate ways of identifying real-world things/people *)
datatype id = StudentNum of int
	    | name of string
		      * (string option)
		      * string

(* accurately modeling real world data with appropriate one of vs each of *)


(* Expression Trees *)
datatype exp = Constant of int
	     | Negate of exp
	     | Add of exp * exp
	     | Multiply of exp * exp

(* similar how a tail of a list contains another list *)

(* An expression in ML of type exp: *)
Add (Constant (10+9), Negate (Constant 4))

(* functions over recursive datatypes are usually recursive *)

fun number_of_adds e = (* exp -> int *)
    case e of
	Constant i => 0
      | Negate e2 => number_of_adds e2
      | Add(e1, e2) => 1 + number_of_adds e1 + number_of_adds e2
      | Multiply(e1, e2) => (eval e1) * (eval e2)
