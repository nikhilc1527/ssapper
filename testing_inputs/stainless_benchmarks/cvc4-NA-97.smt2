; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!638 () Bool)

(assert start!638)

(declare-datatypes () ((MyClass!12 ($anon!34 (abc!23 Int) (something!26 Int)) ($anon!35) (normal!12) (MyClassExt!11 (__x!37 Int)))))

(declare-fun thiss!243 () MyClass!12)

(declare-fun thiss!250 () MyClass!12)

(declare-datatypes () ((Option!71 (Some!68 (v!303 Int)) (None!68))))

(declare-fun x!1694 () Option!71)

(declare-fun x!1687 () Option!71)

(assert (=> start!638 (and (not (is-$anon!34 thiss!243)) (not (is-$anon!35 thiss!243)) (not (is-normal!12 thiss!243)) (= thiss!250 thiss!243) (= x!1694 x!1687) (not (is-MyClassExt!11 thiss!250)))))

(declare-fun inv!145 (MyClass!12) Bool)

(assert (=> start!638 (inv!145 thiss!243)))

(assert (=> start!638 (inv!145 thiss!250)))

(assert (=> start!638 true))

(declare-fun bs!326 () Bool)

(assert (= bs!326 start!638))

(declare-fun m!6999 () Bool)

(assert (=> bs!326 m!6999))

(declare-fun m!7001 () Bool)

(assert (=> bs!326 m!7001))

(push 1)

(assert (not start!638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

