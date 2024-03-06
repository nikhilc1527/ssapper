; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8016 () Bool)

(assert start!8016)

(declare-datatypes () ((SomeLaw!20 (SomeLawExt!17 (__x!174 Int)) (RefinedLawExt!7 (__x!175 Int)) (ConcreteOverride!18) (ConcreteNoOverride!18))))

(declare-fun thiss!8290 () SomeLaw!20)

(declare-fun thiss!8311 () SomeLaw!20)

(assert (=> start!8016 (and (or (is-RefinedLawExt!7 thiss!8290) (is-ConcreteOverride!18 thiss!8290) (is-ConcreteNoOverride!18 thiss!8290)) (not (is-RefinedLawExt!7 thiss!8290)) (not (is-ConcreteOverride!18 thiss!8290)) (= thiss!8311 thiss!8290) (not (is-ConcreteNoOverride!18 thiss!8311)))))

(assert (=> start!8016 true))

(push 1)

(check-sat)

(pop 1)

