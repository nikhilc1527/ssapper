; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!656 () Bool)

(assert start!656)

(declare-fun i!205 () (_ BitVec 32))

(declare-fun i!206 () (_ BitVec 32))

(assert (=> start!656 (and (bvsgt i!205 #b00000000000000000000000000000000) (= i!206 i!205) (bvsle i!206 #b00000000000000000000000000000000))))

(assert (=> start!656 true))

(push 1)

(check-sat)

(pop 1)

