; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2100 () Bool)

(assert start!2100)

(declare-fun b!10484 () Bool)

(declare-fun e!6108 () Bool)

(declare-datatypes () ((Balance!263 (Balance!264 (extraOpen!172 Int) (extraClose!172 Int)))))

(declare-fun balance!3 () Balance!263)

(declare-fun nonNegative!0 (Balance!263) Bool)

(assert (=> b!10484 (= e!6108 (nonNegative!0 balance!3))))

(declare-fun res!3691 () Bool)

(declare-fun e!6105 () Bool)

(assert (=> start!2100 (=> (not res!3691) (not e!6105))))

(declare-fun lambda!2823 () Int)

(declare-datatypes () ((Parenthesis!71 (CloseParenthesis!70) (OpenParenthesis!70))))

(declare-datatypes () ((List!248 (Nil!246) (Cons!245 (head!463 Parenthesis!71) (tail!475 List!248)))))

(declare-fun xs!280 () List!248)

(declare-fun foldRight!65 (List!248 Balance!263 Int) Balance!263)

(assert (=> start!2100 (= res!3691 (= balance!3 (foldRight!65 xs!280 (Balance!264 0 0) lambda!2823)))))

(assert (=> start!2100 e!6105))

(assert (=> start!2100 true))

(declare-fun b!10485 () Bool)

(declare-fun res!3689 () Bool)

(assert (=> b!10485 (=> (not res!3689) (not e!6105))))

(declare-fun lambda!2824 () Int)

(declare-fun counter!4 () Int)

(declare-fun foldRight!66 (List!248 Int Int) Int)

(assert (=> b!10485 (= res!3689 (= counter!4 (foldRight!66 xs!280 0 lambda!2824)))))

(declare-fun b!10486 () Bool)

(declare-fun e!6107 () Bool)

(assert (=> b!10486 (= e!6107 true)))

(declare-fun b!10487 () Bool)

(declare-fun res!3692 () Bool)

(declare-fun e!6106 () Bool)

(assert (=> b!10487 (=> (not res!3692) (not e!6106))))

(assert (=> b!10487 (= res!3692 (nonNegative!0 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)))))

(declare-fun b!10488 () Bool)

(assert (=> b!10488 (= e!6107 e!6106)))

(declare-fun res!3688 () Bool)

(assert (=> b!10488 (=> (not res!3688) (not e!6106))))

(declare-fun original_sequential_helper!0 (List!248) Bool)

(assert (=> b!10488 (= res!3688 (original_sequential_helper!0 (tail!475 xs!280)))))

(declare-fun b!10489 () Bool)

(assert (=> b!10489 (= e!6106 true)))

(declare-fun balanceToCounter!0 (Balance!263) Int)

(assert (=> b!10489 (= (balanceToCounter!0 balance!3) counter!4)))

(declare-fun b!10490 () Bool)

(declare-datatypes () ((ProofOps!210 (ProofOps!211 (prop!237 Bool)))))

(declare-fun because!2 (ProofOps!210 Bool) Bool)

(assert (=> b!10490 (= e!6105 (not (because!2 (ProofOps!211 e!6108) e!6107)))))

(declare-fun c!3256 () Bool)

(assert (=> b!10490 (= c!3256 (is-Nil!246 xs!280))))

(declare-fun res!3690 () Bool)

(assert (=> b!10490 (=> (not res!3690) (not e!6108))))

