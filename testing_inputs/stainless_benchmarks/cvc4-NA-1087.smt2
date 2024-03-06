; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7996 () Bool)

(assert start!7996)

(declare-datatypes () ((SomeLaw!14 (SomeLawExt!11 (__x!162 Int)) (RefinedLawExt!1 (__x!163 Int)) (ConcreteOverride!12) (ConcreteNoOverride!12))))

(declare-fun thiss!8327 () SomeLaw!14)

(declare-fun thiss!8328 () SomeLaw!14)

(assert (=> start!7996 (and (is-SomeLawExt!11 thiss!8327) (= thiss!8328 thiss!8327) (not (is-SomeLawExt!11 thiss!8328)))))

(assert (=> start!7996 true))

(push 1)

(check-sat)

(pop 1)

