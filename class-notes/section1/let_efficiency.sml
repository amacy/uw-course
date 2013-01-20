(* take a list of integers & return the largest number in the list *)
(* this works but isn't the best way to write this function *)
fun bad_max ( xs : int list ) = 
    if null xs
    then 0 (* empty list should evaluate to 0 *)
    else if null (tl xs)
    then hd xs
    else if hd xs > bad_max(tl xs)
    then hd xs
    else bad_max(tl xs)

(* passing helper function countup causes the bad_max() to be very, very slow
     - it recursively calls bad_max() exponentially more times than countdown *)

(* still bad that the empty list evaluates to zero but otherwise better: *)
fun good_max(xs : int list) = 
    if null xs
    then 0
    else if null (tl xs)
    then hd xs
    else
	(* for style, could also use a let-binding for (hd xs) *)
	let val tl_ans = good_max(tl xs)
	in
	    if hd xs > tl_ans
	    then hd xs
	    else tl_ans
	end
