; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13510 () Bool)

(assert start!13510)

(declare-datatypes () ((P!18 (Charlie!18) (Alice!18) (Bob!18))))

(declare-datatypes () ((S!55 (S!56 (who!780 P!18) (amount!780 Int)))))

(declare-fun x$3!32 () S!55)

(assert (=> start!13510 (>= (amount!780 x$3!32) 0)))

(assert (=> start!13510 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

