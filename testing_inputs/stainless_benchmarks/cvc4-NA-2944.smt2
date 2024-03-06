; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15012 () Bool)

(assert start!15012)

(declare-datatypes () ((P!73 (Charlie!73) (Alice!73) (Bob!73))))

(declare-datatypes () ((tuple2!492 (tuple2!493 (_1!285 P!73) (_2!285 P!73)))))

(declare-fun x0$1!11 () tuple2!492)

(assert (=> start!15012 (not (= (_1!285 x0$1!11) (_2!285 x0$1!11)))))

(assert (=> start!15012 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

