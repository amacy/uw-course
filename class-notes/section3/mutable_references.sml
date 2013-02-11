(* 
mutation makes sense when it's the appropriate way to model real world data 

t ref is a type for anytime type (like t list)

  - ref e to create a reference with initial contents e
  - e1 := e2 to update contents
  - !e to retrieve contents (not negation)

val x = ref 42

x is immutable

*)
