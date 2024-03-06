; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15076 () Bool)

(assert start!15076)

(declare-datatypes () ((P!78 (Charlie!78) (Alice!78) (Bob!78))))

(declare-datatypes () ((tuple2!502 (tuple2!503 (_1!290 P!78) (_2!290 P!78)))))

(declare-fun x0$1!17 () tuple2!502)

(assert (=> start!15076 (= (_1!290 x0$1!17) (_2!290 x0$1!17))))

(assert (=> start!15076 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

