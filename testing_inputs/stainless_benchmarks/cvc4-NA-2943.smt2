; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15010 () Bool)

(assert start!15010)

(declare-datatypes () ((P!72 (Charlie!72) (Alice!72) (Bob!72))))

(declare-datatypes () ((tuple2!490 (tuple2!491 (_1!284 P!72) (_2!284 P!72)))))

(declare-fun x0$1!11 () tuple2!490)

(assert (=> start!15010 (not (= (_1!284 x0$1!11) (_2!284 x0$1!11)))))

(assert (=> start!15010 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

