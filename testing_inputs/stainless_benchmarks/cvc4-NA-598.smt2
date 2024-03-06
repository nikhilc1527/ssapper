; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4430 () Bool)

(assert start!4430)

(declare-datatypes () ((Nat!14 (S!4 (n!417 Nat!14)) (O!3))))

(declare-fun v!593 () Nat!14)

(assert (=> start!4430 (and (= v!593 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 (S!4 O!3))))))))))))) (not (is-S!4 v!593)))))

(assert (=> start!4430 true))

(push 1)

(check-sat)

(pop 1)

