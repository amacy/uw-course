(* 1 *)

(* helpers *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* 1a *)
fun all_except_option(a_string, string_list) =
    let fun aux(string_list, acc) =
	    case string_list of
		[] => NONE 
	      | s::string_list' => if same_string(a_string, s)
				   then SOME (acc @ string_list')
				   else aux(string_list', s::acc) 
    in
	aux(string_list, [])
    end

(* 1b *)
fun get_substitutions1(substitutions, s) =
    case substitutions of
	[] => []
      | list_of_names::substitutions' => case all_except_option(s, list_of_names) of
					     NONE => [] @ get_substitutions1(substitutions', s)
					   | SOME names => names @ get_substitutions1(substitutions', s)

(* 1c *) 
(* Write a function get_substitutions2, which is like get_substitutions1 except it uses a tail-recursive
local helper function. *)
fun get_substitutions2(substitutions, s) =
    let fun aux(substitutions, acc) =
	    case substitutions of
		[] => []
	      | list_of_names::substitutions' => if all_except_option(s, list_of_names) = NONE
						 then aux(substitutions', acc)
						 else aux(substitutions', ((SOME (all_except_option(s, list_of_names))) @ acc))
    in
	aux(substitutions, [])
    end 


(* 1d *) (*
fun similar_names(substitutions, full_name) = *)


(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)

(*
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove
*)
(* put your solutions for problem 2 here *)
