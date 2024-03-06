; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8068 () Bool)

(assert start!8068)

(declare-datatypes () ((SomeLaw!33 (SomeLawExt!30 (__x!200 Int)) (RefinedLawExt!20 (__x!201 Int)) (ConcreteOverride!31) (ConcreteNoOverride!31))))

(declare-fun thiss!8341 () SomeLaw!33)

(declare-fun thiss!8346 () SomeLaw!33)

(assert (=> start!8068 (and (not (is-SomeLawExt!30 thiss!8341)) (not (is-RefinedLawExt!20 thiss!8341)) (is-ConcreteOverride!31 thiss!8341) (= thiss!8346 thiss!8341) (not (is-ConcreteOverride!31 thiss!8346)))))

(assert (=> start!8068 true))

(push 1)

(check-sat)

(pop 1)

