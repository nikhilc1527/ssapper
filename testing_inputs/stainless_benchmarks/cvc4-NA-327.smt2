; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2488 () Bool)

(assert start!2488)

(declare-fun b_free!1919 () Bool)

(declare-fun b_next!4525 () Bool)

(assert (=> start!2488 (= b_free!1919 (not b_next!4525))))

(declare-fun tp!3050 () Bool)

(declare-fun b_and!6727 () Bool)

(assert (=> start!2488 (= tp!3050 b_and!6727)))

(declare-fun b_free!1921 () Bool)

(declare-fun b_next!4527 () Bool)

(assert (=> start!2488 (= b_free!1921 (not b_next!4527))))

(declare-fun tp!3047 () Bool)

(declare-fun b_and!6729 () Bool)

(assert (=> start!2488 (= tp!3047 b_and!6729)))

(declare-fun b!12346 () Bool)

(declare-fun b_free!1923 () Bool)

(declare-fun b_next!4529 () Bool)

(assert (=> b!12346 (= b_free!1923 (not b_next!4529))))

(declare-fun tp!3046 () Bool)

(declare-fun b_and!6731 () Bool)

(assert (=> b!12346 (= tp!3046 b_and!6731)))

(declare-fun b_free!1925 () Bool)

(declare-fun b_next!4531 () Bool)

(assert (=> b!12346 (= b_free!1925 (not b_next!4531))))

(declare-fun tp!3049 () Bool)

(declare-fun b_and!6733 () Bool)

(assert (=> b!12346 (= tp!3049 b_and!6733)))

(declare-fun b!12351 () Bool)

(declare-fun b_free!1927 () Bool)

(declare-fun b_next!4533 () Bool)

(assert (=> b!12351 (= b_free!1927 (not b_next!4533))))

(declare-fun tp!3052 () Bool)

(declare-fun b_and!6735 () Bool)

(assert (=> b!12351 (= tp!3052 b_and!6735)))

(declare-fun b_free!1929 () Bool)

(declare-fun b_next!4535 () Bool)

(assert (=> b!12351 (= b_free!1929 (not b_next!4535))))

(declare-fun tp!3051 () Bool)

(declare-fun b_and!6737 () Bool)

(assert (=> b!12351 (= tp!3051 b_and!6737)))

(declare-fun b_free!1931 () Bool)

(declare-fun b_next!4537 () Bool)

(assert (=> b!12351 (= b_free!1931 (not b_next!4537))))

(declare-fun tp!3048 () Bool)

(declare-fun b_and!6739 () Bool)

(assert (=> b!12351 (= tp!3048 b_and!6739)))

(declare-fun f!539 () Int)

(declare-fun b_next!4539 () Bool)

(declare-fun b!12347 () Bool)

(declare-fun lambda!3359 () Int)

(assert (=> start!2488 (= b_next!4525 (or (and b!12347 (= lambda!3359 f!539)) b_next!4539))))

(declare-fun b!12345 () Bool)

(assert (=> b!12345 true))

(declare-fun order!331 () Int)

(declare-fun order!329 () Int)

(declare-fun lambda!3360 () Int)

(declare-fun dynLambda!526 (Int Int) Int)

(declare-fun dynLambda!527 (Int Int) Int)

(assert (=> b!12345 (< (dynLambda!526 order!329 f!539) (dynLambda!527 order!331 lambda!3360))))

(assert (=> b!12345 true))

(assert (=> b!12345 true))

(declare-fun b_next!4541 () Bool)

(declare-datatypes () ((Balance!363 (Balance!364 (extraOpen!222 Int) (extraClose!222 Int)))))

(declare-datatypes () ((EqProof!134 (EqProof!135 (x!7135 Int) (y!671 Int)))))

(declare-fun thiss!794 () EqProof!134)

(assert (=> b!12346 (= b_next!4529 (or (and b!12345 (= lambda!3360 (x!7135 thiss!794))) b_next!4541))))

(declare-fun b_next!4543 () Bool)

(assert (=> b!12346 (= b_next!4531 (or (and b!12345 (= lambda!3360 (y!671 thiss!794))) b_next!4543))))

(declare-datatypes () ((EqEvidence!290 (EqEvidence!291 (x!7136 Int) (y!672 Int) (evidence!212 Int)))))

(declare-fun thiss!744 () EqEvidence!290)

(declare-fun b_next!4545 () Bool)

(assert (=> b!12351 (= b_next!4533 (or (and b!12345 (= lambda!3360 (x!7136 thiss!744))) b_next!4545))))

(declare-fun b_next!4547 () Bool)

(assert (=> b!12351 (= b_next!4535 (or (and b!12345 (= lambda!3360 (y!672 thiss!744))) b_next!4547))))

(declare-fun lambda!3361 () Int)

(assert (=> b!12345 (not (= lambda!3361 lambda!3360))))

(assert (=> b!12345 true))

(assert (=> b!12345 (< (dynLambda!526 order!329 f!539) (dynLambda!527 order!331 lambda!3361))))

(assert (=> b!12345 true))

(assert (=> b!12345 true))

(declare-fun b_next!4549 () Bool)

(assert (=> b!12346 (= b_next!4541 (or (and b!12345 (= lambda!3361 (x!7135 thiss!794))) b_next!4549))))

(declare-fun b_next!4551 () Bool)

(assert (=> b!12346 (= b_next!4543 (or (and b!12345 (= lambda!3361 (y!671 thiss!794))) b_next!4551))))

(declare-fun b_next!4553 () Bool)

(assert (=> b!12351 (= b_next!4545 (or (and b!12345 (= lambda!3361 (x!7136 thiss!744))) b_next!4553))))

(declare-fun b_next!4555 () Bool)

(assert (=> b!12351 (= b_next!4547 (or (and b!12345 (= lambda!3361 (y!672 thiss!744))) b_next!4555))))

(declare-fun m!15339 () Bool)

(assert (=> b!12345 m!15339))

(declare-fun lambda!3362 () Int)

(declare-fun proof!221 () Int)

(declare-fun dynLambda!528 (Int) Bool)

(assert (=> (and start!2488 b!12345 (= (dynLambda!528 lambda!3362) (dynLambda!528 proof!221))) (= lambda!3362 proof!221)))

(assert (=> (and b!12351 b!12345 (= (dynLambda!528 lambda!3362) (dynLambda!528 (evidence!212 thiss!744)))) (= lambda!3362 (evidence!212 thiss!744))))

(declare-fun b_next!4557 () Bool)

(assert (=> start!2488 (= b_next!4527 (or (and b!12345 (= lambda!3362 proof!221)) b_next!4557))))

(declare-fun b_next!4559 () Bool)

(assert (=> b!12351 (= b_next!4537 (or (and b!12345 (= lambda!3362 (evidence!212 thiss!744))) b_next!4559))))

(declare-fun bs!3238 () Bool)

