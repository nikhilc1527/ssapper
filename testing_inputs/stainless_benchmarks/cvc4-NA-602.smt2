; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4438 () Bool)

(assert start!4438)

(declare-datatypes () ((Nat!18 (S!8 (n!421 Nat!18)) (O!7))))

(declare-fun v!598 () Nat!18)

(assert (=> start!4438 (and (= v!598 (S!8 (S!8 (S!8 (S!8 (S!8 (S!8 (S!8 (S!8 O!7))))))))) (not (is-S!8 v!598)))))

(assert (=> start!4438 true))

(push 1)

(check-sat)

(pop 1)

