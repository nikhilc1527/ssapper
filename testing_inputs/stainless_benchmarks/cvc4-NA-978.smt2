; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7330 () Bool)

(assert start!7330)

(assert (=> start!7330 false))

(declare-datatypes () ((Test!22 (FooBarBaz!18 (a!635 Bool) (b!52986 Bool) (c!11523 Bool) (l!1065 Int) (m!57043 Int) (o!20 Int)) (TestExt!18 (__x!99 Int)))))

(declare-fun thiss!7384 () Test!22)

(declare-fun inv!942 (Test!22) Bool)

(assert (=> start!7330 (inv!942 thiss!7384)))

(declare-fun bs!23898 () Bool)

(assert (= bs!23898 start!7330))

(declare-fun m!57042 () Bool)

(assert (=> bs!23898 m!57042))

(push 1)

(assert (not start!7330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

