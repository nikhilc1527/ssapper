; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7310 () Bool)

(assert start!7310)

(declare-datatypes () ((Test!16 (FooBarBaz!12 (a!629 Bool) (b!52974 Bool) (c!11517 Bool) (l!1059 Int) (m!57023 Int) (o!14 Int)) (TestExt!12 (__x!93 Int)))))

(declare-fun thiss!7379 () Test!16)

(declare-fun thiss!7382 () Test!16)

(assert (=> start!7310 (and (not (is-FooBarBaz!12 thiss!7379)) (= thiss!7382 thiss!7379) (not (is-TestExt!12 thiss!7382)))))

(declare-fun inv!942 (Test!16) Bool)

(assert (=> start!7310 (inv!942 thiss!7379)))

(assert (=> start!7310 (inv!942 thiss!7382)))

(declare-fun bs!23885 () Bool)

(assert (= bs!23885 start!7310))

(declare-fun m!57020 () Bool)

(assert (=> bs!23885 m!57020))

(declare-fun m!57022 () Bool)

(assert (=> bs!23885 m!57022))

(push 1)

(assert (not start!7310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

