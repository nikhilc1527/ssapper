; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2546 () Bool)

(assert start!2546)

(declare-fun b_free!2013 () Bool)

(declare-fun b_next!4709 () Bool)

(assert (=> start!2546 (= b_free!2013 (not b_next!4709))))

(declare-fun tp!3175 () Bool)

(declare-fun b_and!7051 () Bool)

(assert (=> start!2546 (= tp!3175 b_and!7051)))

(declare-fun f!539 () Int)

(declare-fun b_next!4711 () Bool)

(declare-fun b!12558 () Bool)

(declare-fun lambda!3405 () Int)

(assert (=> start!2546 (= b_next!4709 (or (and b!12558 (= lambda!3405 f!539)) b_next!4711))))

(declare-datatypes () ((Balance!379 (Balance!380 (extraOpen!230 Int) (extraClose!230 Int)))))

(declare-datatypes () ((List!293 (Nil!291) (Cons!290 (head!508 Balance!379) (tail!520 List!293)))))

(declare-fun ys!54 () List!293)

(declare-fun b!12555 () Bool)

(declare-fun e!6877 () Balance!379)

(declare-fun xs!292 () List!293)

(declare-fun foldRight1!123 (List!293 Int) Balance!379)

(declare-fun append!142 (List!293 List!293) List!293)

(assert (=> b!12555 (= e!6877 (foldRight1!123 (append!142 xs!292 ys!54) f!539))))

(declare-fun b!12556 () Bool)

(declare-fun res!4714 () Balance!379)

(assert (=> b!12556 (= e!6877 res!4714)))

(assert (=> b!12556 true))

(declare-fun b!12557 () Bool)

(declare-fun res!4715 () Bool)

(declare-fun e!6876 () Bool)

(assert (=> b!12557 (=> (not res!4715) (not e!6876))))

(declare-fun isEmpty!221 (List!293) Bool)

(assert (=> b!12557 (= res!4715 (not (isEmpty!221 ys!54)))))

(declare-fun res!4713 () Bool)

(assert (=> start!2546 (=> (not res!4713) (not e!6876))))

(assert (=> start!2546 (= res!4713 (not (isEmpty!221 xs!292)))))

(assert (=> start!2546 e!6876))

(assert (=> start!2546 true))

(assert (=> start!2546 tp!3175))

(declare-fun res!4716 () Bool)

(assert (=> b!12558 (=> (not res!4716) (not e!6876))))

(assert (=> b!12558 (= res!4716 (= f!539 lambda!3405))))

(declare-fun b!12559 () Bool)

(declare-datatypes () ((ProofOps!286 (ProofOps!287 (prop!280 Bool)))))

(declare-fun because!2 (ProofOps!286 Bool) Bool)

(declare-fun dynLambda!542 (Int Balance!379 Balance!379) Balance!379)

(assert (=> b!12559 (= e!6876 (not (because!2 (ProofOps!287 (= (dynLambda!542 f!539 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) (foldRight1!123 (append!142 xs!292 ys!54) f!539))) true)))))

(assert (=> b!12559 (= (dynLambda!542 f!539 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) e!6877)))

(declare-fun c!3531 () Bool)

(declare-fun lt!1815 () Bool)

(assert (=> b!12559 (= c!3531 (or lt!1815 (not lt!1815)))))

(assert (=> b!12559 (= lt!1815 (and (is-Cons!290 xs!292) (is-Nil!291 (tail!520 xs!292))))))

(assert (= (and start!2546 res!4713) b!12557))

(assert (= (and b!12557 res!4715) b!12558))

(assert (= (and b!12558 res!4716) b!12559))

(assert (= (and b!12559 c!3531) b!12555))

(assert (= (and b!12559 (not c!3531)) b!12556))

(declare-fun b_lambda!7113 () Bool)

(assert (=> (not b_lambda!7113) (not b!12559)))

(declare-fun t!4009 () Bool)

(declare-fun tb!3669 () Bool)

(assert (=> (and start!2546 (= f!539 f!539) t!4009) tb!3669))

(declare-fun result!3721 () Bool)

(assert (=> tb!3669 (= result!3721 true)))

(assert (=> b!12559 t!4009))

(declare-fun b_and!7053 () Bool)

(assert (= b_and!7051 (and (=> t!4009 result!3721) b_and!7053)))

(declare-fun m!15597 () Bool)

(assert (=> b!12555 m!15597))

