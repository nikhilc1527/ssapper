; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8070 () Bool)

(assert start!8070)

(declare-datatypes () ((SomeLaw!34 (SomeLawExt!31 (__x!202 Int)) (RefinedLawExt!21 (__x!203 Int)) (ConcreteOverride!32) (ConcreteNoOverride!32))))

(declare-fun thiss!8341 () SomeLaw!34)

(declare-fun thiss!8348 () SomeLaw!34)

(assert (=> start!8070 (and (not (is-SomeLawExt!31 thiss!8341)) (not (is-RefinedLawExt!21 thiss!8341)) (not (is-ConcreteOverride!32 thiss!8341)) (= thiss!8348 thiss!8341) (not (is-ConcreteNoOverride!32 thiss!8348)))))

(assert (=> start!8070 true))

(push 1)

(check-sat)

(pop 1)

