; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2536 () Bool)

(assert start!2536)

(declare-fun b_free!2011 () Bool)

(declare-fun b_next!4705 () Bool)

(assert (=> start!2536 (= b_free!2011 (not b_next!4705))))

(declare-fun tp!3172 () Bool)

(declare-fun b_and!7041 () Bool)

(assert (=> start!2536 (= tp!3172 b_and!7041)))

(declare-fun f!539 () Int)

(declare-fun b!12526 () Bool)

(declare-fun lambda!3402 () Int)

(declare-fun b_next!4707 () Bool)

(assert (=> start!2536 (= b_next!4705 (or (and b!12526 (= lambda!3402 f!539)) b_next!4707))))

(declare-fun res!4689 () Bool)

(declare-fun e!6863 () Bool)

(assert (=> b!12526 (=> (not res!4689) (not e!6863))))

(assert (=> b!12526 (= res!4689 (= f!539 lambda!3402))))

(declare-fun res!4692 () Bool)

(assert (=> start!2536 (=> (not res!4692) (not e!6863))))

(declare-datatypes () ((Balance!377 (Balance!378 (extraOpen!229 Int) (extraClose!229 Int)))))

(declare-datatypes () ((List!292 (Nil!290) (Cons!289 (head!507 Balance!377) (tail!519 List!292)))))

(declare-fun xs!292 () List!292)

(declare-fun isEmpty!220 (List!292) Bool)

(assert (=> start!2536 (= res!4692 (not (isEmpty!220 xs!292)))))

(assert (=> start!2536 e!6863))

(assert (=> start!2536 true))

(assert (=> start!2536 tp!3172))

(declare-fun b!12525 () Bool)

(declare-fun res!4690 () Bool)

(assert (=> b!12525 (=> (not res!4690) (not e!6863))))

(declare-fun ys!54 () List!292)

(assert (=> b!12525 (= res!4690 (not (isEmpty!220 ys!54)))))

(declare-fun b!12527 () Bool)

(declare-fun res!4691 () Bool)

(assert (=> b!12527 (=> (not res!4691) (not e!6863))))

(declare-datatypes () ((ProofOps!284 (ProofOps!285 (prop!279 Bool)))))

(declare-fun thiss!710 () ProofOps!284)

(declare-fun dynLambda!541 (Int Balance!377 Balance!377) Balance!377)

(declare-fun foldRight1!122 (List!292 Int) Balance!377)

(declare-fun append!141 (List!292 List!292) List!292)

(assert (=> b!12527 (= res!4691 (= thiss!710 (ProofOps!285 (= (dynLambda!541 f!539 (foldRight1!122 xs!292 f!539) (foldRight1!122 ys!54 f!539)) (foldRight1!122 (append!141 xs!292 ys!54) f!539)))))))

(declare-fun b!12528 () Bool)

(assert (=> b!12528 (= e!6863 (and (or (not (is-Cons!289 xs!292)) (not (is-Nil!290 (tail!519 xs!292)))) (not (is-Cons!289 xs!292))))))

(assert (= (and start!2536 res!4692) b!12525))

(assert (= (and b!12525 res!4690) b!12526))

(assert (= (and b!12526 res!4689) b!12527))

(assert (= (and b!12527 res!4691) b!12528))

(declare-fun b_lambda!7097 () Bool)

(assert (=> (not b_lambda!7097) (not b!12527)))

(declare-fun t!4001 () Bool)

(declare-fun tb!3661 () Bool)

(assert (=> (and start!2536 (= f!539 f!539) t!4001) tb!3661))

(declare-fun result!3713 () Bool)

(assert (=> tb!3661 (= result!3713 true)))

(assert (=> b!12527 t!4001))

(declare-fun b_and!7043 () Bool)

(assert (= b_and!7041 (and (=> t!4001 result!3713) b_and!7043)))

(declare-fun m!15559 () Bool)

(assert (=> start!2536 m!15559))

(declare-fun m!15561 () Bool)

(assert (=> b!12525 m!15561))

(declare-fun m!15563 () Bool)

(assert (=> b!12527 m!15563))

(declare-fun m!15565 () Bool)

