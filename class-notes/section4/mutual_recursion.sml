(*
allow two functions to call each other:

use and keyword and put them next to each other:

fun f1 p1 = e1
and f2 p2 = e2
and f3 p3 = e3
EXAMPLE: finite state machine

Also:
datatype t1 = ...
and t2 = ...
and t3 = ...

Can have a "later" function pass itself to "earlier" function to accomplish mutual recursion:
  - not as fast, and can be bad style, but useful when and keyword can't be used

*)
