use "hw1.sml";
(* helpers *)
val four_dates = [(1984, 7, 4), (2013, 1, 21), (1985, 5, 31), (1979, 2, 25)];
val three_dates = [(1984, 7, 4), (2013, 7, 21), (1985, 7, 31)];
val two_dates = [(1984, 7, 4), (2013, 1, 21)];
(* 1 *)
is_older((1984, 7, 4), (2013, 1, 21)) = true;
is_older((1984, 7, 4), (1984, 10, 21)) = true;
is_older((1984, 7, 4), (1984, 7, 21)) = true;
is_older((2013, 1, 21), (1984, 7, 4)) = false;
is_older((1984, 7, 4), (1984, 7, 4)) = false;
(* 2 *)
number_in_month(three_dates, 7) = 3;
number_in_month(two_dates, 7) = 1;
number_in_month(two_dates, 5) = 0;
number_in_month([], 5) = 0;
(* 3 *)
number_in_months(three_dates, []) = 0;
number_in_months(four_dates, [5, 7]) = 2;
number_in_months(two_dates, [5, 7]) = 1;
(* 4 *)
dates_in_month([], 7) = [];
dates_in_month(four_dates, 7) = [(1984, 7, 4)];
dates_in_month(three_dates, 7) = [(1984, 7, 4), (2013, 7, 21), (1985, 7, 31)];
dates_in_month(two_dates, 5) = [];
(* 5 *)
