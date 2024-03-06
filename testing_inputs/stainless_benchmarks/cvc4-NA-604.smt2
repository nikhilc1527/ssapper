; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4442 () Bool)

(assert start!4442)

(declare-datatypes () ((Nat!20 (S!10 (n!423 Nat!20)) (O!9))))

(declare-fun v!605 () Nat!20)

(assert (=> start!4442 (and (= v!605 (S!10 (S!10 (S!10 (S!10 (S!10 (S!10 O!9))))))) (not (is-S!10 v!605)))))

(assert (=> start!4442 true))

(push 1)

(check-sat)

(pop 1)

