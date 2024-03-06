; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7956 () Bool)

(assert start!7956)

(declare-fun res!26503 () Bool)

(declare-fun e!30436 () Bool)

(assert (=> start!7956 (=> (not res!26503) (not e!30436))))

(declare-datatypes () ((SomeLaw!7 (ConcreteOverride!6) (ConcreteNoOverride!6) (SomeLawExt!4 (__x!150 Int)))))

(declare-fun thiss!8184 () SomeLaw!7)

(assert (=> start!7956 (= res!26503 (is-ConcreteOverride!6 thiss!8184))))

(assert (=> start!7956 e!30436))

(assert (=> start!7956 true))

(declare-fun b!57282 () Bool)

(declare-fun res!26505 () Bool)

(assert (=> b!57282 (=> (not res!26505) (not e!30436))))

(declare-fun res!26490 () Bool)

(declare-fun lawNotZero!6 (SomeLaw!7) Bool)

(assert (=> b!57282 (= res!26505 (= res!26490 (lawNotZero!6 thiss!8184)))))

(declare-fun b!57283 () Bool)

(declare-fun e!30435 () Bool)

(assert (=> b!57283 (= e!30436 e!30435)))

(declare-fun res!26504 () Bool)

(assert (=> b!57283 (=> res!26504 e!30435)))

(assert (=> b!57283 (= res!26504 (not res!26490))))

(declare-fun b!57284 () Bool)

(declare-fun value!48 (SomeLaw!7) Int)

(assert (=> b!57284 (= e!30435 (= (value!48 thiss!8184) 0))))

(assert (= (and start!7956 res!26503) b!57282))

(assert (= (and b!57282 res!26505) b!57283))

(assert (= (and b!57283 (not res!26504)) b!57284))

(declare-fun m!62184 () Bool)

(assert (=> b!57282 m!62184))

(declare-fun m!62186 () Bool)

(assert (=> b!57284 m!62186))

(push 1)

(assert (not b!57282))

(assert (not b!57284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50224 () Bool)

(declare-fun e!30441 () Bool)

(assert (=> d!50224 e!30441))

(declare-fun res!26512 () Bool)

(assert (=> d!50224 (=> (not res!26512) (not e!30441))))

(declare-fun lt!10600 () Bool)

(assert (=> d!50224 (= res!26512 lt!10600)))

(declare-fun e!30442 () Bool)

(assert (=> d!50224 (= lt!10600 e!30442)))

(declare-fun res!26511 () Bool)

(assert (=> d!50224 (=> (not res!26511) (not e!30442))))

(assert (=> d!50224 (= res!26511 (not (= (value!48 thiss!8184) 0)))))

(assert (=> d!50224 (= (lawNotZero!6 thiss!8184) lt!10600)))

(declare-fun b!57289 () Bool)

(declare-fun value!49 (SomeLaw!7) Int)

(assert (=> b!57289 (= e!30442 (= (value!49 thiss!8184) 42))))

(declare-fun b!57290 () Bool)

(assert (=> b!57290 (= e!30441 (not (= (value!48 thiss!8184) 0)))))

(assert (= (and d!50224 res!26511) b!57289))

(assert (= (and d!50224 res!26512) b!57290))

(assert (=> d!50224 m!62186))

(declare-fun m!62188 () Bool)

(assert (=> b!57289 m!62188))

(assert (=> b!57290 m!62186))

(assert (=> b!57282 d!50224))

(declare-fun d!50226 () Bool)

(declare-fun c!12190 () Bool)

(assert (=> d!50226 (= c!12190 (is-ConcreteOverride!6 thiss!8184))))

(declare-fun e!30447 () Int)

(assert (=> d!50226 (= (value!48 thiss!8184) e!30447)))

(declare-fun b!57302 () Bool)

(declare-fun e!30448 () Int)

(declare-fun value!4112 (SomeLaw!7) Int)

(assert (=> b!57302 (= e!30448 (value!4112 thiss!8184))))

(declare-fun b!57299 () Bool)

(assert (=> b!57299 (= e!30447 (value!49 thiss!8184))))

(declare-fun b!57301 () Bool)

(declare-fun value!50 (SomeLaw!7) Int)

(assert (=> b!57301 (= e!30448 (value!50 thiss!8184))))

(declare-fun b!57300 () Bool)

(assert (=> b!57300 (= e!30447 e!30448)))

(declare-fun c!12191 () Bool)

(assert (=> b!57300 (= c!12191 (is-ConcreteNoOverride!6 thiss!8184))))

(assert (= (and b!57300 c!12191) b!57301))

(assert (= (and b!57300 (not c!12191)) b!57302))

(assert (= (and d!50226 c!12190) b!57299))

(assert (= (and d!50226 (not c!12190)) b!57300))

(declare-fun m!62190 () Bool)

(assert (=> b!57302 m!62190))

(assert (=> b!57299 m!62188))

(declare-fun m!62192 () Bool)

(assert (=> b!57301 m!62192))

(assert (=> b!57284 d!50226))

(push 1)

(assert (not b!57299))

(assert (not b!57290))

(assert (not b!57289))

(assert (not d!50224))

(assert (not b!57302))

(assert (not b!57301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

