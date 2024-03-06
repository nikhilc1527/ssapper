; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15004 () Bool)

(assert start!15004)

(declare-datatypes () ((P!69 (Charlie!69) (Alice!69) (Bob!69))))

(declare-datatypes () ((tuple2!484 (tuple2!485 (_1!281 P!69) (_2!281 P!69)))))

(declare-fun x0$1!11 () tuple2!484)

(assert (=> start!15004 (= (_1!281 x0$1!11) (_2!281 x0$1!11))))

(assert (=> start!15004 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

