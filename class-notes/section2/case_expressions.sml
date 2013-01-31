fun f x = 
    case x of
	Pizza => 3
     |  Str s => *
     | TwoInts(i1,i2)  => i1 + i2   

(*

use case expressions to access 

patterns used for matching & introducing variable bindings
  - not an expression

you cannot reuse the same variable name multiple times in the same pattern

you can use pattern-matching to write your own testing & data extraction
functions if you must (but it's poor style)

case expressions must include all cases (& no duplicates)

*)
