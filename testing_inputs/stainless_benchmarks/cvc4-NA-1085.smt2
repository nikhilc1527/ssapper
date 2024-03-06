; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7984 () Bool)

(assert start!7984)

(declare-fun b!57375 () Bool)

(declare-fun e!30493 () Bool)

(declare-datatypes () ((SomeLaw!11 (ConcreteOverride!10) (ConcreteNoOverride!10) (SomeLawExt!8 (__x!154 Int)))))

(declare-fun thiss!8212 () SomeLaw!11)

(declare-fun value!49 (SomeLaw!11) Int)

(assert (=> b!57375 (= e!30493 (= (value!49 thiss!8212) 42))))

(declare-fun res!26558 () Bool)

(declare-fun e!30491 () Bool)

(assert (=> start!7984 (=> (not res!26558) (not e!30491))))

(assert (=> start!7984 (= res!26558 (is-ConcreteOverride!10 thiss!8212))))

(assert (=> start!7984 e!30491))

(assert (=> start!7984 true))

(declare-fun b!57374 () Bool)

(declare-fun res!26557 () Bool)

(assert (=> b!57374 (=> (not res!26557) (not e!30491))))

(declare-fun res!26496 () Bool)

(assert (=> b!57374 (= res!26557 (= res!26496 e!30493))))

(declare-fun res!26556 () Bool)

(assert (=> b!57374 (=> (not res!26556) (not e!30493))))

(declare-fun value!48 (SomeLaw!11) Int)

(assert (=> b!57374 (= res!26556 (not (= (value!48 thiss!8212) 0)))))

(declare-fun b!57376 () Bool)

(declare-fun e!30492 () Bool)

(assert (=> b!57376 (= e!30491 e!30492)))

(declare-fun res!26555 () Bool)

(assert (=> b!57376 (=> res!26555 e!30492)))

(assert (=> b!57376 (= res!26555 (not res!26496))))

(declare-fun b!57377 () Bool)

(assert (=> b!57377 (= e!30492 (= (value!48 thiss!8212) 0))))

(assert (= (and start!7984 res!26558) b!57374))

(assert (= (and b!57374 res!26556) b!57375))

(assert (= (and b!57374 res!26557) b!57376))

(assert (= (and b!57376 (not res!26555)) b!57377))

(declare-fun m!62222 () Bool)

(assert (=> b!57375 m!62222))

(declare-fun m!62224 () Bool)

(assert (=> b!57374 m!62224))

(assert (=> b!57377 m!62224))

(push 1)

(assert (not b!57377))

(assert (not b!57374))

(assert (not b!57375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57388 () Bool)

(declare-fun e!30499 () Int)

(declare-fun value!50 (SomeLaw!11) Int)

(assert (=> b!57388 (= e!30499 (value!50 thiss!8212))))

(declare-fun d!50244 () Bool)

(declare-fun c!12214 () Bool)

(assert (=> d!50244 (= c!12214 (is-ConcreteOverride!10 thiss!8212))))

(declare-fun e!30498 () Int)

(assert (=> d!50244 (= (value!48 thiss!8212) e!30498)))

(declare-fun b!57387 () Bool)

(assert (=> b!57387 (= e!30498 e!30499)))

(declare-fun c!12215 () Bool)

(assert (=> b!57387 (= c!12215 (is-ConcreteNoOverride!10 thiss!8212))))

(declare-fun b!57386 () Bool)

(assert (=> b!57386 (= e!30498 (value!49 thiss!8212))))

(declare-fun b!57389 () Bool)

(declare-fun value!4112 (SomeLaw!11) Int)

(assert (=> b!57389 (= e!30499 (value!4112 thiss!8212))))

(assert (= (and b!57387 c!12215) b!57388))

(assert (= (and b!57387 (not c!12215)) b!57389))

(assert (= (and d!50244 c!12214) b!57386))

(assert (= (and d!50244 (not c!12214)) b!57387))

(declare-fun m!62226 () Bool)

(assert (=> b!57388 m!62226))

(assert (=> b!57386 m!62222))

(declare-fun m!62228 () Bool)

(assert (=> b!57389 m!62228))

(assert (=> b!57377 d!50244))

(assert (=> b!57374 d!50244))

(declare-fun d!50246 () Bool)

(assert (=> d!50246 (= (value!49 thiss!8212) 42)))

(assert (=> b!57375 d!50246))

(push 1)

(assert (not b!57389))

(assert (not b!57386))

(assert (not b!57388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50248 () Bool)

(assert (=> d!50248 true))

(assert (=> d!50248 true))

(declare-fun res!26561 () Int)

(assert (=> d!50248 (= (value!4112 thiss!8212) res!26561)))

(assert (=> b!57389 d!50248))

(assert (=> b!57386 d!50246))

(declare-fun d!50250 () Bool)

(assert (=> d!50250 (= (value!50 thiss!8212) 42)))

(assert (=> b!57388 d!50250))

(push 1)

(check-sat)

(pop 1)

