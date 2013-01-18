(* contain bindings executed in order (& not available to previous bindings),
   just like bindings outside of let expressions *)

(* let bindings in body end *)

(* bindings declared in let only available in body of let expression 
   SCOPE - local variables *)

(* type of let expression is the type of the body *)


fun silly1 (z : int) =
    let
	val x = if z > 0 then z else 34
	val y = x + z + 9
    in
	if x > y then x * 2 else y * y (* int -> int *)
    end

fun silly2 () = 
    let 
	val x = 1
    in
	(let val x = 2 in x + 1 end) + (let val y = x + 2 in y + 1 end)
    end
(* in first nested let expression, x is shadowed and, therefore, = 2
   in the second nested let expression, x =1 *)

fun silly3 () =
    let 
	val x = (let val x = 5 in x + 10 end);
    in
	(x, let val x =2 in x end, let val x = 10
				   in let val x = 2 in x end end )
    end
(* evaluates to (15, 2, 2) *)
