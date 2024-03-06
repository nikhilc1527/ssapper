; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4448 () Bool)

(assert start!4448)

(declare-datatypes () ((Nat!23 (S!13 (n!426 Nat!23)) (O!12))))

(declare-fun v!578 () Nat!23)

(assert (=> start!4448 (and (= v!578 (S!13 (S!13 (S!13 O!12)))) (not (is-S!13 v!578)))))

(assert (=> start!4448 true))

(push 1)

(check-sat)

(pop 1)

