; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13478 () Bool)

(assert start!13478)

(declare-datatypes () ((P!15 (Charlie!15) (Alice!15) (Bob!15))))

(declare-datatypes () ((S!49 (S!50 (who!741 P!15) (amount!741 Int)))))

(declare-datatypes () ((List!822 (Cons!760 (h!2299 S!49) (t!50360 List!822)) (Nil!762))))

(declare-fun size!936 (List!822) Int)

(assert (=> start!13478 (not (= (size!936 Nil!762) (size!936 Nil!762)))))

(declare-fun bs!42387 () Bool)

(assert (= bs!42387 start!13478))

(declare-fun m!89239 () Bool)

(assert (=> bs!42387 m!89239))

(push 1)

(assert (not start!13478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

