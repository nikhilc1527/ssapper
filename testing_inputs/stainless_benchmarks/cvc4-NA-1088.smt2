; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7998 () Bool)

(assert start!7998)

(declare-datatypes () ((SomeLaw!15 (SomeLawExt!12 (__x!164 Int)) (RefinedLawExt!2 (__x!165 Int)) (ConcreteOverride!13) (ConcreteNoOverride!13))))

(declare-fun thiss!8327 () SomeLaw!15)

(declare-fun thiss!8334 () SomeLaw!15)

(assert (=> start!7998 (and (not (is-SomeLawExt!12 thiss!8327)) (= thiss!8334 thiss!8327) (not (is-RefinedLawExt!2 thiss!8334)) (not (is-ConcreteOverride!13 thiss!8334)) (not (is-ConcreteNoOverride!13 thiss!8334)))))

(assert (=> start!7998 true))

(push 1)

(check-sat)

(pop 1)