(declare-fun b!12350 () Bool)

(assert (= bs!3238 (and b!12350 b!12345)))

(declare-fun lambda!3363 () Int)

(assert (=> bs!3238 (not (= lambda!3363 lambda!3360))))

(assert (=> bs!3238 (not (= lambda!3363 lambda!3361))))

(assert (=> b!12350 true))

(assert (=> b!12350 (< (dynLambda!526 order!329 f!539) (dynLambda!527 order!331 lambda!3363))))

(assert (=> b!12350 true))

(assert (=> b!12350 true))

(declare-fun b_next!4561 () Bool)

(assert (=> b!12346 (= b_next!4549 (or (and b!12350 (= lambda!3363 (x!7135 thiss!794))) b_next!4561))))

(declare-fun b_next!4563 () Bool)

(assert (=> b!12346 (= b_next!4551 (or (and b!12350 (= lambda!3363 (y!671 thiss!794))) b_next!4563))))

(declare-fun b_next!4565 () Bool)

(assert (=> b!12351 (= b_next!4553 (or (and b!12350 (= lambda!3363 (x!7136 thiss!744))) b_next!4565))))

(declare-fun b_next!4567 () Bool)

(assert (=> b!12351 (= b_next!4555 (or (and b!12350 (= lambda!3363 (y!672 thiss!744))) b_next!4567))))

(declare-fun b!12343 () Bool)

(declare-fun e!6778 () Bool)

(assert (=> b!12343 (= e!6778 (not (dynLambda!528 proof!221)))))

(declare-fun b!12344 () Bool)

(declare-fun res!4619 () Bool)

(assert (=> b!12344 (=> (not res!4619) (not e!6778))))

(assert (=> b!12344 (= res!4619 (= proof!221 lambda!3362))))

(declare-fun res!4615 () Bool)

(assert (=> start!2488 (=> (not res!4615) (not e!6778))))

(declare-datatypes () ((List!289 (Nil!287) (Cons!286 (head!504 Balance!363) (tail!516 List!289)))))

(declare-fun xs!292 () List!289)

(declare-fun isEmpty!217 (List!289) Bool)

(assert (=> start!2488 (= res!4615 (not (isEmpty!217 xs!292)))))

(assert (=> start!2488 e!6778))

(assert (=> start!2488 tp!3050))

(assert (=> start!2488 true))

(declare-fun e!6777 () Bool)

(declare-fun inv!416 (EqProof!134) Bool)

(assert (=> start!2488 (and (inv!416 thiss!794) e!6777)))

(declare-fun e!6779 () Bool)

(declare-fun inv!417 (EqEvidence!290) Bool)

(assert (=> start!2488 (and (inv!417 thiss!744) e!6779)))

(assert (=> start!2488 tp!3047))

(declare-fun res!4621 () Bool)

(assert (=> b!12345 (=> (not res!4621) (not e!6778))))

(assert (=> b!12345 (= res!4621 (= thiss!744 (EqEvidence!291 lambda!3360 lambda!3361 lambda!3362)))))

(assert (=> b!12346 (= e!6777 (and tp!3046 tp!3049))))

(declare-fun res!4616 () Bool)

(assert (=> b!12347 (=> (not res!4616) (not e!6778))))

(assert (=> b!12347 (= res!4616 (= f!539 lambda!3359))))

(declare-fun b!12348 () Bool)

(declare-fun res!4618 () Bool)

(assert (=> b!12348 (=> (not res!4618) (not e!6778))))

(assert (=> b!12348 (= res!4618 (or (not (is-Cons!286 xs!292)) (not (is-Nil!287 (tail!516 xs!292)))))))

(declare-fun b!12349 () Bool)

(declare-fun res!4617 () Bool)

(assert (=> b!12349 (=> (not res!4617) (not e!6778))))

(declare-fun ys!54 () List!289)

(declare-datatypes () ((ProofOps!278 (ProofOps!279 (prop!276 Bool)))))

(declare-fun thiss!710 () ProofOps!278)

(declare-fun dynLambda!529 (Int Balance!363 Balance!363) Balance!363)

(declare-fun foldRight1!119 (List!289 Int) Balance!363)

(declare-fun append!138 (List!289 List!289) List!289)

(assert (=> b!12349 (= res!4617 (= thiss!710 (ProofOps!279 (= (dynLambda!529 f!539 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)) (foldRight1!119 (append!138 xs!292 ys!54) f!539)))))))

(declare-fun res!4620 () Bool)

(assert (=> b!12350 (=> (not res!4620) (not e!6778))))

(assert (=> b!12350 (= res!4620 (= thiss!794 (EqProof!135 lambda!3363 lambda!3363)))))

(assert (=> b!12351 (= e!6779 (and tp!3052 tp!3051 tp!3048))))

(declare-fun b!12352 () Bool)

(declare-fun res!4622 () Bool)

(assert (=> b!12352 (=> (not res!4622) (not e!6778))))

(assert (=> b!12352 (= res!4622 (not (isEmpty!217 ys!54)))))

(assert (= (and start!2488 res!4615) b!12352))

(assert (= (and b!12352 res!4622) b!12347))

(assert (= (and b!12347 res!4616) b!12349))

(assert (= (and b!12349 res!4617) b!12348))

(assert (= (and b!12348 res!4618) b!12345))

(assert (= (and b!12345 res!4621) b!12350))

(assert (= (and b!12350 res!4620) b!12344))

(assert (= (and b!12344 res!4619) b!12343))

(assert (= start!2488 b!12346))

(assert (= start!2488 b!12351))

(declare-fun b_lambda!6893 () Bool)

(assert (=> (not b_lambda!6893) (not b!12343)))

(declare-fun t!3853 () Bool)

(declare-fun tb!3513 () Bool)

(assert (=> (and start!2488 (= proof!221 proof!221) t!3853) tb!3513))

(declare-fun result!3565 () Bool)

(assert (=> tb!3513 (= result!3565 true)))

(assert (=> b!12343 t!3853))

(declare-fun b_and!6741 () Bool)

(assert (= b_and!6729 (and (=> t!3853 result!3565) b_and!6741)))

(declare-fun t!3855 () Bool)

(declare-fun tb!3515 () Bool)

(assert (=> (and b!12351 (= (evidence!212 thiss!744) proof!221) t!3855) tb!3515))

(declare-fun result!3567 () Bool)

(assert (=> tb!3515 (= result!3567 true)))

(assert (=> b!12343 t!3855))

(declare-fun b_and!6743 () Bool)

(assert (= b_and!6739 (and (=> t!3855 result!3567) b_and!6743)))

(declare-fun b_lambda!6895 () Bool)

(assert (=> (not b_lambda!6895) (not b!12349)))

(declare-fun t!3857 () Bool)

(declare-fun tb!3517 () Bool)

(assert (=> (and start!2488 (= f!539 f!539) t!3857) tb!3517))

(declare-fun result!3569 () Bool)

