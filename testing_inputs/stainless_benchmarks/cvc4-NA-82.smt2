; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!600 () Bool)

(assert start!600)

(declare-datatypes () ((Foo!24 ($anon!12 (m!6954 (_ BitVec 32)) (x!1646 (_ BitVec 32))) (FooExt!11 (__x!22 Int)))))

(declare-fun thiss!191 () Foo!24)

(declare-fun thiss!194 () Foo!24)

(assert (=> start!600 (and (not (is-$anon!12 thiss!191)) (= thiss!194 thiss!191) (not (is-FooExt!11 thiss!194)))))

(declare-fun inv!135 (Foo!24) Bool)

(assert (=> start!600 (inv!135 thiss!191)))

(assert (=> start!600 (inv!135 thiss!194)))

(declare-fun bs!301 () Bool)

(assert (= bs!301 start!600))

(declare-fun m!6951 () Bool)

(assert (=> bs!301 m!6951))

(declare-fun m!6953 () Bool)

(assert (=> bs!301 m!6953))

(push 1)

(assert (not start!600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

