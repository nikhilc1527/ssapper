; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!614 () Bool)

(assert start!614)

(declare-datatypes () ((MyClass!3 ($anon!16 (abc!13 Int) (something!17 Int)) ($anon!17) (normal!3) (MyClassExt!2 (__x!28 Int)))))

(declare-fun thiss!240 () MyClass!3)

(declare-fun thiss!241 () MyClass!3)

(assert (=> start!614 (and (is-$anon!16 thiss!240) (= thiss!241 thiss!240) (not (is-$anon!16 thiss!241)))))

(declare-fun inv!145 (MyClass!3) Bool)

(assert (=> start!614 (inv!145 thiss!240)))

(assert (=> start!614 (inv!145 thiss!241)))

(declare-fun bs!308 () Bool)

(assert (= bs!308 start!614))

(declare-fun m!6963 () Bool)

(assert (=> bs!308 m!6963))

(declare-fun m!6965 () Bool)

(assert (=> bs!308 m!6965))

(push 1)

(assert (not start!614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

