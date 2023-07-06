let top_k_freq_elems elems k =
  [1]

let () =
  let _ = List.map print_int (top_k_freq_elems  [1, 2, 3, 3, 1] 3) in
  print_endline ""