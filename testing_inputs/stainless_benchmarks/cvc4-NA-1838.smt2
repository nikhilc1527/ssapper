; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12428 () Bool)

(assert start!12428)

(declare-datatypes () ((A!4296 (AExt!3 (__x!321 Int)) (C!89))))

(declare-fun thiss!10805 () A!4296)

(declare-fun thiss!10808 () A!4296)

(assert (=> start!12428 (and (not (is-AExt!3 thiss!10805)) (= thiss!10808 thiss!10805) (not (is-C!89 thiss!10808)))))

(assert (=> start!12428 true))

(push 1)

(check-sat)

(pop 1)

