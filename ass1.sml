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
			
			
	
fun dates_in_monthss(x :(int*int*int) list,y:int list)=
    if null y	    
    then []
    else dates_in_months(x,hd y)@ dates_in_monthss(x,tl y)

fun get_nth(s :string list,x:int)=
    if x=1
    then hd s
    else get_nth(tl s,x -1)

fun date_to_string(x:int*int* int)=
    let
	val name_of_months=["Jan","Feb","Mar","Apr","May","Jun","July","Aug","Sep","Oct","Nov","Dec"]
    in
	get_nth(name_of_months,#2 x)^ " " ^ Int.toString(#3 x)^ ","^Int.toString(#1 x)
    end

fun num_before_reaching_sum(sum :int,x : int list)=
    if hd x >= sum
    then 0
    else 1+num_before_reaching_sum(sum- (hd x),tl x)

	
fun what_month(x :int)=
    let val y=[31,28,31,30,31,30,31,31,30,31,30,31]
    in
	1+num_before_reaching_sum(x,y)
    end

fun month_range(x :int,y:int)=
    if x>y
    then []
    else what_month(x)::month_range(x+1,y)


				   

	

						

