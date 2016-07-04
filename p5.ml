
let rev (ls: 'a list):  ('a list) = 
  let rec _rev (remaining: 'a list) (current: 'a list):  ('a list) = 
    match remaining with
    | [] -> current
    | hd::tl -> _rev tl current@[hd]
  in
  _rev ls []
;;

assert(rev ["a"; "b"; "c"] = ["c"; "b"; "a"]);;
