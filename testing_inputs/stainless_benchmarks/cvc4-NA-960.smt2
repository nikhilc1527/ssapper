; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7286 () Bool)

(assert start!7286)

(declare-datatypes () ((Test!7 (FooBarBaz!5 (a!612 Int) (l!1030 Int)) (TestExt!3 (__x!80 Int)))))

(declare-fun thiss!7338 () Test!7)

(declare-fun thiss!7341 () Test!7)

(assert (=> start!7286 (and (not (is-FooBarBaz!5 thiss!7338)) (= thiss!7341 thiss!7338) (not (is-TestExt!3 thiss!7341)))))

(declare-fun inv!926 (Test!7) Bool)

(assert (=> start!7286 (inv!926 thiss!7338)))

(assert (=> start!7286 (inv!926 thiss!7341)))

(declare-fun bs!23870 () Bool)

(assert (= bs!23870 start!7286))

(declare-fun m!56981 () Bool)

(assert (=> bs!23870 m!56981))

(declare-fun m!56983 () Bool)

(assert (=> bs!23870 m!56983))

(push 1)

(assert (not start!7286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

