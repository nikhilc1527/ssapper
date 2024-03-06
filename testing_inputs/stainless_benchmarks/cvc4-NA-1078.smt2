; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7950 () Bool)

(assert start!7950)

(declare-datatypes () ((SomeLaw!4 (ConcreteOverride!3) (ConcreteNoOverride!3) (SomeLawExt!1 (__x!147 Int)))))

(declare-fun thiss!8184 () SomeLaw!4)

(declare-fun thiss!8185 () SomeLaw!4)

(assert (=> start!7950 (and (is-ConcreteOverride!3 thiss!8184) (= thiss!8185 thiss!8184) (not (is-ConcreteOverride!3 thiss!8185)))))

(assert (=> start!7950 true))

(push 1)

(check-sat)

(pop 1)

