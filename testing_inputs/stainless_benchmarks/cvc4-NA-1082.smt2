; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7962 () Bool)

(assert start!7962)

(declare-fun res!26519 () Bool)

(declare-fun e!30454 () Bool)

(assert (=> start!7962 (=> (not res!26519) (not e!30454))))

(declare-datatypes () ((SomeLaw!8 (ConcreteOverride!7) (ConcreteNoOverride!7) (SomeLawExt!5 (__x!151 Int)))))

(declare-fun thiss!8184 () SomeLaw!8)

(assert (=> start!7962 (= res!26519 (and (not (is-ConcreteOverride!7 thiss!8184)) (is-ConcreteNoOverride!7 thiss!8184)))))

(assert (=> start!7962 e!30454))

(assert (=> start!7962 true))

(declare-fun b!57309 () Bool)

(declare-fun res!26521 () Bool)

(assert (=> b!57309 (=> (not res!26521) (not e!30454))))

(declare-fun res!26492 () Bool)

(declare-fun lawNotZero!10 (SomeLaw!8) Bool)

(assert (=> b!57309 (= res!26521 (= res!26492 (lawNotZero!10 thiss!8184)))))

(declare-fun b!57310 () Bool)

(declare-fun e!30453 () Bool)

(assert (=> b!57310 (= e!30454 e!30453)))

(declare-fun res!26520 () Bool)

(assert (=> b!57310 (=> res!26520 e!30453)))

(assert (=> b!57310 (= res!26520 (not res!26492))))

(declare-fun b!57311 () Bool)

(declare-fun value!48 (SomeLaw!8) Int)

(assert (=> b!57311 (= e!30453 (= (value!48 thiss!8184) 0))))

(assert (= (and start!7962 res!26519) b!57309))

(assert (= (and b!57309 res!26521) b!57310))

(assert (= (and b!57310 (not res!26520)) b!57311))

(declare-fun m!62194 () Bool)

(assert (=> b!57309 m!62194))

(declare-fun m!62196 () Bool)

(assert (=> b!57311 m!62196))

(push 1)

(assert (not b!57309))

(assert (not b!57311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50228 () Bool)

(assert (=> d!50228 (not (= (value!48 thiss!8184) 0))))

(assert (=> d!50228 (= (lawNotZero!10 thiss!8184) true)))

(declare-fun bs!36245 () Bool)

(assert (= bs!36245 d!50228))

(assert (=> bs!36245 m!62196))

(assert (=> b!57309 d!50228))

(declare-fun b!57322 () Bool)

(declare-fun e!30460 () Int)

(declare-fun value!50 (SomeLaw!8) Int)

(assert (=> b!57322 (= e!30460 (value!50 thiss!8184))))

(declare-fun b!57321 () Bool)

(declare-fun e!30459 () Int)

(assert (=> b!57321 (= e!30459 e!30460)))

(declare-fun c!12197 () Bool)

(assert (=> b!57321 (= c!12197 (is-ConcreteNoOverride!7 thiss!8184))))

(declare-fun d!50230 () Bool)

(declare-fun c!12196 () Bool)

(assert (=> d!50230 (= c!12196 (is-ConcreteOverride!7 thiss!8184))))

(assert (=> d!50230 (= (value!48 thiss!8184) e!30459)))

(declare-fun b!57323 () Bool)

(declare-fun value!4112 (SomeLaw!8) Int)

(assert (=> b!57323 (= e!30460 (value!4112 thiss!8184))))

(declare-fun b!57320 () Bool)

(declare-fun value!49 (SomeLaw!8) Int)

(assert (=> b!57320 (= e!30459 (value!49 thiss!8184))))

(assert (= (and b!57321 c!12197) b!57322))

(assert (= (and b!57321 (not c!12197)) b!57323))

(assert (= (and d!50230 c!12196) b!57320))

(assert (= (and d!50230 (not c!12196)) b!57321))

(declare-fun m!62198 () Bool)

(assert (=> b!57322 m!62198))

(declare-fun m!62200 () Bool)

(assert (=> b!57323 m!62200))

(declare-fun m!62202 () Bool)

(assert (=> b!57320 m!62202))

(assert (=> b!57311 d!50230))

(push 1)

(assert (not b!57323))

(assert (not b!57320))

(assert (not d!50228))

(assert (not b!57322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

