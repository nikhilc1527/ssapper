; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3526 () Bool)

(assert start!3526)

(declare-fun b!22259 () Bool)

(declare-fun e!11630 () Bool)

(declare-fun tp_is_empty!111 () Bool)

(declare-fun tp!4906 () Bool)

(assert (=> b!22259 (= e!11630 (and tp_is_empty!111 tp!4906))))

(declare-fun b!22260 () Bool)

(declare-fun e!11628 () Bool)

(declare-fun e!11631 () Bool)

(assert (=> b!22260 (= e!11628 e!11631)))

(declare-fun res!9772 () Bool)

(assert (=> b!22260 (=> res!9772 e!11631)))

(declare-fun i!290 () Int)

(assert (=> b!22260 (= res!9772 (> 0 i!290))))

(declare-datatypes () ((T!1767 (T!1768 (val!56 Int)))))

(declare-datatypes () ((List!342 (Cons!336 (h!250 T!1767) (t!4337 List!342)) (Nil!337))))

(declare-fun l2!164 () List!342)

(declare-fun l1!170 () List!342)

(declare-fun b!22261 () Bool)

(declare-fun size!234 (List!342) Int)

(assert (=> b!22261 (= e!11631 (> i!290 (+ (size!234 l1!170) (size!234 l2!164))))))

(declare-fun res!9771 () Bool)

(assert (=> start!3526 (=> (not res!9771) (not e!11628))))

(declare-fun i!289 () Int)

(assert (=> start!3526 (= res!9771 (<= 0 i!289))))

(assert (=> start!3526 e!11628))

(assert (=> start!3526 e!11630))

(assert (=> start!3526 tp_is_empty!111))

(declare-fun e!11633 () Bool)

(assert (=> start!3526 e!11633))

(assert (=> start!3526 true))

(declare-fun e!11632 () Bool)

(assert (=> start!3526 e!11632))

(declare-fun e!11629 () Bool)

(assert (=> start!3526 e!11629))

(declare-fun b!22262 () Bool)

(declare-fun res!9773 () Bool)

(assert (=> b!22262 (=> (not res!9773) (not e!11628))))

(declare-fun l1!169 () List!342)

(declare-fun l2!163 () List!342)

(assert (=> b!22262 (= res!9773 (<= i!289 (+ (size!234 l1!169) (size!234 l2!163))))))

(declare-fun b!22263 () Bool)

(declare-fun tp!4905 () Bool)

(assert (=> b!22263 (= e!11629 (and tp_is_empty!111 tp!4905))))

(declare-fun b!22264 () Bool)

(declare-fun tp!4908 () Bool)

(assert (=> b!22264 (= e!11632 (and tp_is_empty!111 tp!4908))))

(declare-fun b!22265 () Bool)

(declare-fun tp!4907 () Bool)

(assert (=> b!22265 (= e!11633 (and tp_is_empty!111 tp!4907))))

(declare-fun b!22266 () Bool)

(declare-fun res!9770 () Bool)

(assert (=> b!22266 (=> (not res!9770) (not e!11628))))

(declare-fun y!812 () T!1767)

(declare-fun y!811 () T!1767)

(assert (=> b!22266 (= res!9770 (and (not (is-Nil!337 l1!169)) (not (= i!289 0)) (= l1!170 (t!4337 l1!169)) (= l2!164 l2!163) (= i!290 (- i!289 1)) (= y!812 y!811)))))

(assert (= (and start!3526 res!9771) b!22262))

(assert (= (and b!22262 res!9773) b!22266))

(assert (= (and b!22266 res!9770) b!22260))

(assert (= (and b!22260 (not res!9772)) b!22261))

(assert (= (and start!3526 (is-Cons!336 l2!164)) b!22259))

(assert (= (and start!3526 (is-Cons!336 l1!169)) b!22265))

(assert (= (and start!3526 (is-Cons!336 l1!170)) b!22264))

(assert (= (and start!3526 (is-Cons!336 l2!163)) b!22263))

(declare-fun m!24353 () Bool)

(assert (=> b!22261 m!24353))

(declare-fun m!24355 () Bool)

(assert (=> b!22261 m!24355))

(declare-fun m!24357 () Bool)

(assert (=> b!22262 m!24357))

(declare-fun m!24359 () Bool)

(assert (=> b!22262 m!24359))

(push 1)

(assert (not b!22263))

(assert (not b!22262))

(assert (not b!22259))

(assert tp_is_empty!111)

(assert (not b!22265))

(assert (not b!22264))

