; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15002 () Bool)

(assert start!15002)

(declare-datatypes () ((P!68 (Charlie!68) (Alice!68) (Bob!68))))

(declare-datatypes () ((tuple2!482 (tuple2!483 (_1!280 P!68) (_2!280 P!68)))))

(declare-fun x0$1!11 () tuple2!482)

(assert (=> start!15002 (not (= (_1!280 x0$1!11) (_2!280 x0$1!11)))))

(assert (=> start!15002 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

