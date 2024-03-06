; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7302 () Bool)

(assert start!7302)

(declare-datatypes () ((Test!13 (FooBarBaz!10 (a!622 Int) (l!1042 Int)) (TestExt!9 (__x!88 Int)))))

(declare-fun thiss!7358 () Test!13)

(declare-fun thiss!7361 () Test!13)

(assert (=> start!7302 (and (not (is-FooBarBaz!10 thiss!7358)) (= thiss!7361 thiss!7358) (not (is-TestExt!9 thiss!7361)))))

(declare-fun inv!934 (Test!13) Bool)

(assert (=> start!7302 (inv!934 thiss!7358)))

(assert (=> start!7302 (inv!934 thiss!7361)))

(declare-fun bs!23879 () Bool)

(assert (= bs!23879 start!7302))

(declare-fun m!56999 () Bool)

(assert (=> bs!23879 m!56999))

(declare-fun m!57001 () Bool)

(assert (=> bs!23879 m!57001))

(push 1)

(assert (not start!7302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

