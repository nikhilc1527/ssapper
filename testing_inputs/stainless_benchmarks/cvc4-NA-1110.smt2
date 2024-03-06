; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8076 () Bool)

(assert start!8076)

(declare-datatypes () ((SomeLaw!38 (ConcreteOverride!35) (ConcreteNoOverride!35) (RefinedLawExt!25 (__x!214 Int)) (SomeLawExt!35 (__x!215 Int)))))

(declare-fun thiss!8404 () SomeLaw!38)

(declare-fun thiss!8417 () SomeLaw!38)

(assert (=> start!8076 (and (not (is-ConcreteOverride!35 thiss!8404)) (not (is-ConcreteNoOverride!35 thiss!8404)) (is-RefinedLawExt!25 thiss!8404) (= thiss!8417 thiss!8404) (not (is-RefinedLawExt!25 thiss!8417)))))

(assert (=> start!8076 true))

(push 1)

(check-sat)

(pop 1)

