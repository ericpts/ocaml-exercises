let rec at k list = 
  match list with
  | [] -> None
  | [x] -> if k = 1 then Some x else None
  | hd::tl -> if k = 1 then Some hd else at (k - 1) tl;;

assert(at 3 [ "a" ; "b"; "c"; "d"; "e" ] =  Some "c");;

assert(at 3 [ "a" ] = None);;
