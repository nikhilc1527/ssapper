; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2868 () Bool)

(assert start!2868)

(declare-fun x!7775 () (_ BitVec 32))

(declare-fun n!247 () (_ BitVec 32))

(assert (=> start!2868 (and (= x!7775 #b11111111111111111111111111011111) (= n!247 #b00000000000000000000000000000101) (or (bvslt n!247 #b00000000000000000000000000000000) (bvsge n!247 #b00000000000000000000000000100000)))))

(assert (=> start!2868 true))

(push 1)

(check-sat)

(pop 1)

