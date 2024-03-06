; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2802 () Bool)

(assert start!2802)

(declare-fun n!234 () (_ BitVec 10))

(declare-fun m!17351 () (_ BitVec 14))

(assert (=> start!2802 (and (= n!234 #b0000101010) (= m!17351 ((_ sign_extend 4) n!234)) (not (= m!17351 #b00000000101010)))))

(assert (=> start!2802 true))

(push 1)

(check-sat)

(pop 1)

