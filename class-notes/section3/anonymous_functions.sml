(*
anonymous functions: good style to pass to higher-level functions (functions that won't be used elsewhere

syntax:
*)

fn x => 3 * x

(*
fn [args] => [function body]

this is an expression, not a function binding (which you wouldn't be able to pass to another function 

cannot be used for recursive function (since it can't be called recursively)
for non-recursive functions, a function binding is the same thing a variable binding = to an anonymous function
*)

