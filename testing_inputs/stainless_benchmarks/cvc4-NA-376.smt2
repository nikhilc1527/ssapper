; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2768 () Bool)

(assert start!2768)

(declare-fun n!224 () (_ BitVec 10))

(declare-fun m!17349 () (_ BitVec 14))

(assert (=> start!2768 (and (= n!224 #b0000101010) (= m!17349 ((_ zero_extend 4) n!224)) (not (= m!17349 #b00000000101010)))))

(assert (=> start!2768 true))

(push 1)

(check-sat)

(pop 1)

