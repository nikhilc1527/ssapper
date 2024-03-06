; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4444 () Bool)

(assert start!4444)

(declare-datatypes () ((Nat!21 (S!11 (n!424 Nat!21)) (O!10))))

(declare-fun v!582 () Nat!21)

(assert (=> start!4444 (and (= v!582 (S!11 (S!11 (S!11 (S!11 (S!11 O!10)))))) (not (is-S!11 v!582)))))

(assert (=> start!4444 true))

(push 1)

(check-sat)

(pop 1)

