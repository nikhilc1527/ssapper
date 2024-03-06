; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7336 () Bool)

(assert start!7336)

(assert (=> start!7336 false))

(declare-datatypes () ((Test!25 (FooBarBaz!21 (a!638 Bool) (b!52989 Bool) (c!11526 Bool) (l!1068 Int) (m!57052 Int) (o!23 Int)) (TestExt!21 (__x!102 Int)))))

(declare-fun thiss!7384 () Test!25)

(declare-fun inv!942 (Test!25) Bool)

(assert (=> start!7336 (inv!942 thiss!7384)))

(declare-fun bs!23904 () Bool)

(assert (= bs!23904 start!7336))

(declare-fun m!57051 () Bool)

(assert (=> bs!23904 m!57051))

(push 1)

(assert (not start!7336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

