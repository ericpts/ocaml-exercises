
let rev ls = 
  let rec _rev remaining current = 
    match remaining with
    | [] -> current
    | hd::tl -> _rev tl (hd::current)
  in
  _rev ls []
;;

assert(rev ["a"; "b"; "c"] = ["c"; "b"; "a"]);;
