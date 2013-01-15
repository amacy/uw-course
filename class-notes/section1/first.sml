(* This is a comment. This is our first program. *)

val x = 34;
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x : int, y : int *)
(* dynamic environment: x -->, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x : int, y : int, z : int *)
(* dynamic environment: x -->, y --> 17, z --> 70 *)

val q = z + 1
(* static environment: x : int, y : int, z : int, q : int *)
(* dynamic environment: x -->, y --> 17, z --> 70, w --> 71 *)

val abs_of_z = if z < 0 then 0 - z else z; (* two braches had to both be same
                                              type (in this case, int) *)
(* abs_of_z : int *)
(* dynamic environment: ..., abs_of_z --> 70 *)

val abs_of_z_simpler = abs z; (* or abs(z) - parenthesis optional *)

(* NOTES:
  type checking (static environment) vs evaluation (dynamic environment) 
*)
