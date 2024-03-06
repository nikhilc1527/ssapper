; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12706 () Bool)

(assert start!12706)

(declare-datatypes () ((Foo!118 (Baz!73 (y!2429 Int)) (FooExt!33 (__x!403 Int)) (Bar!79 (y!2430 Int)))))

(declare-fun thiss!11230 () Foo!118)

(declare-fun thiss!11237 () Foo!118)

(assert (=> start!12706 (and (not (is-Baz!73 thiss!11230)) (is-FooExt!33 thiss!11230) (= thiss!11237 thiss!11230) (not (is-FooExt!33 thiss!11237)))))

(declare-fun inv!1766 (Foo!118) Bool)

(assert (=> start!12706 (inv!1766 thiss!11230)))

(assert (=> start!12706 (inv!1766 thiss!11237)))

(declare-fun bs!42020 () Bool)

(assert (= bs!42020 start!12706))

(declare-fun m!89011 () Bool)

(assert (=> bs!42020 m!89011))

(declare-fun m!89013 () Bool)

(assert (=> bs!42020 m!89013))

(push 1)

(assert (not start!12706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

