module Ints = Set.Make(Int)
(* open Core.Std *)

let contains_duplicates (nums: int array) =
  let s = Ints.empty in
  match (Array.find_opt (fun e -> (
    if (Ints.exists (fun p -> p = e) s) then true else (
      (* this one won't work since the set is immutable *)
      Ints.add e s;
      false
    )
  )) nums) with
  | None -> false
  | Some _ -> true

  (* Array.sort (fun a b -> a - b) nums *)
  (* |> Array.fin *)
  (* false *)

let () =
  contains_duplicates [|2;3;4|]
  |> fun r -> print_endline (if r then "True" else "False")