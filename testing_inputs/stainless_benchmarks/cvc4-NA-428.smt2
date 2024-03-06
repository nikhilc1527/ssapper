; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2878 () Bool)

(assert start!2878)

(declare-fun x!7779 () (_ BitVec 32))

(declare-fun n!250 () (_ BitVec 32))

(assert (=> start!2878 (and (= x!7779 #b00000000000000000000000001111010) (= n!250 #b00000000000000000000000000000011) (or (bvslt n!250 #b00000000000000000000000000000000) (bvsge n!250 #b00000000000000000000000000100000)))))

(assert (=> start!2878 true))

(push 1)

(check-sat)

(pop 1)

