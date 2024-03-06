; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7280 () Bool)

(assert start!7280)

(assert (=> start!7280 false))

(declare-datatypes () ((Test!6 (FooBarBaz!4 (a!611 Int) (l!1029 Int)) (TestExt!2 (__x!79 Int)))))

(declare-fun thiss!7337 () Test!6)

(declare-fun inv!926 (Test!6) Bool)

(assert (=> start!7280 (inv!926 thiss!7337)))

(declare-fun bs!23866 () Bool)

(assert (= bs!23866 start!7280))

(declare-fun m!56979 () Bool)

(assert (=> bs!23866 m!56979))

(push 1)

(assert (not start!7280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

