; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!636 () Bool)

(assert start!636)

(declare-datatypes () ((MyClass!11 ($anon!32 (abc!22 Int) (something!25 Int)) ($anon!33) (normal!11) (MyClassExt!10 (__x!36 Int)))))

(declare-fun thiss!243 () MyClass!11)

(declare-datatypes () ((Option!70 (Some!67 (v!302 Int)) (None!67))))

(declare-fun x!1692 () Option!70)

(declare-fun thiss!248 () MyClass!11)

(declare-fun x!1687 () Option!70)

(assert (=> start!636 (and (not (is-$anon!32 thiss!243)) (not (is-$anon!33 thiss!243)) (is-normal!11 thiss!243) (= thiss!248 thiss!243) (= x!1692 x!1687) (not (is-normal!11 thiss!248)))))

(declare-fun inv!145 (MyClass!11) Bool)

(assert (=> start!636 (inv!145 thiss!243)))

(assert (=> start!636 (inv!145 thiss!248)))

(assert (=> start!636 true))

(declare-fun bs!324 () Bool)

(assert (= bs!324 start!636))

(declare-fun m!6995 () Bool)

(assert (=> bs!324 m!6995))

(declare-fun m!6997 () Bool)

(assert (=> bs!324 m!6997))

(push 1)

(assert (not start!636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

