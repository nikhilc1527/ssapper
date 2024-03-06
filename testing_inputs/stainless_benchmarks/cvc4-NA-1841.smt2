; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12438 () Bool)

(assert start!12438)

(declare-datatypes () ((A!4311 (C!92) (BExt!3 (__x!330 Int)) (AExt!7 (__x!331 Int)))))

(declare-fun thiss!10819 () A!4311)

(declare-fun thiss!10820 () A!4311)

(assert (=> start!12438 (and (is-C!92 thiss!10819) (= thiss!10820 thiss!10819) (not (is-C!92 thiss!10820)))))

(assert (=> start!12438 true))

(push 1)

(check-sat)

(pop 1)

