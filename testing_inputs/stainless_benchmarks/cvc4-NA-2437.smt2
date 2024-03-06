; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13870 () Bool)

(assert start!13870)

(declare-datatypes () ((P!31 (Charlie!31) (Alice!31) (Bob!31))))

(declare-datatypes () ((S!81 (S!82 (who!1212 P!31) (amount!1212 Int)))))

(declare-fun x$2!595 () S!81)

(assert (=> start!13870 (>= (amount!1212 x$2!595) 0)))

(assert (=> start!13870 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

