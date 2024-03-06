; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8946 () Bool)

(assert start!8946)

(declare-datatypes () ((A!2629 (C!68 (x!27001 Int)) (E!20) (D!28))))

(declare-fun thiss!8859 () A!2629)

(declare-fun thiss!8860 () A!2629)

(assert (=> start!8946 (and (is-C!68 thiss!8859) (= thiss!8860 thiss!8859) (not (is-C!68 thiss!8860)))))

(declare-fun inv!1120 (A!2629) Bool)

(assert (=> start!8946 (inv!1120 thiss!8859)))

(assert (=> start!8946 (inv!1120 thiss!8860)))

(declare-fun bs!37390 () Bool)

(assert (= bs!37390 start!8946))

(declare-fun m!68076 () Bool)

(assert (=> bs!37390 m!68076))

(declare-fun m!68078 () Bool)

(assert (=> bs!37390 m!68078))

(push 1)

(assert (not start!8946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

