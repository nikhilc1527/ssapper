; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4440 () Bool)

(assert start!4440)

(declare-datatypes () ((Nat!19 (S!9 (n!422 Nat!19)) (O!8))))

(declare-fun v!591 () Nat!19)

(assert (=> start!4440 (and (= v!591 (S!9 (S!9 (S!9 (S!9 (S!9 (S!9 (S!9 O!8)))))))) (not (is-S!9 v!591)))))

(assert (=> start!4440 true))

(push 1)

(check-sat)

(pop 1)

