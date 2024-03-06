; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8026 () Bool)

(assert start!8026)

(declare-fun res!26650 () Bool)

(declare-fun e!30568 () Bool)

(assert (=> start!8026 (=> (not res!26650) (not e!30568))))

(declare-datatypes () ((SomeLaw!23 (SomeLawExt!20 (__x!180 Int)) (RefinedLawExt!10 (__x!181 Int)) (ConcreteOverride!21) (ConcreteNoOverride!21))))

(declare-fun thiss!8290 () SomeLaw!23)

(assert (=> start!8026 (= res!26650 (and (or (is-RefinedLawExt!10 thiss!8290) (is-ConcreteOverride!21 thiss!8290) (is-ConcreteNoOverride!21 thiss!8290)) (not (is-RefinedLawExt!10 thiss!8290)) (is-ConcreteOverride!21 thiss!8290)))))

(assert (=> start!8026 e!30568))

(assert (=> start!8026 true))

(declare-fun b!57517 () Bool)

(declare-fun res!26651 () Bool)

(assert (=> b!57517 (=> (not res!26651) (not e!30568))))

(declare-fun res!26580 () Bool)

(declare-fun lawNotZero!4 (SomeLaw!23) Bool)

(assert (=> b!57517 (= res!26651 (= res!26580 (lawNotZero!4 thiss!8290)))))

(declare-fun thiss!8305 () SomeLaw!23)

(declare-fun b!57518 () Bool)

(assert (=> b!57518 (= e!30568 (and res!26580 (= thiss!8305 thiss!8290) (not (is-RefinedLawExt!10 thiss!8305)) (not (is-ConcreteOverride!21 thiss!8305)) (not (is-ConcreteNoOverride!21 thiss!8305))))))

(assert (= (and start!8026 res!26650) b!57517))

(assert (= (and b!57517 res!26651) b!57518))

(declare-fun m!62276 () Bool)

(assert (=> b!57517 m!62276))

(push 1)

(assert (not b!57517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