(assert (not b!22261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13121 () Bool)

(declare-fun lt!3543 () Int)

(assert (=> d!13121 (>= lt!3543 0)))

(declare-fun e!11636 () Int)

(assert (=> d!13121 (= lt!3543 e!11636)))

(declare-fun c!5302 () Bool)

(assert (=> d!13121 (= c!5302 (is-Nil!337 l1!169))))

(assert (=> d!13121 (= (size!234 l1!169) lt!3543)))

(declare-fun b!22271 () Bool)

(assert (=> b!22271 (= e!11636 0)))

(declare-fun b!22272 () Bool)

(assert (=> b!22272 (= e!11636 (+ 1 (size!234 (t!4337 l1!169))))))

(assert (= (and d!13121 c!5302) b!22271))

(assert (= (and d!13121 (not c!5302)) b!22272))

(declare-fun m!24361 () Bool)

(assert (=> b!22272 m!24361))

(assert (=> b!22262 d!13121))

(declare-fun d!13123 () Bool)

(declare-fun lt!3544 () Int)

(assert (=> d!13123 (>= lt!3544 0)))

(declare-fun e!11637 () Int)

(assert (=> d!13123 (= lt!3544 e!11637)))

(declare-fun c!5303 () Bool)

(assert (=> d!13123 (= c!5303 (is-Nil!337 l2!163))))

(assert (=> d!13123 (= (size!234 l2!163) lt!3544)))

(declare-fun b!22273 () Bool)

(assert (=> b!22273 (= e!11637 0)))

(declare-fun b!22274 () Bool)

(assert (=> b!22274 (= e!11637 (+ 1 (size!234 (t!4337 l2!163))))))

(assert (= (and d!13123 c!5303) b!22273))

(assert (= (and d!13123 (not c!5303)) b!22274))

(declare-fun m!24363 () Bool)

(assert (=> b!22274 m!24363))

(assert (=> b!22262 d!13123))

(declare-fun d!13125 () Bool)

(declare-fun lt!3545 () Int)

(assert (=> d!13125 (>= lt!3545 0)))

(declare-fun e!11638 () Int)

(assert (=> d!13125 (= lt!3545 e!11638)))

(declare-fun c!5304 () Bool)

(assert (=> d!13125 (= c!5304 (is-Nil!337 l1!170))))

(assert (=> d!13125 (= (size!234 l1!170) lt!3545)))

(declare-fun b!22275 () Bool)

(assert (=> b!22275 (= e!11638 0)))

(declare-fun b!22276 () Bool)

(assert (=> b!22276 (= e!11638 (+ 1 (size!234 (t!4337 l1!170))))))

(assert (= (and d!13125 c!5304) b!22275))

(assert (= (and d!13125 (not c!5304)) b!22276))

(declare-fun m!24365 () Bool)

(assert (=> b!22276 m!24365))

(assert (=> b!22261 d!13125))

(declare-fun d!13127 () Bool)

(declare-fun lt!3546 () Int)

(assert (=> d!13127 (>= lt!3546 0)))

(declare-fun e!11639 () Int)

(assert (=> d!13127 (= lt!3546 e!11639)))

(declare-fun c!5305 () Bool)

(assert (=> d!13127 (= c!5305 (is-Nil!337 l2!164))))

(assert (=> d!13127 (= (size!234 l2!164) lt!3546)))

(declare-fun b!22277 () Bool)

(assert (=> b!22277 (= e!11639 0)))

(declare-fun b!22278 () Bool)

(assert (=> b!22278 (= e!11639 (+ 1 (size!234 (t!4337 l2!164))))))

(assert (= (and d!13127 c!5305) b!22277))

(assert (= (and d!13127 (not c!5305)) b!22278))

(declare-fun m!24367 () Bool)

(assert (=> b!22278 m!24367))

(assert (=> b!22261 d!13127))

(declare-fun b!22283 () Bool)

(declare-fun e!11642 () Bool)

(declare-fun tp!4911 () Bool)

(assert (=> b!22283 (= e!11642 (and tp_is_empty!111 tp!4911))))

(assert (=> b!22263 (= tp!4905 e!11642)))

(assert (= (and b!22263 (is-Cons!336 (t!4337 l2!163))) b!22283))

(declare-fun b!22284 () Bool)

(declare-fun e!11643 () Bool)

(declare-fun tp!4912 () Bool)

(assert (=> b!22284 (= e!11643 (and tp_is_empty!111 tp!4912))))

(assert (=> b!22265 (= tp!4907 e!11643)))

(assert (= (and b!22265 (is-Cons!336 (t!4337 l1!169))) b!22284))

(declare-fun b!22285 () Bool)

(declare-fun e!11644 () Bool)

(declare-fun tp!4913 () Bool)

(assert (=> b!22285 (= e!11644 (and tp_is_empty!111 tp!4913))))

(assert (=> b!22264 (= tp!4908 e!11644)))

(assert (= (and b!22264 (is-Cons!336 (t!4337 l1!170))) b!22285))

(declare-fun b!22286 () Bool)

(declare-fun e!11645 () Bool)

(declare-fun tp!4914 () Bool)

(assert (=> b!22286 (= e!11645 (and tp_is_empty!111 tp!4914))))

(assert (=> b!22259 (= tp!4906 e!11645)))

(assert (= (and b!22259 (is-Cons!336 (t!4337 l2!164))) b!22286))

(push 1)

(assert (not b!22274))

(assert (not b!22285))

(assert (not b!22272))

(assert (not b!22276))

(assert (not b!22284))

(assert (not b!22278))

(assert tp_is_empty!111)

(assert (not b!22283))

(assert (not b!22286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

