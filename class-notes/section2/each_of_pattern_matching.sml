(*
pattern matching works for records (and, thus, tuples) 

TUPLES:
======
the pattern (x1, ..., xn) introduces local variables xy to the environment 
that are compared to (v1, ..., vn)

RECORDS:
=======
{f1=x1, ..., fn=xn} matches {f1=v1, ..., fn=vn} (& fields can be reordered)

VAL-BINDING-PATTERNS
===================
val pattern = e
val-binding can use a pattern, not just a variable
(variables are one kind of pattern where the variable matches against the 
entire expression)
Good style for an each-of type
Bad style to do this when e is one of the constructors of a datatype binding
(you're neglecting the other branches & the built in advantages of case exps)

FUNCTION-ARGUMENT PATTERNS
=========================
- function arguments can be a pattern
*)
fun sum_triple (x, y, z) =
    x + y + z

fun full_name {first=x, middle=y, last=z} =
    x ^ " " ^ y ^ " " ^ z

(* every function in ML takes (and returns) exactly 1 argument (when we thought, earlier,
that we were passing three arguments, we were passing a tuple with 3 vals) *)

(* a function with nothing between the () is an argument of type unit and ()
is a pattern to match the onl yvalue of type unit *)

fun rotate_left (x, y, z) = (y, z, x)
fun rotate_right t = rotate_left(rotate_left t)

(* good language design because it makes it easy to pass values from one 
function to another *)
