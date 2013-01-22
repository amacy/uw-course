use "hw1.sml";
(* 1 *)
val test_is_older_true = is_older([1984, 7, 4], [2013, 1, 21]);
val test_is_older_false = is_older([2013, 1, 21], [1984, 7, 4]);
(* 2 *)
val three_dates_in_month = number_in_month([[1984, 7, 4], [2013, 7, 21], [1985, 7, 31]], 7);
val one_date_in_month = number_in_month([[1984, 7, 4], [2013, 1, 21]], 7);
val zero_dates_in_month = number_in_month([[1984, 7, 4], [2013, 1, 21]], 5);
