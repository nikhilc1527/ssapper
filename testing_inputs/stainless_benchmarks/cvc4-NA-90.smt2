; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!620 () Bool)

(assert start!620)

(declare-datatypes () ((MyClass!6 ($anon!22 (abc!16 Int) (something!20 Int)) ($anon!23) (normal!6) (MyClassExt!5 (__x!31 Int)))))

(declare-fun thiss!220 () MyClass!6)

(declare-fun thiss!227 () MyClass!6)

(assert (=> start!620 (and (not (is-$anon!22 thiss!220)) (not (is-$anon!23 thiss!220)) (not (is-normal!6 thiss!220)) (= thiss!227 thiss!220) (not (is-MyClassExt!5 thiss!227)))))

(declare-fun inv!145 (MyClass!6) Bool)

(assert (=> start!620 (inv!145 thiss!220)))

(assert (=> start!620 (inv!145 thiss!227)))

(declare-fun bs!314 () Bool)

(assert (= bs!314 start!620))

(declare-fun m!6975 () Bool)

(assert (=> bs!314 m!6975))

(declare-fun m!6977 () Bool)

(assert (=> bs!314 m!6977))

(push 1)

(assert (not start!620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

