(* function composition *)

fun compose(f,g) = fn x => f(g x)

(* is equivalent to: *)

f o g

(* of is the infix operator, using which functions will be evaluated from right to left. An alternative infix operator |> works from left to right, but isn't avaialble in ML but can be created created with infix !> (pipe throws an error in ML *)
