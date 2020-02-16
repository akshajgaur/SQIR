open Qasm2sqir
open Printf

module E = ExtractedCode

let get_rz_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_Rz(_), _) -> 1 | _ -> 0) l);;

let rec get_x_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_X, _) -> 1 | _ -> 0) l);;
  
let rec get_h_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_H, _) -> 1 | _ -> 0) l);;
  
let rec get_cnot_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App2 (E.URzk_CNOT, _, _) -> 1 | _ -> 0) l);;

(* Only relevant for the benchmarks using the Clifford+T set. *)
let rec get_t_count' l a = 
  match l with
  | [] -> Some a
  | E.App1 (E.URzk_Rz(i), _) :: t -> 
      (match i with
       | 8192 | 24576 | 40960 | 57344 -> get_t_count' t (1 + a)
       | 16384 | 32768 | 49152 -> get_t_count' t a
       | _ -> None)
  | _ :: t -> get_t_count' t a;;
  
let get_t_count l = get_t_count' l 0;;  

if (Array.length Sys.argv <> 3)
then print_endline "Expected usage: voqc <prog> <out>"
else let fname = Sys.argv.(1) in
     let outf = Sys.argv.(2) in
     let _ = printf "./voqc %s %s\n" fname outf in
     let (p, n) = get_gate_list fname in
     let origT = match get_t_count p with
                 | None -> "N/A"
                 | Some x -> string_of_int x in
     let _ = printf "Original:\t Total %d, Rz %d, T %s, H %d, X %d, CNOT %d\n%!" 
               (List.length p) (get_rz_count p) origT (get_h_count p) (get_x_count p) (get_cnot_count p) in
     let p' = E.optimize p in
     let finalT = match get_t_count p' with
                 | None -> "N/A"
                 | Some x -> string_of_int x in
     printf "Final:\t Total %d, Rz %d, T %s, H %d, X %d, CNOT %d\n\n%!" 
               (List.length p') (get_rz_count p') finalT (get_h_count p') (get_x_count p') (get_cnot_count p');
     write_qasm_file outf p' n

   
