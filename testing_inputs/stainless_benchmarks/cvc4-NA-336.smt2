; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2558 () Bool)

(assert start!2558)

(declare-datatypes () ((Balance!381 (Balance!382 (extraOpen!231 Int) (extraClose!231 Int)))))

(declare-fun a!352 () Balance!381)

(declare-fun b!5625 () Balance!381)

(declare-fun c!2178 () Balance!381)

(declare-fun ++!3 (Balance!381 Balance!381) Balance!381)

(assert (=> start!2558 (not (= (++!3 a!352 (++!3 b!5625 c!2178)) (++!3 (++!3 a!352 b!5625) c!2178)))))

(assert (=> start!2558 true))

(declare-fun bs!3320 () Bool)

(assert (= bs!3320 start!2558))

(declare-fun m!15637 () Bool)

(assert (=> bs!3320 m!15637))

(assert (=> bs!3320 m!15637))

(declare-fun m!15639 () Bool)

(assert (=> bs!3320 m!15639))

(declare-fun m!15641 () Bool)

(assert (=> bs!3320 m!15641))

(assert (=> bs!3320 m!15641))

(declare-fun m!15643 () Bool)

(assert (=> bs!3320 m!15643))

(push 1)

(assert (not start!2558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9821 () Bool)

(declare-fun lt!1821 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9821 (= lt!1821 (min!4 (extraOpen!231 a!352) (extraClose!231 (++!3 b!5625 c!2178))))))

(assert (=> d!9821 (= (++!3 a!352 (++!3 b!5625 c!2178)) (Balance!382 (- (+ (extraOpen!231 a!352) (extraOpen!231 (++!3 b!5625 c!2178))) lt!1821) (- (+ (extraClose!231 a!352) (extraClose!231 (++!3 b!5625 c!2178))) lt!1821)))))

(declare-fun bs!3321 () Bool)

(assert (= bs!3321 d!9821))

(declare-fun m!15645 () Bool)

(assert (=> bs!3321 m!15645))

(assert (=> start!2558 d!9821))

(declare-fun d!9823 () Bool)

(declare-fun lt!1822 () Int)

(assert (=> d!9823 (= lt!1822 (min!4 (extraOpen!231 b!5625) (extraClose!231 c!2178)))))

(assert (=> d!9823 (= (++!3 b!5625 c!2178) (Balance!382 (- (+ (extraOpen!231 b!5625) (extraOpen!231 c!2178)) lt!1822) (- (+ (extraClose!231 b!5625) (extraClose!231 c!2178)) lt!1822)))))

(declare-fun bs!3322 () Bool)

(assert (= bs!3322 d!9823))

(declare-fun m!15647 () Bool)

(assert (=> bs!3322 m!15647))

(assert (=> start!2558 d!9823))

(declare-fun lt!1823 () Int)

(declare-fun d!9825 () Bool)

(assert (=> d!9825 (= lt!1823 (min!4 (extraOpen!231 (++!3 a!352 b!5625)) (extraClose!231 c!2178)))))

(assert (=> d!9825 (= (++!3 (++!3 a!352 b!5625) c!2178) (Balance!382 (- (+ (extraOpen!231 (++!3 a!352 b!5625)) (extraOpen!231 c!2178)) lt!1823) (- (+ (extraClose!231 (++!3 a!352 b!5625)) (extraClose!231 c!2178)) lt!1823)))))

(declare-fun bs!3323 () Bool)

(assert (= bs!3323 d!9825))

(declare-fun m!15649 () Bool)

(assert (=> bs!3323 m!15649))

(assert (=> start!2558 d!9825))

(declare-fun d!9827 () Bool)

(declare-fun lt!1824 () Int)

(assert (=> d!9827 (= lt!1824 (min!4 (extraOpen!231 a!352) (extraClose!231 b!5625)))))

(assert (=> d!9827 (= (++!3 a!352 b!5625) (Balance!382 (- (+ (extraOpen!231 a!352) (extraOpen!231 b!5625)) lt!1824) (- (+ (extraClose!231 a!352) (extraClose!231 b!5625)) lt!1824)))))

(declare-fun bs!3324 () Bool)

(assert (= bs!3324 d!9827))

(declare-fun m!15651 () Bool)

(assert (=> bs!3324 m!15651))

(assert (=> start!2558 d!9827))

(push 1)

(assert (not d!9827))

(assert (not d!9825))

(assert (not d!9823))

(assert (not d!9821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9829 () Bool)

(assert (=> d!9829 (= (min!4 (extraOpen!231 a!352) (extraClose!231 b!5625)) (ite (<= (extraOpen!231 a!352) (extraClose!231 b!5625)) (extraOpen!231 a!352) (extraClose!231 b!5625)))))

(assert (=> d!9827 d!9829))

(declare-fun d!9831 () Bool)

(assert (=> d!9831 (= (min!4 (extraOpen!231 (++!3 a!352 b!5625)) (extraClose!231 c!2178)) (ite (<= (extraOpen!231 (++!3 a!352 b!5625)) (extraClose!231 c!2178)) (extraOpen!231 (++!3 a!352 b!5625)) (extraClose!231 c!2178)))))

(assert (=> d!9825 d!9831))

(declare-fun d!9833 () Bool)

(assert (=> d!9833 (= (min!4 (extraOpen!231 b!5625) (extraClose!231 c!2178)) (ite (<= (extraOpen!231 b!5625) (extraClose!231 c!2178)) (extraOpen!231 b!5625) (extraClose!231 c!2178)))))

(assert (=> d!9823 d!9833))

(declare-fun d!9835 () Bool)

(assert (=> d!9835 (= (min!4 (extraOpen!231 a!352) (extraClose!231 (++!3 b!5625 c!2178))) (ite (<= (extraOpen!231 a!352) (extraClose!231 (++!3 b!5625 c!2178))) (extraOpen!231 a!352) (extraClose!231 (++!3 b!5625 c!2178))))))

(assert (=> d!9821 d!9835))

(push 1)

(check-sat)

(pop 1)

