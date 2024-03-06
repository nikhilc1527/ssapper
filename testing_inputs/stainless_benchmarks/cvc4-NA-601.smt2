; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4436 () Bool)

(assert start!4436)

(declare-datatypes () ((Nat!17 (S!7 (n!420 Nat!17)) (O!6))))

(declare-fun v!610 () Nat!17)

(assert (=> start!4436 (and (= v!610 (S!7 (S!7 (S!7 (S!7 (S!7 (S!7 (S!7 (S!7 (S!7 O!6)))))))))) (not (is-S!7 v!610)))))

(assert (=> start!4436 true))

(push 1)

(check-sat)

(pop 1)

