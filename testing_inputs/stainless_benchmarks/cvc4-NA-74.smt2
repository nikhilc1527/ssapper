; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!582 () Bool)

(assert start!582)

(assert (=> start!582 false))

(declare-datatypes () ((Foo!21 ($anon!9 (m!6739 (_ BitVec 32)) (x!1641 (_ BitVec 32))) (FooExt!8 (__x!19 Int)))))

(declare-fun thiss!187 () Foo!21)

(declare-fun inv!135 (Foo!21) Bool)

(assert (=> start!582 (inv!135 thiss!187)))

(declare-fun bs!290 () Bool)

(assert (= bs!290 start!582))

(declare-fun m!6738 () Bool)

(assert (=> bs!290 m!6738))

(push 1)

(assert (not start!582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

