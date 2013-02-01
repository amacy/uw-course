(* 
in ML, you can't write a function that takes in both 3 tuples & 4 tuples 
(the type-checker can't figure out how wide the tuples are, and thus gives an
error - also why we specified the types in hw1 
*)

(* these functions are polymorphic: type of y can be anything *)
fun partial_sum (x, y, z) = (* type int * 'a * int -> int *)
    x + z

fun partial_name {first=x, middle=y, last=z} =
    x ^ " " ^ z

