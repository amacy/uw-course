(* 
modules with the *same signatures* still define *different types*

so things like this do not type-check: 
  - Rational1.toString(Rational2.make_frac(9,6))
  - Rational3.toString(Rational2.make_frac(9,6))

... because different modules have different internal invariants & it doesn't make sense to mix and match libraries
*)
