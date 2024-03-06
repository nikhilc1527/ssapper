; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!640 () Bool)

(assert start!640)

(declare-datatypes () ((Option!72 (Some!69 (v!304 Int)) (None!69))))

(declare-fun x!1697 () Option!72)

(declare-datatypes () ((MyClass!13 ($anon!36 (abc!24 Int) (something!27 Int)) ($anon!37) (normal!13) (MyClassExt!12 (__x!38 Int)))))

(declare-fun thiss!260 () MyClass!13)

(declare-fun thiss!257 () MyClass!13)

(declare-fun thiss!259 () Option!72)

(assert (=> start!640 (and (is-$anon!37 thiss!257) (= thiss!259 x!1697) (= thiss!260 thiss!257) (not (is-$anon!37 thiss!260)))))

(declare-fun inv!145 (MyClass!13) Bool)

(assert (=> start!640 (inv!145 thiss!257)))

(assert (=> start!640 true))

(assert (=> start!640 (inv!145 thiss!260)))

(declare-fun bs!328 () Bool)

(assert (= bs!328 start!640))

(declare-fun m!7003 () Bool)

(assert (=> bs!328 m!7003))

(declare-fun m!7005 () Bool)

(assert (=> bs!328 m!7005))

(push 1)

(assert (not start!640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

