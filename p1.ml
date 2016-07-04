let rec last list = 
  match list with
  | [] -> None
  | x :: [] -> Some x
  | _ :: rs -> last rs;;

assert(last [ "a" ; "b" ; "c" ; "d" ] = Some "d");;
assert(last [] = None);;
