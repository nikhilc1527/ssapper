; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8064 () Bool)

(assert start!8064)

(declare-datatypes () ((SomeLaw!31 (SomeLawExt!28 (__x!196 Int)) (RefinedLawExt!18 (__x!197 Int)) (ConcreteOverride!29) (ConcreteNoOverride!29))))

(declare-fun thiss!8272 () SomeLaw!31)

(declare-fun res!26576 () Bool)

(declare-fun thiss!8273 () SomeLaw!31)

(assert (=> start!8064 (and (is-ConcreteNoOverride!29 thiss!8272) (= res!26576 true) (= thiss!8273 thiss!8272) (not (is-RefinedLawExt!18 thiss!8273)) (not (is-ConcreteOverride!29 thiss!8273)) (not (is-ConcreteNoOverride!29 thiss!8273)))))

(assert (=> start!8064 true))

(push 1)

(check-sat)

(pop 1)