(assert (=> b!10490 (= res!3690 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (= (and start!2100 res!3691) b!10485))

(assert (= (and b!10485 res!3689) b!10490))

(assert (= (and b!10490 res!3690) b!10484))

(assert (= (and b!10488 res!3688) b!10487))

(assert (= (and b!10487 res!3692) b!10489))

(assert (= (and b!10490 c!3256) b!10486))

(assert (= (and b!10490 (not c!3256)) b!10488))

(declare-fun m!13535 () Bool)

(assert (=> b!10487 m!13535))

(assert (=> b!10487 m!13535))

(declare-fun m!13537 () Bool)

(assert (=> b!10487 m!13537))

(declare-fun m!13539 () Bool)

(assert (=> b!10490 m!13539))

(declare-fun m!13541 () Bool)

(assert (=> b!10490 m!13541))

(declare-fun m!13543 () Bool)

(assert (=> b!10485 m!13543))

(declare-fun m!13545 () Bool)

(assert (=> b!10484 m!13545))

(declare-fun m!13547 () Bool)

(assert (=> b!10488 m!13547))

(assert (=> b!10489 m!13541))

(declare-fun m!13549 () Bool)

(assert (=> start!2100 m!13549))

(push 1)

(assert (not b!10489))

(assert (not start!2100))

(assert (not b!10490))

(assert (not b!10484))

(assert (not b!10488))

(assert (not b!10485))

(assert (not b!10487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8405 () Bool)

(assert (=> d!8405 (= (because!2 (ProofOps!211 e!6108) e!6107) (and e!6107 (prop!237 (ProofOps!211 e!6108))))))

(assert (=> b!10490 d!8405))

(declare-fun d!8407 () Bool)

(assert (=> d!8407 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!172 balance!3) 0) (- 1) (ite (and (= (extraOpen!172 balance!3) 0) (= (extraClose!172 balance!3) 0)) 0 (ite (>= (extraClose!172 balance!3) 0) (extraClose!172 balance!3) (- 1)))))))

(assert (=> b!10490 d!8407))

(declare-fun d!8409 () Bool)

(declare-fun c!3259 () Bool)

(assert (=> d!8409 (= c!3259 (is-Nil!246 xs!280))))

(declare-fun e!6111 () Int)

(assert (=> d!8409 (= (foldRight!66 xs!280 0 lambda!2824) e!6111)))

(declare-fun b!10496 () Bool)

(assert (=> b!10496 (= e!6111 0)))

(declare-fun b!10497 () Bool)

(declare-fun dynLambda!349 (Int Parenthesis!71 Int) Int)

(assert (=> b!10497 (= e!6111 (dynLambda!349 lambda!2824 (head!463 xs!280) (foldRight!66 (tail!475 xs!280) 0 lambda!2824)))))

(assert (= (and d!8409 c!3259) b!10496))

(assert (= (and d!8409 (not c!3259)) b!10497))

(declare-fun b_lambda!5519 () Bool)

(assert (=> (not b_lambda!5519) (not b!10497)))

(declare-fun m!13551 () Bool)

(assert (=> b!10497 m!13551))

(assert (=> b!10497 m!13551))

(declare-fun m!13553 () Bool)

(assert (=> b!10497 m!13553))

(assert (=> b!10485 d!8409))

(declare-fun d!8411 () Bool)

(assert (=> d!8411 (= (nonNegative!0 balance!3) (and (>= (extraOpen!172 balance!3) 0) (>= (extraClose!172 balance!3) 0)))))

(assert (=> b!10484 d!8411))

(declare-fun d!8413 () Bool)

(declare-fun c!3262 () Bool)

(assert (=> d!8413 (= c!3262 (is-Nil!246 xs!280))))

(declare-fun e!6114 () Balance!263)

(assert (=> d!8413 (= (foldRight!65 xs!280 (Balance!264 0 0) lambda!2823) e!6114)))

(declare-fun b!10502 () Bool)

(assert (=> b!10502 (= e!6114 (Balance!264 0 0))))

(declare-fun b!10503 () Bool)

(declare-fun dynLambda!350 (Int Parenthesis!71 Balance!263) Balance!263)

(assert (=> b!10503 (= e!6114 (dynLambda!350 lambda!2823 (head!463 xs!280) (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)))))

(assert (= (and d!8413 c!3262) b!10502))

(assert (= (and d!8413 (not c!3262)) b!10503))

(declare-fun b_lambda!5521 () Bool)

(assert (=> (not b_lambda!5521) (not b!10503)))

(assert (=> b!10503 m!13535))

(assert (=> b!10503 m!13535))

(declare-fun m!13555 () Bool)

(assert (=> b!10503 m!13555))

(assert (=> start!2100 d!8413))

(assert (=> b!10489 d!8407))

(declare-fun d!8415 () Bool)

