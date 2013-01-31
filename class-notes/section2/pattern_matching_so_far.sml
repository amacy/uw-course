(* datatype bindings *)
datatype t = C1 of t1 | C2 of t2 | ... | Cn of tn

(*
Adds type t and constructors Ci of type ti -> t
  - Ci v is a value, i.e., the result "includes the tag"
  - a constructor is a function (sort of)

Omit "of t" for constructors that are just tags, no underlying data
  - Such a Ci is a value of type (not a function)

Given an expression of type t, use case expressions to:
  - See which variant (tag) it has
  - Extract underlying data once you know which variant
*)

case e of p1 => e1 
       |  p2 => e2
       | ...
       | pn => en 
(*
It's common for a case expression to appear as the entire body of a function,
but that's not necessary and it can appear anywhere

EVALUATION RULES:
-----------------

Evaluate e to a value, call it v 

Match v against each pattern in order they are written, 
then evaluate the corresponding piece in an environment 
"extended by the match"
*)
