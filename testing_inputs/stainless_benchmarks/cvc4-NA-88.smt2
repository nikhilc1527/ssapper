; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!616 () Bool)

(assert start!616)

(declare-datatypes () ((MyClass!4 ($anon!18 (abc!14 Int) (something!18 Int)) ($anon!19) (normal!4) (MyClassExt!3 (__x!29 Int)))))

(declare-fun thiss!220 () MyClass!4)

(declare-fun thiss!223 () MyClass!4)

(assert (=> start!616 (and (not (is-$anon!18 thiss!220)) (is-$anon!19 thiss!220) (= thiss!223 thiss!220) (not (is-$anon!19 thiss!223)))))

(declare-fun inv!145 (MyClass!4) Bool)

(assert (=> start!616 (inv!145 thiss!220)))

(assert (=> start!616 (inv!145 thiss!223)))

(declare-fun bs!310 () Bool)

(assert (= bs!310 start!616))

(declare-fun m!6967 () Bool)

(assert (=> bs!310 m!6967))

(declare-fun m!6969 () Bool)

(assert (=> bs!310 m!6969))

(push 1)

(assert (not start!616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

