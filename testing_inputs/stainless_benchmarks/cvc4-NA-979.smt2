; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7332 () Bool)

(assert start!7332)

(assert (=> start!7332 false))

(declare-datatypes () ((Test!23 (FooBarBaz!19 (a!636 Bool) (b!52987 Bool) (c!11524 Bool) (l!1066 Int) (m!57046 Int) (o!21 Int)) (TestExt!19 (__x!100 Int)))))

(declare-fun thiss!7384 () Test!23)

(declare-fun inv!942 (Test!23) Bool)

(assert (=> start!7332 (inv!942 thiss!7384)))

(declare-fun bs!23900 () Bool)

(assert (= bs!23900 start!7332))

(declare-fun m!57045 () Bool)

(assert (=> bs!23900 m!57045))

(push 1)

(assert (not start!7332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

