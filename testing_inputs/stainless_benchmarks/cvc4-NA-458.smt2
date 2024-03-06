; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2974 () Bool)

(assert start!2974)

(declare-fun i!231 () Int)

(declare-fun head!530 () (_ BitVec 32))

(declare-fun i!232 () Int)

(assert (=> start!2974 (and (>= i!231 0) (> i!231 0) (= head!530 #b00000000000000000000000000000000) (= i!232 (- i!231 1)) (< i!232 0))))

(assert (=> start!2974 true))

(push 1)

(check-sat)

(pop 1)