(assert (=> tb!3517 (= result!3569 true)))

(assert (=> b!12349 t!3857))

(declare-fun b_and!6745 () Bool)

(assert (= b_and!6727 (and (=> t!3857 result!3569) b_and!6745)))

(declare-fun m!15341 () Bool)

(assert (=> b!12343 m!15341))

(declare-fun m!15343 () Bool)

(assert (=> start!2488 m!15343))

(declare-fun m!15345 () Bool)

(assert (=> start!2488 m!15345))

(declare-fun m!15347 () Bool)

(assert (=> start!2488 m!15347))

(declare-fun m!15349 () Bool)

(assert (=> b!12349 m!15349))

(declare-fun m!15351 () Bool)

(assert (=> b!12349 m!15351))

(declare-fun m!15353 () Bool)

(assert (=> b!12349 m!15353))

(assert (=> b!12349 m!15351))

(assert (=> b!12349 m!15353))

(declare-fun m!15355 () Bool)

(assert (=> b!12349 m!15355))

(assert (=> b!12349 m!15349))

(declare-fun m!15357 () Bool)

(assert (=> b!12349 m!15357))

(declare-fun m!15359 () Bool)

(assert (=> b!12352 m!15359))

(push 1)

(assert b_and!6731)

(assert (not b_next!4567))

(assert b_and!6737)

(assert b_and!6741)

(assert (not b_next!4539))

(assert (not b!12349))

(assert (not b_next!4557))

(assert b_and!6735)

(assert (not b!12345))

(assert (not b_next!4565))

(assert b_and!6733)

(assert (not b!12344))

(assert (not start!2488))

(assert (not b!12352))

(assert (not b_lambda!6893))

(assert (not b_next!4559))

(assert (not b_next!4561))

(assert b_and!6745)

(assert b_and!6743)

(assert (not b_lambda!6895))

(assert (not b_next!4563))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6731)

(assert (not b_next!4567))

(assert b_and!6737)

(assert b_and!6741)

(assert (not b_next!4539))

(assert (not b_next!4557))

(assert b_and!6735)

(assert (not b_next!4565))

(assert b_and!6733)

(assert (not b_next!4559))

(assert (not b_next!4561))

(assert b_and!6745)

(assert b_and!6743)

(assert (not b_next!4563))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6897 () Bool)

(assert (= b_lambda!6895 (or (and b!12347 (= lambda!3359 f!539)) (and start!2488 b_free!1919) b_lambda!6897)))

(declare-fun bs!3239 () Bool)

(declare-fun d!9591 () Bool)

(assert (= bs!3239 (and d!9591 b!12347)))

(declare-fun ++!3 (Balance!363 Balance!363) Balance!363)

(assert (=> bs!3239 (= (dynLambda!529 lambda!3359 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)) (++!3 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)))))

(assert (=> bs!3239 m!15351))

(assert (=> bs!3239 m!15353))

(declare-fun m!15361 () Bool)

(assert (=> bs!3239 m!15361))

(assert (=> (and b!12347 (= lambda!3359 f!539) b!12349) d!9591))

(declare-fun b_lambda!6899 () Bool)

(assert (= b_lambda!6893 (or (and b!12345 (= lambda!3362 proof!221)) (and start!2488 b_free!1921) (and b!12351 b_free!1931 (= (evidence!212 thiss!744) proof!221)) b_lambda!6899)))

(declare-fun bs!3240 () Bool)

(declare-fun d!9593 () Bool)

(assert (= bs!3240 (and d!9593 b!12345)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3240 (= (dynLambda!528 lambda!3362) trivial!1)))

(assert (=> (and b!12345 (= lambda!3362 proof!221) b!12343) d!9593))

(push 1)

(assert (not b_lambda!6899))

(assert b_and!6731)

(assert (not b_next!4567))

(assert b_and!6737)

(assert b_and!6741)

(assert (not b_next!4539))

(assert (not b!12349))

(assert (not b_next!4557))

(assert b_and!6735)

(assert (not b!12345))

(assert (not b_next!4565))

(assert b_and!6733)

(assert (not b_lambda!6897))

(assert (not b!12344))

(assert (not bs!3239))

(assert (not start!2488))

(assert (not b!12352))

(assert (not b_next!4559))

(assert (not b_next!4561))

(assert b_and!6745)

(assert b_and!6743)

(assert (not b_next!4563))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6731)

(assert (not b_next!4567))

(assert b_and!6737)

(assert b_and!6741)

(assert (not b_next!4539))

(assert (not b_next!4557))

(assert b_and!6735)

(assert (not b_next!4565))

(assert b_and!6733)

(assert (not b_next!4559))

(assert (not b_next!4561))

(assert b_and!6745)

(assert b_and!6743)

(assert (not b_next!4563))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9595 () Bool)

(declare-fun lt!1803 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9595 (= lt!1803 (min!4 (extraOpen!222 (foldRight1!119 xs!292 f!539)) (extraClose!222 (foldRight1!119 ys!54 f!539))))))

(assert (=> d!9595 (= (++!3 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)) (Balance!364 (- (+ (extraOpen!222 (foldRight1!119 xs!292 f!539)) (extraOpen!222 (foldRight1!119 ys!54 f!539))) lt!1803) (- (+ (extraClose!222 (foldRight1!119 xs!292 f!539)) (extraClose!222 (foldRight1!119 ys!54 f!539))) lt!1803)))))

(declare-fun bs!3241 () Bool)

(assert (= bs!3241 d!9595))

(declare-fun m!15363 () Bool)

(assert (=> bs!3241 m!15363))

(assert (=> bs!3239 d!9595))

(declare-fun d!9597 () Bool)

(declare-fun c!3494 () Bool)

(assert (=> d!9597 (= c!3494 (and (is-Cons!286 xs!292) (is-Nil!287 (tail!516 xs!292))))))

(declare-fun e!6782 () Balance!363)

(assert (=> d!9597 (= (foldRight1!119 xs!292 f!539) e!6782)))

(declare-fun b!12361 () Bool)

(assert (=> b!12361 (= e!6782 (head!504 xs!292))))

(declare-fun b!12362 () Bool)

(assert (=> b!12362 (= e!6782 (dynLambda!529 f!539 (head!504 xs!292) (foldRight1!119 (tail!516 xs!292) f!539)))))

(assert (= (and d!9597 c!3494) b!12361))

(assert (= (and d!9597 (not c!3494)) b!12362))

(declare-fun b_lambda!6901 () Bool)

(assert (=> (not b_lambda!6901) (not b!12362)))

(declare-fun t!3859 () Bool)

(declare-fun tb!3519 () Bool)

(assert (=> (and start!2488 (= f!539 f!539) t!3859) tb!3519))

(declare-fun result!3571 () Bool)

(assert (=> tb!3519 (= result!3571 true)))

(assert (=> b!12362 t!3859))

(declare-fun b_and!6747 () Bool)