(assert (=> b!12527 m!15565))

(declare-fun m!15567 () Bool)

(assert (=> b!12527 m!15567))

(assert (=> b!12527 m!15565))

(assert (=> b!12527 m!15567))

(declare-fun m!15569 () Bool)

(assert (=> b!12527 m!15569))

(assert (=> b!12527 m!15563))

(declare-fun m!15571 () Bool)

(assert (=> b!12527 m!15571))

(push 1)

(assert (not start!2536))

(assert (not b!12525))

(assert (not b_next!4707))

(assert (not b_lambda!7097))

(assert (not b!12527))

(assert b_and!7043)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7043)

(assert (not b_next!4707))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7099 () Bool)

(assert (= b_lambda!7097 (or (and b!12526 (= lambda!3402 f!539)) (and start!2536 b_free!2011) b_lambda!7099)))

(declare-fun bs!3308 () Bool)

(declare-fun d!9775 () Bool)

(assert (= bs!3308 (and d!9775 b!12526)))

(declare-fun ++!3 (Balance!377 Balance!377) Balance!377)

(assert (=> bs!3308 (= (dynLambda!541 lambda!3402 (foldRight1!122 xs!292 f!539) (foldRight1!122 ys!54 f!539)) (++!3 (foldRight1!122 xs!292 f!539) (foldRight1!122 ys!54 f!539)))))

(assert (=> bs!3308 m!15565))

(assert (=> bs!3308 m!15567))

(declare-fun m!15573 () Bool)

(assert (=> bs!3308 m!15573))

(assert (=> (and b!12526 (= lambda!3402 f!539) b!12527) d!9775))

(push 1)

(assert (not bs!3308))

(assert (not b_lambda!7099))

(assert (not start!2536))

(assert (not b!12525))

(assert (not b_next!4707))

(assert (not b!12527))

(assert b_and!7043)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7043)

(assert (not b_next!4707))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9777 () Bool)

(declare-fun lt!1812 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9777 (= lt!1812 (min!4 (extraOpen!229 (foldRight1!122 xs!292 f!539)) (extraClose!229 (foldRight1!122 ys!54 f!539))))))

(assert (=> d!9777 (= (++!3 (foldRight1!122 xs!292 f!539) (foldRight1!122 ys!54 f!539)) (Balance!378 (- (+ (extraOpen!229 (foldRight1!122 xs!292 f!539)) (extraOpen!229 (foldRight1!122 ys!54 f!539))) lt!1812) (- (+ (extraClose!229 (foldRight1!122 xs!292 f!539)) (extraClose!229 (foldRight1!122 ys!54 f!539))) lt!1812)))))

(declare-fun bs!3309 () Bool)

(assert (= bs!3309 d!9777))

(declare-fun m!15575 () Bool)

(assert (=> bs!3309 m!15575))

(assert (=> bs!3308 d!9777))

(declare-fun d!9779 () Bool)

(assert (=> d!9779 (= (isEmpty!220 xs!292) (is-Nil!290 xs!292))))

(assert (=> start!2536 d!9779))

(declare-fun d!9781 () Bool)

(assert (=> d!9781 (= (isEmpty!220 ys!54) (is-Nil!290 ys!54))))

(assert (=> b!12525 d!9781))

(declare-fun d!9783 () Bool)

(declare-fun c!3523 () Bool)

(assert (=> d!9783 (= c!3523 (and (is-Cons!289 xs!292) (is-Nil!290 (tail!519 xs!292))))))

(declare-fun e!6866 () Balance!377)

(assert (=> d!9783 (= (foldRight1!122 xs!292 f!539) e!6866)))

(declare-fun b!12533 () Bool)

(assert (=> b!12533 (= e!6866 (head!507 xs!292))))

(declare-fun b!12534 () Bool)

(assert (=> b!12534 (= e!6866 (dynLambda!541 f!539 (head!507 xs!292) (foldRight1!122 (tail!519 xs!292) f!539)))))

(assert (= (and d!9783 c!3523) b!12533))

(assert (= (and d!9783 (not c!3523)) b!12534))

(declare-fun b_lambda!7101 () Bool)

(assert (=> (not b_lambda!7101) (not b!12534)))

