; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12702 () Bool)

(assert start!12702)

(declare-datatypes () ((Foo!116 (Baz!71 (y!2425 Int)) (FooExt!31 (__x!401 Int)) (Bar!77 (y!2426 Int)))))

(declare-fun v!3093 () Foo!116)

(assert (=> start!12702 (and (= v!3093 (Baz!71 0)) (not (is-Baz!71 v!3093)))))

(declare-fun inv!1766 (Foo!116) Bool)

(assert (=> start!12702 (inv!1766 v!3093)))

(declare-fun bs!42016 () Bool)

(assert (= bs!42016 start!12702))

(declare-fun m!89005 () Bool)

(assert (=> bs!42016 m!89005))

(push 1)

(assert (not start!12702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

