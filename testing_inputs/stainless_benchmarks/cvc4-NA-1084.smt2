; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7974 () Bool)

(assert start!7974)

(declare-fun res!26542 () Bool)

(declare-fun e!30478 () Bool)

(assert (=> start!7974 (=> (not res!26542) (not e!30478))))

(declare-datatypes () ((SomeLaw!10 (ConcreteOverride!9) (ConcreteNoOverride!9) (SomeLawExt!7 (__x!153 Int)))))

(declare-fun thiss!8180 () SomeLaw!10)

(declare-fun res!26489 () Bool)

(declare-fun thiss!8179 () SomeLaw!10)

(assert (=> start!7974 (= res!26542 (and (is-ConcreteNoOverride!9 thiss!8179) (= res!26489 true) (= thiss!8180 thiss!8179)))))

(assert (=> start!7974 e!30478))

(assert (=> start!7974 true))

(declare-fun b!57352 () Bool)

(declare-fun res!26543 () Bool)

(assert (=> b!57352 (=> (not res!26543) (not e!30478))))

(declare-fun inlined!6346 () Bool)

(declare-fun value!48 (SomeLaw!10) Int)

(assert (=> b!57352 (= res!26543 (= inlined!6346 (not (= (value!48 thiss!8180) 0))))))

(declare-fun b!57353 () Bool)

(assert (=> b!57353 (= e!30478 (not inlined!6346))))

(assert (= (and start!7974 res!26542) b!57352))

(assert (= (and b!57352 res!26543) b!57353))

(declare-fun m!62214 () Bool)

(assert (=> b!57352 m!62214))

(push 1)

(assert (not b!57352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57363 () Bool)

(declare-fun e!30483 () Int)

(declare-fun e!30484 () Int)

(assert (=> b!57363 (= e!30483 e!30484)))

(declare-fun c!12209 () Bool)

(assert (=> b!57363 (= c!12209 (is-ConcreteNoOverride!9 thiss!8180))))

(declare-fun b!57365 () Bool)

(declare-fun value!4112 (SomeLaw!10) Int)

(assert (=> b!57365 (= e!30484 (value!4112 thiss!8180))))

(declare-fun b!57364 () Bool)

(declare-fun value!50 (SomeLaw!10) Int)

(assert (=> b!57364 (= e!30484 (value!50 thiss!8180))))

(declare-fun d!50236 () Bool)

(declare-fun c!12208 () Bool)

(assert (=> d!50236 (= c!12208 (is-ConcreteOverride!9 thiss!8180))))

(assert (=> d!50236 (= (value!48 thiss!8180) e!30483)))

(declare-fun b!57362 () Bool)

(declare-fun value!49 (SomeLaw!10) Int)

(assert (=> b!57362 (= e!30483 (value!49 thiss!8180))))

(assert (= (and b!57363 c!12209) b!57364))

(assert (= (and b!57363 (not c!12209)) b!57365))

(assert (= (and d!50236 c!12208) b!57362))

(assert (= (and d!50236 (not c!12208)) b!57363))

(declare-fun m!62216 () Bool)

(assert (=> b!57365 m!62216))

(declare-fun m!62218 () Bool)

(assert (=> b!57364 m!62218))

(declare-fun m!62220 () Bool)

(assert (=> b!57362 m!62220))

(assert (=> b!57352 d!50236))

(push 1)

(assert (not b!57365))

(assert (not b!57362))

(assert (not b!57364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50238 () Bool)

(assert (=> d!50238 true))

(assert (=> d!50238 true))

(declare-fun res!26546 () Int)

(assert (=> d!50238 (= (value!4112 thiss!8180) res!26546)))

(assert (=> b!57365 d!50238))

(declare-fun d!50240 () Bool)

(assert (=> d!50240 (= (value!49 thiss!8180) 42)))

(assert (=> b!57362 d!50240))

(declare-fun d!50242 () Bool)

(assert (=> d!50242 (= (value!50 thiss!8180) 42)))

(assert (=> b!57364 d!50242))

(push 1)

(check-sat)

(pop 1)

