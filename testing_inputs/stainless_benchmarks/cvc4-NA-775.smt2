; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5934 () Bool)

(assert start!5934)

(declare-fun lt!8136 () Bool)

(declare-datatypes () ((Nat!136 (Zero!120) (Succ!117 (n!1264 Nat!136)))))

(declare-fun n1!110 () Nat!136)

(declare-fun n2!121 () Nat!136)

(declare-fun <=!2 (Nat!136 Nat!136) Bool)

(assert (=> start!5934 (= lt!8136 (<=!2 n1!110 n2!121))))

(assert (=> start!5934 false))

(assert (=> start!5934 true))

(declare-fun bs!17765 () Bool)

(assert (= bs!17765 start!5934))

(declare-fun m!47693 () Bool)

(assert (=> bs!17765 m!47693))

(push 1)

(assert (not start!5934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

