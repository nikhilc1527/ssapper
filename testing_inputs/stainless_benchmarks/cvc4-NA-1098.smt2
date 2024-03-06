; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8034 () Bool)

(assert start!8034)

(declare-fun res!26675 () Bool)

(declare-fun e!30589 () Bool)

(assert (=> start!8034 (=> (not res!26675) (not e!30589))))

(declare-datatypes () ((SomeLaw!25 (SomeLawExt!22 (__x!184 Int)) (RefinedLawExt!12 (__x!185 Int)) (ConcreteOverride!23) (ConcreteNoOverride!23))))

(declare-fun thiss!8290 () SomeLaw!25)

(assert (=> start!8034 (= res!26675 (and (or (is-RefinedLawExt!12 thiss!8290) (is-ConcreteOverride!23 thiss!8290) (is-ConcreteNoOverride!23 thiss!8290)) (not (is-RefinedLawExt!12 thiss!8290)) (not (is-ConcreteOverride!23 thiss!8290))))))

(assert (=> start!8034 e!30589))

(assert (=> start!8034 true))

(declare-fun b!57559 () Bool)

(declare-fun res!26676 () Bool)

(assert (=> b!57559 (=> (not res!26676) (not e!30589))))

(declare-fun res!26582 () Bool)

(declare-fun lawNotZero!14 (SomeLaw!25) Bool)

(assert (=> b!57559 (= res!26676 (= res!26582 (lawNotZero!14 thiss!8290)))))

(declare-fun b!57560 () Bool)

(declare-fun thiss!8315 () SomeLaw!25)

(assert (=> b!57560 (= e!30589 (and res!26582 (= thiss!8315 thiss!8290) (not (is-RefinedLawExt!12 thiss!8315)) (not (is-ConcreteOverride!23 thiss!8315)) (not (is-ConcreteNoOverride!23 thiss!8315))))))

(assert (= (and start!8034 res!26675) b!57559))

(assert (= (and b!57559 res!26676) b!57560))

(declare-fun m!62290 () Bool)

(assert (=> b!57559 m!62290))

(push 1)

(assert (not b!57559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

