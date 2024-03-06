; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8072 () Bool)

(assert start!8072)

(declare-datatypes () ((SomeLaw!36 (ConcreteOverride!33) (ConcreteNoOverride!33) (RefinedLawExt!23 (__x!210 Int)) (SomeLawExt!33 (__x!211 Int)))))

(declare-fun thiss!8404 () SomeLaw!36)

(declare-fun thiss!8405 () SomeLaw!36)

(assert (=> start!8072 (and (is-ConcreteOverride!33 thiss!8404) (= thiss!8405 thiss!8404) (not (is-ConcreteOverride!33 thiss!8405)))))

(assert (=> start!8072 true))

(push 1)

(check-sat)

(pop 1)

