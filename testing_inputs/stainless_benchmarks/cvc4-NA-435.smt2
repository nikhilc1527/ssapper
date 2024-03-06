; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2906 () Bool)

(assert start!2906)

(declare-fun indexFromLeft!3 () (_ BitVec 32))

(declare-fun x!7833 () (_ BitVec 32))

(declare-fun x!7834 () (_ BitVec 32))

(declare-fun n!293 () (_ BitVec 32))

(assert (=> start!2906 (and (bvsle #b00000000000000000000000000000000 indexFromLeft!3) (bvslt indexFromLeft!3 #b00000000000000000000000000100000) (= x!7834 x!7833) (= n!293 (bvsub #b00000000000000000000000000011111 indexFromLeft!3)) (or (bvslt n!293 #b00000000000000000000000000000000) (bvsge n!293 #b00000000000000000000000000100000)))))

(assert (=> start!2906 true))

(push 1)

(check-sat)

(pop 1)

