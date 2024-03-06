; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13046 () Bool)

(assert start!13046)

(declare-datatypes () ((P!5 (Charlie!5) (Alice!5) (Bob!5))))

(declare-datatypes () ((S!29 (S!30 (who!273 P!5) (amount!273 Int)))))

(declare-datatypes () ((List!816 (Cons!754 (h!1574 S!29) (t!49617 List!816)) (Nil!756))))

(declare-fun size!930 (List!816) Int)

(assert (=> start!13046 (not (= (size!930 Nil!756) (size!930 Nil!756)))))

(declare-fun bs!42175 () Bool)

(assert (= bs!42175 start!13046))

(declare-fun m!89123 () Bool)

(assert (=> bs!42175 m!89123))

(push 1)

(assert (not start!13046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

