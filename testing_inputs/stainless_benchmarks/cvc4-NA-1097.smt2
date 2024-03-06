; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8028 () Bool)

(assert start!8028)

(declare-fun b!57528 () Bool)

(declare-fun e!30574 () Bool)

(declare-fun e!30573 () Bool)

(assert (=> b!57528 (= e!30574 e!30573)))

(declare-fun res!26661 () Bool)

(assert (=> b!57528 (=> res!26661 e!30573)))

(declare-fun res!26580 () Bool)

(assert (=> b!57528 (= res!26661 (not res!26580))))

(declare-fun b!57529 () Bool)

(declare-fun res!26663 () Bool)

(assert (=> b!57529 (=> res!26663 e!30573)))

(declare-datatypes () ((SomeLaw!24 (SomeLawExt!21 (__x!182 Int)) (RefinedLawExt!11 (__x!183 Int)) (ConcreteOverride!22) (ConcreteNoOverride!22))))

(declare-fun thiss!8290 () SomeLaw!24)

(declare-fun value!45 (SomeLaw!24) Int)

(assert (=> b!57529 (= res!26663 (= (value!45 thiss!8290) 0))))

(declare-fun b!57530 () Bool)

(assert (=> b!57530 (= e!30573 (<= (value!45 thiss!8290) 1))))

(declare-fun res!26662 () Bool)

(assert (=> start!8028 (=> (not res!26662) (not e!30574))))

(assert (=> start!8028 (= res!26662 (and (or (is-RefinedLawExt!11 thiss!8290) (is-ConcreteOverride!22 thiss!8290) (is-ConcreteNoOverride!22 thiss!8290)) (not (is-RefinedLawExt!11 thiss!8290)) (is-ConcreteOverride!22 thiss!8290)))))

(assert (=> start!8028 e!30574))

(assert (=> start!8028 true))

(declare-fun b!57527 () Bool)

(declare-fun res!26660 () Bool)

(assert (=> b!57527 (=> (not res!26660) (not e!30574))))

(declare-fun lawNotZero!4 (SomeLaw!24) Bool)

(assert (=> b!57527 (= res!26660 (= res!26580 (lawNotZero!4 thiss!8290)))))

(assert (= (and start!8028 res!26662) b!57527))

(assert (= (and b!57527 res!26660) b!57528))

(assert (= (and b!57528 (not res!26661)) b!57529))

(assert (= (and b!57529 (not res!26663)) b!57530))

(declare-fun m!62278 () Bool)

(assert (=> b!57529 m!62278))

(assert (=> b!57530 m!62278))

(declare-fun m!62280 () Bool)

(assert (=> b!57527 m!62280))

(push 1)

(assert (not b!57527))

(assert (not b!57529))

(assert (not b!57530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50266 () Bool)

(declare-fun e!30577 () Bool)

(assert (=> d!50266 e!30577))

(declare-fun res!26669 () Bool)

(assert (=> d!50266 (=> (not res!26669) (not e!30577))))

(declare-fun lt!10606 () Bool)

(assert (=> d!50266 (= res!26669 (and (or (not lt!10606) (is-RefinedLawExt!11 thiss!8290) (is-ConcreteOverride!22 thiss!8290) (is-ConcreteNoOverride!22 thiss!8290)) lt!10606))))

(declare-fun value!46 (SomeLaw!24) Int)

(assert (=> d!50266 (= lt!10606 (= (value!46 thiss!8290) 42))))

(assert (=> d!50266 (= (lawNotZero!4 thiss!8290) lt!10606)))

(declare-fun b!57535 () Bool)

(declare-fun res!26670 () Bool)

(assert (=> b!57535 (=> (not res!26670) (not e!30577))))

(assert (=> b!57535 (= res!26670 (not (= (value!45 thiss!8290) 0)))))

(declare-fun b!57536 () Bool)

(assert (=> b!57536 (= e!30577 (> (value!45 thiss!8290) 1))))

(assert (= (and d!50266 res!26669) b!57535))

(assert (= (and b!57535 res!26670) b!57536))

(declare-fun m!62282 () Bool)

(assert (=> d!50266 m!62282))

(assert (=> b!57535 m!62278))

(assert (=> b!57536 m!62278))

(assert (=> b!57527 d!50266))

(declare-fun d!50268 () Bool)

(declare-fun c!12255 () Bool)

(assert (=> d!50268 (= c!12255 (is-SomeLawExt!21 thiss!8290))))

(declare-fun e!30586 () Int)

(assert (=> d!50268 (= (value!45 thiss!8290) e!30586)))

(declare-fun b!57549 () Bool)

(declare-fun e!30585 () Int)

(assert (=> b!57549 (= e!30586 e!30585)))

(declare-fun c!12257 () Bool)

(assert (=> b!57549 (= c!12257 (is-RefinedLawExt!11 thiss!8290))))

(declare-fun b!57550 () Bool)

(declare-fun e!30584 () Int)

(declare-fun value!47 (SomeLaw!24) Int)

(assert (=> b!57550 (= e!30584 (value!47 thiss!8290))))

(declare-fun b!57551 () Bool)

(declare-fun value!4144 (SomeLaw!24) Int)

(assert (=> b!57551 (= e!30585 (value!4144 thiss!8290))))

(declare-fun b!57552 () Bool)

(declare-fun value!4143 (SomeLaw!24) Int)

(assert (=> b!57552 (= e!30586 (value!4143 thiss!8290))))

(declare-fun b!57553 () Bool)

(assert (=> b!57553 (= e!30584 (value!46 thiss!8290))))

(declare-fun b!57554 () Bool)

(assert (=> b!57554 (= e!30585 e!30584)))

(declare-fun c!12256 () Bool)

(assert (=> b!57554 (= c!12256 (is-ConcreteOverride!22 thiss!8290))))

(assert (= (and b!57554 c!12256) b!57553))

(assert (= (and b!57554 (not c!12256)) b!57550))

(assert (= (and b!57549 c!12257) b!57551))

(assert (= (and b!57549 (not c!12257)) b!57554))

(assert (= (and d!50268 c!12255) b!57552))

(assert (= (and d!50268 (not c!12255)) b!57549))

(declare-fun m!62284 () Bool)

(assert (=> b!57550 m!62284))

(declare-fun m!62286 () Bool)

(assert (=> b!57551 m!62286))

(declare-fun m!62288 () Bool)

(assert (=> b!57552 m!62288))

(assert (=> b!57553 m!62282))

(assert (=> b!57529 d!50268))

(assert (=> b!57530 d!50268))

(push 1)

(assert (not b!57553))

(assert (not b!57551))

(assert (not b!57550))

(assert (not b!57535))

(assert (not b!57552))

(assert (not d!50266))

(assert (not b!57536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

