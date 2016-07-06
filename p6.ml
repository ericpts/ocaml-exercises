let is_palindrome list = 
  if list = List.rev list then
    true
  else
    false
;;

assert(is_palindrome ["x"; "a"; "m"; "a"; "x"]);;
assert(not(is_palindrome["a"; "b"]));;
