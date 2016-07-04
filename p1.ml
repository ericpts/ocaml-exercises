let rec last list = 
  match list with
  | [] -> None
  | x :: [] -> Some x
  | _ :: rs -> last rs;;
