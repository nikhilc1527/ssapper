; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!642 () Bool)

(assert start!642)

(declare-datatypes () ((Option!73 (Some!70 (v!305 Int)) (None!70))))

(declare-fun x!1685 () Option!73)

(declare-fun thiss!231 () Option!73)

(declare-datatypes () ((MyClass!14 ($anon!38 (abc!25 Int) (something!28 Int)) ($anon!39) (normal!14) (MyClassExt!13 (__x!39 Int)))))

(declare-fun thiss!229 () MyClass!14)

(declare-fun thiss!232 () MyClass!14)

(assert (=> start!642 (and (is-$anon!38 thiss!229) (= thiss!231 x!1685) (= thiss!232 thiss!229) (not (is-$anon!38 thiss!232)))))

(declare-fun inv!145 (MyClass!14) Bool)

(assert (=> start!642 (inv!145 thiss!229)))

(assert (=> start!642 true))

(assert (=> start!642 (inv!145 thiss!232)))

(declare-fun bs!330 () Bool)

(assert (= bs!330 start!642))

(declare-fun m!7007 () Bool)

(assert (=> bs!330 m!7007))

(declare-fun m!7009 () Bool)

(assert (=> bs!330 m!7009))

(push 1)

(assert (not start!642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

