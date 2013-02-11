(* Another famous function: fold aka reduce, inject *)

fun fold (f,acc,xs) = 
    case xs of
	[] => acc
      | x::xs  => fold(f, f(acc,x), xs)