(declare-fun t!4003 () Bool)

(declare-fun tb!3663 () Bool)

(assert (=> (and start!2536 (= f!539 f!539) t!4003) tb!3663))

(declare-fun result!3715 () Bool)

(assert (=> tb!3663 (= result!3715 true)))

(assert (=> b!12534 t!4003))

(declare-fun b_and!7045 () Bool)

(assert (= b_and!7043 (and (=> t!4003 result!3715) b_and!7045)))

(declare-fun m!15577 () Bool)

(assert (=> b!12534 m!15577))

(assert (=> b!12534 m!15577))

(declare-fun m!15579 () Bool)

(assert (=> b!12534 m!15579))

(assert (=> b!12527 d!9783))

(declare-fun d!9785 () Bool)

(declare-fun c!3524 () Bool)

(assert (=> d!9785 (= c!3524 (and (is-Cons!289 ys!54) (is-Nil!290 (tail!519 ys!54))))))

(declare-fun e!6867 () Balance!377)

(assert (=> d!9785 (= (foldRight1!122 ys!54 f!539) e!6867)))

(declare-fun b!12535 () Bool)

(assert (=> b!12535 (= e!6867 (head!507 ys!54))))

(declare-fun b!12536 () Bool)

(assert (=> b!12536 (= e!6867 (dynLambda!541 f!539 (head!507 ys!54) (foldRight1!122 (tail!519 ys!54) f!539)))))

(assert (= (and d!9785 c!3524) b!12535))

(assert (= (and d!9785 (not c!3524)) b!12536))

(declare-fun b_lambda!7103 () Bool)

(assert (=> (not b_lambda!7103) (not b!12536)))

(declare-fun t!4005 () Bool)

(declare-fun tb!3665 () Bool)

(assert (=> (and start!2536 (= f!539 f!539) t!4005) tb!3665))

(declare-fun result!3717 () Bool)

(assert (=> tb!3665 (= result!3717 true)))

(assert (=> b!12536 t!4005))

(declare-fun b_and!7047 () Bool)

(assert (= b_and!7045 (and (=> t!4005 result!3717) b_and!7047)))

(declare-fun m!15581 () Bool)

(assert (=> b!12536 m!15581))

(assert (=> b!12536 m!15581))

(declare-fun m!15583 () Bool)

(assert (=> b!12536 m!15583))

(assert (=> b!12527 d!9785))

(declare-fun d!9787 () Bool)

(declare-fun c!3525 () Bool)

(assert (=> d!9787 (= c!3525 (and (is-Cons!289 (append!141 xs!292 ys!54)) (is-Nil!290 (tail!519 (append!141 xs!292 ys!54)))))))

(declare-fun e!6868 () Balance!377)

(assert (=> d!9787 (= (foldRight1!122 (append!141 xs!292 ys!54) f!539) e!6868)))

(declare-fun b!12537 () Bool)

(assert (=> b!12537 (= e!6868 (head!507 (append!141 xs!292 ys!54)))))

(declare-fun b!12538 () Bool)

(assert (=> b!12538 (= e!6868 (dynLambda!541 f!539 (head!507 (append!141 xs!292 ys!54)) (foldRight1!122 (tail!519 (append!141 xs!292 ys!54)) f!539)))))

(assert (= (and d!9787 c!3525) b!12537))

(assert (= (and d!9787 (not c!3525)) b!12538))

(declare-fun b_lambda!7105 () Bool)

(assert (=> (not b_lambda!7105) (not b!12538)))

(declare-fun t!4007 () Bool)

(declare-fun tb!3667 () Bool)

(assert (=> (and start!2536 (= f!539 f!539) t!4007) tb!3667))

(declare-fun result!3719 () Bool)

(assert (=> tb!3667 (= result!3719 true)))

(assert (=> b!12538 t!4007))

(declare-fun b_and!7049 () Bool)

(assert (= b_and!7047 (and (=> t!4007 result!3719) b_and!7049)))

(declare-fun m!15585 () Bool)

(assert (=> b!12538 m!15585))

(assert (=> b!12538 m!15585))

(declare-fun m!15587 () Bool)