(assert (= b_and!6745 (and (=> t!3859 result!3571) b_and!6747)))

(declare-fun m!15365 () Bool)

(assert (=> b!12362 m!15365))

(assert (=> b!12362 m!15365))

(declare-fun m!15367 () Bool)

(assert (=> b!12362 m!15367))

(assert (=> b!12349 d!9597))

(declare-fun d!9599 () Bool)

(declare-fun c!3495 () Bool)

(assert (=> d!9599 (= c!3495 (and (is-Cons!286 ys!54) (is-Nil!287 (tail!516 ys!54))))))

(declare-fun e!6783 () Balance!363)

(assert (=> d!9599 (= (foldRight1!119 ys!54 f!539) e!6783)))

(declare-fun b!12363 () Bool)

(assert (=> b!12363 (= e!6783 (head!504 ys!54))))

(declare-fun b!12364 () Bool)

(assert (=> b!12364 (= e!6783 (dynLambda!529 f!539 (head!504 ys!54) (foldRight1!119 (tail!516 ys!54) f!539)))))

(assert (= (and d!9599 c!3495) b!12363))

(assert (= (and d!9599 (not c!3495)) b!12364))

(declare-fun b_lambda!6903 () Bool)

(assert (=> (not b_lambda!6903) (not b!12364)))

(declare-fun t!3861 () Bool)

(declare-fun tb!3521 () Bool)

(assert (=> (and start!2488 (= f!539 f!539) t!3861) tb!3521))

(declare-fun result!3573 () Bool)

(assert (=> tb!3521 (= result!3573 true)))

(assert (=> b!12364 t!3861))

(declare-fun b_and!6749 () Bool)

(assert (= b_and!6747 (and (=> t!3861 result!3573) b_and!6749)))

(declare-fun m!15369 () Bool)

(assert (=> b!12364 m!15369))

(assert (=> b!12364 m!15369))

(declare-fun m!15371 () Bool)

(assert (=> b!12364 m!15371))

(assert (=> b!12349 d!9599))

(declare-fun d!9601 () Bool)

(declare-fun c!3496 () Bool)

(assert (=> d!9601 (= c!3496 (and (is-Cons!286 (append!138 xs!292 ys!54)) (is-Nil!287 (tail!516 (append!138 xs!292 ys!54)))))))

(declare-fun e!6784 () Balance!363)

(assert (=> d!9601 (= (foldRight1!119 (append!138 xs!292 ys!54) f!539) e!6784)))

(declare-fun b!12365 () Bool)

(assert (=> b!12365 (= e!6784 (head!504 (append!138 xs!292 ys!54)))))

(declare-fun b!12366 () Bool)

(assert (=> b!12366 (= e!6784 (dynLambda!529 f!539 (head!504 (append!138 xs!292 ys!54)) (foldRight1!119 (tail!516 (append!138 xs!292 ys!54)) f!539)))))

(assert (= (and d!9601 c!3496) b!12365))

(assert (= (and d!9601 (not c!3496)) b!12366))

(declare-fun b_lambda!6905 () Bool)

(assert (=> (not b_lambda!6905) (not b!12366)))

(declare-fun t!3863 () Bool)

(declare-fun tb!3523 () Bool)

(assert (=> (and start!2488 (= f!539 f!539) t!3863) tb!3523))

(declare-fun result!3575 () Bool)

(assert (=> tb!3523 (= result!3575 true)))

(assert (=> b!12366 t!3863))

(declare-fun b_and!6751 () Bool)

(assert (= b_and!6749 (and (=> t!3863 result!3575) b_and!6751)))

(declare-fun m!15373 () Bool)

(assert (=> b!12366 m!15373))

(assert (=> b!12366 m!15373))

(declare-fun m!15375 () Bool)

(assert (=> b!12366 m!15375))

(assert (=> b!12349 d!9601))

(declare-fun d!9603 () Bool)

(declare-fun c!3499 () Bool)

(assert (=> d!9603 (= c!3499 (is-Nil!287 xs!292))))

(declare-fun e!6787 () List!289)

(assert (=> d!9603 (= (append!138 xs!292 ys!54) e!6787)))

(declare-fun b!12371 () Bool)

(assert (=> b!12371 (= e!6787 ys!54)))

(declare-fun b!12372 () Bool)

(assert (=> b!12372 (= e!6787 (Cons!286 (head!504 xs!292) (append!138 (tail!516 xs!292) ys!54)))))

(assert (= (and d!9603 c!3499) b!12371))

(assert (= (and d!9603 (not c!3499)) b!12372))

(declare-fun m!15377 () Bool)

(assert (=> b!12372 m!15377))

(assert (=> b!12349 d!9603))

(declare-fun d!9605 () Bool)

(assert (=> d!9605 (= (isEmpty!217 xs!292) (is-Nil!287 xs!292))))

(assert (=> start!2488 d!9605))

(declare-fun d!9607 () Bool)

(declare-fun dynLambda!530 (Int) Balance!363)

(assert (=> d!9607 (= (inv!416 thiss!794) (= (dynLambda!530 (x!7135 thiss!794)) (dynLambda!530 (y!671 thiss!794))))))

(declare-fun b_lambda!6907 () Bool)

(assert (=> (not b_lambda!6907) (not d!9607)))

(declare-fun t!3865 () Bool)

(declare-fun tb!3525 () Bool)

(assert (=> (and b!12346 (= (x!7135 thiss!794) (x!7135 thiss!794)) t!3865) tb!3525))

(declare-fun result!3577 () Bool)

(assert (=> tb!3525 (= result!3577 true)))

(assert (=> d!9607 t!3865))

(declare-fun b_and!6753 () Bool)

(assert (= b_and!6731 (and (=> t!3865 result!3577) b_and!6753)))

(declare-fun t!3867 () Bool)

(declare-fun tb!3527 () Bool)

(assert (=> (and b!12346 (= (y!671 thiss!794) (x!7135 thiss!794)) t!3867) tb!3527))

(declare-fun result!3579 () Bool)

(assert (=> tb!3527 (= result!3579 true)))

(assert (=> d!9607 t!3867))

(declare-fun b_and!6755 () Bool)

(assert (= b_and!6733 (and (=> t!3867 result!3579) b_and!6755)))

(declare-fun tb!3529 () Bool)

(declare-fun t!3869 () Bool)

(assert (=> (and b!12351 (= (x!7136 thiss!744) (x!7135 thiss!794)) t!3869) tb!3529))

(declare-fun result!3581 () Bool)

(assert (=> tb!3529 (= result!3581 true)))

(assert (=> d!9607 t!3869))

(declare-fun b_and!6757 () Bool)

(assert (= b_and!6735 (and (=> t!3869 result!3581) b_and!6757)))

(declare-fun t!3871 () Bool)

(declare-fun tb!3531 () Bool)

