Require Import SQIR.NDSem.

Local Open Scope ucom_scope.

Definition left_circuit : base_ucom 2 := H 1 ; CNOT 1 0 ; H 1.
Definition right_circuit : base_ucom 2 := H 0 ; CNOT 0 1 ; H 0.

Lemma hw2_problem1_part2 :
  left_circuit ≡ right_circuit.
Proof.
  unfold left_circuit, right_circuit, uc_equiv.
  simpl.
  autorewrite with eval_db; simpl; Msimpl.
  solve_matrix.
Qed.
