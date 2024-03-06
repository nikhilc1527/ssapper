; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14286 () Bool)

(assert start!14286)

(declare-datatypes () ((P!40 (Charlie!40) (Alice!40) (Bob!40))))

(declare-datatypes () ((S!99 (S!100 (who!1725 P!40) (amount!1725 Int)))))

(declare-fun x$3!248 () S!99)

(assert (=> start!14286 (>= (amount!1725 x$3!248) 0)))

(assert (=> start!14286 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