(assert (=> (and b!12351 (= (y!672 thiss!744) (x!7135 thiss!794)) t!3871) tb!3531))

(declare-fun result!3583 () Bool)

(assert (=> tb!3531 (= result!3583 true)))

(assert (=> d!9607 t!3871))

(declare-fun b_and!6759 () Bool)

(assert (= b_and!6737 (and (=> t!3871 result!3583) b_and!6759)))

(declare-fun b_lambda!6909 () Bool)

(assert (=> (not b_lambda!6909) (not d!9607)))

(declare-fun t!3873 () Bool)

(declare-fun tb!3533 () Bool)

(assert (=> (and b!12346 (= (x!7135 thiss!794) (y!671 thiss!794)) t!3873) tb!3533))

(declare-fun result!3585 () Bool)

(assert (=> tb!3533 (= result!3585 true)))

(assert (=> d!9607 t!3873))

(declare-fun b_and!6761 () Bool)

(assert (= b_and!6753 (and (=> t!3873 result!3585) b_and!6761)))

(declare-fun t!3875 () Bool)

(declare-fun tb!3535 () Bool)

(assert (=> (and b!12346 (= (y!671 thiss!794) (y!671 thiss!794)) t!3875) tb!3535))

(declare-fun result!3587 () Bool)

(assert (=> tb!3535 (= result!3587 true)))

(assert (=> d!9607 t!3875))

(declare-fun b_and!6763 () Bool)

(assert (= b_and!6755 (and (=> t!3875 result!3587) b_and!6763)))

(declare-fun tb!3537 () Bool)

(declare-fun t!3877 () Bool)

(assert (=> (and b!12351 (= (x!7136 thiss!744) (y!671 thiss!794)) t!3877) tb!3537))

(declare-fun result!3589 () Bool)

(assert (=> tb!3537 (= result!3589 true)))

(assert (=> d!9607 t!3877))

(declare-fun b_and!6765 () Bool)

(assert (= b_and!6757 (and (=> t!3877 result!3589) b_and!6765)))

(declare-fun t!3879 () Bool)

(declare-fun tb!3539 () Bool)

(assert (=> (and b!12351 (= (y!672 thiss!744) (y!671 thiss!794)) t!3879) tb!3539))

(declare-fun result!3591 () Bool)

(assert (=> tb!3539 (= result!3591 true)))

(assert (=> d!9607 t!3879))

(declare-fun b_and!6767 () Bool)

(assert (= b_and!6759 (and (=> t!3879 result!3591) b_and!6767)))

(declare-fun m!15379 () Bool)

(assert (=> d!9607 m!15379))

(declare-fun m!15381 () Bool)

(assert (=> d!9607 m!15381))

(assert (=> start!2488 d!9607))

(declare-fun d!9609 () Bool)

(declare-fun res!4625 () Bool)

(declare-fun e!6790 () Bool)

(assert (=> d!9609 (=> (not res!4625) (not e!6790))))

(assert (=> d!9609 (= res!4625 (= (dynLambda!530 (x!7136 thiss!744)) (dynLambda!530 (y!672 thiss!744))))))

(assert (=> d!9609 (= (inv!417 thiss!744) e!6790)))

(declare-fun b!12375 () Bool)

(assert (=> b!12375 (= e!6790 (dynLambda!528 (evidence!212 thiss!744)))))

(assert (= (and d!9609 res!4625) b!12375))

(declare-fun b_lambda!6911 () Bool)

(assert (=> (not b_lambda!6911) (not d!9609)))

(declare-fun t!3881 () Bool)

(declare-fun tb!3541 () Bool)

(assert (=> (and b!12346 (= (x!7135 thiss!794) (x!7136 thiss!744)) t!3881) tb!3541))

(declare-fun result!3593 () Bool)

(assert (=> tb!3541 (= result!3593 true)))

(assert (=> d!9609 t!3881))

(declare-fun b_and!6769 () Bool)

(assert (= b_and!6761 (and (=> t!3881 result!3593) b_and!6769)))

(declare-fun tb!3543 () Bool)

(declare-fun t!3883 () Bool)

(assert (=> (and b!12346 (= (y!671 thiss!794) (x!7136 thiss!744)) t!3883) tb!3543))

(declare-fun result!3595 () Bool)

(assert (=> tb!3543 (= result!3595 true)))

(assert (=> d!9609 t!3883))

(declare-fun b_and!6771 () Bool)

(assert (= b_and!6763 (and (=> t!3883 result!3595) b_and!6771)))

(declare-fun t!3885 () Bool)

(declare-fun tb!3545 () Bool)

(assert (=> (and b!12351 (= (x!7136 thiss!744) (x!7136 thiss!744)) t!3885) tb!3545))

(declare-fun result!3597 () Bool)

(assert (=> tb!3545 (= result!3597 true)))

(assert (=> d!9609 t!3885))

(declare-fun b_and!6773 () Bool)

(assert (= b_and!6765 (and (=> t!3885 result!3597) b_and!6773)))

(declare-fun t!3887 () Bool)

(declare-fun tb!3547 () Bool)

(assert (=> (and b!12351 (= (y!672 thiss!744) (x!7136 thiss!744)) t!3887) tb!3547))

(declare-fun result!3599 () Bool)

(assert (=> tb!3547 (= result!3599 true)))

(assert (=> d!9609 t!3887))

(declare-fun b_and!6775 () Bool)

(assert (= b_and!6767 (and (=> t!3887 result!3599) b_and!6775)))

(declare-fun b_lambda!6913 () Bool)

(assert (=> (not b_lambda!6913) (not d!9609)))

(declare-fun t!3889 () Bool)

(declare-fun tb!3549 () Bool)

(assert (=> (and b!12346 (= (x!7135 thiss!794) (y!672 thiss!744)) t!3889) tb!3549))

(declare-fun result!3601 () Bool)

(assert (=> tb!3549 (= result!3601 true)))

(assert (=> d!9609 t!3889))

(declare-fun b_and!6777 () Bool)

(assert (= b_and!6769 (and (=> t!3889 result!3601) b_and!6777)))

(declare-fun t!3891 () Bool)

(declare-fun tb!3551 () Bool)

(assert (=> (and b!12346 (= (y!671 thiss!794) (y!672 thiss!744)) t!3891) tb!3551))

(declare-fun result!3603 () Bool)

(assert (=> tb!3551 (= result!3603 true)))

(assert (=> d!9609 t!3891))

(declare-fun b_and!6779 () Bool)

(assert (= b_and!6771 (and (=> t!3891 result!3603) b_and!6779)))

(declare-fun t!3893 () Bool)

(declare-fun tb!3553 () Bool)

(assert (=> (and b!12351 (= (x!7136 thiss!744) (y!672 thiss!744)) t!3893) tb!3553))

(declare-fun result!3605 () Bool)

(assert (=> tb!3553 (= result!3605 true)))

(assert (=> d!9609 t!3893))

(declare-fun b_and!6781 () Bool)

