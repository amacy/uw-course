(* note: empty list shouldn't evaluate to 0 *)
fun old_max(xs : int list) = 
    if null xs
    then 0
    else if null (tl xs) (* prevents list of neg #s from evaluating to 0 *)
    then hd xs
    else
	(* for style, could also use a let-binding for (hd xs) *)
	let val tl_ans = old_max(tl xs)
	in
	    if hd xs > tl_ans
	    then hd xs
	    else tl_ans
	end

(* option is a new TYPE 
   similar to lists except they always have 0 or 1 elements *)

(* Building
   --------
   NONE has type 'a option (like [] has type 'a list)
   SOME e has a type t option if e has type t (like e::[]) 

   Accessing
   ---------
   isSome has type 'a option -> bool
     - takes option
        - returns true if SOME
        - false if NONE (similar to like null for lists)
   valOf has type 'a option -> 'a (exception if given NONE)
     - takes option
        - will raise exception if arg is NONE
        - will return option if arg is SOME *)

(* better: returns an int option *)
(* fn : int list -> int option *)
fun max1 (xs : int list) = 
    if null xs
    then NONE
    else
	let val tl_ans = max1(tl xs)
	in if isSome tl_ans andalso valOf tl_ans > hd xs
	   then tl_ans
	   else SOME (hd xs)
	end

fun max2 (xs : int list) =
    if null xs
    then NONE
    else
	let (* fine to assume arg nonempty b/c local *)
            (* int list -> int *)
	    fun max_nonempty (xs : int list) =
		if null (tl xs) 
		then hd xs
		else let val tl_ans = max_nonempty(tl xs)
		     in
			 if  hd xs > tl_ans
			 then hd xs
			 else tl_ans
		     end
	in
	    SOME (max_nonempty xs)
	end