(assert (=> d!8415 (= (nonNegative!0 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) (and (>= (extraOpen!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 0) (>= (extraClose!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 0)))))

(assert (=> b!10487 d!8415))

(declare-fun d!8417 () Bool)

(declare-fun c!3263 () Bool)

(assert (=> d!8417 (= c!3263 (is-Nil!246 (tail!475 xs!280)))))

(declare-fun e!6115 () Balance!263)

(assert (=> d!8417 (= (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823) e!6115)))

(declare-fun b!10504 () Bool)

(assert (=> b!10504 (= e!6115 (Balance!264 0 0))))

(declare-fun b!10505 () Bool)

(assert (=> b!10505 (= e!6115 (dynLambda!350 lambda!2823 (head!463 (tail!475 xs!280)) (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)))))

(assert (= (and d!8417 c!3263) b!10504))

(assert (= (and d!8417 (not c!3263)) b!10505))

(declare-fun b_lambda!5523 () Bool)

(assert (=> (not b_lambda!5523) (not b!10505)))

(declare-fun m!13557 () Bool)

(assert (=> b!10505 m!13557))

(assert (=> b!10505 m!13557))

(declare-fun m!13559 () Bool)

(assert (=> b!10505 m!13559))

(assert (=> b!10487 d!8417))

(declare-fun bs!2798 () Bool)

(declare-fun d!8419 () Bool)

(assert (= bs!2798 (and d!8419 start!2100)))

(declare-fun lambda!2831 () Int)

(assert (=> bs!2798 (= lambda!2831 lambda!2823)))

(declare-fun bs!2799 () Bool)

(assert (= bs!2799 (and d!8419 b!10485)))

(declare-fun lambda!2832 () Int)

(assert (=> bs!2799 (= lambda!2832 lambda!2824)))

(declare-fun e!6122 () Bool)

(declare-fun e!6124 () Bool)

(assert (=> d!8419 (because!2 (ProofOps!211 e!6122) e!6124)))

(declare-fun c!3268 () Bool)

(assert (=> d!8419 (= c!3268 (is-Nil!246 (tail!475 xs!280)))))

(declare-fun res!3701 () Bool)

(assert (=> d!8419 (=> (not res!3701) (not e!6122))))

(declare-fun lt!1730 () Balance!263)

(declare-fun lt!1729 () Int)

(assert (=> d!8419 (= res!3701 (= (balanceToCounter!0 lt!1730) lt!1729))))

(assert (=> d!8419 (= lt!1729 (foldRight!66 (tail!475 xs!280) 0 lambda!2832))))

(assert (=> d!8419 (= lt!1730 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2831))))

(assert (=> d!8419 (= (original_sequential_helper!0 (tail!475 xs!280)) true)))

(declare-fun b!10516 () Bool)

(declare-fun res!3700 () Bool)

(declare-fun e!6123 () Bool)

(assert (=> b!10516 (=> (not res!3700) (not e!6123))))

(assert (=> b!10516 (= res!3700 (nonNegative!0 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)))))

(declare-fun b!10517 () Bool)

(assert (=> b!10517 (= e!6124 e!6123)))

(declare-fun res!3699 () Bool)

(assert (=> b!10517 (=> (not res!3699) (not e!6123))))

(assert (=> b!10517 (= res!3699 (original_sequential_helper!0 (tail!475 (tail!475 xs!280))))))

(declare-fun b!10518 () Bool)

(assert (=> b!10518 (= e!6122 (nonNegative!0 lt!1730))))

(declare-fun b!10519 () Bool)

(assert (=> b!10519 (= e!6124 true)))

(declare-fun b!10520 () Bool)

(assert (=> b!10520 (= e!6123 true)))

(assert (=> b!10520 (= (balanceToCounter!0 lt!1730) lt!1729)))

(assert (= (and d!8419 res!3701) b!10518))

(assert (= (and b!10517 res!3699) b!10516))

(assert (= (and b!10516 res!3700) b!10520))

(assert (= (and d!8419 c!3268) b!10519))

(assert (= (and d!8419 (not c!3268)) b!10517))

