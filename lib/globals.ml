let range_func = Utils.range;;
let map_func = Utils.map;;

let range_list = range_func 32 126;;
let transform_in_char = fun (a) -> Char.chr a;;

let allowed_characters = map_func transform_in_char range_list;;
