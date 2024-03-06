; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7952 () Bool)

(assert start!7952)

(declare-datatypes () ((SomeLaw!5 (ConcreteOverride!4) (ConcreteNoOverride!4) (SomeLawExt!2 (__x!148 Int)))))

(declare-fun thiss!8184 () SomeLaw!5)

(declare-fun thiss!8192 () SomeLaw!5)

(assert (=> start!7952 (and (not (is-ConcreteOverride!4 thiss!8184)) (is-ConcreteNoOverride!4 thiss!8184) (= thiss!8192 thiss!8184) (not (is-ConcreteNoOverride!4 thiss!8192)))))

(assert (=> start!7952 true))

(push 1)

(check-sat)

(pop 1)