(declare-fun m!13561 () Bool)

(assert (=> d!8419 m!13561))

(declare-fun m!13563 () Bool)

(assert (=> d!8419 m!13563))

(declare-fun m!13565 () Bool)

(assert (=> d!8419 m!13565))

(declare-fun m!13567 () Bool)

(assert (=> d!8419 m!13567))

(declare-fun m!13569 () Bool)

(assert (=> b!10518 m!13569))

(declare-fun m!13571 () Bool)

(assert (=> b!10516 m!13571))

(assert (=> b!10516 m!13571))

(declare-fun m!13573 () Bool)

(assert (=> b!10516 m!13573))

(declare-fun m!13575 () Bool)

(assert (=> b!10517 m!13575))

(assert (=> b!10520 m!13563))

(assert (=> b!10488 d!8419))

(declare-fun b_lambda!5525 () Bool)

(assert (= b_lambda!5521 (or start!2100 b_lambda!5525)))

(declare-fun bs!2800 () Bool)

(declare-fun d!8421 () Bool)

(assert (= bs!2800 (and d!8421 start!2100)))

(declare-fun +$colon!0 (Balance!263 Parenthesis!71) Balance!263)

(assert (=> bs!2800 (= (dynLambda!350 lambda!2823 (head!463 xs!280) (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) (+$colon!0 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823) (head!463 xs!280)))))

(assert (=> bs!2800 m!13535))

(declare-fun m!13577 () Bool)

(assert (=> bs!2800 m!13577))

(assert (=> b!10503 d!8421))

(declare-fun b_lambda!5527 () Bool)

(assert (= b_lambda!5519 (or b!10485 b_lambda!5527)))

(declare-fun bs!2801 () Bool)

(declare-fun d!8423 () Bool)

(assert (= bs!2801 (and d!8423 b!10485)))

(declare-fun updateCounter!0 (Parenthesis!71 Int) Int)

(assert (=> bs!2801 (= (dynLambda!349 lambda!2824 (head!463 xs!280) (foldRight!66 (tail!475 xs!280) 0 lambda!2824)) (updateCounter!0 (head!463 xs!280) (foldRight!66 (tail!475 xs!280) 0 lambda!2824)))))

(assert (=> bs!2801 m!13551))

(declare-fun m!13579 () Bool)

(assert (=> bs!2801 m!13579))

(assert (=> b!10497 d!8423))

(declare-fun b_lambda!5529 () Bool)

(assert (= b_lambda!5523 (or start!2100 b_lambda!5529)))

(declare-fun bs!2802 () Bool)

(declare-fun d!8425 () Bool)

(assert (= bs!2802 (and d!8425 start!2100)))

(assert (=> bs!2802 (= (dynLambda!350 lambda!2823 (head!463 (tail!475 xs!280)) (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) (+$colon!0 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823) (head!463 (tail!475 xs!280))))))

(assert (=> bs!2802 m!13557))

(declare-fun m!13581 () Bool)

(assert (=> bs!2802 m!13581))

(assert (=> b!10505 d!8425))

(push 1)

(assert (not b_lambda!5529))

(assert (not b!10497))

(assert (not d!8419))

(assert (not b!10516))

(assert (not b!10517))

(assert (not b!10520))

(assert (not bs!2802))

(assert (not b_lambda!5527))

(assert (not b!10503))

(assert (not b!10518))

(assert (not bs!2800))

(assert (not bs!2801))

(assert (not b!10505))

(assert (not b_lambda!5525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8427 () Bool)

(assert (=> d!8427 (= (nonNegative!0 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)) (and (>= (extraOpen!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)) 0) (>= (extraClose!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)) 0)))))

(assert (=> b!10516 d!8427))

(declare-fun d!8429 () Bool)

(declare-fun c!3269 () Bool)

(assert (=> d!8429 (= c!3269 (is-Nil!246 (tail!475 (tail!475 xs!280))))))

(declare-fun e!6125 () Balance!263)

(assert (=> d!8429 (= (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831) e!6125)))

(declare-fun b!10521 () Bool)

