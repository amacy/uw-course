(* pairs 

   syntax: (e1, e2)
   evaluaton e1 to v1 & e2 to v2... result is (v1, v2)
   type-checking: e1 has type ta & e2 has tb then the pair has type ta * tb *)

fun swap (pr : int*bool) =
    (#2 pr, #1 pr)

(* (int * int) * (int * int) -> int *)
fun sum_two_pairs ( pr1 : int*int, pr2 : int*int ) =
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

(* int * int - int * int *)
fun div_mod (x : int, y : int) =
    (x div y, x mod y)

fun sort_pair (pr : int * int) =
    if (#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)

(* tuples are pairs with n number of parts
   can be nested as desired *)
