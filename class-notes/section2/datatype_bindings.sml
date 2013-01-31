(* third type of binding (after val & fun): datatype)

one of type because it's always made of the one of its constructors
*)

datatype mytype = TwoInts of int * int
                | Str of string
                | Pizza

(*
TwoInts, Str, Pizza are "constructors"

TwoInts : int * int -> mytype
Str : string -> mytype
Pizza : mytype

values have two parts: 
  1) variant: constructor used to make it (eg, TwoInts, Str, Pizza)
  2) data: the corresponding value

*)
