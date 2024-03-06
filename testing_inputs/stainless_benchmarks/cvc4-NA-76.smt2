; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!586 () Bool)

(assert start!586)

(assert (=> start!586 false))

(declare-datatypes () ((Foo!23 ($anon!11 (m!6745 (_ BitVec 32)) (x!1643 (_ BitVec 32))) (FooExt!10 (__x!21 Int)))))

(declare-fun thiss!187 () Foo!23)

(declare-fun inv!135 (Foo!23) Bool)

(assert (=> start!586 (inv!135 thiss!187)))

(declare-fun bs!294 () Bool)

(assert (= bs!294 start!586))

(declare-fun m!6744 () Bool)

(assert (=> bs!294 m!6744))

(push 1)

(assert (not start!586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

