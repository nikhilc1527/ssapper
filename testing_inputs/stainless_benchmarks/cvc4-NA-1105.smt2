; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8066 () Bool)

(assert start!8066)

(declare-datatypes () ((SomeLaw!32 (SomeLawExt!29 (__x!198 Int)) (RefinedLawExt!19 (__x!199 Int)) (ConcreteOverride!30) (ConcreteNoOverride!30))))

(declare-fun thiss!8341 () SomeLaw!32)

(declare-fun thiss!8344 () SomeLaw!32)

(assert (=> start!8066 (and (not (is-SomeLawExt!29 thiss!8341)) (is-RefinedLawExt!19 thiss!8341) (= thiss!8344 thiss!8341) (not (is-RefinedLawExt!19 thiss!8344)))))

(assert (=> start!8066 true))

(push 1)

(check-sat)

(pop 1)

