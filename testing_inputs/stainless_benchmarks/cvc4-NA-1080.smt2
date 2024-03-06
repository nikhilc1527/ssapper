; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7954 () Bool)

(assert start!7954)

(declare-datatypes () ((SomeLaw!6 (ConcreteOverride!5) (ConcreteNoOverride!5) (SomeLawExt!3 (__x!149 Int)))))

(declare-fun thiss!8184 () SomeLaw!6)

(declare-fun thiss!8198 () SomeLaw!6)

(assert (=> start!7954 (and (not (is-ConcreteOverride!5 thiss!8184)) (not (is-ConcreteNoOverride!5 thiss!8184)) (= thiss!8198 thiss!8184) (not (is-SomeLawExt!3 thiss!8198)))))

(assert (=> start!7954 true))

(push 1)

(check-sat)

(pop 1)

