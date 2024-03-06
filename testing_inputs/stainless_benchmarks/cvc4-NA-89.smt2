; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!618 () Bool)

(assert start!618)

(declare-datatypes () ((MyClass!5 ($anon!20 (abc!15 Int) (something!19 Int)) ($anon!21) (normal!5) (MyClassExt!4 (__x!30 Int)))))

(declare-fun thiss!220 () MyClass!5)

(declare-fun thiss!225 () MyClass!5)

(assert (=> start!618 (and (not (is-$anon!20 thiss!220)) (not (is-$anon!21 thiss!220)) (is-normal!5 thiss!220) (= thiss!225 thiss!220) (not (is-normal!5 thiss!225)))))

(declare-fun inv!145 (MyClass!5) Bool)

(assert (=> start!618 (inv!145 thiss!220)))

(assert (=> start!618 (inv!145 thiss!225)))

(declare-fun bs!312 () Bool)

(assert (= bs!312 start!618))

(declare-fun m!6971 () Bool)

(assert (=> bs!312 m!6971))

(declare-fun m!6973 () Bool)

(assert (=> bs!312 m!6973))

(push 1)

(assert (not start!618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

