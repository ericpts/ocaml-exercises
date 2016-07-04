let length list = 
  let rec _length k list = 
  match list with
  | [] -> k
  | hd::tl -> _length (k + 1) tl
  in

  _length 0 list
;;

assert(length [ "a" ; "b" ; "c"] = 3);;

assert(length [] = 0);;
