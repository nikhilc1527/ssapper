; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12670 () Bool)

(assert start!12670)

(declare-datatypes () ((A!4609 (AExt!14 (__x!383 Int)) (B!798 (i!653 (_ BitVec 32))) (C!97 (a!1158 A!4609)))))

(declare-datatypes () ((tuple2!450 (tuple2!451 (_1!264 A!4609) (_2!264 A!4609)))))

(declare-fun t!49210 () tuple2!450)

(assert (=> start!12670 (and (= t!49210 (tuple2!451 (B!798 #b00000000000000000000000000000010) (C!97 (B!798 #b00000000000000000000000000000011)))) (or (not (is-B!798 (_1!264 t!49210))) (not (is-C!97 (_2!264 t!49210)))))))

(assert (=> start!12670 true))

(push 1)

(check-sat)

(pop 1)

