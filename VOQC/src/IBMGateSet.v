Require Export UnitaryListRepresentation.
Require Export NonUnitaryListRepresentation.
Require Export QArith.
Require Export ZArith.BinInt.
Require Export Reals.ROrderedType.
Require Export Reals.Ratan.

Local Open Scope Z_scope.
Local Open Scope R_scope.
Local Open Scope matrix_scope.
Local Open Scope ucom_scope.

(** RzQ Gate Set **)

Module IBMGateSet <: GateSet.

(* In our optimizer we use the gate set {H, X, RzQ, CNOT} where RzQ is
   rotation about the z-axis by i * PI / (2 ^ k) for integer i. We'll 
   call this the RzQ gate set. *)

Inductive IBM_Unitary : nat -> Set := 
  | UIBM_U1 (a : R)     : IBM_Unitary 1 
  | UIBM_U2 (a b : R)   : IBM_Unitary 1 
  | UIBM_U3 (a b c : R) : IBM_Unitary 1 
  | UIBM_CNOT           : IBM_Unitary 2.
Definition U := IBM_Unitary.

Definition match_gate {n} (u u' : U n) : bool :=
  match u, u' with
  | UIBM_CNOT, UIBM_CNOT            => true
  | UIBM_U1 q, UIBM_U1 q'           => Reqb q q'
  | UIBM_U2 a b, UIBM_U2 a' b'      => (Reqb a a') && (Reqb b b')
  | UIBM_U3 a b c, UIBM_U3 a' b' c' => (Reqb a a') && (Reqb b b') && (Reqb c c')
  | _, _ => false
  end.

Definition to_base {n} (u : U n) :=
  match u with
  | UIBM_U1 a     => U_R 0 0 a
  | UIBM_U2 a b   => U_R (PI / 2) a b
  | UIBM_U3 a b c => U_R a b c
  | UIBM_CNOT     => U_CNOT
  end.

Lemma match_gate_implies_eq : forall n (u u' : U n), 
  match_gate u u' = true -> to_base u = to_base u'. 
Proof.
  intros n u u' H.
  dependent destruction u; dependent destruction u';
  auto; inversion H. 
  simpl.
  apply Reqb_eq in H1.
  rewrite H1. reflexivity.
  apply andb_true_iff in H1. destruct H1.
  apply Reqb_eq in H0. apply Reqb_eq in H1.
  rewrite H0, H1. reflexivity.
  apply andb_true_iff in H1. destruct H1.
  apply andb_true_iff in H0. destruct H0.
  apply Reqb_eq in H0. 
  apply Reqb_eq in H1.
  apply Reqb_eq in H2.
  rewrite H0, H1, H2. reflexivity.
Qed.

End IBMGateSet.
Export IBMGateSet.

Module IBMProps := UListRepresentationProps IBMGateSet.
Export IBMProps.

(* Useful shorthands. *)
Definition U1 {dim} a q := @App1 _ dim (UIBM_U1 a) q.
Definition U2 {dim} a b q := @App1 _ dim (UIBM_U2 a b) q.
Definition U3 {dim} a b c q := @App1 _ dim (UIBM_U3 a b c) q.
Definition CNOT {dim} q1 q2 := @App2 _ dim UIBM_CNOT q1 q2.
Definition IBM_ucom dim := ucom IBM_Unitary dim.
Definition IBM_ucom_l dim := gate_list IBM_Unitary dim.

(* u1 ; u1 → u1 *)
(* Technically, we could prove all of these without the q < dim condition.
   I was just feeling unmotivated to destruct on dim =? 0.
   I should write a tactic to do this... *)
Lemma combine_u1_u1: forall {dim:nat} (a a' : R) (q : nat), 
  (q < dim)%nat ->
  [@U1 dim a q] ++ [U1 a' q] =l= [U1 (a + a') q].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* u1 ; u2 → u2 *)
Lemma combine_u1_u2: forall {dim:nat} (a a' b : R) (q : nat), 
  (q < dim)%nat ->
  [@U1 dim a q] ++ [U2 a' b q] =l= [U2 a' (a + b) q].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* u2 ; u1 → u2 *)
