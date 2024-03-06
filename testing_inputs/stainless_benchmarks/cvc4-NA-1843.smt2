; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12442 () Bool)

(assert start!12442)

(declare-datatypes () ((A!4313 (C!94) (BExt!5 (__x!334 Int)) (AExt!9 (__x!335 Int)))))

(declare-fun thiss!10819 () A!4313)

(declare-fun thiss!10824 () A!4313)

(assert (=> start!12442 (and (not (is-C!94 thiss!10819)) (not (is-BExt!5 thiss!10819)) (= thiss!10824 thiss!10819) (not (is-AExt!9 thiss!10824)))))

(assert (=> start!12442 true))

(push 1)

(check-sat)

(pop 1)