(assert (=> b!12555 m!15597))

(declare-fun m!15599 () Bool)

(assert (=> b!12555 m!15599))

(declare-fun m!15601 () Bool)

(assert (=> b!12557 m!15601))

(declare-fun m!15603 () Bool)

(assert (=> start!2546 m!15603))

(assert (=> b!12559 m!15597))

(declare-fun m!15605 () Bool)

(assert (=> b!12559 m!15605))

(declare-fun m!15607 () Bool)

(assert (=> b!12559 m!15607))

(declare-fun m!15609 () Bool)

(assert (=> b!12559 m!15609))

(assert (=> b!12559 m!15605))

(assert (=> b!12559 m!15607))

(declare-fun m!15611 () Bool)

(assert (=> b!12559 m!15611))

(assert (=> b!12559 m!15597))

(assert (=> b!12559 m!15599))

(push 1)

(assert b_and!7053)

(assert (not b_lambda!7113))

(assert (not start!2546))

(assert (not b!12557))

(assert (not b!12559))

(assert (not b!12555))

(assert (not b_next!4711))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7053)

(assert (not b_next!4711))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7115 () Bool)

(assert (= b_lambda!7113 (or (and b!12558 (= lambda!3405 f!539)) (and start!2546 b_free!2013) b_lambda!7115)))

(declare-fun bs!3314 () Bool)

(declare-fun d!9797 () Bool)

(assert (= bs!3314 (and d!9797 b!12558)))

(declare-fun ++!3 (Balance!379 Balance!379) Balance!379)

(assert (=> bs!3314 (= (dynLambda!542 lambda!3405 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) (++!3 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)))))

(assert (=> bs!3314 m!15605))

(assert (=> bs!3314 m!15607))

(declare-fun m!15613 () Bool)

(assert (=> bs!3314 m!15613))

(assert (=> (and b!12558 (= lambda!3405 f!539) b!12559) d!9797))

(push 1)

(assert b_and!7053)

(assert (not start!2546))

(assert (not b!12557))

(assert (not bs!3314))

(assert (not b_lambda!7115))

(assert (not b!12559))

(assert (not b!12555))

(assert (not b_next!4711))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7053)

(assert (not b_next!4711))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9799 () Bool)

(assert (=> d!9799 (= (because!2 (ProofOps!287 (= (dynLambda!542 f!539 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) (foldRight1!123 (append!142 xs!292 ys!54) f!539))) true) (prop!280 (ProofOps!287 (= (dynLambda!542 f!539 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) (foldRight1!123 (append!142 xs!292 ys!54) f!539)))))))

(assert (=> b!12559 d!9799))

(declare-fun d!9801 () Bool)

(declare-fun c!3534 () Bool)

(assert (=> d!9801 (= c!3534 (and (is-Cons!290 xs!292) (is-Nil!291 (tail!520 xs!292))))))

(declare-fun e!6880 () Balance!379)

(assert (=> d!9801 (= (foldRight1!123 xs!292 f!539) e!6880)))

(declare-fun b!12564 () Bool)

(assert (=> b!12564 (= e!6880 (head!508 xs!292))))

(declare-fun b!12565 () Bool)

(assert (=> b!12565 (= e!6880 (dynLambda!542 f!539 (head!508 xs!292) (foldRight1!123 (tail!520 xs!292) f!539)))))

(assert (= (and d!9801 c!3534) b!12564))

(assert (= (and d!9801 (not c!3534)) b!12565))

(declare-fun b_lambda!7117 () Bool)

(assert (=> (not b_lambda!7117) (not b!12565)))

(declare-fun t!4011 () Bool)

(declare-fun tb!3671 () Bool)

(assert (=> (and start!2546 (= f!539 f!539) t!4011) tb!3671))

(declare-fun result!3723 () Bool)

(assert (=> tb!3671 (= result!3723 true)))

(assert (=> b!12565 t!4011))

(declare-fun b_and!7055 () Bool)

(assert (= b_and!7053 (and (=> t!4011 result!3723) b_and!7055)))

(declare-fun m!15615 () Bool)

(assert (=> b!12565 m!15615))

(assert (=> b!12565 m!15615))

(declare-fun m!15617 () Bool)

(assert (=> b!12565 m!15617))

(assert (=> b!12559 d!9801))

(declare-fun d!9803 () Bool)

(declare-fun c!3535 () Bool)

