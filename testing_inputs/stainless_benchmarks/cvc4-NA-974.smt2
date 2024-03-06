; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7322 () Bool)

(assert start!7322)

(assert (=> start!7322 false))

(declare-datatypes () ((Test!18 (FooBarBaz!14 (a!631 Bool) (b!52982 Bool) (c!11519 Bool) (l!1061 Int) (m!57031 Int) (o!16 Int)) (TestExt!14 (__x!95 Int)))))

(declare-fun thiss!7378 () Test!18)

(declare-fun inv!942 (Test!18) Bool)

(assert (=> start!7322 (inv!942 thiss!7378)))

(declare-fun bs!23890 () Bool)

(assert (= bs!23890 start!7322))

(declare-fun m!57030 () Bool)

(assert (=> bs!23890 m!57030))

(push 1)

(assert (not start!7322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

