(* recursion avoids mutation of local variables (including incrementing i) *)

(* CALL-STACKS
* -----------
* while a program runs, there is a call stack of function calls that have
* started but not yet returned
*   - Calling a function f pushes an instance of f on the stack
*   - When a call to f finishes, it is popped from the stack
*
* Stack-frames store information like the value of local variables and "what is
* left to do" in the function
*
* Due to recursion, multiple stack-frames may be calls to the same function
*
* TAIL CALLS
* ----------
* It is unnecessary to keep around a stack-frame just so it can get a callee's
* result and return it without any further evaluation 
*   - ML recognizes these situations and pops the caller before the call,
*   allowing callee to reuse the same stack space
*   - Along with other optimizations, this makes recursion in ML as efficient as
*   a loops in other languages (reasonable to assume that other functional
*   languages have this feature, too)
*
*)

(* ACCUMULATORS FOR TAIL RECURSION *)

(*
* A tail recursive function is one where all the recursive calls are tail calls
* so we have a situation where, after the recursion, there's no more work for the
* code to do
*
* Methodology:
*   - Create a helper function that takes an accumulator
*   - Old base case becomes initial accumulator
*   - New base case becomes final accumulator
*)

(* examples *)

fun fact n = 
    let fun aux(n, acc) =
           if n=0
           then acc
           else aux(n-1, acc * n)
    in
       aux(n, 1)
    end

val x = fact 3

(* reverse order of a list *)
fun rev xs =
    let fun aux(xs, acc) = 
           case xs of 
              [] => acc
            | x::xs' => aux(xs', x::acc)
    in
       aux(xs, [])
    end

(* recursively appending at every step can make a function significantly less
* efficient than you expect it to be *)

(* PERSPECTIVE ON TAIL RECURSION *)

(* Some situations are not appropriate for tail recursion:
*
*  - Functions that process trees
*  - Beware of premature optimization: favor clear, concise code; use less space
*  if inputs become large
*)

(* WHAT EXACTLY IS A TAIL CALL?
*   - "nothing left for caller to do"
*     - if the result of f x is the "immediate result" for the enclosing
*     function body, then f x is a tail call
*   - We can define "tail position" recursively
*     - Then a "tail call" is a function call in "tail position"
*
*  PRECISE DEFINITION:
*  A tail call is a function in tail position
*    - If an expression is not in tail position, then no subexpressions are
*    - In fun f p = e, the body e is in tail position
*    - If the conditional if e1 then e2 else e3 is in tail position, then e2 and e2 are in tail
*    position (but e1 is not). Similar for case expressions
*    - If let b1 ... bn in e end is in tail position, then e is in tail position
*    (but no binding expressions are)
*    - Function-call arguments e1 e2 are not in tail position
*    - Patterns that don't result in a value (eg, the boolean in an if then else
  *    statement) can't be in tail position because they are not expressions
  *    that result in a value
  *  - In nested functions, the nested functions cannot be tail expressions because
  *  the exterior functions still need to be called
*)
