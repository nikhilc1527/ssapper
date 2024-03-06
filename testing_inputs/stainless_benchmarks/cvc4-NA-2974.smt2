; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15072 () Bool)

(assert start!15072)

(declare-datatypes () ((P!76 (Charlie!76) (Alice!76) (Bob!76))))

(declare-datatypes () ((tuple2!498 (tuple2!499 (_1!288 P!76) (_2!288 P!76)))))

(declare-fun x0$1!17 () tuple2!498)

(assert (=> start!15072 (not (= (_1!288 x0$1!17) (_2!288 x0$1!17)))))

(assert (=> start!15072 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

