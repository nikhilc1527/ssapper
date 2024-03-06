; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15000 () Bool)

(assert start!15000)

(declare-datatypes () ((P!67 (Charlie!67) (Alice!67) (Bob!67))))

(declare-datatypes () ((tuple2!480 (tuple2!481 (_1!279 P!67) (_2!279 P!67)))))

(declare-fun x0$1!11 () tuple2!480)

(assert (=> start!15000 (= (_1!279 x0$1!11) (_2!279 x0$1!11))))

(assert (=> start!15000 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

