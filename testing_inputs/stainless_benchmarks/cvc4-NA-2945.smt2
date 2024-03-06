; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15014 () Bool)

(assert start!15014)

(declare-datatypes () ((P!74 (Charlie!74) (Alice!74) (Bob!74))))

(declare-datatypes () ((tuple2!494 (tuple2!495 (_1!286 P!74) (_2!286 P!74)))))

(declare-fun x0$1!11 () tuple2!494)

(assert (=> start!15014 (= (_1!286 x0$1!11) (_2!286 x0$1!11))))

(assert (=> start!15014 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

