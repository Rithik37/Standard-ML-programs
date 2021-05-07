fun is_older(x :int*int*int,y : int*int*int)=
    (#1 x) <( #1 y)
      orelse(#1 x = #1 y andalso #2 x < #2 y)
      orelse(#1 x = #1 y andalso #2 x = #2 y andalso #3 x < #3 y)

fun number_in_month(x :(int * int *int)list ,y:int)=
    if null x
    then 0
    else if #2(hd x)=y then 1+number_in_month(tl x,y)
    else number_in_month(tl x,y)

fun num_in_months(x :(int * int * int)list ,y:(int)list)=
    if null x
    then 0
    else number_in_month(x,hd y)+num_in_months(x,tl y)

fun dates_in_months(x :(int*int*int)list,y:int)=
    if null x
    then []
    else if #2 (hd x)=y
    then( hd x )::dates_in_months(tl x,y)
    else dates_in_months(tl x,y)
			
			
	
fun 

