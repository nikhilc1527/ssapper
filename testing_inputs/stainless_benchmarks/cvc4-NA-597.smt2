; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4428 () Bool)

(assert start!4428)

(declare-datatypes () ((Nat!13 (S!3 (n!416 Nat!13)) (O!2))))

(declare-fun v!595 () Nat!13)

(assert (=> start!4428 (and (= v!595 O!2) (not (is-O!2 v!595)))))

(assert (=> start!4428 true))

(push 1)

(check-sat)

(pop 1)

