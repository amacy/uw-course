(* 1a *)
fun all_except_option(a_string, string_list) =
    let fun same_string(s1 : string, s2 : string) =
	    s1 = s2
	fun aux(string_list, acc) =
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
fun get_substitutions2(substitutions, s) =
    let fun aux(substitutions, acc) =
	    case substitutions of
		[] => acc
	      | list_of_names::substitutions' => case all_except_option(s, list_of_names) of
						     NONE => aux(substitutions', acc)
						  | SOME names => aux(substitutions', acc @ names)
    in
	aux(substitutions, [])
    end 

(* 1d *)
fun similar_names(substitutions, full_name) =
    let fun replace_first_names(names) =
	    case names of
		[] => []
	     | name::names' => case full_name of 
				    { first = f, middle = m, last = l } => [{ first = name, middle = m, last = l }] @replace_first_names(names')
	fun first_name() =
	    case full_name of 
		{ first = f, middle = m, last = l } => f
    in
	case get_substitutions2(substitutions, first_name()) of
	    [] => [full_name]
	  | matched_names => [full_name] @ replace_first_names(matched_names)
    end

(* 2 *)
(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* 2a *)
fun card_color(playing_card) =
    case playing_card of
	 (Clubs, _) => "Black"
      | (Diamonds, _) => "Red"
      | (Hearts, _) => "Red"
      | (Spades, _) => "Black"
