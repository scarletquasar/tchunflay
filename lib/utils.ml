let range from until =
  List.init (until - from) (fun i -> i + from)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t;;