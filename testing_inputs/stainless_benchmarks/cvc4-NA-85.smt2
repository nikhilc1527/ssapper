; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!610 () Bool)

(assert start!610)

(declare-datatypes () ((MyClass!2 ($anon!14 (abc!12 Int) (something!16 Int)) ($anon!15) (normal!2) (MyClassExt!1 (__x!27 Int)))))

(declare-fun v!296 () MyClass!2)

(assert (=> start!610 (and (= v!296 normal!2) (not (is-normal!2 v!296)))))

(declare-fun inv!145 (MyClass!2) Bool)

(assert (=> start!610 (inv!145 v!296)))

(declare-fun bs!305 () Bool)

(assert (= bs!305 start!610))

(declare-fun m!6961 () Bool)

(assert (=> bs!305 m!6961))

(push 1)

(assert (not start!610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

