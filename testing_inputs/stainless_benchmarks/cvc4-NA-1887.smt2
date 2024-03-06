; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12662 () Bool)

(assert start!12662)

(declare-fun i!648 () (_ BitVec 32))

(assert (=> start!12662 (and (not (= i!648 #b00000000000000000000000000000001)) (not (= i!648 #b00000000000000000000000000000000)))))

(assert (=> start!12662 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

