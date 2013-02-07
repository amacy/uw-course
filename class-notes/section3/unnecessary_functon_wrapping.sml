(* refers to unnecessarily wrapping a function in an anonymous function *)

(* if you want to make libary functions easier to remember, don't do: *)
fun rev xs = List.rev xs

(* do instead: *)
val rev = List.rev

(* they're equivalent *)
