(* 
append function has type 'a list * 'a list -> 'a list 
- even though 'a list can be any type of list, they all have to be the same type
- it's more general than string list * string list -> string list
  - can be used as any less general type (eg, int lists)
- it's not more general than int list * string lit -> int list

THE "MORE GENERAL" RULE:
A type t1 is more general than the type t2 if you can take t1, replace its type
vairable sconsistently and get t2

also, use of type synonyms and order of fields does not matter

''a list * ''a -> bool 
  - equality types that arise from using the = operator
*)
