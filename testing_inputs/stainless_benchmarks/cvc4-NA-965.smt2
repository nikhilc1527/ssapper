; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7300 () Bool)

(assert start!7300)

(declare-datatypes () ((Test!12 (FooBarBaz!9 (a!621 Int) (l!1041 Int)) (TestExt!8 (__x!87 Int)))))

(declare-fun thiss!7358 () Test!12)

(declare-fun thiss!7359 () Test!12)

(assert (=> start!7300 (and (is-FooBarBaz!9 thiss!7358) (= thiss!7359 thiss!7358) (not (is-FooBarBaz!9 thiss!7359)))))

(declare-fun inv!934 (Test!12) Bool)

(assert (=> start!7300 (inv!934 thiss!7358)))

(assert (=> start!7300 (inv!934 thiss!7359)))

(declare-fun bs!23877 () Bool)

(assert (= bs!23877 start!7300))

(declare-fun m!56995 () Bool)

(assert (=> bs!23877 m!56995))

(declare-fun m!56997 () Bool)

(assert (=> bs!23877 m!56997))

(push 1)

(assert (not start!7300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

