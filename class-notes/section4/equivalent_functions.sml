(*
two functions are equivalent if they have the same "observable behavior"
no matter how they are used anywhere in any program

given equivalent arguments, they:
  - product equivalent results
  - have the same (non-)termination behavior
  - mutate (non-local) memory in the same way
  - do the same input/output
  - raise the same exceptions

easier to be equivalent if:
  - there are fewer possible arguemnts, eg with  atype system & abstraction
  - we avoid side-effects: mutaton, input/output, and exceptions
    (eg, a functional language)
*)
