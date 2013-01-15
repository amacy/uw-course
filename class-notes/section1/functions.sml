
val x = 7

(* works only if y >= 0 *)
fun pow(x : int, y : int) =
    if y = 0
    then 1
    else x * pow(x, y - 1) (* type: int * int -> int *) (* int *)

fun cube(x : int) =
    pow(x, 3)

val sixtyfour = cube(4)

val fortytwo = pow(2, 2 + 2) + pow(4, 2) + cube(2) + 2

(* functions require parantheses unless there's exactly 1 arg *)

(* PART II ***********)

(* FUNCTION BINDINGS
   a function is a value
   a function isn't evaluated until it's called 
   arguments scoped to function 
   functions may not take variable numbers of arguments *)

(* All language constructs can be understood as:
   syntax rules
   type checking rules
   evaluation rules *)
