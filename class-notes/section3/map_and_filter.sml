(* "hall of fame"  higher order functions: map and filter *)

fun map(f, xs) = 
    case xs of 
	[] => []
      | x::xs' => (f x)::map(f, xs') 

(* ML has a library function for map & filter *)

fun filter(f, xs) = 
    case xs of
	[] => []
      | x::xs' => if f x
		  then x::(filter (f, xs'))
		  else filter(f, xs')
