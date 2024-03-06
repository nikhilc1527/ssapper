; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12704 () Bool)

(assert start!12704)

(declare-datatypes () ((Foo!117 (Baz!72 (y!2427 Int)) (FooExt!32 (__x!402 Int)) (Bar!78 (y!2428 Int)))))

(declare-fun thiss!11230 () Foo!117)

(declare-fun thiss!11231 () Foo!117)

(assert (=> start!12704 (and (is-Baz!72 thiss!11230) (= thiss!11231 thiss!11230) (not (is-Baz!72 thiss!11231)))))

(declare-fun inv!1766 (Foo!117) Bool)

(assert (=> start!12704 (inv!1766 thiss!11230)))

(assert (=> start!12704 (inv!1766 thiss!11231)))

(declare-fun bs!42018 () Bool)

(assert (= bs!42018 start!12704))

(declare-fun m!89007 () Bool)

(assert (=> bs!42018 m!89007))

(declare-fun m!89009 () Bool)

(assert (=> bs!42018 m!89009))

(push 1)

(assert (not start!12704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

