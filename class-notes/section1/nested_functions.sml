(* helper function example: calling with 3 & 6 would return [3, 4, 5, 6] *)
(* fun count (from : int, to : int) =
    if from = to
    then to::[]
    else from :: count(from + 1, to)

fun countup_from1(x : int) = 
    count(1, x) *)

(* fun countup_from1(x : int) = 
    let
	fun count (from : int, to : int) =
	    if from = to
	    then to::[]
	    else from :: count(from + 1, to)
    in
	count(1, x)
    end 

can be rewritten as: *)

fun countup_from1(x : int) = 
    let
	fun count (from : int) =
	    if from = x
	    then x::[]
	    else from :: count(from + 1)
    in
	count(1)
    end 

(* "good style" to use nested functions when:
    - the function is unlikely to be used elsewhere
    - likely to be misused if available elsewhere
    - likely to be changed or removed later
 *)
