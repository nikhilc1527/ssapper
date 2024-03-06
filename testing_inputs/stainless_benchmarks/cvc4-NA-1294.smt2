; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9162 () Bool)

(assert start!9162)

(declare-datatypes () ((tuple2!338 (tuple2!339 (_1!197 (_ BitVec 32)) (_2!197 (_ BitVec 32))))))

(declare-datatypes () ((tuple2!340 (tuple2!341 (_1!198 tuple2!338) (_2!198 Bool)))))

(declare-fun t!47390 () tuple2!340)

(declare-fun x$1!870 () (_ BitVec 32))

(assert (=> start!9162 (and (= t!47390 (tuple2!341 (tuple2!339 #b00000000000000000000000000000010 #b00000000000000000000000000000011) true)) (= x$1!870 (_2!197 (_1!198 t!47390))) (not (= x$1!870 #b00000000000000000000000000000011)))))

(assert (=> start!9162 true))

(push 1)

(check-sat)

(pop 1)

