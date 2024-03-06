; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6380 () Bool)

(assert start!6380)

(declare-fun b!47481 () Bool)

(declare-fun res!22300 () Bool)

(declare-fun e!24759 () Bool)

(assert (=> b!47481 (=> (not res!22300) (not e!24759))))

(declare-datatypes () ((Nat!212 (Zero!196) (Succ!193 (n!1349 Nat!212)))))

(declare-fun that!1096 () Nat!212)

(declare-fun >!2 (Nat!212 Nat!212) Bool)

(assert (=> b!47481 (= res!22300 (>!2 that!1096 Zero!196))))

(declare-fun b!47482 () Bool)

(declare-fun res!17685 () Nat!212)

(declare-fun thiss!5481 () Nat!212)

(declare-fun repr!0 (Nat!212) Int)

(assert (=> b!47482 (= e!24759 (>= (repr!0 res!17685) (repr!0 thiss!5481)))))

(declare-fun res!22303 () Bool)

(declare-fun e!24757 () Bool)

(assert (=> start!6380 (=> (not res!22303) (not e!24757))))

(assert (=> start!6380 (= res!22303 (and (or (not (is-Succ!193 thiss!5481)) (not (is-Succ!193 that!1096))) (= res!17685 thiss!5481)))))

(assert (=> start!6380 e!24757))

(assert (=> start!6380 true))

(declare-fun b!47480 () Bool)

(declare-fun e!24758 () Bool)

(assert (=> b!47480 (= e!24758 e!24759)))

(declare-fun res!22302 () Bool)

(assert (=> b!47480 (=> (not res!22302) (not e!24759))))

(assert (=> b!47480 (= res!22302 (>!2 thiss!5481 Zero!196))))

(declare-fun b!47479 () Bool)

(assert (=> b!47479 (= e!24757 e!24758)))

(declare-fun res!22301 () Bool)

(assert (=> b!47479 (=> res!22301 e!24758)))

(assert (=> b!47479 (= res!22301 (> (repr!0 res!17685) (repr!0 thiss!5481)))))

(assert (= (and start!6380 res!22303) b!47479))

(assert (= (and b!47479 (not res!22301)) b!47480))

(assert (= (and b!47480 res!22302) b!47481))

(assert (= (and b!47481 res!22300) b!47482))

(declare-fun m!50383 () Bool)

(assert (=> b!47481 m!50383))

(declare-fun m!50385 () Bool)

(assert (=> b!47482 m!50385))

(declare-fun m!50387 () Bool)

(assert (=> b!47482 m!50387))

(declare-fun m!50389 () Bool)

(assert (=> b!47480 m!50389))

(assert (=> b!47479 m!50385))

(assert (=> b!47479 m!50387))

(push 1)

(assert (not b!47480))

(assert (not b!47482))

(assert (not b!47479))

(assert (not b!47481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33316 () Bool)

(declare-fun res!22306 () Bool)

(declare-fun e!24762 () Bool)

(assert (=> d!33316 (=> (not res!22306) (not e!24762))))

(declare-fun <!2 (Nat!212 Nat!212) Bool)

(assert (=> d!33316 (= res!22306 (not (<!2 thiss!5481 Zero!196)))))

(assert (=> d!33316 (= (>!2 thiss!5481 Zero!196) e!24762)))

(declare-fun b!47485 () Bool)

(assert (=> b!47485 (= e!24762 (not (= thiss!5481 Zero!196)))))

(assert (= (and d!33316 res!22306) b!47485))

(declare-fun m!50391 () Bool)

(assert (=> d!33316 m!50391))

(assert (=> b!47480 d!33316))

(declare-fun d!33318 () Bool)

(declare-fun lt!8659 () Int)

(assert (=> d!33318 (>= lt!8659 0)))

(declare-fun e!24765 () Int)

(assert (=> d!33318 (= lt!8659 e!24765)))

(declare-fun c!10018 () Bool)

(assert (=> d!33318 (= c!10018 (is-Zero!196 res!17685))))

(assert (=> d!33318 (= (repr!0 res!17685) lt!8659)))

(declare-fun b!47490 () Bool)

(assert (=> b!47490 (= e!24765 0)))

(declare-fun b!47491 () Bool)

(assert (=> b!47491 (= e!24765 (+ (repr!0 (n!1349 res!17685)) 1))))

(assert (= (and d!33318 c!10018) b!47490))

(assert (= (and d!33318 (not c!10018)) b!47491))

(declare-fun m!50393 () Bool)

(assert (=> b!47491 m!50393))

(assert (=> b!47482 d!33318))

(declare-fun d!33320 () Bool)

(declare-fun lt!8660 () Int)

(assert (=> d!33320 (>= lt!8660 0)))

(declare-fun e!24766 () Int)

(assert (=> d!33320 (= lt!8660 e!24766)))

(declare-fun c!10019 () Bool)

(assert (=> d!33320 (= c!10019 (is-Zero!196 thiss!5481))))

(assert (=> d!33320 (= (repr!0 thiss!5481) lt!8660)))

(declare-fun b!47492 () Bool)

(assert (=> b!47492 (= e!24766 0)))

(declare-fun b!47493 () Bool)

(assert (=> b!47493 (= e!24766 (+ (repr!0 (n!1349 thiss!5481)) 1))))

(assert (= (and d!33320 c!10019) b!47492))

(assert (= (and d!33320 (not c!10019)) b!47493))

(declare-fun m!50395 () Bool)

(assert (=> b!47493 m!50395))

(assert (=> b!47482 d!33320))

(assert (=> b!47479 d!33318))

(assert (=> b!47479 d!33320))

(declare-fun d!33322 () Bool)

(declare-fun res!22307 () Bool)

(declare-fun e!24767 () Bool)

(assert (=> d!33322 (=> (not res!22307) (not e!24767))))

(assert (=> d!33322 (= res!22307 (not (<!2 that!1096 Zero!196)))))

(assert (=> d!33322 (= (>!2 that!1096 Zero!196) e!24767)))

(declare-fun b!47494 () Bool)

(assert (=> b!47494 (= e!24767 (not (= that!1096 Zero!196)))))

(assert (= (and d!33322 res!22307) b!47494))

(declare-fun m!50397 () Bool)

(assert (=> d!33322 m!50397))

(assert (=> b!47481 d!33322))

(push 1)

(assert (not d!33322))

(assert (not b!47491))

(assert (not b!47493))

(assert (not d!33316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

