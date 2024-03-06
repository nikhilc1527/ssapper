; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2994 () Bool)

(assert start!2994)

(declare-fun i!228 () Int)

(declare-fun head!529 () (_ BitVec 32))

(declare-fun i!229 () Int)

(assert (=> start!2994 (and (>= i!228 0) (not (= i!228 0)) (= head!529 #b00000000000000000000000000000000) (= i!229 (- i!228 1)) (< i!229 0))))

(assert (=> start!2994 true))

(push 1)

(check-sat)

(pop 1)

