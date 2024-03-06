; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4434 () Bool)

(assert start!4434)

(declare-datatypes () ((Nat!16 (S!6 (n!419 Nat!16)) (O!5))))

(declare-fun v!596 () Nat!16)

(assert (=> start!4434 (and (= v!596 (S!6 (S!6 (S!6 (S!6 (S!6 (S!6 (S!6 (S!6 (S!6 (S!6 O!5))))))))))) (not (is-S!6 v!596)))))

(assert (=> start!4434 true))

(push 1)

(check-sat)

(pop 1)

