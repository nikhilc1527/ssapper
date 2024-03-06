; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!584 () Bool)

(assert start!584)

(assert (=> start!584 false))

(declare-datatypes () ((Foo!22 ($anon!10 (m!6742 (_ BitVec 32)) (x!1642 (_ BitVec 32))) (FooExt!9 (__x!20 Int)))))

(declare-fun thiss!187 () Foo!22)

(declare-fun inv!135 (Foo!22) Bool)

(assert (=> start!584 (inv!135 thiss!187)))

(declare-fun bs!292 () Bool)

(assert (= bs!292 start!584))

(declare-fun m!6741 () Bool)

(assert (=> bs!292 m!6741))

(push 1)

(assert (not start!584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

