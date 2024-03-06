; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15006 () Bool)

(assert start!15006)

(declare-datatypes () ((P!70 (Charlie!70) (Alice!70) (Bob!70))))

(declare-datatypes () ((tuple2!486 (tuple2!487 (_1!282 P!70) (_2!282 P!70)))))

(declare-fun x0$1!11 () tuple2!486)

(assert (=> start!15006 (not (= (_1!282 x0$1!11) (_2!282 x0$1!11)))))

(assert (=> start!15006 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

