; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4450 () Bool)

(assert start!4450)

(declare-datatypes () ((Nat!24 (S!14 (n!427 Nat!24)) (O!13))))

(declare-fun v!602 () Nat!24)

(assert (=> start!4450 (and (= v!602 (S!14 (S!14 O!13))) (not (is-S!14 v!602)))))

(assert (=> start!4450 true))

(push 1)

(check-sat)

(pop 1)

