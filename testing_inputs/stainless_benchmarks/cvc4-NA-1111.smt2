; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8078 () Bool)

(assert start!8078)

(declare-datatypes () ((SomeLaw!39 (ConcreteOverride!36) (ConcreteNoOverride!36) (RefinedLawExt!26 (__x!216 Int)) (SomeLawExt!36 (__x!217 Int)))))

(declare-fun thiss!8404 () SomeLaw!39)

(declare-fun thiss!8423 () SomeLaw!39)

(assert (=> start!8078 (and (not (is-ConcreteOverride!36 thiss!8404)) (not (is-ConcreteNoOverride!36 thiss!8404)) (not (is-RefinedLawExt!26 thiss!8404)) (= thiss!8423 thiss!8404) (not (is-SomeLawExt!36 thiss!8423)))))

(assert (=> start!8078 true))

(push 1)

(check-sat)

(pop 1)

