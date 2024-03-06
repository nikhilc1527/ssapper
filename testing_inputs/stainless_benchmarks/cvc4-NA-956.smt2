; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7278 () Bool)

(assert start!7278)

(declare-datatypes () ((Test!5 (FooBarBaz!3 (a!610 Int) (l!1028 Int)) (TestExt!1 (__x!78 Int)))))

(declare-fun thiss!7334 () Test!5)

(declare-fun thiss!7335 () Test!5)

(assert (=> start!7278 (and (is-FooBarBaz!3 thiss!7334) (= thiss!7335 thiss!7334) (not (is-FooBarBaz!3 thiss!7335)))))

(declare-fun inv!926 (Test!5) Bool)

(assert (=> start!7278 (inv!926 thiss!7334)))

(assert (=> start!7278 (inv!926 thiss!7335)))

(declare-fun bs!23864 () Bool)

(assert (= bs!23864 start!7278))

(declare-fun m!56975 () Bool)

(assert (=> bs!23864 m!56975))

(declare-fun m!56977 () Bool)

(assert (=> bs!23864 m!56977))

(push 1)

(assert (not start!7278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

