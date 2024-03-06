; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8116 () Bool)

(assert start!8116)

(declare-fun res!26816 () Bool)

(declare-fun e!30726 () Bool)

(assert (=> start!8116 (=> (not res!26816) (not e!30726))))

(declare-datatypes () ((SomeLaw!45 (ConcreteOverride!42) (ConcreteNoOverride!42) (RefinedLawExt!32 (__x!228 Int)) (SomeLawExt!42 (__x!229 Int)))))

(declare-fun thiss!8397 () SomeLaw!45)

(assert (=> start!8116 (= res!26816 (is-ConcreteOverride!42 thiss!8397))))

(assert (=> start!8116 e!30726))

(assert (=> start!8116 true))

(declare-fun b!57804 () Bool)

(declare-fun res!26815 () Bool)

(assert (=> b!57804 (=> (not res!26815) (not e!30726))))

(declare-fun res!26733 () Bool)

(declare-fun value!43 (SomeLaw!45) Int)

(assert (=> b!57804 (= res!26815 (= res!26733 (= (value!43 thiss!8397) 42)))))

(declare-fun b!57805 () Bool)

(declare-fun e!30727 () Bool)

(assert (=> b!57805 (= e!30726 e!30727)))

(declare-fun res!26814 () Bool)

(assert (=> b!57805 (=> res!26814 e!30727)))

(assert (=> b!57805 (= res!26814 (not res!26733))))

(declare-fun b!57806 () Bool)

(declare-fun value!42 (SomeLaw!45) Int)

(assert (=> b!57806 (= e!30727 (= (value!42 thiss!8397) 0))))

(assert (= (and start!8116 res!26816) b!57804))

(assert (= (and b!57804 res!26815) b!57805))

(assert (= (and b!57805 (not res!26814)) b!57806))

(declare-fun m!62384 () Bool)

(assert (=> b!57804 m!62384))

(declare-fun m!62386 () Bool)

(assert (=> b!57806 m!62386))

(push 1)

(assert (not b!57804))

(assert (not b!57806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50316 () Bool)

(assert (=> d!50316 (= (value!43 thiss!8397) 42)))

(assert (=> b!57804 d!50316))

(declare-fun b!57819 () Bool)

(declare-fun e!30735 () Int)

(declare-fun e!30734 () Int)

(assert (=> b!57819 (= e!30735 e!30734)))

(declare-fun c!12337 () Bool)

(assert (=> b!57819 (= c!12337 (is-RefinedLawExt!32 thiss!8397))))

(declare-fun b!57820 () Bool)

(declare-fun value!44 (SomeLaw!45) Int)

(assert (=> b!57820 (= e!30735 (value!44 thiss!8397))))

(declare-fun b!57821 () Bool)

(declare-fun e!30736 () Int)

(assert (=> b!57821 (= e!30736 (value!43 thiss!8397))))

(declare-fun b!57822 () Bool)

(assert (=> b!57822 (= e!30736 e!30735)))

(declare-fun c!12338 () Bool)

(assert (=> b!57822 (= c!12338 (is-ConcreteNoOverride!42 thiss!8397))))

(declare-fun b!57823 () Bool)

(declare-fun value!4176 (SomeLaw!45) Int)

(assert (=> b!57823 (= e!30734 (value!4176 thiss!8397))))

(declare-fun d!50318 () Bool)

(declare-fun c!12336 () Bool)

(assert (=> d!50318 (= c!12336 (is-ConcreteOverride!42 thiss!8397))))

(assert (=> d!50318 (= (value!42 thiss!8397) e!30736)))

(declare-fun b!57824 () Bool)

(declare-fun value!4175 (SomeLaw!45) Int)

(assert (=> b!57824 (= e!30734 (value!4175 thiss!8397))))

(assert (= (and b!57819 c!12337) b!57824))

(assert (= (and b!57819 (not c!12337)) b!57823))

(assert (= (and b!57822 c!12338) b!57820))

(assert (= (and b!57822 (not c!12338)) b!57819))

(assert (= (and d!50318 c!12336) b!57821))

(assert (= (and d!50318 (not c!12336)) b!57822))

(declare-fun m!62388 () Bool)

(assert (=> b!57820 m!62388))

(assert (=> b!57821 m!62384))

(declare-fun m!62390 () Bool)

(assert (=> b!57823 m!62390))

(declare-fun m!62392 () Bool)

(assert (=> b!57824 m!62392))

(assert (=> b!57806 d!50318))

(push 1)

(assert (not b!57824))

(assert (not b!57821))

(assert (not b!57823))

(assert (not b!57820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

