
let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t ;;

let repeat_list lst n =
  let rec repeat acc lst n =
    if n <= 0 then acc
    else repeat (lst @ acc) lst (n - 1)
  in
  repeat [] lst n
  
let make_bdm_plane_base size = 
  let num_range = List.init size (fun i -> i + size) in
  let char_range = map (fun _ -> '.') num_range in
  let char_range_len = List.length char_range in
  let block_range = repeat_list char_range char_range_len in
  block_range
;;

let plane = make_bdm_plane_base 2 in
let str = String.of_seq (List.to_seq plane) in
let () = print_string str in
0
;;