(assert (=> b!10521 (= e!6125 (Balance!264 0 0))))

(declare-fun b!10522 () Bool)

(assert (=> b!10522 (= e!6125 (dynLambda!350 lambda!2831 (head!463 (tail!475 (tail!475 xs!280))) (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2831)))))

(assert (= (and d!8429 c!3269) b!10521))

(assert (= (and d!8429 (not c!3269)) b!10522))

(declare-fun b_lambda!5531 () Bool)

(assert (=> (not b_lambda!5531) (not b!10522)))

(declare-fun m!13583 () Bool)

(assert (=> b!10522 m!13583))

(assert (=> b!10522 m!13583))

(declare-fun m!13585 () Bool)

(assert (=> b!10522 m!13585))

(assert (=> b!10516 d!8429))

(declare-fun d!8431 () Bool)

(assert (=> d!8431 (= (nonNegative!0 lt!1730) (and (>= (extraOpen!172 lt!1730) 0) (>= (extraClose!172 lt!1730) 0)))))

(assert (=> b!10518 d!8431))

(declare-fun d!8433 () Bool)

(assert (=> d!8433 (= (updateCounter!0 (head!463 xs!280) (foldRight!66 (tail!475 xs!280) 0 lambda!2824)) (ite (< (foldRight!66 (tail!475 xs!280) 0 lambda!2824) 0) (- 1) (ite (is-OpenParenthesis!70 (head!463 xs!280)) (- (foldRight!66 (tail!475 xs!280) 0 lambda!2824) 1) (+ (foldRight!66 (tail!475 xs!280) 0 lambda!2824) 1))))))

(assert (=> bs!2801 d!8433))

(declare-fun d!8435 () Bool)

(declare-fun c!3271 () Bool)

(assert (=> d!8435 (= c!3271 (is-Nil!246 (tail!475 xs!280)))))

(declare-fun e!6126 () Int)

(assert (=> d!8435 (= (foldRight!66 (tail!475 xs!280) 0 lambda!2824) e!6126)))

(declare-fun b!10523 () Bool)

(assert (=> b!10523 (= e!6126 0)))

(declare-fun b!10524 () Bool)

(assert (=> b!10524 (= e!6126 (dynLambda!349 lambda!2824 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2824)))))

(assert (= (and d!8435 c!3271) b!10523))

(assert (= (and d!8435 (not c!3271)) b!10524))

(declare-fun b_lambda!5533 () Bool)

(assert (=> (not b_lambda!5533) (not b!10524)))

(declare-fun m!13587 () Bool)

(assert (=> b!10524 m!13587))

(assert (=> b!10524 m!13587))

(declare-fun m!13589 () Bool)

(assert (=> b!10524 m!13589))

(assert (=> b!10497 d!8435))

(assert (=> b!10503 d!8417))

(declare-fun d!8437 () Bool)

(assert (=> d!8437 (= (because!2 (ProofOps!211 e!6122) e!6124) (and e!6124 (prop!237 (ProofOps!211 e!6122))))))

(assert (=> d!8419 d!8437))

(declare-fun d!8439 () Bool)

(assert (=> d!8439 (= (balanceToCounter!0 lt!1730) (ite (> (extraOpen!172 lt!1730) 0) (- 1) (ite (and (= (extraOpen!172 lt!1730) 0) (= (extraClose!172 lt!1730) 0)) 0 (ite (>= (extraClose!172 lt!1730) 0) (extraClose!172 lt!1730) (- 1)))))))

(assert (=> d!8419 d!8439))

(declare-fun d!8441 () Bool)

(declare-fun c!3272 () Bool)

(assert (=> d!8441 (= c!3272 (is-Nil!246 (tail!475 xs!280)))))

(declare-fun e!6127 () Int)

(assert (=> d!8441 (= (foldRight!66 (tail!475 xs!280) 0 lambda!2832) e!6127)))

(declare-fun b!10525 () Bool)

(assert (=> b!10525 (= e!6127 0)))

(declare-fun b!10526 () Bool)

(assert (=> b!10526 (= e!6127 (dynLambda!349 lambda!2832 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2832)))))