(assert (= b_and!6773 (and (=> t!3893 result!3605) b_and!6781)))

(declare-fun t!3895 () Bool)

(declare-fun tb!3555 () Bool)

(assert (=> (and b!12351 (= (y!672 thiss!744) (y!672 thiss!744)) t!3895) tb!3555))

(declare-fun result!3607 () Bool)

(assert (=> tb!3555 (= result!3607 true)))

(assert (=> d!9609 t!3895))

(declare-fun b_and!6783 () Bool)

(assert (= b_and!6775 (and (=> t!3895 result!3607) b_and!6783)))

(declare-fun b_lambda!6915 () Bool)

(assert (=> (not b_lambda!6915) (not b!12375)))

(declare-fun t!3897 () Bool)

(declare-fun tb!3557 () Bool)

(assert (=> (and start!2488 (= proof!221 (evidence!212 thiss!744)) t!3897) tb!3557))

(declare-fun result!3609 () Bool)

(assert (=> tb!3557 (= result!3609 true)))

(assert (=> b!12375 t!3897))

(declare-fun b_and!6785 () Bool)

(assert (= b_and!6741 (and (=> t!3897 result!3609) b_and!6785)))

(declare-fun t!3899 () Bool)

(declare-fun tb!3559 () Bool)

(assert (=> (and b!12351 (= (evidence!212 thiss!744) (evidence!212 thiss!744)) t!3899) tb!3559))

(declare-fun result!3611 () Bool)

(assert (=> tb!3559 (= result!3611 true)))

(assert (=> b!12375 t!3899))

(declare-fun b_and!6787 () Bool)

(assert (= b_and!6743 (and (=> t!3899 result!3611) b_and!6787)))

(declare-fun m!15383 () Bool)

(assert (=> d!9609 m!15383))

(declare-fun m!15385 () Bool)

(assert (=> d!9609 m!15385))

(declare-fun m!15387 () Bool)

(assert (=> b!12375 m!15387))

(assert (=> start!2488 d!9609))

(declare-fun d!9611 () Bool)

(assert (=> d!9611 (= (isEmpty!217 ys!54) (is-Nil!287 ys!54))))

(assert (=> b!12352 d!9611))

(declare-fun d!9613 () Bool)

(assert (=> d!9613 (= trivial!1 true)))

(assert (=> b!12345 d!9613))

(assert (=> b!12344 d!9613))

(declare-fun b_lambda!6917 () Bool)

(assert (= b_lambda!6905 (or (and b!12347 (= lambda!3359 f!539)) (and start!2488 b_free!1919) b_lambda!6917)))

(declare-fun bs!3242 () Bool)

(declare-fun d!9615 () Bool)

(assert (= bs!3242 (and d!9615 b!12347)))

(assert (=> bs!3242 (= (dynLambda!529 lambda!3359 (head!504 (append!138 xs!292 ys!54)) (foldRight1!119 (tail!516 (append!138 xs!292 ys!54)) f!539)) (++!3 (head!504 (append!138 xs!292 ys!54)) (foldRight1!119 (tail!516 (append!138 xs!292 ys!54)) f!539)))))

(assert (=> bs!3242 m!15373))

(declare-fun m!15389 () Bool)

(assert (=> bs!3242 m!15389))

(assert (=> (and b!12347 (= lambda!3359 f!539) b!12366) d!9615))

(declare-fun b_lambda!6919 () Bool)

(assert (= b_lambda!6903 (or (and b!12347 (= lambda!3359 f!539)) (and start!2488 b_free!1919) b_lambda!6919)))

(declare-fun bs!3243 () Bool)

(declare-fun d!9617 () Bool)

(assert (= bs!3243 (and d!9617 b!12347)))

(assert (=> bs!3243 (= (dynLambda!529 lambda!3359 (head!504 ys!54) (foldRight1!119 (tail!516 ys!54) f!539)) (++!3 (head!504 ys!54) (foldRight1!119 (tail!516 ys!54) f!539)))))

(assert (=> bs!3243 m!15369))

(declare-fun m!15391 () Bool)

(assert (=> bs!3243 m!15391))

(assert (=> (and b!12347 (= lambda!3359 f!539) b!12364) d!9617))

(declare-fun b_lambda!6921 () Bool)

(assert (= b_lambda!6907 (or (and b!12345 (= lambda!3361 (x!7135 thiss!794))) (and b!12345 (= lambda!3360 (x!7135 thiss!794))) (and b!12351 b_free!1927 (= (x!7136 thiss!744) (x!7135 thiss!794))) (and b!12351 b_free!1929 (= (y!672 thiss!744) (x!7135 thiss!794))) (and b!12350 (= lambda!3363 (x!7135 thiss!794))) (and b!12346 b_free!1923) (and b!12346 b_free!1925 (= (y!671 thiss!794) (x!7135 thiss!794))) b_lambda!6921)))

(declare-fun bs!3244 () Bool)

(declare-fun d!9619 () Bool)

(assert (= bs!3244 (and d!9619 b!12350)))

(assert (=> bs!3244 (= (dynLambda!530 lambda!3363) (foldRight1!119 (Cons!286 (head!504 xs!292) (append!138 (tail!516 xs!292) ys!54)) f!539))))

(assert (=> bs!3244 m!15377))

(declare-fun m!15393 () Bool)

(assert (=> bs!3244 m!15393))

(assert (=> (and b!12350 (= lambda!3363 (x!7135 thiss!794)) d!9607) d!9619))

(declare-fun bs!3245 () Bool)

(declare-fun d!9621 () Bool)

(assert (= bs!3245 (and d!9621 b!12345)))

