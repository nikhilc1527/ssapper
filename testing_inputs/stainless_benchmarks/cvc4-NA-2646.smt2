; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14318 () Bool)

(assert start!14318)

(declare-datatypes () ((P!43 (Charlie!43) (Alice!43) (Bob!43))))

(declare-datatypes () ((S!105 (S!106 (who!1766 P!43) (amount!1766 Int)))))

(declare-fun x$3!249 () S!105)

(assert (=> start!14318 (< (amount!1766 x$3!249) 0)))

(assert (=> start!14318 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

