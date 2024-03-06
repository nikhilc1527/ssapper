; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11462 () Bool)

(assert start!11462)

(declare-fun x!30620 () (_ BitVec 32))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> start!11462 (and (= x!30620 ((_ sign_extend 24) ((_ extract 7 0) i!601))) (bvsge x!30620 #b00000000000000001000000000000000))))

(assert (=> start!11462 true))

(push 1)

(check-sat)

(pop 1)

