; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8012 () Bool)

(assert start!8012)

(declare-datatypes () ((SomeLaw!18 (SomeLawExt!15 (__x!170 Int)) (RefinedLawExt!5 (__x!171 Int)) (ConcreteOverride!16) (ConcreteNoOverride!16))))

(declare-fun thiss!8290 () SomeLaw!18)

(declare-fun thiss!8291 () SomeLaw!18)

(assert (=> start!8012 (and (or (is-RefinedLawExt!5 thiss!8290) (is-ConcreteOverride!16 thiss!8290) (is-ConcreteNoOverride!16 thiss!8290)) (is-RefinedLawExt!5 thiss!8290) (= thiss!8291 thiss!8290) (not (is-RefinedLawExt!5 thiss!8291)))))

(assert (=> start!8012 true))

(push 1)

(check-sat)

(pop 1)