(assert (=> bs!3245 (= (dynLambda!530 lambda!3361) (dynLambda!529 f!539 (head!504 xs!292) (foldRight1!119 (append!138 (tail!516 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6933 () Bool)

(assert (=> (not b_lambda!6933) (not bs!3245)))

(declare-fun t!3901 () Bool)

(declare-fun tb!3561 () Bool)

(assert (=> (and start!2488 (= f!539 f!539) t!3901) tb!3561))

(declare-fun result!3613 () Bool)

(assert (=> tb!3561 (= result!3613 true)))

(assert (=> bs!3245 t!3901))

(declare-fun b_and!6789 () Bool)

(assert (= b_and!6751 (and (=> t!3901 result!3613) b_and!6789)))

(assert (=> bs!3245 m!15377))

(assert (=> bs!3245 m!15377))

(declare-fun m!15395 () Bool)

(assert (=> bs!3245 m!15395))

(assert (=> bs!3245 m!15395))

(declare-fun m!15397 () Bool)

(assert (=> bs!3245 m!15397))

(assert (=> (and b!12345 (= lambda!3361 (x!7135 thiss!794)) d!9607) d!9621))

(declare-fun bs!3246 () Bool)

(declare-fun d!9623 () Bool)

(assert (= bs!3246 (and d!9623 b!12345)))

(assert (=> bs!3246 (= (dynLambda!530 lambda!3360) (dynLambda!529 f!539 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)))))

(declare-fun b_lambda!6935 () Bool)

(assert (=> (not b_lambda!6935) (not bs!3246)))

(assert (=> bs!3246 t!3857))

(declare-fun b_and!6791 () Bool)

(assert (= b_and!6789 (and (=> t!3857 result!3569) b_and!6791)))

(assert (=> bs!3246 m!15351))

(assert (=> bs!3246 m!15353))

(assert (=> bs!3246 m!15351))

(assert (=> bs!3246 m!15353))

(assert (=> bs!3246 m!15355))

(assert (=> (and b!12345 (= lambda!3360 (x!7135 thiss!794)) d!9607) d!9623))

(declare-fun b_lambda!6923 () Bool)

(assert (= b_lambda!6909 (or (and b!12345 (= lambda!3360 (y!671 thiss!794))) (and b!12350 (= lambda!3363 (y!671 thiss!794))) (and b!12351 b_free!1927 (= (x!7136 thiss!744) (y!671 thiss!794))) (and b!12345 (= lambda!3361 (y!671 thiss!794))) (and b!12351 b_free!1929 (= (y!672 thiss!744) (y!671 thiss!794))) (and b!12346 b_free!1925) (and b!12346 b_free!1923 (= (x!7135 thiss!794) (y!671 thiss!794))) b_lambda!6923)))

(declare-fun bs!3247 () Bool)

(declare-fun d!9625 () Bool)

(assert (= bs!3247 (and d!9625 b!12345)))

(assert (=> bs!3247 (= (dynLambda!530 lambda!3361) (dynLambda!529 f!539 (head!504 xs!292) (foldRight1!119 (append!138 (tail!516 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6937 () Bool)

(assert (=> (not b_lambda!6937) (not bs!3247)))

(assert (=> bs!3247 t!3901))

(declare-fun b_and!6793 () Bool)

(assert (= b_and!6791 (and (=> t!3901 result!3613) b_and!6793)))

(assert (=> bs!3247 m!15377))

(assert (=> bs!3247 m!15377))

(assert (=> bs!3247 m!15395))

(assert (=> bs!3247 m!15395))

(assert (=> bs!3247 m!15397))

(assert (=> (and b!12345 (= lambda!3361 (y!671 thiss!794)) d!9607) d!9625))

(declare-fun bs!3248 () Bool)

(declare-fun d!9627 () Bool)

(assert (= bs!3248 (and d!9627 b!12345)))

(assert (=> bs!3248 (= (dynLambda!530 lambda!3360) (dynLambda!529 f!539 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)))))

(declare-fun b_lambda!6939 () Bool)

(assert (=> (not b_lambda!6939) (not bs!3248)))

(assert (=> bs!3248 t!3857))

(declare-fun b_and!6795 () Bool)

(assert (= b_and!6793 (and (=> t!3857 result!3569) b_and!6795)))

(assert (=> bs!3248 m!15351))

(assert (=> bs!3248 m!15353))

(assert (=> bs!3248 m!15351))

(assert (=> bs!3248 m!15353))

(assert (=> bs!3248 m!15355))

(assert (=> (and b!12345 (= lambda!3360 (y!671 thiss!794)) d!9607) d!9627))

(declare-fun bs!3249 () Bool)

(declare-fun d!9629 () Bool)

(assert (= bs!3249 (and d!9629 b!12350)))

(assert (=> bs!3249 (= (dynLambda!530 lambda!3363) (foldRight1!119 (Cons!286 (head!504 xs!292) (append!138 (tail!516 xs!292) ys!54)) f!539))))

(assert (=> bs!3249 m!15377))

(assert (=> bs!3249 m!15393))

(assert (=> (and b!12350 (= lambda!3363 (y!671 thiss!794)) d!9607) d!9629))

(declare-fun b_lambda!6925 () Bool)

(assert (= b_lambda!6913 (or (and b!12351 b_free!1927 (= (x!7136 thiss!744) (y!672 thiss!744))) (and b!12351 b_free!1929) (and b!12346 b_free!1923 (= (x!7135 thiss!794) (y!672 thiss!744))) (and b!12345 (= lambda!3361 (y!672 thiss!744))) (and b!12346 b_free!1925 (= (y!671 thiss!794) (y!672 thiss!744))) (and b!12345 (= lambda!3360 (y!672 thiss!744))) (and b!12350 (= lambda!3363 (y!672 thiss!744))) b_lambda!6925)))

(declare-fun bs!3250 () Bool)

(declare-fun d!9631 () Bool)

(assert (= bs!3250 (and d!9631 b!12345)))

(assert (=> bs!3250 (= (dynLambda!530 lambda!3360) (dynLambda!529 f!539 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)))))

(declare-fun b_lambda!6941 () Bool)

(assert (=> (not b_lambda!6941) (not bs!3250)))

(assert (=> bs!3250 t!3857))

(declare-fun b_and!6797 () Bool)

(assert (= b_and!6795 (and (=> t!3857 result!3569) b_and!6797)))

(assert (=> bs!3250 m!15351))

(assert (=> bs!3250 m!15353))

(assert (=> bs!3250 m!15351))

(assert (=> bs!3250 m!15353))

(assert (=> bs!3250 m!15355))

(assert (=> (and b!12345 (= lambda!3360 (y!672 thiss!744)) d!9609) d!9631))

(declare-fun bs!3251 () Bool)

(declare-fun d!9633 () Bool)

(assert (= bs!3251 (and d!9633 b!12345)))

(assert (=> bs!3251 (= (dynLambda!530 lambda!3361) (dynLambda!529 f!539 (head!504 xs!292) (foldRight1!119 (append!138 (tail!516 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6943 () Bool)

(assert (=> (not b_lambda!6943) (not bs!3251)))

(assert (=> bs!3251 t!3901))

(declare-fun b_and!6799 () Bool)

(assert (= b_and!6797 (and (=> t!3901 result!3613) b_and!6799)))

(assert (=> bs!3251 m!15377))

(assert (=> bs!3251 m!15377))

(assert (=> bs!3251 m!15395))

(assert (=> bs!3251 m!15395))

(assert (=> bs!3251 m!15397))

(assert (=> (and b!12345 (= lambda!3361 (y!672 thiss!744)) d!9609) d!9633))

(declare-fun bs!3252 () Bool)

(declare-fun d!9635 () Bool)

(assert (= bs!3252 (and d!9635 b!12350)))

(assert (=> bs!3252 (= (dynLambda!530 lambda!3363) (foldRight1!119 (Cons!286 (head!504 xs!292) (append!138 (tail!516 xs!292) ys!54)) f!539))))

(assert (=> bs!3252 m!15377))

(assert (=> bs!3252 m!15393))

(assert (=> (and b!12350 (= lambda!3363 (y!672 thiss!744)) d!9609) d!9635))

(declare-fun b_lambda!6927 () Bool)

(assert (= b_lambda!6901 (or (and b!12347 (= lambda!3359 f!539)) (and start!2488 b_free!1919) b_lambda!6927)))

(declare-fun bs!3253 () Bool)

(declare-fun d!9637 () Bool)

(assert (= bs!3253 (and d!9637 b!12347)))

(assert (=> bs!3253 (= (dynLambda!529 lambda!3359 (head!504 xs!292) (foldRight1!119 (tail!516 xs!292) f!539)) (++!3 (head!504 xs!292) (foldRight1!119 (tail!516 xs!292) f!539)))))

(assert (=> bs!3253 m!15365))

(declare-fun m!15399 () Bool)

(assert (=> bs!3253 m!15399))

(assert (=> (and b!12347 (= lambda!3359 f!539) b!12362) d!9637))

(declare-fun b_lambda!6929 () Bool)

(assert (= b_lambda!6911 (or (and b!12351 b_free!1929 (= (y!672 thiss!744) (x!7136 thiss!744))) (and b!12346 b_free!1925 (= (y!671 thiss!794) (x!7136 thiss!744))) (and b!12350 (= lambda!3363 (x!7136 thiss!744))) (and b!12345 (= lambda!3360 (x!7136 thiss!744))) (and b!12351 b_free!1927) (and b!12346 b_free!1923 (= (x!7135 thiss!794) (x!7136 thiss!744))) (and b!12345 (= lambda!3361 (x!7136 thiss!744))) b_lambda!6929)))

(declare-fun bs!3254 () Bool)

(declare-fun d!9639 () Bool)

(assert (= bs!3254 (and d!9639 b!12345)))

(assert (=> bs!3254 (= (dynLambda!530 lambda!3361) (dynLambda!529 f!539 (head!504 xs!292) (foldRight1!119 (append!138 (tail!516 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6945 () Bool)

(assert (=> (not b_lambda!6945) (not bs!3254)))

(assert (=> bs!3254 t!3901))

(declare-fun b_and!6801 () Bool)

(assert (= b_and!6799 (and (=> t!3901 result!3613) b_and!6801)))

(assert (=> bs!3254 m!15377))

(assert (=> bs!3254 m!15377))

(assert (=> bs!3254 m!15395))

(assert (=> bs!3254 m!15395))

(assert (=> bs!3254 m!15397))

(assert (=> (and b!12345 (= lambda!3361 (x!7136 thiss!744)) d!9609) d!9639))

(declare-fun bs!3255 () Bool)

(declare-fun d!9641 () Bool)

(assert (= bs!3255 (and d!9641 b!12345)))

(assert (=> bs!3255 (= (dynLambda!530 lambda!3360) (dynLambda!529 f!539 (foldRight1!119 xs!292 f!539) (foldRight1!119 ys!54 f!539)))))

(declare-fun b_lambda!6947 () Bool)

(assert (=> (not b_lambda!6947) (not bs!3255)))

(assert (=> bs!3255 t!3857))

(declare-fun b_and!6803 () Bool)

(assert (= b_and!6801 (and (=> t!3857 result!3569) b_and!6803)))

(assert (=> bs!3255 m!15351))

(assert (=> bs!3255 m!15353))

(assert (=> bs!3255 m!15351))

(assert (=> bs!3255 m!15353))

(assert (=> bs!3255 m!15355))

(assert (=> (and b!12345 (= lambda!3360 (x!7136 thiss!744)) d!9609) d!9641))

(declare-fun bs!3256 () Bool)

(declare-fun d!9643 () Bool)

(assert (= bs!3256 (and d!9643 b!12350)))

(assert (=> bs!3256 (= (dynLambda!530 lambda!3363) (foldRight1!119 (Cons!286 (head!504 xs!292) (append!138 (tail!516 xs!292) ys!54)) f!539))))

(assert (=> bs!3256 m!15377))

(assert (=> bs!3256 m!15393))

(assert (=> (and b!12350 (= lambda!3363 (x!7136 thiss!744)) d!9609) d!9643))

(declare-fun b_lambda!6931 () Bool)

(assert (= b_lambda!6915 (or (and b!12345 (= lambda!3362 (evidence!212 thiss!744))) (and start!2488 b_free!1921 (= proof!221 (evidence!212 thiss!744))) (and b!12351 b_free!1931) b_lambda!6931)))

(declare-fun bs!3257 () Bool)

(declare-fun d!9645 () Bool)

(assert (= bs!3257 (and d!9645 b!12345)))

(assert (=> bs!3257 (= (dynLambda!528 lambda!3362) trivial!1)))

(assert (=> (and b!12345 (= lambda!3362 (evidence!212 thiss!744)) b!12375) d!9645))

(push 1)

(assert (not bs!3255))

(assert (not bs!3245))

(assert (not b_lambda!6899))

(assert b_and!6787)

(assert (not b!12362))

(assert (not d!9595))

(assert (not bs!3242))

(assert (not b!12372))

(assert (not b_next!4567))

(assert (not b_lambda!6933))

(assert (not b_next!4539))

(assert (not bs!3247))

(assert (not b_lambda!6917))

(assert (not bs!3243))

(assert (not bs!3252))

(assert (not b_lambda!6919))

(assert (not b_lambda!6943))

(assert (not b_lambda!6939))

(assert b_and!6779)

(assert (not bs!3249))

(assert b_and!6803)

(assert (not b_lambda!6921))

(assert (not b_next!4557))

(assert (not b_lambda!6947))

(assert (not b_lambda!6935))

(assert (not bs!3248))

(assert (not b_next!4565))

(assert b_and!6785)

(assert (not bs!3250))

(assert (not b_lambda!6941))

(assert (not bs!3251))

(assert (not b_lambda!6929))

(assert (not b_lambda!6897))

(assert (not b_lambda!6923))

(assert (not b_lambda!6945))

(assert (not bs!3256))

(assert b_and!6777)

(assert (not b!12366))

(assert (not b!12364))

(assert b_and!6781)

(assert (not bs!3246))

(assert (not b_next!4559))

(assert (not bs!3254))

(assert (not b_lambda!6927))

(assert b_and!6783)

(assert (not b_next!4561))

(assert (not b_lambda!6937))

(assert (not b_lambda!6931))

(assert (not bs!3253))

(assert (not bs!3244))

(assert (not b_next!4563))

(assert (not b_lambda!6925))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6787)

(assert (not b_next!4567))

(assert (not b_next!4539))

(assert b_and!6779)

(assert b_and!6803)

(assert (not b_next!4557))

(assert (not b_next!4565))

(assert b_and!6785)

(assert b_and!6777)

(assert b_and!6781)

(assert (not b_next!4559))

(assert b_and!6783)

(assert (not b_next!4561))

(assert (not b_next!4563))

(check-sat)

(pop 1)

