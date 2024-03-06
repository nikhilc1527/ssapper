; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15008 () Bool)

(assert start!15008)

(declare-datatypes () ((P!71 (Charlie!71) (Alice!71) (Bob!71))))

(declare-datatypes () ((tuple2!488 (tuple2!489 (_1!283 P!71) (_2!283 P!71)))))

(declare-fun x0$1!11 () tuple2!488)

(assert (=> start!15008 (= (_1!283 x0$1!11) (_2!283 x0$1!11))))

(assert (=> start!15008 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

