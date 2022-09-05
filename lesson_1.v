(** * Lesson 1: Coq Core Topics and Tactics

In our first steps with Coq, we start by importing the required
libraries and setting some parameters.

By default, Coq can only understand the quite bare-bones calculus of
the Calculus of Inductive Constructions. This is a very "pure"
language, but not very useful to do some more realistic examples.

In this course, we will use a mature Coq library, "The Mathematical
Components Library" which will provide us with a rich theory on data
types and mathematics. *)

From mathcomp Require Import all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Definition sorry {T} : T. Admitted.

(** ** Interaction model:

Coq is an _interactive theorem prover_ . That means that we submit
commands to the system, and Coq will answer back with some feedback
about our input.

The first thing we need to understand in order to get familiar with
Coq is how to use this interface. For this class, we will use the
jsCoq web-based system, which has a "classical" 3-pane setup.

The main window (left), contains a document with mixed text and Coq
code. We can use the arrows in the right menu-bar to submit
incrementally the code parts to Coq. jsCoq will highlight the code
with different colors depending on the result Coq provides: - grey
background means Coq accepted the sentence without problem - yellow
background means Coq is processing the sentence - red means that Coq
found a problem with the sentence

You can also use the [Alt-N] (for next) and [Alt-P] (for previous)
keys for a quicker navigation; on Mac, the command key is used
instead.

In addition to the colored feedback over the document, we have two
panes in the right. The upper panel is usually called "goals panel",
and is used to display the pending "proof obligations". The lower
right panel is used to display miscellaneous information such as
*error details*, search results, etc...

To illustrate this, we can try to prove a quite logical theorem: *)
Theorem x_implies_x : forall P, P -> P.
Proof. by auto. Qed.

(** ** Basic Coq Commands:

Coq files are organized as mathematical documents using a _vernacular_
language, which are basically a collection of definitions for
top-level terms (or proofs) and their types (or propositions).

We will precisely introduce what types and terms are next, but before,
we also present some helper commands useful to develop interactive
proofs. The basic ones are:

*)
