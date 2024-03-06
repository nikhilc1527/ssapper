; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15070 () Bool)

(assert start!15070)

(declare-datatypes () ((P!75 (Charlie!75) (Alice!75) (Bob!75))))

(declare-datatypes () ((tuple2!496 (tuple2!497 (_1!287 P!75) (_2!287 P!75)))))

(declare-fun x0$1!17 () tuple2!496)

(assert (=> start!15070 (= (_1!287 x0$1!17) (_2!287 x0$1!17))))

(assert (=> start!15070 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

