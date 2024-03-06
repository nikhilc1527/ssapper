; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8036 () Bool)

(assert start!8036)

(declare-fun b!57570 () Bool)

(declare-fun e!30595 () Bool)

(declare-fun e!30594 () Bool)

(assert (=> b!57570 (= e!30595 e!30594)))

(declare-fun res!26685 () Bool)

(assert (=> b!57570 (=> res!26685 e!30594)))

(declare-fun res!26582 () Bool)

(assert (=> b!57570 (= res!26685 (not res!26582))))

(declare-fun b!57572 () Bool)

(declare-datatypes () ((SomeLaw!26 (SomeLawExt!23 (__x!186 Int)) (RefinedLawExt!13 (__x!187 Int)) (ConcreteOverride!24) (ConcreteNoOverride!24))))

(declare-fun thiss!8290 () SomeLaw!26)

(declare-fun value!45 (SomeLaw!26) Int)

(assert (=> b!57572 (= e!30594 (<= (value!45 thiss!8290) 1))))

(declare-fun b!57569 () Bool)

(declare-fun res!26688 () Bool)

(assert (=> b!57569 (=> (not res!26688) (not e!30595))))

(declare-fun lawNotZero!14 (SomeLaw!26) Bool)

(assert (=> b!57569 (= res!26688 (= res!26582 (lawNotZero!14 thiss!8290)))))

(declare-fun b!57571 () Bool)

(declare-fun res!26687 () Bool)

(assert (=> b!57571 (=> res!26687 e!30594)))

(assert (=> b!57571 (= res!26687 (= (value!45 thiss!8290) 0))))

(declare-fun res!26686 () Bool)

(assert (=> start!8036 (=> (not res!26686) (not e!30595))))

(assert (=> start!8036 (= res!26686 (and (or (is-RefinedLawExt!13 thiss!8290) (is-ConcreteOverride!24 thiss!8290) (is-ConcreteNoOverride!24 thiss!8290)) (not (is-RefinedLawExt!13 thiss!8290)) (not (is-ConcreteOverride!24 thiss!8290))))))

(assert (=> start!8036 e!30595))

(assert (=> start!8036 true))

(assert (= (and start!8036 res!26686) b!57569))

(assert (= (and b!57569 res!26688) b!57570))

(assert (= (and b!57570 (not res!26685)) b!57571))

(assert (= (and b!57571 (not res!26687)) b!57572))

(declare-fun m!62292 () Bool)

(assert (=> b!57572 m!62292))

(declare-fun m!62294 () Bool)

(assert (=> b!57569 m!62294))

(assert (=> b!57571 m!62292))

(push 1)

(assert (not b!57572))

(assert (not b!57569))

(assert (not b!57571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57585 () Bool)

(declare-fun e!30604 () Int)

(declare-fun e!30602 () Int)

(assert (=> b!57585 (= e!30604 e!30602)))

(declare-fun c!12264 () Bool)

(assert (=> b!57585 (= c!12264 (is-ConcreteOverride!24 thiss!8290))))

(declare-fun b!57586 () Bool)

(declare-fun value!47 (SomeLaw!26) Int)

(assert (=> b!57586 (= e!30602 (value!47 thiss!8290))))

(declare-fun b!57587 () Bool)

(declare-fun value!4144 (SomeLaw!26) Int)

(assert (=> b!57587 (= e!30604 (value!4144 thiss!8290))))

(declare-fun b!57588 () Bool)

(declare-fun value!46 (SomeLaw!26) Int)

(assert (=> b!57588 (= e!30602 (value!46 thiss!8290))))

(declare-fun d!50270 () Bool)

(declare-fun c!12265 () Bool)

(assert (=> d!50270 (= c!12265 (is-SomeLawExt!23 thiss!8290))))

(declare-fun e!30603 () Int)

(assert (=> d!50270 (= (value!45 thiss!8290) e!30603)))

(declare-fun b!57589 () Bool)

(declare-fun value!4143 (SomeLaw!26) Int)

(assert (=> b!57589 (= e!30603 (value!4143 thiss!8290))))

(declare-fun b!57590 () Bool)

(assert (=> b!57590 (= e!30603 e!30604)))

(declare-fun c!12266 () Bool)

(assert (=> b!57590 (= c!12266 (is-RefinedLawExt!13 thiss!8290))))

(assert (= (and b!57585 c!12264) b!57588))

(assert (= (and b!57585 (not c!12264)) b!57586))

(assert (= (and b!57590 c!12266) b!57587))

(assert (= (and b!57590 (not c!12266)) b!57585))

(assert (= (and d!50270 c!12265) b!57589))

(assert (= (and d!50270 (not c!12265)) b!57590))

(declare-fun m!62296 () Bool)

(assert (=> b!57586 m!62296))

(declare-fun m!62298 () Bool)

(assert (=> b!57587 m!62298))

(declare-fun m!62300 () Bool)

(assert (=> b!57588 m!62300))

(declare-fun m!62302 () Bool)

(assert (=> b!57589 m!62302))

(assert (=> b!57572 d!50270))

(declare-fun d!50272 () Bool)

(declare-fun e!30607 () Bool)

(assert (=> d!50272 e!30607))

(declare-fun res!26692 () Bool)

(assert (=> d!50272 (=> (not res!26692) (not e!30607))))

(assert (=> d!50272 (= res!26692 (not (= (value!45 thiss!8290) 0)))))

(assert (=> d!50272 (or (is-RefinedLawExt!13 thiss!8290) (is-ConcreteOverride!24 thiss!8290) (is-ConcreteNoOverride!24 thiss!8290))))

(assert (=> d!50272 (= (lawNotZero!14 thiss!8290) true)))

(declare-fun b!57593 () Bool)

(assert (=> b!57593 (= e!30607 (> (value!45 thiss!8290) 1))))

(assert (= (and d!50272 res!26692) b!57593))

(assert (=> d!50272 m!62292))

(assert (=> b!57593 m!62292))

(assert (=> b!57569 d!50272))

(assert (=> b!57571 d!50270))

(push 1)

(assert (not b!57589))

(assert (not d!50272))

(assert (not b!57586))

(assert (not b!57593))

(assert (not b!57587))

(assert (not b!57588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

