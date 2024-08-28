(* open Utils;; *)

module BidimensionalCanvas = struct
  class ['a] bdm_canvas = object
    val bdm_matrix_base : char list = ['.']

    method run = 
      let a = 1 in
      while true do
          let _a = a+1 in
          ()
      done
        
  end

  type 'a t_bdm_canvas = 'a bdm_canvas
end;;