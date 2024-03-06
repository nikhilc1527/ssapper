; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7328 () Bool)

(assert start!7328)

(assert (=> start!7328 false))

(declare-datatypes () ((Test!21 (FooBarBaz!17 (a!634 Bool) (b!52985 Bool) (c!11522 Bool) (l!1064 Int) (m!57040 Int) (o!19 Int)) (TestExt!17 (__x!98 Int)))))

(declare-fun thiss!7384 () Test!21)

(declare-fun inv!942 (Test!21) Bool)

(assert (=> start!7328 (inv!942 thiss!7384)))

(declare-fun bs!23896 () Bool)

(assert (= bs!23896 start!7328))

(declare-fun m!57039 () Bool)

(assert (=> bs!23896 m!57039))

(push 1)

(assert (not start!7328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

