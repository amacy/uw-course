(*
BOOLEAN LOOSE ENDS
------------------
e1 andalso e2
- e1 7 e2 must have type bool
- if e1 is false e2 doesn't get evaluated

e1 orelse e2
not e1

unlike andalso and orelse, is a function

language does not *need* andalso, orelse, not (could use if/then/else)
 - it's more concise and, in this case, better style

if e
then true
else false

is the same thing as e!

COMPARISON OPERATOR LOOSE ENDS
------------------------------
For comparing int values: = <> > < >= <=
<> means not equal (or less than AND greater than)

* real is the type for floating point numbers
* > < >= <= can be used with real but not to compare an int with a real (doesn't type check)
* = <> can be used with any equality type (to be defined later) but not with real
* SHOULD NEVER compare floating point numbers for equality; instead, see if they're in a small range (epsilon) of each other


*)
