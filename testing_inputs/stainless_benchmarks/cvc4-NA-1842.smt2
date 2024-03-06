; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12440 () Bool)

(assert start!12440)

(declare-datatypes () ((A!4312 (C!93) (BExt!4 (__x!332 Int)) (AExt!8 (__x!333 Int)))))

(declare-fun thiss!10819 () A!4312)

(declare-fun thiss!10822 () A!4312)

(assert (=> start!12440 (and (not (is-C!93 thiss!10819)) (is-BExt!4 thiss!10819) (= thiss!10822 thiss!10819) (not (is-BExt!4 thiss!10822)))))

(assert (=> start!12440 true))

(push 1)

(check-sat)

(pop 1)

