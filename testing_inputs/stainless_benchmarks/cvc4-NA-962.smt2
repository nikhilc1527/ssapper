; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7294 () Bool)

(assert start!7294)

(declare-fun l!1023 () Int)

(declare-datatypes () ((Test!9 (FooBarBaz!7 (a!614 Int) (l!1032 Int)) (TestExt!5 (__x!82 Int)))))

(declare-fun abc!30 () Test!9)

(declare-fun x!20529 () Int)

(assert (=> start!7294 (and (> l!1023 1) (= abc!30 (FooBarBaz!7 x!20529 l!1023)) (not (is-FooBarBaz!7 abc!30)))))

(assert (=> start!7294 true))

(declare-fun inv!926 (Test!9) Bool)

(assert (=> start!7294 (inv!926 abc!30)))

(declare-fun bs!23873 () Bool)

(assert (= bs!23873 start!7294))

(declare-fun m!56989 () Bool)

(assert (=> bs!23873 m!56989))

(push 1)

(assert (not start!7294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

