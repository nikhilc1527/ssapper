; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8948 () Bool)

(assert start!8948)

(assert (=> start!8948 false))

(declare-datatypes () ((A!2630 (C!69 (x!27002 Int)) (E!21) (D!29))))

(declare-fun thiss!8859 () A!2630)

(declare-fun inv!1120 (A!2630) Bool)

(assert (=> start!8948 (inv!1120 thiss!8859)))

(declare-fun bs!37392 () Bool)

(assert (= bs!37392 start!8948))

(declare-fun m!68080 () Bool)

(assert (=> bs!37392 m!68080))

(push 1)

(assert (not start!8948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

