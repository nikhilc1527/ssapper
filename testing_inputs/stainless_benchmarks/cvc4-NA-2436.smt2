; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13868 () Bool)

(assert start!13868)

(declare-datatypes () ((P!30 (Charlie!30) (Alice!30) (Bob!30))))

(declare-datatypes () ((S!79 (S!80 (who!1207 P!30) (amount!1207 Int)))))

(declare-fun x$2!595 () S!79)

(assert (=> start!13868 (< (amount!1207 x$2!595) 0)))

(assert (=> start!13868 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

