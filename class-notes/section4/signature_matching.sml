(*
structure Foo :> BAR

- every non-abstract type in BAR is provided in Foo
- every abstract type in BAR is provided in Foo in some way
- every val-binding in BAR is provided in Foo
  - type inside module doesn't have to be the same as outside
  - can be more general inside of the module
- every exception n BAR is provided in Foo
*)
