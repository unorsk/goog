let product_except_self (arr: int list) =
  let (product: int) = List.fold_left (fun acc curr -> curr * acc) 1 arr in
  List.map (fun e -> if e = 0 then product else product / e) arr

let () =
  let r = product_except_self [-1;1;0;-3;3] in
  List.iter print_int r;;