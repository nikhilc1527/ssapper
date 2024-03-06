; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8014 () Bool)

(assert start!8014)

(declare-datatypes () ((SomeLaw!19 (SomeLawExt!16 (__x!172 Int)) (RefinedLawExt!6 (__x!173 Int)) (ConcreteOverride!17) (ConcreteNoOverride!17))))

(declare-fun thiss!8290 () SomeLaw!19)

(declare-fun thiss!8301 () SomeLaw!19)

(assert (=> start!8014 (and (or (is-RefinedLawExt!6 thiss!8290) (is-ConcreteOverride!17 thiss!8290) (is-ConcreteNoOverride!17 thiss!8290)) (not (is-RefinedLawExt!6 thiss!8290)) (is-ConcreteOverride!17 thiss!8290) (= thiss!8301 thiss!8290) (not (is-ConcreteOverride!17 thiss!8301)))))

(assert (=> start!8014 true))

(push 1)

(check-sat)

(pop 1)

