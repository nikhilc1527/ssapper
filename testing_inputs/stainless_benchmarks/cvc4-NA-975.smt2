; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7324 () Bool)

(assert start!7324)

(assert (=> start!7324 false))

(declare-datatypes () ((Test!19 (FooBarBaz!15 (a!632 Bool) (b!52983 Bool) (c!11520 Bool) (l!1062 Int) (m!57034 Int) (o!17 Int)) (TestExt!15 (__x!96 Int)))))

(declare-fun thiss!7378 () Test!19)

(declare-fun inv!942 (Test!19) Bool)

(assert (=> start!7324 (inv!942 thiss!7378)))

(declare-fun bs!23892 () Bool)

(assert (= bs!23892 start!7324))

(declare-fun m!57033 () Bool)

(assert (=> bs!23892 m!57033))

(push 1)

(assert (not start!7324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

