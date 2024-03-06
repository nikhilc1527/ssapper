; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8000 () Bool)

(assert start!8000)

(declare-fun res!26594 () Bool)

(declare-fun e!30508 () Bool)

(assert (=> start!8000 (=> (not res!26594) (not e!30508))))

(declare-datatypes () ((SomeLaw!16 (SomeLawExt!13 (__x!166 Int)) (RefinedLawExt!3 (__x!167 Int)) (ConcreteOverride!14) (ConcreteNoOverride!14))))

(declare-fun thiss!8327 () SomeLaw!16)

(assert (=> start!8000 (= res!26594 (is-SomeLawExt!13 thiss!8327))))

(assert (=> start!8000 e!30508))

(assert (=> start!8000 true))

(declare-fun b!57402 () Bool)

(declare-fun res!26596 () Bool)

(assert (=> b!57402 (=> (not res!26596) (not e!30508))))

(declare-fun res!26584 () Bool)

(declare-fun lawNotZero!15 (SomeLaw!16) Bool)

(assert (=> b!57402 (= res!26596 (= res!26584 (lawNotZero!15 thiss!8327)))))

(declare-fun b!57403 () Bool)

(declare-fun e!30507 () Bool)

(assert (=> b!57403 (= e!30508 e!30507)))

(declare-fun res!26595 () Bool)

(assert (=> b!57403 (=> res!26595 e!30507)))

(assert (=> b!57403 (= res!26595 (not res!26584))))

(declare-fun b!57404 () Bool)

(declare-fun value!45 (SomeLaw!16) Int)

(assert (=> b!57404 (= e!30507 (= (value!45 thiss!8327) 0))))

(assert (= (and start!8000 res!26594) b!57402))

(assert (= (and b!57402 res!26596) b!57403))

(assert (= (and b!57403 (not res!26595)) b!57404))

(declare-fun m!62232 () Bool)

(assert (=> b!57402 m!62232))

(declare-fun m!62234 () Bool)

(assert (=> b!57404 m!62234))

(push 1)

(assert (not b!57404))

(assert (not b!57402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57417 () Bool)

(declare-fun e!30515 () Int)

(declare-fun value!46 (SomeLaw!16) Int)

(assert (=> b!57417 (= e!30515 (value!46 thiss!8327))))

(declare-fun b!57418 () Bool)

(declare-fun value!47 (SomeLaw!16) Int)

(assert (=> b!57418 (= e!30515 (value!47 thiss!8327))))

(declare-fun d!50254 () Bool)

(declare-fun c!12222 () Bool)

(assert (=> d!50254 (= c!12222 (is-SomeLawExt!13 thiss!8327))))

(declare-fun e!30516 () Int)

(assert (=> d!50254 (= (value!45 thiss!8327) e!30516)))

(declare-fun b!57419 () Bool)

(declare-fun value!4143 (SomeLaw!16) Int)

(assert (=> b!57419 (= e!30516 (value!4143 thiss!8327))))

(declare-fun b!57420 () Bool)

(declare-fun e!30517 () Int)

(assert (=> b!57420 (= e!30517 e!30515)))

(declare-fun c!12223 () Bool)

(assert (=> b!57420 (= c!12223 (is-ConcreteOverride!14 thiss!8327))))

(declare-fun b!57421 () Bool)

(assert (=> b!57421 (= e!30516 e!30517)))

(declare-fun c!12224 () Bool)

(assert (=> b!57421 (= c!12224 (is-RefinedLawExt!3 thiss!8327))))

(declare-fun b!57422 () Bool)

(declare-fun value!4144 (SomeLaw!16) Int)

(assert (=> b!57422 (= e!30517 (value!4144 thiss!8327))))

(assert (= (and b!57420 c!12223) b!57417))

(assert (= (and b!57420 (not c!12223)) b!57418))

(assert (= (and b!57421 c!12224) b!57422))

(assert (= (and b!57421 (not c!12224)) b!57420))

(assert (= (and d!50254 c!12222) b!57419))

(assert (= (and d!50254 (not c!12222)) b!57421))

(declare-fun m!62236 () Bool)

(assert (=> b!57417 m!62236))

(declare-fun m!62238 () Bool)

(assert (=> b!57418 m!62238))

(declare-fun m!62240 () Bool)

(assert (=> b!57419 m!62240))

(declare-fun m!62242 () Bool)

(assert (=> b!57422 m!62242))

(assert (=> b!57404 d!50254))

(declare-fun d!50256 () Bool)

(declare-fun e!30520 () Bool)

(assert (=> d!50256 e!30520))

(declare-fun res!26602 () Bool)

(assert (=> d!50256 (=> (not res!26602) (not e!30520))))

(declare-fun res!26601 () Bool)

(assert (=> d!50256 (= res!26602 res!26601)))

(assert (=> d!50256 true))

(assert (=> d!50256 (= (lawNotZero!15 thiss!8327) res!26601)))

(declare-fun b!57425 () Bool)

(assert (=> b!57425 (= e!30520 (not (= (value!45 thiss!8327) 0)))))

(assert (= (and d!50256 res!26602) b!57425))

(assert (=> b!57425 m!62234))

(assert (=> b!57402 d!50256))

(push 1)

(assert (not b!57417))

(assert (not b!57422))

(assert (not b!57418))

(assert (not b!57419))

(assert (not b!57425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

