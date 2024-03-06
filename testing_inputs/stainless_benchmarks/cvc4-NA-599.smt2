; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4432 () Bool)

(assert start!4432)

(declare-datatypes () ((Nat!15 (S!5 (n!418 Nat!15)) (O!4))))

(declare-fun v!612 () Nat!15)

(assert (=> start!4432 (and (= v!612 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 (S!5 O!4)))))))))))) (not (is-S!5 v!612)))))

(assert (=> start!4432 true))

(push 1)

(check-sat)

(pop 1)

