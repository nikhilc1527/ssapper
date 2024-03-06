; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7334 () Bool)

(assert start!7334)

(assert (=> start!7334 false))

(declare-datatypes () ((Test!24 (FooBarBaz!20 (a!637 Bool) (b!52988 Bool) (c!11525 Bool) (l!1067 Int) (m!57049 Int) (o!22 Int)) (TestExt!20 (__x!101 Int)))))

(declare-fun thiss!7384 () Test!24)

(declare-fun inv!942 (Test!24) Bool)

(assert (=> start!7334 (inv!942 thiss!7384)))

(declare-fun bs!23902 () Bool)

(assert (= bs!23902 start!7334))

(declare-fun m!57048 () Bool)

(assert (=> bs!23902 m!57048))

(push 1)

(assert (not start!7334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

