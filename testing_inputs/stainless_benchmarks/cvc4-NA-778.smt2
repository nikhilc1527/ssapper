; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5944 () Bool)

(assert start!5944)

(declare-fun lt!8146 () Bool)

(declare-datatypes () ((Nat!139 (Zero!123) (Succ!120 (n!1268 Nat!139)))))

(declare-fun n1!209 () Nat!139)

(declare-fun n2!220 () Nat!139)

(declare-fun <!2 (Nat!139 Nat!139) Bool)

(assert (=> start!5944 (= lt!8146 (<!2 n1!209 n2!220))))

(assert (=> start!5944 false))

(assert (=> start!5944 true))

(declare-fun bs!17769 () Bool)

(assert (= bs!17769 start!5944))

(declare-fun m!47719 () Bool)

(assert (=> bs!17769 m!47719))

(push 1)

(assert (not start!5944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

