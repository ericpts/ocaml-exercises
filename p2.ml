let rec last_two list = 
  match list with
  | [] -> None
  | [x] -> None
  | [x; y] -> Some (x, y)
  | hd::tl -> last_two tl;;

assert(last_two [ "a" ; "b" ; "c" ; "d" ] = Some ("c", "d"));;
assert(last_two [ "a" ] = None);;