(assert (=> d!9803 (= c!3535 (and (is-Cons!290 ys!54) (is-Nil!291 (tail!520 ys!54))))))

(declare-fun e!6881 () Balance!379)

(assert (=> d!9803 (= (foldRight1!123 ys!54 f!539) e!6881)))

(declare-fun b!12566 () Bool)

(assert (=> b!12566 (= e!6881 (head!508 ys!54))))

(declare-fun b!12567 () Bool)

(assert (=> b!12567 (= e!6881 (dynLambda!542 f!539 (head!508 ys!54) (foldRight1!123 (tail!520 ys!54) f!539)))))

(assert (= (and d!9803 c!3535) b!12566))

(assert (= (and d!9803 (not c!3535)) b!12567))

(declare-fun b_lambda!7119 () Bool)

(assert (=> (not b_lambda!7119) (not b!12567)))

(declare-fun t!4013 () Bool)

(declare-fun tb!3673 () Bool)

(assert (=> (and start!2546 (= f!539 f!539) t!4013) tb!3673))

(declare-fun result!3725 () Bool)

(assert (=> tb!3673 (= result!3725 true)))

(assert (=> b!12567 t!4013))

(declare-fun b_and!7057 () Bool)

(assert (= b_and!7055 (and (=> t!4013 result!3725) b_and!7057)))

(declare-fun m!15619 () Bool)

(assert (=> b!12567 m!15619))

(assert (=> b!12567 m!15619))

(declare-fun m!15621 () Bool)

(assert (=> b!12567 m!15621))

(assert (=> b!12559 d!9803))

(declare-fun d!9805 () Bool)

(declare-fun c!3538 () Bool)

(assert (=> d!9805 (= c!3538 (is-Nil!291 xs!292))))

(declare-fun e!6884 () List!293)

(assert (=> d!9805 (= (append!142 xs!292 ys!54) e!6884)))

(declare-fun b!12572 () Bool)

(assert (=> b!12572 (= e!6884 ys!54)))

(declare-fun b!12573 () Bool)

(assert (=> b!12573 (= e!6884 (Cons!290 (head!508 xs!292) (append!142 (tail!520 xs!292) ys!54)))))

(assert (= (and d!9805 c!3538) b!12572))

(assert (= (and d!9805 (not c!3538)) b!12573))

(declare-fun m!15623 () Bool)

(assert (=> b!12573 m!15623))

(assert (=> b!12559 d!9805))

(declare-fun d!9807 () Bool)

(declare-fun c!3539 () Bool)

(assert (=> d!9807 (= c!3539 (and (is-Cons!290 (append!142 xs!292 ys!54)) (is-Nil!291 (tail!520 (append!142 xs!292 ys!54)))))))

(declare-fun e!6885 () Balance!379)

(assert (=> d!9807 (= (foldRight1!123 (append!142 xs!292 ys!54) f!539) e!6885)))

(declare-fun b!12574 () Bool)

(assert (=> b!12574 (= e!6885 (head!508 (append!142 xs!292 ys!54)))))

(declare-fun b!12575 () Bool)

(assert (=> b!12575 (= e!6885 (dynLambda!542 f!539 (head!508 (append!142 xs!292 ys!54)) (foldRight1!123 (tail!520 (append!142 xs!292 ys!54)) f!539)))))

(assert (= (and d!9807 c!3539) b!12574))

(assert (= (and d!9807 (not c!3539)) b!12575))

(declare-fun b_lambda!7121 () Bool)

(assert (=> (not b_lambda!7121) (not b!12575)))

(declare-fun t!4015 () Bool)

(declare-fun tb!3675 () Bool)

(assert (=> (and start!2546 (= f!539 f!539) t!4015) tb!3675))

(declare-fun result!3727 () Bool)

(assert (=> tb!3675 (= result!3727 true)))

(assert (=> b!12575 t!4015))

(declare-fun b_and!7059 () Bool)

(assert (= b_and!7057 (and (=> t!4015 result!3727) b_and!7059)))

(declare-fun m!15625 () Bool)

(assert (=> b!12575 m!15625))

(assert (=> b!12575 m!15625))

(declare-fun m!15627 () Bool)

(assert (=> b!12575 m!15627))

(assert (=> b!12559 d!9807))

(assert (=> b!12555 d!9807))

(assert (=> b!12555 d!9805))

(declare-fun d!9809 () Bool)

(assert (=> d!9809 (= (isEmpty!221 xs!292) (is-Nil!291 xs!292))))

