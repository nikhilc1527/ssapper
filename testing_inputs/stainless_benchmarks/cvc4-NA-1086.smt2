; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7994 () Bool)

(assert start!7994)

(declare-fun res!26566 () Bool)

(declare-fun e!30502 () Bool)

(assert (=> start!7994 (=> (not res!26566) (not e!30502))))

(declare-datatypes () ((SomeLaw!12 (ConcreteOverride!11) (ConcreteNoOverride!11) (SomeLawExt!9 (__x!155 Int)))))

(declare-fun thiss!8212 () SomeLaw!12)

(assert (=> start!7994 (= res!26566 (is-ConcreteOverride!11 thiss!8212))))

(assert (=> start!7994 e!30502))

(assert (=> start!7994 true))

(declare-fun b!57394 () Bool)

(declare-fun res!26567 () Bool)

(assert (=> b!57394 (=> (not res!26567) (not e!30502))))

(declare-fun value!48 (SomeLaw!12) Int)

(assert (=> b!57394 (= res!26567 (not (= (value!48 thiss!8212) 0)))))

(declare-fun b!57395 () Bool)

(declare-fun thiss!8216 () SomeLaw!12)

(assert (=> b!57395 (= e!30502 (and (= thiss!8216 thiss!8212) (not (is-ConcreteOverride!11 thiss!8216))))))

(assert (= (and start!7994 res!26566) b!57394))

(assert (= (and b!57394 res!26567) b!57395))

(declare-fun m!62230 () Bool)

(assert (=> b!57394 m!62230))

(push 1)

(assert (not b!57394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

