; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9158 () Bool)

(assert start!9158)

(declare-datatypes () ((A!2863 (B!542 (i!490 (_ BitVec 32))) (C!72 (a!690 A!2863)))))

(declare-datatypes () ((tuple2!334 (tuple2!335 (_1!195 A!2863) (_2!195 A!2863)))))

(declare-fun t!47388 () tuple2!334)

(assert (=> start!9158 (and (= t!47388 (tuple2!335 (B!542 #b00000000000000000000000000000010) (C!72 (B!542 #b00000000000000000000000000000011)))) (or (not (is-B!542 (_1!195 t!47388))) (not (is-C!72 (_2!195 t!47388)))))))

(assert (=> start!9158 true))

(push 1)

(check-sat)

(pop 1)