Lemma combine_u2_u1: forall {dim:nat} (a a' b : R) (q : nat), 
  (q < dim)%nat ->
  [@U2 dim a b q] ++ [U1 a' q] =l= [U2 (a + a') b q].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* u1 ; u3 → u3 *)
Lemma combine_u1_u3: forall {dim:nat} (a a' b c : R) (q : nat), 
  (q < dim)%nat ->
  [@U1 dim a q] ++ [U3 a' b c q] =l= [U3 a' b (a + c) q].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* u3 ; u1 → u3 *)
Lemma combine_u3_u1: forall {dim:nat} (a a' b c : R) (q : nat), 
  (q < dim)%nat ->
  [@U3 dim a b c q] ++ [U1 a' q] =l= [U3 a (a' + b) c q].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* u2 ; u2 → u3 *)
Lemma combine_u2_u2: forall {dim} (a b a' b' : R) (q : nat), 
  (q < dim)%nat ->
  ([@U2 dim a b q] ++ [U2 a' b' q]) ≅l≅ ([U3 (PI - (a + b')) (a' + PI/2) (b + PI/2) q]).
Proof.
  intros.
  unfold uc_cong_l, uc_cong; simpl.
  exists ((a + b' - PI) / 2).
  autorewrite with eval_db.
  2: lia.
  gridify.
  rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  - group_Cexp. 
    replace ((a + b' - PI) / 2) with (- (PI / 2 - (a + b') / 2)) by lra.
    replace ((PI - (a + b')) / 2) with (PI / 2 - (a + b') / 2) by lra.
    unfold Cexp.
    rewrite <- cos_sym, sin_antisym.
    rewrite sin_shift, cos_shift.
    unfold Cplus, Cmult; simpl; autorewrite with R_db.
    replace (PI * / 2 * / 2) with (PI / 4) by lra.
    rewrite cos_PI4, sin_PI4.
    repeat rewrite Rmult_assoc.
    replace ((1 / √ 2) * (1 / √ 2))%R with (1 / 2)%R.
    replace (sin ((a + b') * / 2) * sin ((a + b') * / 2))
      with (1 / 2 - cos (2 * ((a + b') / 2)) / 2).
    replace (- (cos ((a + b') * / 2) * sin ((a + b') * / 2))) 
      with (- sin (2 * ((a + b') / 2)) / 2).
    replace (2 * ((a + b') / 2)) with (a + b') by lra.
    lca.
    rewrite sin_2a. lra.
    rewrite cos_2a_sin. lra.
    field_simplify_eq. rewrite pow2_sqrt. reflexivity. lra.
    nonzero.
  - group_Cexp. 
    replace ((a + b' - PI) / 2 + (b + PI / 2)) with ((a + b') / 2 + b) by lra.
    replace ((PI - (a + b')) / 2) with (PI / 2 - (a + b') / 2) by lra.
    rewrite <- 2 Cmult_assoc, (Cmult_comm (cos _)).
    rewrite <- Cmult_plus_distr_r.
    unfold Cexp.
    rewrite sin_shift.
    unfold Cplus, Cmult; simpl; autorewrite with R_db.
    replace (PI * / 2 * / 2) with (PI / 4) by lra.
    rewrite cos_PI4, sin_PI4.
    replace ((1 / √ 2) * (1 / √ 2))%R with (1 / 2)%R.
    rewrite Rplus_assoc, (Rplus_comm b b'), <- Rplus_assoc.
    rewrite 2 (cos_plus _ b).
    rewrite 2 (sin_plus _ b).
    repeat rewrite Rminus_unfold.
    repeat rewrite Rmult_plus_distr_r. 
    repeat rewrite (Rmult_comm (_ (_ * / _ + _))). 
    repeat rewrite <- Ropp_mult_distr_l.
    repeat rewrite Rmult_assoc.
    replace (cos (a * / 2 + b' * / 2) * cos (a * / 2 + b' * / 2))
      with (cos (2 * ((a + b') / 2)) / 2 + 1 / 2).
    replace (sin (a * / 2 + b' * / 2) * cos (a * / 2 + b' * / 2))
      with (sin (2 * ((a + b') / 2)) / 2).
    replace (2 * ((a + b') / 2)) with (a + b') by lra.
    lca.
    rewrite sin_2a. 
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    rewrite cos_2a_cos.
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    field_simplify_eq. rewrite pow2_sqrt. reflexivity. lra.
    nonzero.
  - group_Cexp. 
    replace ((a + b' - PI) / 2 + (a' + PI / 2)) with ((a + b') / 2 + a') by lra.
    replace ((PI - (a + b')) / 2) with (PI / 2 - (a + b') / 2) by lra.
    rewrite <- 2 Cmult_assoc, (Cmult_comm (cos _)).
    rewrite <- Cmult_plus_distr_r.
    unfold Cexp.
    rewrite sin_shift.
    unfold Cplus, Cmult; simpl; autorewrite with R_db.
    replace (PI * / 2 * / 2) with (PI / 4) by lra.
    rewrite cos_PI4, sin_PI4.
    replace ((1 / √ 2) * (1 / √ 2))%R with (1 / 2)%R.
    rewrite (Rplus_comm a' b'), <- Rplus_assoc.
    rewrite 2 (cos_plus _ a').
    rewrite 2 (sin_plus _ a').
    repeat rewrite Rminus_unfold.
    repeat rewrite Rmult_plus_distr_r. 
    repeat rewrite (Rmult_comm (_ (_ * / _ + _))). 
    repeat rewrite <- Ropp_mult_distr_l.
    repeat rewrite Rmult_assoc.
    replace (cos (a * / 2 + b' * / 2) * cos (a * / 2 + b' * / 2))
      with (cos (2 * ((a + b') / 2)) / 2 + 1 / 2).
    replace (sin (a * / 2 + b' * / 2) * cos (a * / 2 + b' * / 2))
      with (sin (2 * ((a + b') / 2)) / 2).
    replace (2 * ((a + b') / 2)) with (a + b') by lra.
    lca.
    rewrite sin_2a. 
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    rewrite cos_2a_cos.
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    field_simplify_eq. rewrite pow2_sqrt. reflexivity. lra.
    nonzero.
  - group_Cexp. 
    replace ((a + b' - PI) / 2 + (a' + PI / 2 + (b + PI / 2))) 
      with (PI / 2 + (a + b') / 2 + a' + b) by lra.
    replace ((PI - (a + b')) / 2) with (PI / 2 - (a + b') / 2) by lra.
    unfold Cexp.
    repeat rewrite Rplus_assoc.
    rewrite cos_shift, <- cos_sin. 
    replace (cos (PI / 2 + ((a + b') / 2 + (a' + b)))) 
      with (- sin ((a + b') / 2 + (a' + b))).
    unfold Cplus, Cmult; simpl; autorewrite with R_db.
    replace (PI * / 2 * / 2) with (PI / 4) by lra.
    rewrite cos_PI4, sin_PI4.
    repeat rewrite Rmult_assoc.
    replace ((1 / √ 2) * (1 / √ 2))%R with (1 / 2)%R.
    replace (a + (b + (a' + b'))) with (a + b' + (a' + b)) by lra.
    rewrite 2 (cos_plus _ (a' + b)).
    rewrite 2 (sin_plus _ (a' + b)).
    repeat rewrite Rminus_unfold.
    repeat rewrite Rmult_plus_distr_r. 
    repeat rewrite (Rmult_comm (_ (_ * / _ + _))). 
    repeat rewrite <- Ropp_mult_distr_l.
    repeat rewrite Rmult_assoc.
    replace (sin (a * / 2 + b' * / 2) * sin (a * / 2 + b' * / 2))
      with (1 / 2 - cos (2 * ((a + b') / 2)) / 2).
    replace (cos (a * / 2 + b' * / 2) * sin (a * / 2 + b' * / 2))
      with (sin (2 * ((a + b') / 2)) / 2).
    replace (2 * ((a + b') / 2)) with (a + b') by lra.
    rewrite (Rplus_comm b a'). 
    lca.
    rewrite sin_2a. 
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    rewrite cos_2a_sin.
    replace (a * / 2 + b' * / 2) with ((a + b') / 2) by lra.
    lra.
    field_simplify_eq. rewrite pow2_sqrt. reflexivity. lra.
    nonzero.
    rewrite sin_cos. lra.
Qed.

Lemma cos_1_implies_sin_0 : forall x, cos x = 1 -> sin x = 0.
Proof.
  intros.
  specialize (sin2_cos2 (x)) as H1. 
  rewrite H in H1.
  replace 1² with 1 in H1 by (unfold Rsqr; lra).
  assert ((sin x)² = 0) by lra.
  apply Rsqr_0_uniq in H0. 
  assumption.
Qed.

Lemma cos_1_cos_half: forall (x:R), cos x = 1 -> cos (x / 2) = 1 \/ cos (x / 2) = -1.
Proof.
  intros x Hcos.
  apply cos_1_implies_sin_0 in Hcos as Hsin. 
  replace x with (2 * (x / 2)) in Hsin by lra.
  rewrite sin_2a in Hsin.
  assert (sin (x / 2) * cos (x / 2) = 0) by lra.
  apply Rmult_integral in H.
  destruct H.
  specialize (sin2_cos2 (x / 2)) as H1.
  rewrite H in H1.
  replace 0² with 0 in H1 by (unfold Rsqr; lra).
  assert ((cos (x / 2))² = 1) by lra.
  rewrite Rsqr_pow2 in H0.
  apply pow_R1 in H0. 
  destruct H0.
  assert ((cos (x / 2)) < 0 \/ cos (x / 2) >= 0) by lra.
  destruct H2.
  apply Rabs_left in H2.
  right. lra.
  apply Rabs_right in H2.
  left. lra.
  inversion H0.
  replace x with (2 * (x / 2)) in Hcos by lra.
  rewrite cos_2a_cos in Hcos.
  rewrite H in Hcos. lra.
Qed. 

Lemma cos_1_sin_half: forall (x:R), cos x = 1 -> sin (x / 2) = 0.
Proof.
  intros x Hcos.
  apply cos_1_implies_sin_0 in Hcos as Hsin. 
  replace x with (2 * (x / 2)) in Hsin by lra.
  rewrite sin_2a in Hsin.
  assert (sin (x / 2) * cos (x / 2) = 0) by lra.
  apply Rmult_integral in H.
  destruct H.
  assumption.
  replace x with (2 * (x / 2)) in Hcos by lra.
  rewrite cos_2a_cos in Hcos.
  rewrite H in Hcos. lra.
Qed. 

Lemma sin_1_half: forall (x:R), sin x = 1 -> 
      (cos (x / 2) = 1 / √ 2 /\ sin (x / 2) = 1 / √ 2)
            \/ (cos (x / 2) = - 1 / √ 2 /\ sin (x / 2) = - 1 / √ 2).
Proof.
intros.
assert (cos x = 0).
specialize (sin2_cos2 (x)) as H1. 
rewrite H in H1.
assert (1² = 1).
unfold Rsqr. lra. rewrite H0 in H1.
assert ((cos x)² = 0) by lra.
apply Rsqr_0_uniq in H2. assumption.
assert (x = 2 * (x / 2)) by lra.
rewrite H1 in H. rewrite H1 in H0.
rewrite sin_2a in H.
assert (sin (x / 2) * cos (x / 2) = 1 / 2) by lra.
assert (H3 := H0).
rewrite cos_2a_cos in H0.
rewrite cos_2a_sin in H3.
assert (cos (x / 2) * cos (x / 2) = 1 / 2) by lra.
assert (sin (x / 2) * sin (x / 2) = 1 / 2) by lra.
assert (cos (x / 2) < 0 \/ 0 <= cos (x / 2)) by lra.
assert (sin (x / 2) < 0 \/ 0 <= sin (x / 2)) by lra.
destruct H6. destruct H7.
assert (0 < - cos (x / 2)) by lra.
assert (0 < - sin (x / 2)) by lra.
assert ((- cos (x / 2)) * (- cos (x / 2)) = 1 / 2) by lra.
assert ((- sin (x / 2)) * (- sin (x / 2)) = 1 / 2) by lra.
apply  sqrt_lem_1 in H10.
apply  sqrt_lem_1 in H11.
rewrite  sqrt_div_alt in H10.  rewrite sqrt_div_alt in H11.
rewrite sqrt_1 in H10. rewrite sqrt_1 in H11.
right. lra. lra. lra. lra. lra. lra. lra.
assert (0 < - cos (x / 2)) by lra.
assert ((- cos (x / 2)) * (- cos (x / 2)) = 1 / 2) by lra.
apply  sqrt_lem_1 in H5.
apply  sqrt_lem_1 in H9.
rewrite <- H5 in H2.
assert (cos (x / 2) = - √ (1 / 2)) by lra.
rewrite H10 in H2.
assert (√ (1 / 2) * - √ (1 / 2) = - (√ (1 / 2) * √ (1 / 2))) by lra.
rewrite H11 in H2.
rewrite sqrt_sqrt in H2. lra. lra. lra.  lra. lra. assumption.
destruct H7.
assert (0 < - sin (x / 2)) by lra.
assert ((- sin (x / 2)) * (- sin (x / 2)) = 1 / 2) by lra.
apply  sqrt_lem_1 in H4.
apply  sqrt_lem_1 in H9.
rewrite <- H4 in H2.
assert (sin (x / 2) = - √ (1 / 2)) by lra.
rewrite H10 in H2.
assert (- √ (1 / 2) * √ (1 / 2) = - (√ (1 / 2) * √ (1 / 2))) by lra.
rewrite H11 in H2.
rewrite sqrt_sqrt in H2. lra. lra. lra.  lra. lra. assumption.
apply  sqrt_lem_1 in H4.
apply  sqrt_lem_1 in H5.
left. split. rewrite <- H4.
rewrite  sqrt_div_alt. rewrite sqrt_1. reflexivity. lra.
rewrite <- H5.
rewrite  sqrt_div_alt. rewrite sqrt_1. reflexivity. lra.
lra. lra. lra. assumption.
Qed. 

Lemma sin_neg_1_half: forall (x:R), sin x = - 1 -> 
      (cos (x / 2) = - 1 / √ 2 /\ sin (x / 2) = 1 / √ 2)
            \/ (cos (x / 2) = 1 / √ 2 /\ sin (x / 2) = - 1 / √ 2).
Proof.
intros.
assert (cos x = 0).
specialize (sin2_cos2 (x)) as H1. 
rewrite H in H1.
assert ((-1)² = 1).
unfold Rsqr. lra. rewrite H0 in H1.
assert ((cos x)² = 0) by lra.
apply Rsqr_0_uniq in H2. assumption.
assert (x = 2 * (x / 2)) by lra.
rewrite H1 in H. rewrite H1 in H0.
rewrite sin_2a in H.
assert (sin (x / 2) * cos (x / 2) = - 1 / 2) by lra.
assert (H3 := H0).
rewrite cos_2a_cos in H0.
rewrite cos_2a_sin in H3.
assert (cos (x / 2) * cos (x / 2) = 1 / 2) by lra.
assert (sin (x / 2) * sin (x / 2) = 1 / 2) by lra.
assert (cos (x / 2) < 0 \/ 0 <= cos (x / 2)) by lra.
assert (sin (x / 2) < 0 \/ 0 <= sin (x / 2)) by lra.
destruct H6. destruct H7.
assert (0 < - cos (x / 2)) by lra.
assert (0 < - sin (x / 2)) by lra.
assert ((- cos (x / 2)) * (- cos (x / 2)) = 1 / 2) by lra.
assert ((- sin (x / 2)) * (- sin (x / 2)) = 1 / 2) by lra.
apply  sqrt_lem_1 in H10.
apply  sqrt_lem_1 in H11.
assert (cos (x / 2) = - √ (1 / 2)) by lra.
assert (sin (x / 2) = - √ (1 / 2)) by lra.
rewrite H12 in H2. rewrite H13 in H2.
assert (√ (1 / 2) * √ (1 / 2) = -1 / 2) by lra.
rewrite sqrt_sqrt in H14.
1 - 6: lra.
assert (0 < - cos (x / 2)) by lra.
assert ((- cos (x / 2)) * (- cos (x / 2)) = 1 / 2) by lra.
apply sqrt_lem_1 in H9. apply sqrt_lem_1 in H5.
assert (cos (x / 2) = - √ (1 / 2)) by lra.
left. split. rewrite  sqrt_div_alt in H10.
rewrite sqrt_1 in H10. lra. lra.
rewrite sqrt_div_alt in H5. rewrite sqrt_1 in H5.
1 - 6: lra.
destruct H7.
assert (0 < - sin (x / 2)) by lra.
assert ((- sin (x / 2)) * (- sin (x / 2)) = 1 / 2) by lra.
apply  sqrt_lem_1 in H9.
apply  sqrt_lem_1 in H4.
right. split.
rewrite <- H4.
rewrite sqrt_div_alt. rewrite sqrt_1. reflexivity.
lra.
rewrite sqrt_div_alt in H9. rewrite sqrt_1 in H9.
assert (sin (x / 2) = - 1 / √ 2) by lra.
1 - 6: lra.
apply  sqrt_lem_1 in H4.
apply  sqrt_lem_1 in H5.
rewrite <- H4 in H2. 
rewrite <- H5 in H2.
rewrite sqrt_sqrt in H2.
1-6: lra.
Qed. 

(* if u3's first argument is 0 mod 2π then it's a u1 gate *)
Lemma u3_to_u1: forall {dim:nat} (a b c : R) (q : nat),
  (q < dim)%nat -> 
  cos a = 1 -> 
  [@U3 dim a b c q] ≅l≅ [U1 (b + c) q].
Proof.
  intros.
  unfold uc_cong_l, uc_cong; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  apply cos_1_cos_half in H0 as H.
  apply cos_1_sin_half in H0.
  destruct H.
  - exists 0.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: autorewrite with R_db C_db Cexp_db trig_db; auto.
  - exists PI.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: autorewrite with R_db C_db Cexp_db trig_db; auto.
    lca.
Qed.

(* if u3's first argument is PI/2 mod 2π then it's a u2 gate *)
Lemma u3_to_u2: forall {dim:nat} (a b c : R) (q : nat), 
  (q < dim)%nat -> 
  sin a = 1 -> 
  [@U3 dim a b c q] ≅l≅ [U2 b c q]. 
Proof.
  intros.
  unfold uc_cong_l, uc_cong; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  apply sin_1_half in H0.
  destruct H0 as [[? ?] | [? ?]]. 
  - exists 0.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: replace (PI / 2 / 2) with (PI / 4) by lra.
    all: try rewrite cos_PI4; try rewrite sin_PI4.
    all: autorewrite with R_db C_db Cexp_db trig_db; auto.
  - exists PI.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: replace (PI / 2 / 2) with (PI / 4) by lra.
    all: try rewrite cos_PI4; try rewrite sin_PI4.
    all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* if u3's first argument is -PI/2 mod 2π then it's a u2 gate *)
Lemma u3_to_u2_neg: forall {dim:nat} (a b c : R) (q : nat), 
  (q < dim)%nat -> 
  sin a = -1 -> 
  [@U3 dim a b c q] ≅l≅ [U2 (b + PI) (c - PI) q].
Proof.
  intros.
  unfold uc_cong_l, uc_cong; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  apply sin_neg_1_half in H0.
  destruct H0 as [[? ?] | [? ?]]. 
  - exists PI.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: replace (PI / 2 / 2) with (PI / 4) by lra.
    all: try rewrite cos_PI4; try rewrite sin_PI4.
    all: autorewrite with R_db C_db Cexp_db trig_db; lca.
  - exists 0.
    rewrite <- Mscale_kron_dist_l, <- Mscale_kron_dist_r.
    do 2 (apply f_equal2; try reflexivity).
    unfold rotation.
    solve_matrix.
    all: try rewrite H0; try rewrite H.
    all: replace (PI / 2 / 2) with (PI / 4) by lra.
    all: try rewrite cos_PI4; try rewrite sin_PI4.
    all: autorewrite with R_db C_db Cexp_db trig_db; lca.
Qed.

(* if u1's argument is 0 mod 2π then it's a SKIP *)
Lemma u1_to_skip: forall {dim:nat} (a : R) (q : nat), 
  (q < dim)%nat -> 
  cos a = 1 -> 
  [@U1 dim a q] =l= [].
Proof.
  intros.
  unfold uc_equiv_l, uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  unfold rotation.
  solve_matrix.
  all: autorewrite with R_db C_db Cexp_db trig_db; auto.
  unfold Cexp.
  rewrite H0, (cos_1_implies_sin_0 _ H0).
  lca.
Qed.

(* The code below is fairly direct translation of Qiskit's 'Quaternion' class.
   https://qiskit.org/documentation/_modules/qiskit/quantum_info/operators/quaternion.html *)

(* Note: we should be using a matrix library instead, but since everything 
   is fixed size tuples are fine for now. *)
Definition quaternion : Type := R * R * R * R.
Definition rotation_matrix : Type := (R * R * R) * (R * R * R) * (R * R * R).

(* Multiply two quaternions. *)
Definition mult (q p : quaternion) : quaternion :=
  match q with (qw, qx, qy, qz) =>
  match p with (pw, px, py, pz) =>
  (qw * pw - qx * px - qy * py - qz * pz,
   qw * px + qx * pw + qy * pz - qz * py,
   qw * py - qx * pz + qy * pw + qz * px,
   qw * pz + qx * py - qy * px + qz * pw)
  end end.

(* Normalize a quaternion. *)
Definition norm (q : quaternion) : R :=
  match q with (qw, qx, qy, qz) =>
  sqrt (qw * qw + qx * qx + qy * qy + qz * qz)
  end.

Definition normalize (q : quaternion) : quaternion :=
  match q with (qw, qx, qy, qz) =>
  (qw / norm q, qx / norm q, qy / norm q, qz / norm q)
  end.

(* Convert a unit-length quaternion to a rotation matrix. *)
Definition to_matrix (q : quaternion) : rotation_matrix :=
  match q with
  (w, x, y, z) =>
    ((1 - 2*y*y - 2*z*z, 2*x*y - 2*z*w, 2*x*z + 2*y*w), 
     (2*x*y + 2*z*w, 1 - 2*x*x - 2*z*z, 2*y*z - 2*x*w), 
     (2*x*z - 2*y*w, 2*y*z + 2*x*w, 1 - 2*x*x - 2*y*y))
  end.

(* It appears that a Boolean comparison operator is not defined over Reals.
   I'll be asserting that such an operator exists until we come up with a
   better solution. *)
Parameter Rleb : R -> R -> bool. 
Parameter Rltb : R -> R -> bool.
Infix "<=?" := Rleb : R_scope.
Infix "<?" := Rltb : R_scope.
Axiom Rleb_le : forall x y, Rleb x y = true <-> Rle x y.
Axiom Rltb_lt : forall x y, Rltb x y = true <-> Rlt x y.

(* See: https://en.wikipedia.org/wiki/Atan2 *)
Definition atan2 (y x : R) : R :=
  if 0 <? x then atan (y/x)
  else if x <? 0 then
       if 0 <=? y then atan (y/x) + PI else atan (y/x) - PI
  else
       if 0 <? y then PI/2 else if y <? 0 then -PI/2 else 0.

(* Convert a quaternion to a sequence of ZYZ Euler angles. *)
Definition to_zyz (q : quaternion) : (R * R * R) :=
  let m := to_matrix q in
  match m with
  | ((_, _, m02), (m10, m11, m12), (m20, m21, m22)) =>
    if m22 <? 1
    then if -1 <? m22
         then (atan2 m12 m02, acos m22, atan2 m21 (- m20))
         else (- atan2 m10 m11, PI, 0)
    else (atan2 m10 m11, 0, 0)
  end.

(* Convert a sequence of YZY Euler angles to a quaternion. *)
Definition from_yzy (θ1 ξ θ2 : R) : quaternion :=
  let q1 : quaternion := (cos (θ1 / 2), 0, sin (θ1 / 2), 0) in
  let q2 : quaternion := (cos (ξ / 2), 0, 0, sin (ξ / 2)) in
  let q3 : quaternion := (cos (θ2 / 2), 0, sin (θ2 / 2), 0) in
  normalize (mult (mult q1 q2) q3).

Definition yzy_to_zyz ξ θ1 θ2 :=
  let q := from_yzy θ1 ξ θ2 in
  match to_zyz q with
  | (ϕ, θ, λ) => (θ, ϕ, λ)
  end.

Definition compose_u3 (θ1 ϕ1 λ1 θ2 ϕ2 λ2 : R) :=
  match yzy_to_zyz (ϕ1 + λ2) θ1 θ2 with
  | (θ', ϕ', λ') => UIBM_U3 θ' (λ' + ϕ2) (λ1 + ϕ')
  end.

(* The following lemma will likely be difficult to prove :) 
   Try to break it into small parts! *)
Lemma yzy_to_zyz_correct : forall {dim} ξ θ1 θ2 ϕ θ λ q,
  (q < dim)%nat ->
  yzy_to_zyz ξ θ1 θ2 = (θ, ϕ, λ) ->
  @Ry dim θ1 q ; Rz ξ q ; Ry θ2 q ≡ Rz ϕ q ; Ry θ q ; Rz λ q.
Proof.
Admitted.

Lemma u3_is_ZYZ_rotation : forall dim θ ϕ λ q,
  (q < dim)%nat ->
  list_to_ucom [@U3 dim θ ϕ λ q] ≡ Rz λ q ; Ry θ q ; Rz ϕ q.
Proof.
  intros.
  unfold uc_equiv; simpl.
  autorewrite with eval_db.
  2: lia.
  gridify.
  do 2 (apply f_equal2; try reflexivity).
  solve_matrix.
  group_Cexp.
  reflexivity.
Qed.

Lemma compose_u3_correct : forall dim θ1 ϕ1 λ1 θ2 ϕ2 λ2 q,
  (q < dim)%nat ->
  [@U3 dim θ1 ϕ1 λ1 q] ++ [U3 θ2 ϕ2 λ2 q] =l= [App1 (compose_u3 θ1 ϕ1 λ1 θ2 ϕ2 λ2) q].
Proof.
  intros.
  unfold uc_equiv_l.
  rewrite list_to_ucom_append. 
  rewrite 2 u3_is_ZYZ_rotation by lia.
  repeat rewrite <- useq_assoc.
  rewrite (useq_assoc _ (Rz ϕ1 _) (Rz λ2 _)).
  rewrite Rz_Rz_add.
  unfold compose_u3.
  destruct (yzy_to_zyz (ϕ1 + λ2) θ1 θ2) eqn:Hyzy_to_zyz.
  destruct p.
  eapply yzy_to_zyz_correct in Hyzy_to_zyz.
  2: apply H.
  rewrite (useq_assoc _ (Ry θ1 _)).
  rewrite (useq_assoc _ _ (Ry θ2 _)).
  rewrite Hyzy_to_zyz.
  repeat rewrite useq_assoc.
  rewrite Rz_Rz_add.
  repeat rewrite <- useq_assoc.
  rewrite Rz_Rz_add.
  rewrite <- u3_is_ZYZ_rotation by assumption.
  reflexivity.
Qed.
