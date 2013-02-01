(* 
we can nest patterns as deep as we want 

_ is a pattern that matches everything

MORE NESTED PATTERNS:
---------------------
Whenever you have a variable that you're not using in the corresponding
branch, you can use underscore instead (better style)

- avoid nested case expressions (nested patterns are often better)

NESTED PATTERNS PRECISELY:
--------------------------
The semantics of pattern-matching takes a pattern p an da value v and decides
(1) does it match and (2) if so, what variable bindings are introduced.

Since patterns can nest, the definition is elegantly recursive, with a separate
rule for each kind of pattern. Some of the rules:

### Base cases:
- If p is a variable X, the match succeeds and x is bound to v
- If p is _, the match succeeds and no bindings are introduced
*)
