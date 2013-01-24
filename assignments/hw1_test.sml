use "hw1.sml";
(* helpers *)
val four_dates = [(1984, 7, 4), (2013, 1, 21), (1985, 5, 31), (1979, 2, 25)];
val three_dates = [(1984, 7, 4), (2013, 7, 21), (1985, 7, 31)];
val two_dates = [(1984, 7, 4), (2013, 1, 21)];
val two_months = [5, 7];
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
number_in_months(four_dates, two_months) = 2;
number_in_months(two_dates, two_months) = 1;
(* 4 *)
dates_in_month([], 7) = [];
dates_in_month(four_dates, 7) = [(1984, 7, 4)];
dates_in_month(three_dates, 7) = three_dates;
dates_in_month(two_dates, 5) = [];
(* 5 *)
dates_in_months(four_dates, two_months) = [(1985, 5, 31), (1984, 7, 4)];
dates_in_months(four_dates, []) = [];
dates_in_months(three_dates, two_months) = three_dates;
dates_in_months(two_dates, two_months) = [(1984, 7, 4)];
(* 6 *)
get_nth(["aaron", "elmore", "macy"], 1) = "aaron";
get_nth(["aaron", "elmore", "macy"], 2) = "elmore";
get_nth(["aaron", "elmore", "macy"], 3) = "macy";
(* 7 *)
date_to_string((1984, 7, 4)) = "July 4, 1984";
(* 8 *) (* assume all numbers are positive & sum < sum of list ints *)
number_before_reaching_sum(17, [7, 4, 5, 6]) = 3;
number_before_reaching_sum(17, [6, 5, 5, 6]) = 3;
number_before_reaching_sum(16, [7, 4, 5, 6]) = 2;
(* 9 *)
what_month(185) = 7;
what_month(32) = 2;
what_month(31) = 1;
(* 10 *)
