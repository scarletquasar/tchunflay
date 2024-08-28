
let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t;;
  
let make_bdm_matrix_base size = 
  let num_range = List.init size (fun i -> i + size) in
  let char_range = map (fun _ -> '.') num_range in
  let block_range = char_range in
  block_range
;;

let () = Printf.printf "Hello world";;