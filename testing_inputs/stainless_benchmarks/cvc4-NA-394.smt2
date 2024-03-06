; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2804 () Bool)

(assert start!2804)

(declare-fun n!231 () (_ BitVec 4))

(declare-fun m!17350 () (_ BitVec 3))

(assert (=> start!2804 (and (= n!231 #b0111) (= m!17350 ((_ extract 2 0) n!231)) (not (= m!17350 #b111)))))

(assert (=> start!2804 true))

(push 1)

(check-sat)

(pop 1)

