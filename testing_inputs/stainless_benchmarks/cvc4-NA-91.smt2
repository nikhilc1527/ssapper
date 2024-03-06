; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!622 () Bool)

(assert start!622)

(declare-datatypes () ((MyClass!7 ($anon!24 (abc!17 Int) (something!21 Int)) ($anon!25) (normal!7) (MyClassExt!6 (__x!32 Int)))))

(declare-fun thiss!216 () MyClass!7)

(declare-fun thiss!217 () MyClass!7)

(declare-fun y!225 () Bool)

(declare-fun y!226 () Bool)

(assert (=> start!622 (and (is-MyClassExt!6 thiss!216) (= thiss!217 thiss!216) (= y!226 y!225) (not (is-MyClassExt!6 thiss!217)))))

(declare-fun inv!145 (MyClass!7) Bool)

(assert (=> start!622 (inv!145 thiss!216)))

(assert (=> start!622 (inv!145 thiss!217)))

(assert (=> start!622 true))

(declare-fun bs!316 () Bool)

(assert (= bs!316 start!622))

(declare-fun m!6979 () Bool)

(assert (=> bs!316 m!6979))

(declare-fun m!6981 () Bool)

(assert (=> bs!316 m!6981))

(push 1)

(assert (not start!622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

