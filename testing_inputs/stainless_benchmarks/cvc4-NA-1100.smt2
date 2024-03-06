; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8042 () Bool)

(assert start!8042)

(declare-fun b!57604 () Bool)

(declare-fun res!26701 () Bool)

(declare-fun e!30612 () Bool)

(assert (=> b!57604 (=> res!26701 e!30612)))

(declare-datatypes () ((SomeLaw!27 (SomeLawExt!24 (__x!188 Int)) (RefinedLawExt!14 (__x!189 Int)) (ConcreteOverride!25) (ConcreteNoOverride!25))))

(declare-fun thiss!8280 () SomeLaw!27)

(declare-fun value!45 (SomeLaw!27) Int)

(assert (=> b!57604 (= res!26701 (= (value!45 thiss!8280) 0))))

(declare-fun b!57603 () Bool)

(declare-fun e!30613 () Bool)

(assert (=> b!57603 (= e!30613 e!30612)))

(declare-fun res!26702 () Bool)

(assert (=> b!57603 (=> res!26702 e!30612)))

(declare-fun res!26577 () Bool)

(assert (=> b!57603 (= res!26702 (not res!26577))))

(declare-fun b!57602 () Bool)

(declare-fun res!26703 () Bool)

(assert (=> b!57602 (=> (not res!26703) (not e!30613))))

(declare-fun value!46 (SomeLaw!27) Int)

(assert (=> b!57602 (= res!26703 (= res!26577 (= (value!46 thiss!8280) 42)))))

(declare-fun b!57605 () Bool)

(assert (=> b!57605 (= e!30612 (<= (value!45 thiss!8280) 1))))

(declare-fun res!26704 () Bool)

(assert (=> start!8042 (=> (not res!26704) (not e!30613))))

(assert (=> start!8042 (= res!26704 (is-ConcreteOverride!25 thiss!8280))))

(assert (=> start!8042 e!30613))

(assert (=> start!8042 true))

(assert (= (and start!8042 res!26704) b!57602))

(assert (= (and b!57602 res!26703) b!57603))

(assert (= (and b!57603 (not res!26702)) b!57604))

(assert (= (and b!57604 (not res!26701)) b!57605))

(declare-fun m!62304 () Bool)

(assert (=> b!57604 m!62304))

(declare-fun m!62306 () Bool)

(assert (=> b!57602 m!62306))

(assert (=> b!57605 m!62304))

(push 1)

(assert (not b!57604))

(assert (not b!57605))

(assert (not b!57602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57618 () Bool)

(declare-fun e!30622 () Int)

(declare-fun value!4144 (SomeLaw!27) Int)

(assert (=> b!57618 (= e!30622 (value!4144 thiss!8280))))

(declare-fun b!57619 () Bool)

(declare-fun e!30621 () Int)

(declare-fun value!4143 (SomeLaw!27) Int)

(assert (=> b!57619 (= e!30621 (value!4143 thiss!8280))))

(declare-fun b!57620 () Bool)

(declare-fun e!30620 () Int)

(assert (=> b!57620 (= e!30622 e!30620)))

(declare-fun c!12275 () Bool)

(assert (=> b!57620 (= c!12275 (is-ConcreteOverride!25 thiss!8280))))

(declare-fun b!57621 () Bool)

(declare-fun value!47 (SomeLaw!27) Int)

(assert (=> b!57621 (= e!30620 (value!47 thiss!8280))))

(declare-fun b!57622 () Bool)

(assert (=> b!57622 (= e!30620 (value!46 thiss!8280))))

(declare-fun b!57623 () Bool)

(assert (=> b!57623 (= e!30621 e!30622)))

(declare-fun c!12274 () Bool)

(assert (=> b!57623 (= c!12274 (is-RefinedLawExt!14 thiss!8280))))

(declare-fun d!50274 () Bool)

(declare-fun c!12273 () Bool)

(assert (=> d!50274 (= c!12273 (is-SomeLawExt!24 thiss!8280))))

(assert (=> d!50274 (= (value!45 thiss!8280) e!30621)))

(assert (= (and b!57620 c!12275) b!57622))

(assert (= (and b!57620 (not c!12275)) b!57621))

(assert (= (and b!57623 c!12274) b!57618))

(assert (= (and b!57623 (not c!12274)) b!57620))

(assert (= (and d!50274 c!12273) b!57619))

(assert (= (and d!50274 (not c!12273)) b!57623))

(declare-fun m!62308 () Bool)

(assert (=> b!57618 m!62308))

(declare-fun m!62310 () Bool)

(assert (=> b!57619 m!62310))

(declare-fun m!62312 () Bool)

(assert (=> b!57621 m!62312))

(assert (=> b!57622 m!62306))

(assert (=> b!57604 d!50274))

(assert (=> b!57605 d!50274))

(declare-fun d!50276 () Bool)

(assert (=> d!50276 (= (value!46 thiss!8280) 42)))

(assert (=> b!57602 d!50276))

(push 1)

(assert (not b!57621))

(assert (not b!57618))

(assert (not b!57622))

(assert (not b!57619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

