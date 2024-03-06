; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!634 () Bool)

(assert start!634)

(declare-datatypes () ((MyClass!10 ($anon!30 (abc!21 Int) (something!24 Int)) ($anon!31) (normal!10) (MyClassExt!9 (__x!35 Int)))))

(declare-fun thiss!246 () MyClass!10)

(declare-fun thiss!243 () MyClass!10)

(declare-datatypes () ((Option!69 (Some!66 (v!301 Int)) (None!66))))

(declare-fun x!1690 () Option!69)

(declare-fun x!1687 () Option!69)

(assert (=> start!634 (and (not (is-$anon!30 thiss!243)) (is-$anon!31 thiss!243) (= thiss!246 thiss!243) (= x!1690 x!1687) (not (is-$anon!31 thiss!246)))))

(declare-fun inv!145 (MyClass!10) Bool)

(assert (=> start!634 (inv!145 thiss!243)))

(assert (=> start!634 (inv!145 thiss!246)))

(assert (=> start!634 true))

(declare-fun bs!322 () Bool)

(assert (= bs!322 start!634))

(declare-fun m!6991 () Bool)

(assert (=> bs!322 m!6991))

(declare-fun m!6993 () Bool)

(assert (=> bs!322 m!6993))

(push 1)

(assert (not start!634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

