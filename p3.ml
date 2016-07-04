let rec at k list = 
  match list with
  | [] -> None
  | [x] -> if k = 1 then Some x else None
  | hd::tl -> if k = 1 then Some hd else at (k - 1) tl;;
