; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12700 () Bool)

(assert start!12700)

(declare-datatypes () ((Foo!115 (Baz!70 (y!2423 Int)) (FooExt!30 (__x!400 Int)) (Bar!76 (y!2424 Int)))))

(declare-fun v!3094 () Foo!115)

(assert (=> start!12700 (and (= v!3094 (Bar!76 12)) (not (is-Bar!76 v!3094)))))

(declare-fun inv!1766 (Foo!115) Bool)

(assert (=> start!12700 (inv!1766 v!3094)))

(declare-fun bs!42014 () Bool)

(assert (= bs!42014 start!12700))

(declare-fun m!89003 () Bool)

(assert (=> bs!42014 m!89003))

(push 1)

(assert (not start!12700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

