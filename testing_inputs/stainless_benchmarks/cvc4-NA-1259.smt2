; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8950 () Bool)

(assert start!8950)

(assert (=> start!8950 false))

(declare-datatypes () ((A!2631 (C!70 (x!27003 Int)) (E!22) (D!30))))

(declare-fun thiss!8859 () A!2631)

(declare-fun inv!1120 (A!2631) Bool)

(assert (=> start!8950 (inv!1120 thiss!8859)))

(assert (=> start!8950 true))

(declare-fun bs!37394 () Bool)

(assert (= bs!37394 start!8950))

(declare-fun m!68082 () Bool)

(assert (=> bs!37394 m!68082))

(push 1)

(assert (not start!8950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

