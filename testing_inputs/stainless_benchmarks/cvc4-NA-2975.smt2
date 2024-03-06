; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15074 () Bool)

(assert start!15074)

(declare-datatypes () ((P!77 (Charlie!77) (Alice!77) (Bob!77))))

(declare-datatypes () ((tuple2!500 (tuple2!501 (_1!289 P!77) (_2!289 P!77)))))

(declare-fun x0$1!17 () tuple2!500)

(assert (=> start!15074 (not (= (_1!289 x0$1!17) (_2!289 x0$1!17)))))

(assert (=> start!15074 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

