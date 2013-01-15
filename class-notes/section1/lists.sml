(* all elements of a list have to have the same type *)

(* :: (called "cons operator") adds a value to the front of a list *)
val x = [7,8,9]
5::x (* -> [5,7,8,9] ... x remains unchanged *)
6::5::x (* -> [6,5,7,8,9] *)

(* adding a list of integers to a list of integers will produce an error, but you can add a list of intergers to a list of a list of integers *)

(* null is a function that takes a list as an argument & returns true if it's empty & false if it's not *)
val x = [7,8,9]
null x; (* false *)
null []; (* true *)

(* hd (head): first element of a list
   tl (tail): all element of a list except the first (and tl [9] returns [])
   hd & tl are functions that take a list as an argument and return those elements *)
hd x; (* 7 *)
tl x; (* [8,9] *)
hd tl 8; (* 8 *)
tl tl x; (* [9] *)

(* can't take hd or tl of [] *)

(* new types: int list, bool list, (int * int) list (can be nested) 

   empty list has type 'a list (pronounced alpha list) 
   the alpha can also have lots of types list *)

true::[] (* bool list *)
null; (* type: 'a list -> bool *)
hd; (* type: 'a list -> 'a *)
tl; (* type: 'a list -> 'a list *) 
