; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!646 () Bool)

(assert start!646)

(declare-datatypes () ((Option!74 (Some!71 (v!306 Int)) (None!71))))

(declare-fun thiss!254 () Option!74)

(declare-fun x!1696 () Option!74)

(declare-datatypes () ((MyClass!16 ($anon!42 (abc!27 Int) (something!30 Int)) ($anon!43) (normal!16) (MyClassExt!15 (__x!41 Int)))))

(declare-fun thiss!255 () MyClass!16)

(declare-fun thiss!252 () MyClass!16)

(assert (=> start!646 (and (is-normal!16 thiss!252) (= thiss!254 x!1696) (= thiss!255 thiss!252) (not (is-normal!16 thiss!255)))))

(declare-fun inv!145 (MyClass!16) Bool)

(assert (=> start!646 (inv!145 thiss!252)))

(assert (=> start!646 true))

(assert (=> start!646 (inv!145 thiss!255)))

(declare-fun bs!334 () Bool)

(assert (= bs!334 start!646))

(declare-fun m!7013 () Bool)

(assert (=> bs!334 m!7013))

(declare-fun m!7015 () Bool)

(assert (=> bs!334 m!7015))

(push 1)

(assert (not start!646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