(assert (=> start!2546 d!9809))

(declare-fun lt!1818 () Int)

(declare-fun d!9811 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9811 (= lt!1818 (min!4 (extraOpen!230 (foldRight1!123 xs!292 f!539)) (extraClose!230 (foldRight1!123 ys!54 f!539))))))

(assert (=> d!9811 (= (++!3 (foldRight1!123 xs!292 f!539) (foldRight1!123 ys!54 f!539)) (Balance!380 (- (+ (extraOpen!230 (foldRight1!123 xs!292 f!539)) (extraOpen!230 (foldRight1!123 ys!54 f!539))) lt!1818) (- (+ (extraClose!230 (foldRight1!123 xs!292 f!539)) (extraClose!230 (foldRight1!123 ys!54 f!539))) lt!1818)))))

(declare-fun bs!3315 () Bool)

(assert (= bs!3315 d!9811))

(declare-fun m!15629 () Bool)

(assert (=> bs!3315 m!15629))

(assert (=> bs!3314 d!9811))

(declare-fun d!9813 () Bool)

(assert (=> d!9813 (= (isEmpty!221 ys!54) (is-Nil!291 ys!54))))

(assert (=> b!12557 d!9813))

(declare-fun b_lambda!7123 () Bool)

(assert (= b_lambda!7119 (or (and b!12558 (= lambda!3405 f!539)) (and start!2546 b_free!2013) b_lambda!7123)))

(declare-fun bs!3316 () Bool)

(declare-fun d!9815 () Bool)

(assert (= bs!3316 (and d!9815 b!12558)))

(assert (=> bs!3316 (= (dynLambda!542 lambda!3405 (head!508 ys!54) (foldRight1!123 (tail!520 ys!54) f!539)) (++!3 (head!508 ys!54) (foldRight1!123 (tail!520 ys!54) f!539)))))

(assert (=> bs!3316 m!15619))

(declare-fun m!15631 () Bool)

(assert (=> bs!3316 m!15631))

(assert (=> (and b!12558 (= lambda!3405 f!539) b!12567) d!9815))

(declare-fun b_lambda!7125 () Bool)

(assert (= b_lambda!7117 (or (and b!12558 (= lambda!3405 f!539)) (and start!2546 b_free!2013) b_lambda!7125)))

(declare-fun bs!3317 () Bool)

(declare-fun d!9817 () Bool)

(assert (= bs!3317 (and d!9817 b!12558)))

(assert (=> bs!3317 (= (dynLambda!542 lambda!3405 (head!508 xs!292) (foldRight1!123 (tail!520 xs!292) f!539)) (++!3 (head!508 xs!292) (foldRight1!123 (tail!520 xs!292) f!539)))))

(assert (=> bs!3317 m!15615))

(declare-fun m!15633 () Bool)

(assert (=> bs!3317 m!15633))

(assert (=> (and b!12558 (= lambda!3405 f!539) b!12565) d!9817))

(declare-fun b_lambda!7127 () Bool)

(assert (= b_lambda!7121 (or (and b!12558 (= lambda!3405 f!539)) (and start!2546 b_free!2013) b_lambda!7127)))

(declare-fun bs!3318 () Bool)

(declare-fun d!9819 () Bool)

(assert (= bs!3318 (and d!9819 b!12558)))

(assert (=> bs!3318 (= (dynLambda!542 lambda!3405 (head!508 (append!142 xs!292 ys!54)) (foldRight1!123 (tail!520 (append!142 xs!292 ys!54)) f!539)) (++!3 (head!508 (append!142 xs!292 ys!54)) (foldRight1!123 (tail!520 (append!142 xs!292 ys!54)) f!539)))))

(assert (=> bs!3318 m!15625))

(declare-fun m!15635 () Bool)

(assert (=> bs!3318 m!15635))

(assert (=> (and b!12558 (= lambda!3405 f!539) b!12575) d!9819))

(push 1)

(assert (not bs!3316))

(assert (not d!9811))

(assert (not b!12565))

(assert (not b!12575))

(assert (not b!12573))

(assert (not b_lambda!7115))

(assert b_and!7059)

(assert (not b_lambda!7125))

(assert (not b_lambda!7127))

(assert (not b!12567))

(assert (not b_lambda!7123))

(assert (not bs!3317))

(assert (not bs!3318))

(assert (not b_next!4711))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7059)

(assert (not b_next!4711))

(check-sat)

(pop 1)

