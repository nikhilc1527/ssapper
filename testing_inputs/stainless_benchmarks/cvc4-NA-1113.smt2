; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8086 () Bool)

(assert start!8086)

(declare-fun res!26762 () Bool)

(declare-fun e!30664 () Bool)

(assert (=> start!8086 (=> (not res!26762) (not e!30664))))

(declare-datatypes () ((SomeLaw!41 (ConcreteOverride!38) (ConcreteNoOverride!38) (RefinedLawExt!28 (__x!220 Int)) (SomeLawExt!38 (__x!221 Int)))))

(declare-fun thiss!8404 () SomeLaw!41)

(assert (=> start!8086 (= res!26762 (and (not (is-ConcreteOverride!38 thiss!8404)) (is-ConcreteNoOverride!38 thiss!8404)))))

(assert (=> start!8086 e!30664))

(assert (=> start!8086 true))

(declare-fun b!57693 () Bool)

(declare-fun res!26764 () Bool)

(assert (=> b!57693 (=> (not res!26764) (not e!30664))))

(declare-fun res!26736 () Bool)

(declare-fun lawNotZero!18 (SomeLaw!41) Bool)

(assert (=> b!57693 (= res!26764 (= res!26736 (lawNotZero!18 thiss!8404)))))

(declare-fun b!57694 () Bool)

(declare-fun e!30663 () Bool)

(assert (=> b!57694 (= e!30664 e!30663)))

(declare-fun res!26763 () Bool)

(assert (=> b!57694 (=> res!26763 e!30663)))

(assert (=> b!57694 (= res!26763 (not res!26736))))

(declare-fun b!57695 () Bool)

(declare-fun value!42 (SomeLaw!41) Int)

(assert (=> b!57695 (= e!30663 (= (value!42 thiss!8404) 0))))

(assert (= (and start!8086 res!26762) b!57693))

(assert (= (and b!57693 res!26764) b!57694))

(assert (= (and b!57694 (not res!26763)) b!57695))

(declare-fun m!62338 () Bool)

(assert (=> b!57693 m!62338))

(declare-fun m!62340 () Bool)

(assert (=> b!57695 m!62340))

(push 1)

(assert (not b!57693))

(assert (not b!57695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50294 () Bool)

(assert (=> d!50294 (not (= (value!42 thiss!8404) 0))))

(assert (=> d!50294 (= (lawNotZero!18 thiss!8404) true)))

(declare-fun bs!36277 () Bool)

(assert (= bs!36277 d!50294))

(assert (=> bs!36277 m!62340))

(assert (=> b!57693 d!50294))

(declare-fun b!57708 () Bool)

(declare-fun e!30672 () Int)

(declare-fun value!4175 (SomeLaw!41) Int)

(assert (=> b!57708 (= e!30672 (value!4175 thiss!8404))))

(declare-fun b!57709 () Bool)

(declare-fun value!4176 (SomeLaw!41) Int)

(assert (=> b!57709 (= e!30672 (value!4176 thiss!8404))))

(declare-fun b!57710 () Bool)

(declare-fun e!30673 () Int)

(declare-fun value!43 (SomeLaw!41) Int)

(assert (=> b!57710 (= e!30673 (value!43 thiss!8404))))

(declare-fun b!57711 () Bool)

(declare-fun e!30671 () Int)

(declare-fun value!44 (SomeLaw!41) Int)

(assert (=> b!57711 (= e!30671 (value!44 thiss!8404))))

(declare-fun b!57712 () Bool)

(assert (=> b!57712 (= e!30673 e!30671)))

(declare-fun c!12301 () Bool)

(assert (=> b!57712 (= c!12301 (is-ConcreteNoOverride!38 thiss!8404))))

(declare-fun b!57713 () Bool)

(assert (=> b!57713 (= e!30671 e!30672)))

(declare-fun c!12300 () Bool)

(assert (=> b!57713 (= c!12300 (is-RefinedLawExt!28 thiss!8404))))

(declare-fun d!50296 () Bool)

(declare-fun c!12302 () Bool)

(assert (=> d!50296 (= c!12302 (is-ConcreteOverride!38 thiss!8404))))

(assert (=> d!50296 (= (value!42 thiss!8404) e!30673)))

(assert (= (and b!57713 c!12300) b!57708))

(assert (= (and b!57713 (not c!12300)) b!57709))

(assert (= (and b!57712 c!12301) b!57711))

(assert (= (and b!57712 (not c!12301)) b!57713))

(assert (= (and d!50296 c!12302) b!57710))

(assert (= (and d!50296 (not c!12302)) b!57712))

(declare-fun m!62342 () Bool)

(assert (=> b!57708 m!62342))

(declare-fun m!62344 () Bool)

(assert (=> b!57709 m!62344))

(declare-fun m!62346 () Bool)

(assert (=> b!57710 m!62346))

(declare-fun m!62348 () Bool)

(assert (=> b!57711 m!62348))

(assert (=> b!57695 d!50296))

(push 1)

(assert (not b!57708))

(assert (not b!57709))

(assert (not b!57711))

(assert (not b!57710))

(assert (not d!50294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

