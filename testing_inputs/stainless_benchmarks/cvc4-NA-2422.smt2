; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13840 () Bool)

(assert start!13840)

(declare-datatypes () ((P!29 (Charlie!29) (Alice!29) (Bob!29))))

(declare-datatypes () ((S!77 (S!78 (who!1172 P!29) (amount!1172 Int)))))

(declare-fun x$2!594 () S!77)

(assert (=> start!13840 (>= (amount!1172 x$2!594) 0)))

(assert (=> start!13840 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

