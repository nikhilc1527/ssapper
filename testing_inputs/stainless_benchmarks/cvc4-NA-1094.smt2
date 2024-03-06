; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8018 () Bool)

(assert start!8018)

(declare-fun res!26623 () Bool)

(declare-fun e!30547 () Bool)

(assert (=> start!8018 (=> (not res!26623) (not e!30547))))

(declare-datatypes () ((SomeLaw!21 (SomeLawExt!18 (__x!176 Int)) (RefinedLawExt!8 (__x!177 Int)) (ConcreteOverride!19) (ConcreteNoOverride!19))))

(declare-fun thiss!8290 () SomeLaw!21)

(assert (=> start!8018 (= res!26623 (and (or (is-RefinedLawExt!8 thiss!8290) (is-ConcreteOverride!19 thiss!8290) (is-ConcreteNoOverride!19 thiss!8290)) (is-RefinedLawExt!8 thiss!8290)))))

(assert (=> start!8018 e!30547))

(assert (=> start!8018 true))

(declare-fun b!57475 () Bool)

(declare-fun res!26624 () Bool)

(assert (=> b!57475 (=> (not res!26624) (not e!30547))))

(declare-fun res!26578 () Bool)

(declare-fun lawNotZero!16 (SomeLaw!21) Bool)

(assert (=> b!57475 (= res!26624 (= res!26578 (lawNotZero!16 thiss!8290)))))

(declare-fun b!57476 () Bool)

(declare-fun thiss!8295 () SomeLaw!21)

(assert (=> b!57476 (= e!30547 (and res!26578 (= thiss!8295 thiss!8290) (not (is-RefinedLawExt!8 thiss!8295)) (not (is-ConcreteOverride!19 thiss!8295)) (not (is-ConcreteNoOverride!19 thiss!8295))))))

(assert (= (and start!8018 res!26623) b!57475))

(assert (= (and b!57475 res!26624) b!57476))

(declare-fun m!62262 () Bool)

(assert (=> b!57475 m!62262))

(push 1)

(assert (not b!57475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

