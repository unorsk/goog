let group_anagrams strs =
  let map = Hashtbl.create (String.length strs) in
  
  let sort_string str =
    let chars = String.to_seq str |> List.of_seq in
    let sorted_chars = List.sort Char.compare chars in
    let sorted_str = String.of_seq (List.to_seq sorted_chars) in
    sorted_str
  in
  
  let add_to_map key value =
    if Hashtbl.mem map key then
      let existing_values = Hashtbl.find map key in
      Hashtbl.replace map key (value :: existing_values)
    else
      Hashtbl.add map key [value]
  in
  
  let rec iterate_strings strs =
    match strs with
    | [] -> ()
    | str :: rest ->
      let sorted_str = sort_string str in
      add_to_map sorted_str str;
      iterate_strings rest
  in
  
  iterate_strings strs;
  Hashtbl.fold (fun _ value acc -> value :: acc) map []