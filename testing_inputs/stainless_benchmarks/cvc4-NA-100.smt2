; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!644 () Bool)

(assert start!644)

(assert (=> start!644 false))

(declare-datatypes () ((MyClass!15 ($anon!40 (abc!26 Int) (something!29 Int)) ($anon!41) (normal!15) (MyClassExt!14 (__x!40 Int)))))

(declare-fun thiss!229 () MyClass!15)

(declare-fun inv!145 (MyClass!15) Bool)

(assert (=> start!644 (inv!145 thiss!229)))

(declare-fun bs!332 () Bool)

(assert (= bs!332 start!644))

(declare-fun m!7011 () Bool)

(assert (=> bs!332 m!7011))

(push 1)

(assert (not start!644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

