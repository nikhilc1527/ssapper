; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11896 () Bool)

(assert start!11896)

(declare-datatypes () ((A!3669 (C!87) (B!632))))

(declare-fun thiss!10095 () A!3669)

(declare-fun thiss!10098 () A!3669)

(assert (=> start!11896 (and (not (is-C!87 thiss!10095)) (= thiss!10098 thiss!10095) (not (is-B!632 thiss!10098)))))

(assert (=> start!11896 true))

(push 1)

(check-sat)

(pop 1)

