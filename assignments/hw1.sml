(* 1 *)
fun is_older (date1 : int list, date2 : int list) =
    if hd date1 > hd date2
    then false
    else if hd date1 < hd date2
    then true
    else is_older (tl date1, tl date2)


(*
2. Write a function number_in_month that takes a list of dates and a month (i.e., an int) and returns
how many dates in the list are in the given month.
*)
(* 2 *)
fun number_in_month (dates : int list list, month : int) =
    let 
	val dates_in_month = []
	fun sort_dates () =
	    if hd dates = []
	    then dates_in_month
	    else
		if hd (tl (hd dates)) = month
		then hd dates :: dates_in_month (* recursion ends @ first month match *)
		else number_in_month(tl dates, month)
    in
	sort_dates()
    end



(*
3. Write a function number_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns the number of dates in the list of dates that are in any of the months in the list of months.
Assume the list of months has no number repeated. Hint: Use your answer to the previous problem.
4. Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a
list holding the dates from the argument list of dates that are in the month. The returned list should
contain dates in the order they were originally given.
5. Write a function dates_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns a list holding the dates from the argument list of dates that are in any of the months in
the list of months. Assume the list of months has no number repeated. Hint: Use your answer to the
previous problem and SML's list-append operator (@).
6. Write a function get_nth that takes a list of strings and an int n and returns the n
th
element of the
list where the head of the list is 1
st
. Do not worry about the case where the list has too few elements:
your function may apply hd or tl to the empty list in this case, which is okay.
7. Write a function date_to_string that takes a date and returns a string of the form January 20, 2013
(for example). Use the operator ^ for concatenating strings and the library function Int.toString
for converting an int to a string. For producing the month part, do not use a bunch of conditionals.
Instead, use a list holding 12 strings and your answer to the previous problem. For consistency, put a
comma following the day and use capitalized English month names: January, February, March, April,
May, June, July, August, September, October, November, December.
8. Write a function number_before_reaching_sum that takes an int called sum, which you can assume
is positive, and an int list, which you can assume contains all positive numbers, and returns an int.
You should return an int n such that the rst n elements of the list add to less than sum, but the rst
n + 1 elements of the list add to sum or more. Assume the entire list sums to more than the passed in
value; it is okay for an exception to occur if this is not the case.
9. Write a function what_month that takes a day of year (i.e., an int between 1 and 365) and returns
what month that day is in (1 for January, 2 for February, etc.). Use a list holding 12 integers and your
answer to the previous problem.
10. Write a function month_range that takes two days of the year day1 and day2 and returns an int list
[m1,m2,...,mn] where m1 is the month of day1, m2 is the month of day1+1, ..., and mn is the month
of day day2. Note the result will have length day2 - day1 + 1 or length 0 if day1>day2.
11. Write a function oldest that takes a list of dates and evaluates to an (int*int*int) option. It
evaluates to NONE if the list has no dates and SOME d if the date d is the oldest date in the list. 
12. Challenge Problem: Write functions number_in_months_challenge and dates_in_months_challenge
that are like your solutions to problems 3 and 5 except having a month in the second argument multiple
times has no more eect than having it once. (Hint: Remove duplicates, then use previous work.)
13. Challenge Problem: Write a function reasonable_date that takes a date and determines if it
describes a real date in the common era. A \real date" has a positive year (year 0 did not exist), a
month between 1 and 12, and a day appropriate for the month. Solutions should properly handle leap
years. Leap years are years that are either divisible by 400 or divisible by 4 but not divisible by 100.
(Do not worry about days possibly lost in the conversion to the Gregorian calendar in the Late 1500s.)
*)
