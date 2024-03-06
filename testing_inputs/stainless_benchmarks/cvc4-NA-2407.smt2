; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13806 () Bool)

(assert start!13806)

(declare-datatypes () ((P!25 (Charlie!25) (Alice!25) (Bob!25))))

(declare-datatypes () ((S!69 (S!70 (who!1132 P!25) (amount!1132 Int)))))

(declare-datatypes () ((List!828 (Cons!766 (h!2914 S!69) (t!50990 List!828)) (Nil!768))))

(declare-fun size!942 (List!828) Int)

(assert (=> start!13806 (not (= (size!942 Nil!768) (size!942 Nil!768)))))

(declare-fun bs!42548 () Bool)

(assert (= bs!42548 start!13806))

(declare-fun m!89371 () Bool)

(assert (=> bs!42548 m!89371))

(push 1)

(assert (not start!13806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