(assert (=> b!12538 m!15587))

(assert (=> b!12527 d!9787))

(declare-fun d!9789 () Bool)

(declare-fun c!3528 () Bool)

(assert (=> d!9789 (= c!3528 (is-Nil!290 xs!292))))

(declare-fun e!6871 () List!292)

(assert (=> d!9789 (= (append!141 xs!292 ys!54) e!6871)))

(declare-fun b!12543 () Bool)

(assert (=> b!12543 (= e!6871 ys!54)))

(declare-fun b!12544 () Bool)

(assert (=> b!12544 (= e!6871 (Cons!289 (head!507 xs!292) (append!141 (tail!519 xs!292) ys!54)))))

(assert (= (and d!9789 c!3528) b!12543))

(assert (= (and d!9789 (not c!3528)) b!12544))

(declare-fun m!15589 () Bool)

(assert (=> b!12544 m!15589))

(assert (=> b!12527 d!9789))

(declare-fun b_lambda!7107 () Bool)

(assert (= b_lambda!7105 (or (and b!12526 (= lambda!3402 f!539)) (and start!2536 b_free!2011) b_lambda!7107)))

(declare-fun bs!3310 () Bool)

(declare-fun d!9791 () Bool)

(assert (= bs!3310 (and d!9791 b!12526)))

(assert (=> bs!3310 (= (dynLambda!541 lambda!3402 (head!507 (append!141 xs!292 ys!54)) (foldRight1!122 (tail!519 (append!141 xs!292 ys!54)) f!539)) (++!3 (head!507 (append!141 xs!292 ys!54)) (foldRight1!122 (tail!519 (append!141 xs!292 ys!54)) f!539)))))

(assert (=> bs!3310 m!15585))

(declare-fun m!15591 () Bool)

(assert (=> bs!3310 m!15591))

(assert (=> (and b!12526 (= lambda!3402 f!539) b!12538) d!9791))

(declare-fun b_lambda!7109 () Bool)

(assert (= b_lambda!7103 (or (and b!12526 (= lambda!3402 f!539)) (and start!2536 b_free!2011) b_lambda!7109)))

(declare-fun bs!3311 () Bool)

(declare-fun d!9793 () Bool)

(assert (= bs!3311 (and d!9793 b!12526)))

(assert (=> bs!3311 (= (dynLambda!541 lambda!3402 (head!507 ys!54) (foldRight1!122 (tail!519 ys!54) f!539)) (++!3 (head!507 ys!54) (foldRight1!122 (tail!519 ys!54) f!539)))))

(assert (=> bs!3311 m!15581))

(declare-fun m!15593 () Bool)

(assert (=> bs!3311 m!15593))

(assert (=> (and b!12526 (= lambda!3402 f!539) b!12536) d!9793))

(declare-fun b_lambda!7111 () Bool)

(assert (= b_lambda!7101 (or (and b!12526 (= lambda!3402 f!539)) (and start!2536 b_free!2011) b_lambda!7111)))

(declare-fun bs!3312 () Bool)

(declare-fun d!9795 () Bool)

(assert (= bs!3312 (and d!9795 b!12526)))

(assert (=> bs!3312 (= (dynLambda!541 lambda!3402 (head!507 xs!292) (foldRight1!122 (tail!519 xs!292) f!539)) (++!3 (head!507 xs!292) (foldRight1!122 (tail!519 xs!292) f!539)))))

(assert (=> bs!3312 m!15577))

(declare-fun m!15595 () Bool)

(assert (=> bs!3312 m!15595))

(assert (=> (and b!12526 (= lambda!3402 f!539) b!12534) d!9795))

(push 1)

(assert (not b_lambda!7111))

(assert (not b!12534))

(assert (not bs!3311))

(assert (not b!12544))

(assert (not b_lambda!7099))

(assert (not d!9777))

(assert (not b!12536))

(assert b_and!7049)

(assert (not bs!3310))

(assert (not b_lambda!7109))

(assert (not b!12538))

(assert (not b_lambda!7107))

(assert (not b_next!4707))

(assert (not bs!3312))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7049)

(assert (not b_next!4707))

(check-sat)

(pop 1)