(assert (= (and d!8441 c!3272) b!10525))

(assert (= (and d!8441 (not c!3272)) b!10526))

(declare-fun b_lambda!5535 () Bool)

(assert (=> (not b_lambda!5535) (not b!10526)))

(declare-fun m!13591 () Bool)

(assert (=> b!10526 m!13591))

(assert (=> b!10526 m!13591))

(declare-fun m!13593 () Bool)

(assert (=> b!10526 m!13593))

(assert (=> d!8419 d!8441))

(declare-fun d!8443 () Bool)

(declare-fun c!3273 () Bool)

(assert (=> d!8443 (= c!3273 (is-Nil!246 (tail!475 xs!280)))))

(declare-fun e!6128 () Balance!263)

(assert (=> d!8443 (= (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2831) e!6128)))

(declare-fun b!10527 () Bool)

(assert (=> b!10527 (= e!6128 (Balance!264 0 0))))

(declare-fun b!10528 () Bool)

(assert (=> b!10528 (= e!6128 (dynLambda!350 lambda!2831 (head!463 (tail!475 xs!280)) (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)))))

(assert (= (and d!8443 c!3273) b!10527))

(assert (= (and d!8443 (not c!3273)) b!10528))

(declare-fun b_lambda!5537 () Bool)

(assert (=> (not b_lambda!5537) (not b!10528)))

(assert (=> b!10528 m!13571))

(assert (=> b!10528 m!13571))

(declare-fun m!13595 () Bool)

(assert (=> b!10528 m!13595))

(assert (=> d!8419 d!8443))

(declare-fun bs!2803 () Bool)

(declare-fun d!8445 () Bool)

(assert (= bs!2803 (and d!8445 start!2100)))

(declare-fun lambda!2833 () Int)

(assert (=> bs!2803 (= lambda!2833 lambda!2823)))

(declare-fun bs!2804 () Bool)

(assert (= bs!2804 (and d!8445 d!8419)))

(assert (=> bs!2804 (= lambda!2833 lambda!2831)))

(declare-fun bs!2805 () Bool)

(assert (= bs!2805 (and d!8445 b!10485)))

(declare-fun lambda!2834 () Int)

(assert (=> bs!2805 (= lambda!2834 lambda!2824)))

(assert (=> bs!2804 (= lambda!2834 lambda!2832)))

(declare-fun e!6129 () Bool)

(declare-fun e!6131 () Bool)

(assert (=> d!8445 (because!2 (ProofOps!211 e!6129) e!6131)))

(declare-fun c!3274 () Bool)

(assert (=> d!8445 (= c!3274 (is-Nil!246 (tail!475 (tail!475 xs!280))))))

(declare-fun res!3704 () Bool)

(assert (=> d!8445 (=> (not res!3704) (not e!6129))))

(declare-fun lt!1732 () Balance!263)

(declare-fun lt!1731 () Int)

(assert (=> d!8445 (= res!3704 (= (balanceToCounter!0 lt!1732) lt!1731))))

(assert (=> d!8445 (= lt!1731 (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2834))))

(assert (=> d!8445 (= lt!1732 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2833))))

(assert (=> d!8445 (= (original_sequential_helper!0 (tail!475 (tail!475 xs!280))) true)))

(declare-fun b!10529 () Bool)

(declare-fun res!3703 () Bool)

(declare-fun e!6130 () Bool)

(assert (=> b!10529 (=> (not res!3703) (not e!6130))))

(assert (=> b!10529 (= res!3703 (nonNegative!0 (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2833)))))

(declare-fun b!10530 () Bool)

(assert (=> b!10530 (= e!6131 e!6130)))

(declare-fun res!3702 () Bool)

(assert (=> b!10530 (=> (not res!3702) (not e!6130))))

(assert (=> b!10530 (= res!3702 (original_sequential_helper!0 (tail!475 (tail!475 (tail!475 xs!280)))))))

(declare-fun b!10531 () Bool)

(assert (=> b!10531 (= e!6129 (nonNegative!0 lt!1732))))

(declare-fun b!10532 () Bool)

(assert (=> b!10532 (= e!6131 true)))

