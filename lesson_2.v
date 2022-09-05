(** * Lesson 2: Data Structures and Class Hierarchies *)
From mathcomp Require Import all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Definition sorry {T} : T. Admitted.
(** ** Reflection and proving with computation

We will start today's lesson by discussing an often underused
advantage of Coq, which is its ability to run complex programs quite
efficiently as part of type-checking.

Invoking a computational routine can be very convenient when trying to
prove certain facts that can be decided by an algorithm.

Thus, the core idea of _proof by reflection_ is to move between the
computational and the logical world, as it better suits our proof
style.

Let's first see an example with the _less than_ relation as defined in
Coq Standard library vs as it is defined in math-comp: *)
About le.
Print le.

About leq.
Print leq.

Lemma le_1 : 100 <= 200.
Proof. Admitted.

Print le_1.

Lemma le_2 : (100 <= 200)%coq_nat.
Proof. Admitted.

Print le_2.

Lemma lt_1 n : ~~ (n < n).
Proof. Admitted.

Lemma lt_2 n : ~ (n < n)%coq_nat.
Proof. Admitted.
(** Moreover, the math-comp version, by virtue of being in [bool],
inherits some nice properties, like decidability, for free. *)
