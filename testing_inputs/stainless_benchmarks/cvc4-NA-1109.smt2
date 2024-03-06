; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8074 () Bool)

(assert start!8074)

(declare-datatypes () ((SomeLaw!37 (ConcreteOverride!34) (ConcreteNoOverride!34) (RefinedLawExt!24 (__x!212 Int)) (SomeLawExt!34 (__x!213 Int)))))

(declare-fun thiss!8404 () SomeLaw!37)

(declare-fun thiss!8411 () SomeLaw!37)

(assert (=> start!8074 (and (not (is-ConcreteOverride!34 thiss!8404)) (is-ConcreteNoOverride!34 thiss!8404) (= thiss!8411 thiss!8404) (not (is-ConcreteNoOverride!34 thiss!8411)))))

(assert (=> start!8074 true))

(push 1)

(check-sat)

(pop 1)

