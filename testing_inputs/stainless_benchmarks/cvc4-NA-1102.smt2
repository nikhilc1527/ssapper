; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8050 () Bool)

(assert start!8050)

(declare-fun res!26709 () Bool)

(declare-fun e!30625 () Bool)

(assert (=> start!8050 (=> (not res!26709) (not e!30625))))

(declare-datatypes () ((SomeLaw!29 (SomeLawExt!26 (__x!192 Int)) (RefinedLawExt!16 (__x!193 Int)) (ConcreteOverride!27) (ConcreteNoOverride!27))))

(declare-fun thiss!8280 () SomeLaw!29)

(assert (=> start!8050 (= res!26709 (is-ConcreteOverride!27 thiss!8280))))

(assert (=> start!8050 e!30625))

(assert (=> start!8050 true))

(declare-fun b!57628 () Bool)

(declare-fun res!26710 () Bool)

(assert (=> b!57628 (=> (not res!26710) (not e!30625))))

(declare-fun res!26577 () Bool)

(declare-fun value!46 (SomeLaw!29) Int)

(assert (=> b!57628 (= res!26710 (= res!26577 (= (value!46 thiss!8280) 42)))))

(declare-fun thiss!8283 () SomeLaw!29)

(declare-fun b!57629 () Bool)

(assert (=> b!57629 (= e!30625 (and res!26577 (= thiss!8283 thiss!8280) (not (is-RefinedLawExt!16 thiss!8283)) (not (is-ConcreteOverride!27 thiss!8283)) (not (is-ConcreteNoOverride!27 thiss!8283))))))

(assert (= (and start!8050 res!26709) b!57628))

(assert (= (and b!57628 res!26710) b!57629))

(declare-fun m!62314 () Bool)

(assert (=> b!57628 m!62314))

(push 1)

(assert (not b!57628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

