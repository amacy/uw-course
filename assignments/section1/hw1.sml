(* 1 *)
fun is_older (date1 : int * int * int, date2 : int * int * int) =
    if #1 date1 < #1 date2
    then true
    else if #1 date1 = #1 date2 andalso #2 date1 < #2 date2
    then true
    else if #1 date1 = #1 date2 andalso #2 date1 = #2 date2 andalso #3 date1 < #3 date2
    then true
    else false

(* 2 *)
fun number_in_month (dates : (int * int * int) list, month : int) =
    if dates = []
    then 0
    else if #2 (hd dates) = month
    then 1 + number_in_month(tl dates, month)
    else number_in_month(tl dates, month)

(* 3 *)
fun number_in_months (dates : (int * int * int) list, months : int list) =
    if null months
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months)

(* 4 *)
fun dates_in_month (dates : (int * int * int) list, month : int) =
    if dates = []
    then []
    else if #2 (hd dates) = month
    then hd dates :: dates_in_month(tl dates, month)
    else dates_in_month(tl dates, month)

(* 5 *)
fun dates_in_months (dates : (int * int * int) list, months : int list) =
    if null months
    then []
    else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

(* 6 *)
fun get_nth (strings : string list, n : int) =
    if n = 1
    then hd strings
    else get_nth(tl strings, n - 1)

(* 7 *)
fun date_to_string (date : int * int * int) =
    let 
	val months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    in
	get_nth(months, #2 date) ^ " " ^ Int.toString (#3 date) ^ ", " ^ Int.toString (#1 date)
    end

(* 8 *)
fun number_before_reaching_sum (sum : int, numbers : int list) =
    if hd numbers >= sum
    then 0
    else 1 + number_before_reaching_sum(sum - hd numbers, tl numbers)

(* 9 *)
fun what_month (day_of_year : int) =
    let
	val days_in_each_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
	number_before_reaching_sum(day_of_year, days_in_each_month) + 1
    end

(* 10 *)
fun month_range (day1 : int, day2 : int) =
    let 
	fun count (from : int, to : int) =
	    if from = to
	    then to :: []
	    else from :: count(from + 1, to)
    in
	if day1 > day2
	then []
	else count(what_month(day1), what_month(day2))
    end

(* 11 *)
fun oldest (dates : (int * int * int) list) =
    if null dates
    then NONE
    else
	let 
	    fun is_oldest (dates : (int * int * int) list) =
		if null (tl dates)
		then hd dates
		else if is_older(hd dates, hd (tl dates))
		then is_oldest(hd dates :: tl (tl dates))
		else is_oldest(tl dates)
	in
	    SOME (is_oldest(dates))
	end

(* 12. Challenge Problem: Write functions number_in_months_challenge and dates_in_months_challenge
that are like your solutions to problems 3 and 5 except having a month in the second argument multiple
times has no more effect than having it once. (Hint: Remove duplicates, then use previous work.) *)
(*
fun number_in_months_challenge (dates : (int * int * int) list, months : int list) =
    if null months
    then 0
    else number_in_month_challenge(dates, hd months) + number_in_months(dates, tl months)

fun dates_in_months_challenge (dates : (int * int * int) list, months : int list) =
    if null months
    then []
    else dates_in_month_challenge(dates, hd months) @ dates_in_months(dates, tl months)
*)
(* 13. Challenge Problem: Write a function reasonable_date that takes a date and determines if it
describes a real date in the common era. A \real date" has a positive year (year 0 did not exist), a
month between 1 and 12, and a day appropriate for the month. Solutions should properly handle leap
years. Leap years are years that are either divisible by 400 or divisible by 4 but not divisible by 100.
(Do not worry about days possibly lost in the conversion to the Gregorian calendar in the Late 1500s.) *)