(declare-fun b!10533 () Bool)

(assert (=> b!10533 (= e!6130 true)))

(assert (=> b!10533 (= (balanceToCounter!0 lt!1732) lt!1731)))

(assert (= (and d!8445 res!3704) b!10531))

(assert (= (and b!10530 res!3702) b!10529))

(assert (= (and b!10529 res!3703) b!10533))

(assert (= (and d!8445 c!3274) b!10532))

(assert (= (and d!8445 (not c!3274)) b!10530))

(declare-fun m!13597 () Bool)

(assert (=> d!8445 m!13597))

(declare-fun m!13599 () Bool)

(assert (=> d!8445 m!13599))

(declare-fun m!13601 () Bool)

(assert (=> d!8445 m!13601))

(declare-fun m!13603 () Bool)

(assert (=> d!8445 m!13603))

(declare-fun m!13605 () Bool)

(assert (=> b!10531 m!13605))

(declare-fun m!13607 () Bool)

(assert (=> b!10529 m!13607))

(assert (=> b!10529 m!13607))

(declare-fun m!13609 () Bool)

(assert (=> b!10529 m!13609))

(declare-fun m!13611 () Bool)

(assert (=> b!10530 m!13611))

(assert (=> b!10533 m!13599))

(assert (=> b!10517 d!8445))

(assert (=> b!10520 d!8439))

(declare-fun d!8447 () Bool)

(declare-fun c!3275 () Bool)

(assert (=> d!8447 (= c!3275 (is-Nil!246 (tail!475 (tail!475 xs!280))))))

(declare-fun e!6132 () Balance!263)

(assert (=> d!8447 (= (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823) e!6132)))

(declare-fun b!10534 () Bool)

(assert (=> b!10534 (= e!6132 (Balance!264 0 0))))

(declare-fun b!10535 () Bool)

(assert (=> b!10535 (= e!6132 (dynLambda!350 lambda!2823 (head!463 (tail!475 (tail!475 xs!280))) (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2823)))))

(assert (= (and d!8447 c!3275) b!10534))

(assert (= (and d!8447 (not c!3275)) b!10535))

(declare-fun b_lambda!5539 () Bool)

(assert (=> (not b_lambda!5539) (not b!10535)))

(declare-fun m!13613 () Bool)

(assert (=> b!10535 m!13613))

(assert (=> b!10535 m!13613))

(declare-fun m!13615 () Bool)

(assert (=> b!10535 m!13615))

(assert (=> b!10505 d!8447))

(declare-fun d!8449 () Bool)

(assert (=> d!8449 (= (+$colon!0 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823) (head!463 xs!280)) (ite (and (is-OpenParenthesis!70 (head!463 xs!280)) (> (extraClose!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 0)) (Balance!264 (extraOpen!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) (- (extraClose!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 1)) (ite (is-OpenParenthesis!70 (head!463 xs!280)) (Balance!264 (+ (extraOpen!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 1) (extraClose!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823))) (Balance!264 (extraOpen!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) (+ (extraClose!172 (foldRight!65 (tail!475 xs!280) (Balance!264 0 0) lambda!2823)) 1)))))))

(assert (=> bs!2800 d!8449))

(declare-fun d!8451 () Bool)

(assert (=> d!8451 (= (+$colon!0 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823) (head!463 (tail!475 xs!280))) (ite (and (is-OpenParenthesis!70 (head!463 (tail!475 xs!280))) (> (extraClose!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) 0)) (Balance!264 (extraOpen!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) (- (extraClose!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) 1)) (ite (is-OpenParenthesis!70 (head!463 (tail!475 xs!280))) (Balance!264 (+ (extraOpen!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) 1) (extraClose!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823))) (Balance!264 (extraOpen!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) (+ (extraClose!172 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2823)) 1)))))))

(assert (=> bs!2802 d!8451))

(declare-fun b_lambda!5541 () Bool)

(assert (= b_lambda!5537 (or d!8419 b_lambda!5541)))

(declare-fun bs!2806 () Bool)

(declare-fun d!8453 () Bool)

