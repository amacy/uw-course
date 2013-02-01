(* they have to be declared: *)

exception MyUndesirableCondition

(* so that later they can be raised: *)

raise MyUndesirableCondition

(* exceptions can carry values: *)

exception MyOtherException of int * int

raise MyOtherException(3, 4) (* passes data out to whoever's handling exception
*)

(* there's a difference between making an exception value (which is something of
type exn) and raising it *)

(* type exn can be passed to a function: *)

fun maxlist (xs, ec) = (* int list * exn -> int *)
    case xs of 
        [] => raise ex
      | x::[] => x
      | x::xs' => Int.max(x,maxlists(xs',ex))

(* catch/handle an exception and allow the program to return another value
* instead of raising an exception: e1 handle ex => e2 
* can have multiple branches for different exceptions *)

(* declaring an exception adds a constructor for type exn *)
