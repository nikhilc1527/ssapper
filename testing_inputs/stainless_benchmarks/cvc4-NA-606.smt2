; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4446 () Bool)

(assert start!4446)

(declare-datatypes () ((Nat!22 (S!12 (n!425 Nat!22)) (O!11))))

(declare-fun v!600 () Nat!22)

(assert (=> start!4446 (and (= v!600 (S!12 (S!12 (S!12 (S!12 O!11))))) (not (is-S!12 v!600)))))

(assert (=> start!4446 true))

(push 1)

(check-sat)

(pop 1)

