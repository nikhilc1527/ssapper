; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8020 () Bool)

(assert start!8020)

(declare-fun b!57487 () Bool)

(declare-fun res!26634 () Bool)

(declare-fun e!30553 () Bool)

(assert (=> b!57487 (=> res!26634 e!30553)))

(declare-datatypes () ((SomeLaw!22 (SomeLawExt!19 (__x!178 Int)) (RefinedLawExt!9 (__x!179 Int)) (ConcreteOverride!20) (ConcreteNoOverride!20))))

(declare-fun thiss!8290 () SomeLaw!22)

(declare-fun value!45 (SomeLaw!22) Int)

(assert (=> b!57487 (= res!26634 (= (value!45 thiss!8290) 0))))

(declare-fun b!57488 () Bool)

(assert (=> b!57488 (= e!30553 (<= (value!45 thiss!8290) 1))))

(declare-fun res!26636 () Bool)

(declare-fun e!30552 () Bool)

(assert (=> start!8020 (=> (not res!26636) (not e!30552))))

(assert (=> start!8020 (= res!26636 (and (or (is-RefinedLawExt!9 thiss!8290) (is-ConcreteOverride!20 thiss!8290) (is-ConcreteNoOverride!20 thiss!8290)) (is-RefinedLawExt!9 thiss!8290)))))

(assert (=> start!8020 e!30552))

(assert (=> start!8020 true))

(declare-fun b!57485 () Bool)

(declare-fun res!26633 () Bool)

(assert (=> b!57485 (=> (not res!26633) (not e!30552))))

(declare-fun res!26578 () Bool)

(declare-fun lawNotZero!16 (SomeLaw!22) Bool)

(assert (=> b!57485 (= res!26633 (= res!26578 (lawNotZero!16 thiss!8290)))))

(declare-fun b!57486 () Bool)

(assert (=> b!57486 (= e!30552 e!30553)))

(declare-fun res!26635 () Bool)

(assert (=> b!57486 (=> res!26635 e!30553)))

(assert (=> b!57486 (= res!26635 (not res!26578))))

(assert (= (and start!8020 res!26636) b!57485))

(assert (= (and b!57485 res!26633) b!57486))

(assert (= (and b!57486 (not res!26635)) b!57487))

(assert (= (and b!57487 (not res!26634)) b!57488))

(declare-fun m!62264 () Bool)

(assert (=> b!57487 m!62264))

(assert (=> b!57488 m!62264))

(declare-fun m!62266 () Bool)

(assert (=> b!57485 m!62266))

(push 1)

(assert (not b!57488))

(assert (not b!57485))

(assert (not b!57487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57501 () Bool)

(declare-fun e!30560 () Int)

(declare-fun value!47 (SomeLaw!22) Int)

(assert (=> b!57501 (= e!30560 (value!47 thiss!8290))))

(declare-fun b!57502 () Bool)

(declare-fun e!30562 () Int)

(declare-fun value!4143 (SomeLaw!22) Int)

(assert (=> b!57502 (= e!30562 (value!4143 thiss!8290))))

(declare-fun b!57503 () Bool)

(declare-fun e!30561 () Int)

(assert (=> b!57503 (= e!30562 e!30561)))

(declare-fun c!12247 () Bool)

(assert (=> b!57503 (= c!12247 (is-RefinedLawExt!9 thiss!8290))))

(declare-fun b!57504 () Bool)

(declare-fun value!46 (SomeLaw!22) Int)

(assert (=> b!57504 (= e!30560 (value!46 thiss!8290))))

(declare-fun d!50262 () Bool)

(declare-fun c!12248 () Bool)

(assert (=> d!50262 (= c!12248 (is-SomeLawExt!19 thiss!8290))))

(assert (=> d!50262 (= (value!45 thiss!8290) e!30562)))

(declare-fun b!57505 () Bool)

(declare-fun value!4144 (SomeLaw!22) Int)

(assert (=> b!57505 (= e!30561 (value!4144 thiss!8290))))

(declare-fun b!57506 () Bool)

(assert (=> b!57506 (= e!30561 e!30560)))

(declare-fun c!12246 () Bool)

(assert (=> b!57506 (= c!12246 (is-ConcreteOverride!20 thiss!8290))))

(assert (= (and b!57506 c!12246) b!57504))

(assert (= (and b!57506 (not c!12246)) b!57501))

(assert (= (and b!57503 c!12247) b!57505))

(assert (= (and b!57503 (not c!12247)) b!57506))

(assert (= (and d!50262 c!12248) b!57502))

(assert (= (and d!50262 (not c!12248)) b!57503))

(declare-fun m!62268 () Bool)

(assert (=> b!57501 m!62268))

(declare-fun m!62270 () Bool)

(assert (=> b!57502 m!62270))

(declare-fun m!62272 () Bool)

(assert (=> b!57504 m!62272))

(declare-fun m!62274 () Bool)

(assert (=> b!57505 m!62274))

(assert (=> b!57488 d!50262))

(declare-fun d!50264 () Bool)

(declare-fun e!30565 () Bool)

(assert (=> d!50264 e!30565))

(declare-fun res!26644 () Bool)

(assert (=> d!50264 (=> (not res!26644) (not e!30565))))

(declare-fun res!26643 () Bool)

(assert (=> d!50264 (= res!26644 res!26643)))

(assert (=> d!50264 true))

(assert (=> d!50264 (= (lawNotZero!16 thiss!8290) res!26643)))

(declare-fun b!57511 () Bool)

(declare-fun res!26645 () Bool)

(assert (=> b!57511 (=> (not res!26645) (not e!30565))))

(assert (=> b!57511 (= res!26645 (not (= (value!45 thiss!8290) 0)))))

(declare-fun b!57512 () Bool)

(assert (=> b!57512 (= e!30565 (> (value!45 thiss!8290) 1))))

(assert (= (and d!50264 res!26644) b!57511))

(assert (= (and b!57511 res!26645) b!57512))

(assert (=> b!57511 m!62264))

(assert (=> b!57512 m!62264))

(assert (=> b!57485 d!50264))

(assert (=> b!57487 d!50262))

(push 1)

(assert (not b!57512))

(assert (not b!57501))

(assert (not b!57502))

(assert (not b!57504))

(assert (not b!57505))

(assert (not b!57511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

