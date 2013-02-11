fun curry x y = f (x,y)
fun uncurry f (x,y) = f x y 
fun other_curry f x y = f y x

(* currying actually slightly slower than tuples in ML, but that's a bit unusual for functional programming languages (not the case in OCaml, F#, Haskell) *)


