; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7326 () Bool)

(assert start!7326)

(assert (=> start!7326 false))

(declare-datatypes () ((Test!20 (FooBarBaz!16 (a!633 Bool) (b!52984 Bool) (c!11521 Bool) (l!1063 Int) (m!57037 Int) (o!18 Int)) (TestExt!16 (__x!97 Int)))))

(declare-fun thiss!7378 () Test!20)

(declare-fun inv!942 (Test!20) Bool)

(assert (=> start!7326 (inv!942 thiss!7378)))

(declare-fun bs!23894 () Bool)

(assert (= bs!23894 start!7326))

(declare-fun m!57036 () Bool)

(assert (=> bs!23894 m!57036))

(push 1)

(assert (not start!7326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

