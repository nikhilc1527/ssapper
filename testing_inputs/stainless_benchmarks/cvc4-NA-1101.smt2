; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8048 () Bool)

(assert start!8048)

(declare-datatypes () ((SomeLaw!28 (SomeLawExt!25 (__x!190 Int)) (RefinedLawExt!15 (__x!191 Int)) (ConcreteOverride!26) (ConcreteNoOverride!26))))

(declare-fun thiss!8280 () SomeLaw!28)

(declare-fun thiss!8281 () SomeLaw!28)

(assert (=> start!8048 (and (is-ConcreteOverride!26 thiss!8280) (= thiss!8281 thiss!8280) (not (is-ConcreteOverride!26 thiss!8281)))))

(assert (=> start!8048 true))

(push 1)

(check-sat)

(pop 1)