(assert (= bs!2806 (and d!8453 d!8419)))

(assert (=> bs!2806 (= (dynLambda!350 lambda!2831 (head!463 (tail!475 xs!280)) (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831)) (+$colon!0 (foldRight!65 (tail!475 (tail!475 xs!280)) (Balance!264 0 0) lambda!2831) (head!463 (tail!475 xs!280))))))

(assert (=> bs!2806 m!13571))

(declare-fun m!13617 () Bool)

(assert (=> bs!2806 m!13617))

(assert (=> b!10528 d!8453))

(declare-fun b_lambda!5543 () Bool)

(assert (= b_lambda!5531 (or d!8419 b_lambda!5543)))

(declare-fun bs!2807 () Bool)

(declare-fun d!8455 () Bool)

(assert (= bs!2807 (and d!8455 d!8419)))

(assert (=> bs!2807 (= (dynLambda!350 lambda!2831 (head!463 (tail!475 (tail!475 xs!280))) (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2831)) (+$colon!0 (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2831) (head!463 (tail!475 (tail!475 xs!280)))))))

(assert (=> bs!2807 m!13583))

(declare-fun m!13619 () Bool)

(assert (=> bs!2807 m!13619))

(assert (=> b!10522 d!8455))

(declare-fun b_lambda!5545 () Bool)

(assert (= b_lambda!5539 (or start!2100 b_lambda!5545)))

(declare-fun bs!2808 () Bool)

(declare-fun d!8457 () Bool)

(assert (= bs!2808 (and d!8457 start!2100)))

(assert (=> bs!2808 (= (dynLambda!350 lambda!2823 (head!463 (tail!475 (tail!475 xs!280))) (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2823)) (+$colon!0 (foldRight!65 (tail!475 (tail!475 (tail!475 xs!280))) (Balance!264 0 0) lambda!2823) (head!463 (tail!475 (tail!475 xs!280)))))))

(assert (=> bs!2808 m!13613))

(declare-fun m!13621 () Bool)

(assert (=> bs!2808 m!13621))

(assert (=> b!10535 d!8457))

(declare-fun b_lambda!5547 () Bool)

(assert (= b_lambda!5535 (or d!8419 b_lambda!5547)))

(declare-fun bs!2809 () Bool)

(declare-fun d!8459 () Bool)

(assert (= bs!2809 (and d!8459 d!8419)))

(assert (=> bs!2809 (= (dynLambda!349 lambda!2832 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2832)) (updateCounter!0 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2832)))))

(assert (=> bs!2809 m!13591))

(declare-fun m!13623 () Bool)

(assert (=> bs!2809 m!13623))

(assert (=> b!10526 d!8459))

(declare-fun b_lambda!5549 () Bool)

(assert (= b_lambda!5533 (or b!10485 b_lambda!5549)))

(declare-fun bs!2810 () Bool)

(declare-fun d!8461 () Bool)

(assert (= bs!2810 (and d!8461 b!10485)))

(assert (=> bs!2810 (= (dynLambda!349 lambda!2824 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2824)) (updateCounter!0 (head!463 (tail!475 xs!280)) (foldRight!66 (tail!475 (tail!475 xs!280)) 0 lambda!2824)))))

(assert (=> bs!2810 m!13587))

(declare-fun m!13625 () Bool)

(assert (=> bs!2810 m!13625))

(assert (=> b!10524 d!8461))

(push 1)

(assert (not b_lambda!5529))

(assert (not b!10535))

(assert (not b_lambda!5549))

(assert (not b_lambda!5545))

(assert (not b!10531))

(assert (not b_lambda!5543))

(assert (not bs!2808))

(assert (not b!10530))

(assert (not bs!2806))

(assert (not b!10522))

(assert (not bs!2810))

(assert (not bs!2809))

(assert (not b!10528))

(assert (not b_lambda!5527))

(assert (not b_lambda!5547))

(assert (not d!8445))

(assert (not b!10529))

(assert (not bs!2807))

(assert (not b!10526))

(assert (not b!10524))

(assert (not b_lambda!5541))

(assert (not b_lambda!5525))

(assert (not b!10533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

