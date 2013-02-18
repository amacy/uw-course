(*
A "signature" is a type for a module
  - what bindings does it have and what are their types
*)

(* signature SIGNAME = sig *types-for-bindings* end *)
signature MATHLIB =
sig
val fact : int -> int
val half_pi : int
val doubler : int -> int
end
(* can include variables, types, datatypes & exceptions defines in the module *)

(* structure MyModule :> SIGNAME = struct *bindings* end *)
structure MyMathLib :> MATHLIB =
struct
fun fact x = ...
val half_pi = Math.pi / 2
fun doubler x = x * 2
end

(* 
Module will not type-check unless it matches the signature 
Structures can be used for multiple modules

Modules are allowed to have things that aren't in the signature, it just has to have everything that is in the signature. Things it has that aren't in the signature are private - they can't be used outside of the module
*)
