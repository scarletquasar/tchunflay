module BidimensionalCanvas = struct
  class bdm_canvas = object
    val mutable bdm_matrix : char list = ['.']

    method pop =
      match bdm_matrix with
      | hd :: tl ->
        bdm_matrix <- tl;
        Some hd
      | [] -> None

    method push hd =
      bdm_matrix <- hd :: bdm_matrix
  end
end;;