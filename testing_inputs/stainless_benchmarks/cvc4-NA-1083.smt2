; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7968 () Bool)

(assert start!7968)

(declare-fun res!26529 () Bool)

(declare-fun e!30466 () Bool)

(assert (=> start!7968 (=> (not res!26529) (not e!30466))))

(declare-datatypes () ((SomeLaw!9 (ConcreteOverride!8) (ConcreteNoOverride!8) (SomeLawExt!6 (__x!152 Int)))))

(declare-fun thiss!8184 () SomeLaw!9)

(assert (=> start!7968 (= res!26529 (and (not (is-ConcreteOverride!8 thiss!8184)) (not (is-ConcreteNoOverride!8 thiss!8184))))))

(assert (=> start!7968 e!30466))

(assert (=> start!7968 true))

(declare-fun b!57330 () Bool)

(declare-fun res!26530 () Bool)

(assert (=> b!57330 (=> (not res!26530) (not e!30466))))

(declare-fun res!26494 () Bool)

(declare-fun lawNotZero!11 (SomeLaw!9) Bool)

(assert (=> b!57330 (= res!26530 (= res!26494 (lawNotZero!11 thiss!8184)))))

(declare-fun b!57331 () Bool)

(declare-fun e!30465 () Bool)

(assert (=> b!57331 (= e!30466 e!30465)))

(declare-fun res!26531 () Bool)

(assert (=> b!57331 (=> res!26531 e!30465)))

(assert (=> b!57331 (= res!26531 (not res!26494))))

(declare-fun b!57332 () Bool)

(declare-fun value!48 (SomeLaw!9) Int)

(assert (=> b!57332 (= e!30465 (= (value!48 thiss!8184) 0))))

(assert (= (and start!7968 res!26529) b!57330))

(assert (= (and b!57330 res!26530) b!57331))

(assert (= (and b!57331 (not res!26531)) b!57332))

(declare-fun m!62204 () Bool)

(assert (=> b!57330 m!62204))

(declare-fun m!62206 () Bool)

(assert (=> b!57332 m!62206))

(push 1)

(assert (not b!57330))

(assert (not b!57332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50232 () Bool)

(declare-fun e!30469 () Bool)

(assert (=> d!50232 e!30469))

(declare-fun res!26537 () Bool)

(assert (=> d!50232 (=> (not res!26537) (not e!30469))))

(declare-fun res!26536 () Bool)

(assert (=> d!50232 (= res!26537 res!26536)))

(assert (=> d!50232 true))

(assert (=> d!50232 (= (lawNotZero!11 thiss!8184) res!26536)))

(declare-fun b!57335 () Bool)

(assert (=> b!57335 (= e!30469 (not (= (value!48 thiss!8184) 0)))))

(assert (= (and d!50232 res!26537) b!57335))

(assert (=> b!57335 m!62206))

(assert (=> b!57330 d!50232))

(declare-fun b!57346 () Bool)

(declare-fun e!30475 () Int)

(declare-fun value!50 (SomeLaw!9) Int)

(assert (=> b!57346 (= e!30475 (value!50 thiss!8184))))

(declare-fun b!57347 () Bool)

(declare-fun value!4112 (SomeLaw!9) Int)

(assert (=> b!57347 (= e!30475 (value!4112 thiss!8184))))

(declare-fun b!57344 () Bool)

(declare-fun e!30474 () Int)

(declare-fun value!49 (SomeLaw!9) Int)

(assert (=> b!57344 (= e!30474 (value!49 thiss!8184))))

(declare-fun d!50234 () Bool)

(declare-fun c!12202 () Bool)

(assert (=> d!50234 (= c!12202 (is-ConcreteOverride!8 thiss!8184))))

(assert (=> d!50234 (= (value!48 thiss!8184) e!30474)))

(declare-fun b!57345 () Bool)

(assert (=> b!57345 (= e!30474 e!30475)))

(declare-fun c!12203 () Bool)

(assert (=> b!57345 (= c!12203 (is-ConcreteNoOverride!8 thiss!8184))))

(assert (= (and b!57345 c!12203) b!57346))

(assert (= (and b!57345 (not c!12203)) b!57347))

(assert (= (and d!50234 c!12202) b!57344))

(assert (= (and d!50234 (not c!12202)) b!57345))

(declare-fun m!62208 () Bool)

(assert (=> b!57346 m!62208))

(declare-fun m!62210 () Bool)

(assert (=> b!57347 m!62210))

(declare-fun m!62212 () Bool)

(assert (=> b!57344 m!62212))

(assert (=> b!57332 d!50234))

(push 1)

(assert (not b!57344))

(assert (not b!57335))

(assert (not b!57346))

(assert (not b!57347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

