; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14254 () Bool)

(assert start!14254)

(declare-datatypes () ((P!37 (Charlie!37) (Alice!37) (Bob!37))))

(declare-datatypes () ((S!93 (S!94 (who!1686 P!37) (amount!1686 Int)))))

(declare-datatypes () ((List!838 (Cons!776 (h!3755 S!93) (t!51898 List!838)) (Nil!778))))

(declare-fun size!952 (List!838) Int)

(assert (=> start!14254 (not (= (size!952 Nil!778) (size!952 Nil!778)))))

(declare-fun bs!42766 () Bool)

(assert (= bs!42766 start!14254))

(declare-fun m!89507 () Bool)

(assert (=> bs!42766 m!89507))

(push 1)

(assert (not start!14254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

