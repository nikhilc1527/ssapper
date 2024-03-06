; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12708 () Bool)

(assert start!12708)

(declare-datatypes () ((Foo!119 (Baz!74 (y!2431 Int)) (FooExt!34 (__x!404 Int)) (Bar!80 (y!2432 Int)))))

(declare-fun thiss!11230 () Foo!119)

(declare-fun thiss!11243 () Foo!119)

(assert (=> start!12708 (and (not (is-Baz!74 thiss!11230)) (not (is-FooExt!34 thiss!11230)) (= thiss!11243 thiss!11230) (not (is-Bar!80 thiss!11243)))))

(declare-fun inv!1766 (Foo!119) Bool)

(assert (=> start!12708 (inv!1766 thiss!11230)))

(assert (=> start!12708 (inv!1766 thiss!11243)))

(declare-fun bs!42022 () Bool)

(assert (= bs!42022 start!12708))

(declare-fun m!89015 () Bool)

(assert (=> bs!42022 m!89015))

(declare-fun m!89017 () Bool)

(assert (=> bs!42022 m!89017))

(push 1)

(assert (not start!12708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

