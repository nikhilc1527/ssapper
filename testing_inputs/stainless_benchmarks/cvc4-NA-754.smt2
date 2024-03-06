; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5752 () Bool)

(assert start!5752)

(declare-fun lt!7973 () Bool)

(declare-datatypes () ((Nat!115 (Zero!99) (Succ!96 (n!1240 Nat!115)))))

(declare-fun n1!66 () Nat!115)

(declare-fun >!2 (Nat!115 Nat!115) Bool)

(assert (=> start!5752 (= lt!7973 (>!2 n1!66 Zero!99))))

(assert (=> start!5752 false))

(assert (=> start!5752 true))

(declare-fun bs!17728 () Bool)

(assert (= bs!17728 start!5752))

(declare-fun m!47079 () Bool)

(assert (=> bs!17728 m!47079))

(push 1)

(assert (not start!5752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

