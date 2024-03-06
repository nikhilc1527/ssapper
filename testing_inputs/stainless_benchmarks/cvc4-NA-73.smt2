; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!580 () Bool)

(assert start!580)

(declare-datatypes () ((Foo!20 ($anon!8 (m!6736 (_ BitVec 32)) (x!1640 (_ BitVec 32))) (FooExt!7 (__x!18 Int)))))

(declare-fun thiss!183 () Foo!20)

(declare-fun thiss!184 () Foo!20)

(assert (=> start!580 (and (is-$anon!8 thiss!183) (= thiss!184 thiss!183) (not (is-$anon!8 thiss!184)))))

(declare-fun inv!135 (Foo!20) Bool)

(assert (=> start!580 (inv!135 thiss!183)))

(assert (=> start!580 (inv!135 thiss!184)))

(declare-fun bs!288 () Bool)

(assert (= bs!288 start!580))

(declare-fun m!6733 () Bool)

(assert (=> bs!288 m!6733))

(declare-fun m!6735 () Bool)

(assert (=> bs!288 m!6735))

(push 1)

(assert (not start!580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

