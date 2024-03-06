; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4452 () Bool)

(assert start!4452)

(declare-datatypes () ((Nat!25 (S!15 (n!428 Nat!25)) (O!14))))

(declare-fun v!580 () Nat!25)

(assert (=> start!4452 (and (= v!580 (S!15 O!14)) (not (is-S!15 v!580)))))

(assert (=> start!4452 true))

(push 1)

(check-sat)

(pop 1)

