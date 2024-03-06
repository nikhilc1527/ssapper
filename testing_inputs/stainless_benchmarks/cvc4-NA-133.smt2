; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!740 () Bool)

(assert start!740)

(declare-fun x!1976 () (_ BitVec 32))

(assert (=> start!740 (and (not (= x!1976 #b00000000000000000000000000000000)) (bvsgt x!1976 #b10000000000000000000000000000000) (not (= (bvsrem #b00000000000000000000000000000101 x!1976) (bvsrem #b00000000000000000000000000000101 (bvneg x!1976)))))))

(assert (=> start!740 true))

(push 1)

(check-sat)

(pop 1)

