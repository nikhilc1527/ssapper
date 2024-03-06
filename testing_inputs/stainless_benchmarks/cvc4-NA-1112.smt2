; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8080 () Bool)

(assert start!8080)

(declare-fun res!26750 () Bool)

(declare-fun e!30645 () Bool)

(assert (=> start!8080 (=> (not res!26750) (not e!30645))))

(declare-datatypes () ((SomeLaw!40 (ConcreteOverride!37) (ConcreteNoOverride!37) (RefinedLawExt!27 (__x!218 Int)) (SomeLawExt!37 (__x!219 Int)))))

(declare-fun thiss!8404 () SomeLaw!40)

(assert (=> start!8080 (= res!26750 (is-ConcreteOverride!37 thiss!8404))))

(assert (=> start!8080 e!30645))

(assert (=> start!8080 true))

(declare-fun b!57663 () Bool)

(declare-fun res!26749 () Bool)

(assert (=> b!57663 (=> (not res!26749) (not e!30645))))

(declare-fun res!26734 () Bool)

(declare-fun lawNotZero!1 (SomeLaw!40) Bool)

(assert (=> b!57663 (= res!26749 (= res!26734 (lawNotZero!1 thiss!8404)))))

(declare-fun b!57664 () Bool)

(declare-fun e!30646 () Bool)

(assert (=> b!57664 (= e!30645 e!30646)))

(declare-fun res!26751 () Bool)

(assert (=> b!57664 (=> res!26751 e!30646)))

(assert (=> b!57664 (= res!26751 (not res!26734))))

(declare-fun b!57665 () Bool)

(declare-fun value!42 (SomeLaw!40) Int)

(assert (=> b!57665 (= e!30646 (= (value!42 thiss!8404) 0))))

(assert (= (and start!8080 res!26750) b!57663))

(assert (= (and b!57663 res!26749) b!57664))

(assert (= (and b!57664 (not res!26751)) b!57665))

(declare-fun m!62326 () Bool)

(assert (=> b!57663 m!62326))

(declare-fun m!62328 () Bool)

(assert (=> b!57665 m!62328))

(push 1)

(assert (not b!57663))

(assert (not b!57665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50290 () Bool)

(declare-fun e!30649 () Bool)

(assert (=> d!50290 e!30649))

(declare-fun res!26755 () Bool)

(assert (=> d!50290 (=> (not res!26755) (not e!30649))))

(declare-fun lt!10609 () Bool)

(assert (=> d!50290 (= res!26755 lt!10609)))

(declare-fun value!43 (SomeLaw!40) Int)

(assert (=> d!50290 (= lt!10609 (= (value!43 thiss!8404) 42))))

(assert (=> d!50290 (= (lawNotZero!1 thiss!8404) lt!10609)))

(declare-fun b!57668 () Bool)

(assert (=> b!57668 (= e!30649 (not (= (value!42 thiss!8404) 0)))))

(assert (= (and d!50290 res!26755) b!57668))

(declare-fun m!62330 () Bool)

(assert (=> d!50290 m!62330))

(assert (=> b!57668 m!62328))

(assert (=> b!57663 d!50290))

(declare-fun b!57681 () Bool)

(declare-fun e!30656 () Int)

(declare-fun e!30658 () Int)

(assert (=> b!57681 (= e!30656 e!30658)))

(declare-fun c!12292 () Bool)

(assert (=> b!57681 (= c!12292 (is-RefinedLawExt!27 thiss!8404))))

(declare-fun b!57682 () Bool)

(declare-fun e!30657 () Int)

(assert (=> b!57682 (= e!30657 (value!43 thiss!8404))))

(declare-fun d!50292 () Bool)

(declare-fun c!12291 () Bool)

(assert (=> d!50292 (= c!12291 (is-ConcreteOverride!37 thiss!8404))))

(assert (=> d!50292 (= (value!42 thiss!8404) e!30657)))

(declare-fun b!57683 () Bool)

(assert (=> b!57683 (= e!30657 e!30656)))

(declare-fun c!12293 () Bool)

(assert (=> b!57683 (= c!12293 (is-ConcreteNoOverride!37 thiss!8404))))

(declare-fun b!57684 () Bool)

(declare-fun value!4175 (SomeLaw!40) Int)

(assert (=> b!57684 (= e!30658 (value!4175 thiss!8404))))

(declare-fun b!57685 () Bool)

(declare-fun value!4176 (SomeLaw!40) Int)

(assert (=> b!57685 (= e!30658 (value!4176 thiss!8404))))

(declare-fun b!57686 () Bool)

(declare-fun value!44 (SomeLaw!40) Int)

(assert (=> b!57686 (= e!30656 (value!44 thiss!8404))))

(assert (= (and b!57681 c!12292) b!57684))

(assert (= (and b!57681 (not c!12292)) b!57685))

(assert (= (and b!57683 c!12293) b!57686))

(assert (= (and b!57683 (not c!12293)) b!57681))

(assert (= (and d!50292 c!12291) b!57682))

(assert (= (and d!50292 (not c!12291)) b!57683))

(assert (=> b!57682 m!62330))

(declare-fun m!62332 () Bool)

(assert (=> b!57684 m!62332))

(declare-fun m!62334 () Bool)

(assert (=> b!57685 m!62334))

(declare-fun m!62336 () Bool)

(assert (=> b!57686 m!62336))

(assert (=> b!57665 d!50292))

(push 1)

(assert (not b!57686))

(assert (not b!57682))

(assert (not d!50290))

(assert (not b!57668))

(assert (not b!57684))

(assert (not b!57685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

