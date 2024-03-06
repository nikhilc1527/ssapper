; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!632 () Bool)

(assert start!632)

(declare-datatypes () ((MyClass!9 ($anon!28 (abc!20 Int) (something!23 Int)) ($anon!29) (normal!9) (MyClassExt!8 (__x!34 Int)))))

(declare-fun thiss!243 () MyClass!9)

(declare-fun thiss!244 () MyClass!9)

(declare-datatypes () ((Option!68 (Some!65 (v!300 Int)) (None!65))))

(declare-fun x!1688 () Option!68)

(declare-fun x!1687 () Option!68)

(assert (=> start!632 (and (is-$anon!28 thiss!243) (= thiss!244 thiss!243) (= x!1688 x!1687) (not (is-$anon!28 thiss!244)))))

(declare-fun inv!145 (MyClass!9) Bool)

(assert (=> start!632 (inv!145 thiss!243)))

(assert (=> start!632 (inv!145 thiss!244)))

(assert (=> start!632 true))

(declare-fun bs!320 () Bool)

(assert (= bs!320 start!632))

(declare-fun m!6987 () Bool)

(assert (=> bs!320 m!6987))

(declare-fun m!6989 () Bool)

(assert (=> bs!320 m!6989))

(push 1)

(assert (not start!632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

