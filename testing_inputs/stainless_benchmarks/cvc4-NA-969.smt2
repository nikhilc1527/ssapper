; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7308 () Bool)

(assert start!7308)

(declare-datatypes () ((Test!15 (FooBarBaz!11 (a!628 Bool) (b!52973 Bool) (c!11516 Bool) (l!1058 Int) (m!57018 Int) (o!13 Int)) (TestExt!11 (__x!92 Int)))))

(declare-fun thiss!7379 () Test!15)

(declare-fun thiss!7380 () Test!15)

(assert (=> start!7308 (and (is-FooBarBaz!11 thiss!7379) (= thiss!7380 thiss!7379) (not (is-FooBarBaz!11 thiss!7380)))))

(declare-fun inv!942 (Test!15) Bool)

(assert (=> start!7308 (inv!942 thiss!7379)))

(assert (=> start!7308 (inv!942 thiss!7380)))

(declare-fun bs!23883 () Bool)

(assert (= bs!23883 start!7308))

(declare-fun m!57015 () Bool)

(assert (=> bs!23883 m!57015))

(declare-fun m!57017 () Bool)

(assert (=> bs!23883 m!57017))

(push 1)

(assert (not start!7308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

