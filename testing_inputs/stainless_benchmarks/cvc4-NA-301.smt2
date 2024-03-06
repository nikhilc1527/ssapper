; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2302 () Bool)

(assert start!2302)

(declare-fun b_free!1577 () Bool)

(declare-fun b_next!3809 () Bool)

(assert (=> start!2302 (= b_free!1577 (not b_next!3809))))

(declare-fun tp!2533 () Bool)

(declare-fun b_and!5561 () Bool)

(assert (=> start!2302 (= tp!2533 b_and!5561)))

(declare-fun b_free!1579 () Bool)

(declare-fun b_next!3811 () Bool)

(assert (=> start!2302 (= b_free!1579 (not b_next!3811))))

(declare-fun tp!2530 () Bool)

(declare-fun b_and!5563 () Bool)

(assert (=> start!2302 (= tp!2530 b_and!5563)))

(declare-fun b!11504 () Bool)

(declare-fun b_free!1581 () Bool)

(declare-fun b_next!3813 () Bool)

(assert (=> b!11504 (= b_free!1581 (not b_next!3813))))

(declare-fun tp!2529 () Bool)

(declare-fun b_and!5565 () Bool)

(assert (=> b!11504 (= tp!2529 b_and!5565)))

(declare-fun b_free!1583 () Bool)

(declare-fun b_next!3815 () Bool)

(assert (=> b!11504 (= b_free!1583 (not b_next!3815))))

(declare-fun tp!2532 () Bool)

(declare-fun b_and!5567 () Bool)

(assert (=> b!11504 (= tp!2532 b_and!5567)))

(declare-fun b_free!1585 () Bool)

(declare-fun b_next!3817 () Bool)

(assert (=> b!11504 (= b_free!1585 (not b_next!3817))))

(declare-fun tp!2531 () Bool)

(declare-fun b_and!5569 () Bool)

(assert (=> b!11504 (= tp!2531 b_and!5569)))

(declare-fun lambda!3071 () Int)

(declare-fun f!539 () Int)

(declare-fun b_next!3819 () Bool)

(declare-fun b!11502 () Bool)

(assert (=> start!2302 (= b_next!3809 (or (and b!11502 (= lambda!3071 f!539)) b_next!3819))))

(declare-fun b_next!3821 () Bool)

(declare-fun f!583 () Int)

(assert (=> start!2302 (= b_next!3811 (or (and b!11502 (= lambda!3071 f!583)) b_next!3821))))

(declare-fun b!11503 () Bool)

(assert (=> b!11503 true))

(declare-fun order!247 () Int)

(declare-fun lambda!3072 () Int)

(declare-fun order!249 () Int)

(declare-fun dynLambda!438 (Int Int) Int)

(declare-fun dynLambda!439 (Int Int) Int)

(assert (=> b!11503 (< (dynLambda!438 order!247 f!539) (dynLambda!439 order!249 lambda!3072))))

(assert (=> b!11503 true))

(assert (=> b!11503 true))

(declare-fun b_next!3823 () Bool)

(declare-datatypes () ((Balance!311 (Balance!312 (extraOpen!196 Int) (extraClose!196 Int)))))

(declare-datatypes () ((EqEvidence!242 (EqEvidence!243 (x!6523 Int) (y!637 Int) (evidence!188 Int)))))

(declare-fun thiss!743 () EqEvidence!242)

(assert (=> b!11504 (= b_next!3813 (or (and b!11503 (= lambda!3072 (x!6523 thiss!743))) b_next!3823))))

(declare-fun b_next!3825 () Bool)

(assert (=> b!11504 (= b_next!3815 (or (and b!11503 (= lambda!3072 (y!637 thiss!743))) b_next!3825))))

(declare-fun lambda!3073 () Int)

(assert (=> b!11503 (not (= lambda!3073 lambda!3072))))

(assert (=> b!11503 true))

(assert (=> b!11503 (< (dynLambda!438 order!247 f!539) (dynLambda!439 order!249 lambda!3073))))

(assert (=> b!11503 true))

(assert (=> b!11503 true))

(declare-fun b_next!3827 () Bool)

(assert (=> b!11504 (= b_next!3823 (or (and b!11503 (= lambda!3073 (x!6523 thiss!743))) b_next!3827))))

(declare-fun b_next!3829 () Bool)

(assert (=> b!11504 (= b_next!3825 (or (and b!11503 (= lambda!3073 (y!637 thiss!743))) b_next!3829))))

(declare-fun m!14399 () Bool)

(assert (=> b!11503 m!14399))

(declare-fun lambda!3074 () Int)

(declare-fun dynLambda!440 (Int) Bool)

(assert (=> (and b!11504 b!11503 (= (dynLambda!440 lambda!3074) (dynLambda!440 (evidence!188 thiss!743)))) (= lambda!3074 (evidence!188 thiss!743))))

(declare-fun b_next!3831 () Bool)

(assert (=> b!11504 (= b_next!3817 (or (and b!11503 (= lambda!3074 (evidence!188 thiss!743))) b_next!3831))))

(declare-fun res!4223 () Bool)

(declare-fun e!6445 () Bool)

(assert (=> start!2302 (=> (not res!4223) (not e!6445))))

(declare-datatypes () ((List!275 (Nil!273) (Cons!272 (head!490 Balance!311) (tail!502 List!275)))))

(declare-fun xs!292 () List!275)

(declare-fun isEmpty!203 (List!275) Bool)

(assert (=> start!2302 (= res!4223 (not (isEmpty!203 xs!292)))))

(assert (=> start!2302 e!6445))

(assert (=> start!2302 tp!2533))

(assert (=> start!2302 true))

(declare-fun e!6444 () Bool)

(declare-fun inv!382 (EqEvidence!242) Bool)

(assert (=> start!2302 (and (inv!382 thiss!743) e!6444)))

(assert (=> start!2302 tp!2530))

(declare-fun b!11500 () Bool)

(declare-fun res!4220 () Bool)

(assert (=> b!11500 (=> (not res!4220) (not e!6445))))

(declare-fun thiss!799 () List!275)

(declare-fun ys!54 () List!275)

(declare-fun append!124 (List!275 List!275) List!275)

(assert (=> b!11500 (= res!4220 (= thiss!799 (append!124 xs!292 ys!54)))))

(declare-fun b!11501 () Bool)

(declare-fun res!4219 () Bool)

(assert (=> b!11501 (=> (not res!4219) (not e!6445))))

(assert (=> b!11501 (= res!4219 (not (isEmpty!203 ys!54)))))

(declare-fun res!4221 () Bool)

(assert (=> b!11502 (=> (not res!4221) (not e!6445))))

(assert (=> b!11502 (= res!4221 (= f!539 lambda!3071))))

(declare-fun res!4225 () Bool)

(assert (=> b!11503 (=> (not res!4225) (not e!6445))))

(assert (=> b!11503 (= res!4225 (= thiss!743 (EqEvidence!243 lambda!3072 lambda!3073 lambda!3074)))))

(assert (=> b!11504 (= e!6444 (and tp!2529 tp!2532 tp!2531))))

(declare-fun b!11505 () Bool)

(declare-fun res!4224 () Bool)

(assert (=> b!11505 (=> (not res!4224) (not e!6445))))

(declare-datatypes () ((ProofOps!250 (ProofOps!251 (prop!258 Bool)))))

(declare-fun thiss!710 () ProofOps!250)

(declare-fun dynLambda!441 (Int Balance!311 Balance!311) Balance!311)

(declare-fun foldRight1!105 (List!275 Int) Balance!311)

(assert (=> b!11505 (= res!4224 (= thiss!710 (ProofOps!251 (= (dynLambda!441 f!539 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)) (foldRight1!105 (append!124 xs!292 ys!54) f!539)))))))

(declare-fun b!11506 () Bool)

(declare-fun res!4226 () Bool)

(assert (=> b!11506 (=> (not res!4226) (not e!6445))))

(assert (=> b!11506 (= res!4226 (or (not (is-Cons!272 xs!292)) (not (is-Nil!273 (tail!502 xs!292)))))))

(declare-fun b!11507 () Bool)

(declare-fun res!4222 () Bool)

(assert (=> b!11507 (=> (not res!4222) (not e!6445))))

(assert (=> b!11507 (= res!4222 (= f!583 f!539))))

(declare-fun b!11508 () Bool)

(assert (=> b!11508 (= e!6445 (isEmpty!203 thiss!799))))

(assert (= (and start!2302 res!4223) b!11501))

(assert (= (and b!11501 res!4219) b!11502))

(assert (= (and b!11502 res!4221) b!11505))

(assert (= (and b!11505 res!4224) b!11506))

(assert (= (and b!11506 res!4226) b!11503))

(assert (= (and b!11503 res!4225) b!11500))

(assert (= (and b!11500 res!4220) b!11507))

(assert (= (and b!11507 res!4222) b!11508))

(assert (= start!2302 b!11504))

(declare-fun b_lambda!5983 () Bool)

(assert (=> (not b_lambda!5983) (not b!11505)))

(declare-fun t!3287 () Bool)

(declare-fun tb!2947 () Bool)

(assert (=> (and start!2302 (= f!539 f!539) t!3287) tb!2947))

(declare-fun result!2999 () Bool)

(assert (=> tb!2947 (= result!2999 true)))

(assert (=> b!11505 t!3287))

(declare-fun b_and!5571 () Bool)

(assert (= b_and!5561 (and (=> t!3287 result!2999) b_and!5571)))

(declare-fun tb!2949 () Bool)

(declare-fun t!3289 () Bool)

(assert (=> (and start!2302 (= f!583 f!539) t!3289) tb!2949))

(declare-fun result!3001 () Bool)

(assert (=> tb!2949 (= result!3001 true)))

(assert (=> b!11505 t!3289))

(declare-fun b_and!5573 () Bool)

(assert (= b_and!5563 (and (=> t!3289 result!3001) b_and!5573)))

(declare-fun m!14401 () Bool)

(assert (=> b!11505 m!14401))

(declare-fun m!14403 () Bool)

(assert (=> b!11505 m!14403))

(declare-fun m!14405 () Bool)

(assert (=> b!11505 m!14405))

(assert (=> b!11505 m!14403))

(assert (=> b!11505 m!14405))

(declare-fun m!14407 () Bool)

(assert (=> b!11505 m!14407))

(assert (=> b!11505 m!14401))

(declare-fun m!14409 () Bool)

(assert (=> b!11505 m!14409))

(assert (=> b!11500 m!14401))

(declare-fun m!14411 () Bool)

(assert (=> b!11501 m!14411))

(declare-fun m!14413 () Bool)

(assert (=> b!11508 m!14413))

(declare-fun m!14415 () Bool)

(assert (=> start!2302 m!14415))

(declare-fun m!14417 () Bool)

(assert (=> start!2302 m!14417))

(push 1)

(assert b_and!5573)

(assert (not b_next!3821))

(assert b_and!5569)

(assert (not b!11501))

(assert (not b!11500))

(assert (not b_next!3827))

(assert b_and!5567)

(assert (not b!11503))

(assert b_and!5571)

(assert (not b_next!3831))

(assert (not b!11505))

(assert (not b_next!3819))

(assert (not b_lambda!5983))

(assert (not b!11508))

(assert (not start!2302))

(assert (not b_next!3829))

(assert b_and!5565)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5573)

(assert (not b_next!3821))

(assert b_and!5569)

(assert (not b_next!3827))

(assert b_and!5567)

(assert b_and!5571)

(assert (not b_next!3831))

(assert (not b_next!3819))

(assert (not b_next!3829))

(assert b_and!5565)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5985 () Bool)

(assert (= b_lambda!5983 (or (and b!11502 (= lambda!3071 f!539)) (and start!2302 b_free!1577) (and start!2302 b_free!1579 (= f!583 f!539)) b_lambda!5985)))

(declare-fun bs!2939 () Bool)

(declare-fun d!8867 () Bool)

(assert (= bs!2939 (and d!8867 b!11502)))

(declare-fun ++!3 (Balance!311 Balance!311) Balance!311)

(assert (=> bs!2939 (= (dynLambda!441 lambda!3071 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)) (++!3 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)))))

(assert (=> bs!2939 m!14403))

(assert (=> bs!2939 m!14405))

(declare-fun m!14419 () Bool)

(assert (=> bs!2939 m!14419))

(assert (=> (and b!11502 (= lambda!3071 f!539) b!11505) d!8867))

(push 1)

(assert b_and!5573)

(assert (not b_next!3821))

(assert b_and!5569)

(assert (not b!11501))

(assert (not b!11500))

(assert (not b_next!3827))

(assert (not b_lambda!5985))

(assert b_and!5567)

(assert (not b!11503))

(assert b_and!5571)

(assert (not b_next!3831))

(assert (not bs!2939))

(assert (not b!11505))

(assert (not b_next!3819))

(assert (not b!11508))

(assert (not start!2302))

(assert (not b_next!3829))

(assert b_and!5565)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5573)

(assert (not b_next!3821))

(assert b_and!5569)

(assert (not b_next!3827))

(assert b_and!5567)

(assert b_and!5571)

(assert (not b_next!3831))

(assert (not b_next!3819))

(assert (not b_next!3829))

(assert b_and!5565)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8869 () Bool)

(assert (=> d!8869 (= (isEmpty!203 ys!54) (is-Nil!273 ys!54))))

(assert (=> b!11501 d!8869))

(declare-fun d!8871 () Bool)

(declare-fun c!3391 () Bool)

(assert (=> d!8871 (= c!3391 (is-Nil!273 xs!292))))

(declare-fun e!6448 () List!275)

(assert (=> d!8871 (= (append!124 xs!292 ys!54) e!6448)))

(declare-fun b!11517 () Bool)

(assert (=> b!11517 (= e!6448 ys!54)))

(declare-fun b!11518 () Bool)

(assert (=> b!11518 (= e!6448 (Cons!272 (head!490 xs!292) (append!124 (tail!502 xs!292) ys!54)))))

(assert (= (and d!8871 c!3391) b!11517))

(assert (= (and d!8871 (not c!3391)) b!11518))

(declare-fun m!14421 () Bool)

(assert (=> b!11518 m!14421))

(assert (=> b!11500 d!8871))

(declare-fun d!8873 () Bool)

(declare-fun lt!1769 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8873 (= lt!1769 (min!4 (extraOpen!196 (foldRight1!105 xs!292 f!539)) (extraClose!196 (foldRight1!105 ys!54 f!539))))))

(assert (=> d!8873 (= (++!3 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)) (Balance!312 (- (+ (extraOpen!196 (foldRight1!105 xs!292 f!539)) (extraOpen!196 (foldRight1!105 ys!54 f!539))) lt!1769) (- (+ (extraClose!196 (foldRight1!105 xs!292 f!539)) (extraClose!196 (foldRight1!105 ys!54 f!539))) lt!1769)))))

(declare-fun bs!2940 () Bool)

(assert (= bs!2940 d!8873))

(declare-fun m!14423 () Bool)

(assert (=> bs!2940 m!14423))

(assert (=> bs!2939 d!8873))

(declare-fun d!8875 () Bool)

(declare-fun c!3394 () Bool)

(assert (=> d!8875 (= c!3394 (and (is-Cons!272 xs!292) (is-Nil!273 (tail!502 xs!292))))))

(declare-fun e!6451 () Balance!311)

(assert (=> d!8875 (= (foldRight1!105 xs!292 f!539) e!6451)))

(declare-fun b!11523 () Bool)

(assert (=> b!11523 (= e!6451 (head!490 xs!292))))

(declare-fun b!11524 () Bool)

(assert (=> b!11524 (= e!6451 (dynLambda!441 f!539 (head!490 xs!292) (foldRight1!105 (tail!502 xs!292) f!539)))))

(assert (= (and d!8875 c!3394) b!11523))

(assert (= (and d!8875 (not c!3394)) b!11524))

(declare-fun b_lambda!5987 () Bool)

(assert (=> (not b_lambda!5987) (not b!11524)))

(declare-fun t!3291 () Bool)

(declare-fun tb!2951 () Bool)

(assert (=> (and start!2302 (= f!539 f!539) t!3291) tb!2951))

(declare-fun result!3003 () Bool)

(assert (=> tb!2951 (= result!3003 true)))

(assert (=> b!11524 t!3291))

(declare-fun b_and!5575 () Bool)

(assert (= b_and!5571 (and (=> t!3291 result!3003) b_and!5575)))

(declare-fun t!3293 () Bool)

(declare-fun tb!2953 () Bool)

(assert (=> (and start!2302 (= f!583 f!539) t!3293) tb!2953))

(declare-fun result!3005 () Bool)

(assert (=> tb!2953 (= result!3005 true)))

(assert (=> b!11524 t!3293))

(declare-fun b_and!5577 () Bool)

(assert (= b_and!5573 (and (=> t!3293 result!3005) b_and!5577)))

(declare-fun m!14425 () Bool)

(assert (=> b!11524 m!14425))

(assert (=> b!11524 m!14425))

(declare-fun m!14427 () Bool)

(assert (=> b!11524 m!14427))

(assert (=> b!11505 d!8875))

(declare-fun d!8877 () Bool)

(declare-fun c!3395 () Bool)

(assert (=> d!8877 (= c!3395 (and (is-Cons!272 ys!54) (is-Nil!273 (tail!502 ys!54))))))

(declare-fun e!6452 () Balance!311)

(assert (=> d!8877 (= (foldRight1!105 ys!54 f!539) e!6452)))

(declare-fun b!11525 () Bool)

(assert (=> b!11525 (= e!6452 (head!490 ys!54))))

(declare-fun b!11526 () Bool)

(assert (=> b!11526 (= e!6452 (dynLambda!441 f!539 (head!490 ys!54) (foldRight1!105 (tail!502 ys!54) f!539)))))

(assert (= (and d!8877 c!3395) b!11525))

(assert (= (and d!8877 (not c!3395)) b!11526))

(declare-fun b_lambda!5989 () Bool)

(assert (=> (not b_lambda!5989) (not b!11526)))

(declare-fun t!3295 () Bool)

(declare-fun tb!2955 () Bool)

(assert (=> (and start!2302 (= f!539 f!539) t!3295) tb!2955))

(declare-fun result!3007 () Bool)

(assert (=> tb!2955 (= result!3007 true)))

(assert (=> b!11526 t!3295))

(declare-fun b_and!5579 () Bool)

(assert (= b_and!5575 (and (=> t!3295 result!3007) b_and!5579)))

(declare-fun t!3297 () Bool)

(declare-fun tb!2957 () Bool)

(assert (=> (and start!2302 (= f!583 f!539) t!3297) tb!2957))

(declare-fun result!3009 () Bool)

(assert (=> tb!2957 (= result!3009 true)))

(assert (=> b!11526 t!3297))

(declare-fun b_and!5581 () Bool)

(assert (= b_and!5577 (and (=> t!3297 result!3009) b_and!5581)))

(declare-fun m!14429 () Bool)

(assert (=> b!11526 m!14429))

(assert (=> b!11526 m!14429))

(declare-fun m!14431 () Bool)

(assert (=> b!11526 m!14431))

(assert (=> b!11505 d!8877))

(declare-fun d!8879 () Bool)

(declare-fun c!3396 () Bool)

(assert (=> d!8879 (= c!3396 (and (is-Cons!272 (append!124 xs!292 ys!54)) (is-Nil!273 (tail!502 (append!124 xs!292 ys!54)))))))

(declare-fun e!6453 () Balance!311)

(assert (=> d!8879 (= (foldRight1!105 (append!124 xs!292 ys!54) f!539) e!6453)))

(declare-fun b!11527 () Bool)

(assert (=> b!11527 (= e!6453 (head!490 (append!124 xs!292 ys!54)))))

(declare-fun b!11528 () Bool)

(assert (=> b!11528 (= e!6453 (dynLambda!441 f!539 (head!490 (append!124 xs!292 ys!54)) (foldRight1!105 (tail!502 (append!124 xs!292 ys!54)) f!539)))))

(assert (= (and d!8879 c!3396) b!11527))

(assert (= (and d!8879 (not c!3396)) b!11528))

(declare-fun b_lambda!5991 () Bool)

(assert (=> (not b_lambda!5991) (not b!11528)))

(declare-fun t!3299 () Bool)

(declare-fun tb!2959 () Bool)

(assert (=> (and start!2302 (= f!539 f!539) t!3299) tb!2959))

(declare-fun result!3011 () Bool)

(assert (=> tb!2959 (= result!3011 true)))

(assert (=> b!11528 t!3299))

(declare-fun b_and!5583 () Bool)

(assert (= b_and!5579 (and (=> t!3299 result!3011) b_and!5583)))

(declare-fun t!3301 () Bool)

(declare-fun tb!2961 () Bool)

(assert (=> (and start!2302 (= f!583 f!539) t!3301) tb!2961))

(declare-fun result!3013 () Bool)

(assert (=> tb!2961 (= result!3013 true)))

(assert (=> b!11528 t!3301))

(declare-fun b_and!5585 () Bool)

(assert (= b_and!5581 (and (=> t!3301 result!3013) b_and!5585)))

(declare-fun m!14433 () Bool)

(assert (=> b!11528 m!14433))

(assert (=> b!11528 m!14433))

(declare-fun m!14435 () Bool)

(assert (=> b!11528 m!14435))

(assert (=> b!11505 d!8879))

(assert (=> b!11505 d!8871))

(declare-fun d!8881 () Bool)

(assert (=> d!8881 (= (isEmpty!203 thiss!799) (is-Nil!273 thiss!799))))

(assert (=> b!11508 d!8881))

(declare-fun d!8883 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!8883 (= trivial!1 true)))

(assert (=> b!11503 d!8883))

(declare-fun d!8885 () Bool)

(assert (=> d!8885 (= (isEmpty!203 xs!292) (is-Nil!273 xs!292))))

(assert (=> start!2302 d!8885))

(declare-fun d!8887 () Bool)

(declare-fun res!4229 () Bool)

(declare-fun e!6456 () Bool)

(assert (=> d!8887 (=> (not res!4229) (not e!6456))))

(declare-fun dynLambda!442 (Int) Balance!311)

(assert (=> d!8887 (= res!4229 (= (dynLambda!442 (x!6523 thiss!743)) (dynLambda!442 (y!637 thiss!743))))))

(assert (=> d!8887 (= (inv!382 thiss!743) e!6456)))

(declare-fun b!11531 () Bool)

(assert (=> b!11531 (= e!6456 (dynLambda!440 (evidence!188 thiss!743)))))

(assert (= (and d!8887 res!4229) b!11531))

(declare-fun b_lambda!5993 () Bool)

(assert (=> (not b_lambda!5993) (not d!8887)))

(declare-fun t!3303 () Bool)

(declare-fun tb!2963 () Bool)

(assert (=> (and b!11504 (= (x!6523 thiss!743) (x!6523 thiss!743)) t!3303) tb!2963))

(declare-fun result!3015 () Bool)

(assert (=> tb!2963 (= result!3015 true)))

(assert (=> d!8887 t!3303))

(declare-fun b_and!5587 () Bool)

(assert (= b_and!5565 (and (=> t!3303 result!3015) b_and!5587)))

(declare-fun t!3305 () Bool)

(declare-fun tb!2965 () Bool)

(assert (=> (and b!11504 (= (y!637 thiss!743) (x!6523 thiss!743)) t!3305) tb!2965))

(declare-fun result!3017 () Bool)

(assert (=> tb!2965 (= result!3017 true)))

(assert (=> d!8887 t!3305))

(declare-fun b_and!5589 () Bool)

(assert (= b_and!5567 (and (=> t!3305 result!3017) b_and!5589)))

(declare-fun b_lambda!5995 () Bool)

(assert (=> (not b_lambda!5995) (not d!8887)))

(declare-fun t!3307 () Bool)

(declare-fun tb!2967 () Bool)

(assert (=> (and b!11504 (= (x!6523 thiss!743) (y!637 thiss!743)) t!3307) tb!2967))

(declare-fun result!3019 () Bool)

(assert (=> tb!2967 (= result!3019 true)))

(assert (=> d!8887 t!3307))

(declare-fun b_and!5591 () Bool)

(assert (= b_and!5587 (and (=> t!3307 result!3019) b_and!5591)))

(declare-fun t!3309 () Bool)

(declare-fun tb!2969 () Bool)

(assert (=> (and b!11504 (= (y!637 thiss!743) (y!637 thiss!743)) t!3309) tb!2969))

(declare-fun result!3021 () Bool)

(assert (=> tb!2969 (= result!3021 true)))

(assert (=> d!8887 t!3309))

(declare-fun b_and!5593 () Bool)

(assert (= b_and!5589 (and (=> t!3309 result!3021) b_and!5593)))

(declare-fun b_lambda!5997 () Bool)

(assert (=> (not b_lambda!5997) (not b!11531)))

(declare-fun t!3311 () Bool)

(declare-fun tb!2971 () Bool)

(assert (=> (and b!11504 (= (evidence!188 thiss!743) (evidence!188 thiss!743)) t!3311) tb!2971))

(declare-fun result!3023 () Bool)

(assert (=> tb!2971 (= result!3023 true)))

(assert (=> b!11531 t!3311))

(declare-fun b_and!5595 () Bool)

(assert (= b_and!5569 (and (=> t!3311 result!3023) b_and!5595)))

(declare-fun m!14437 () Bool)

(assert (=> d!8887 m!14437))

(declare-fun m!14439 () Bool)

(assert (=> d!8887 m!14439))

(declare-fun m!14441 () Bool)

(assert (=> b!11531 m!14441))

(assert (=> start!2302 d!8887))

(declare-fun b_lambda!5999 () Bool)

(assert (= b_lambda!5991 (or (and b!11502 (= lambda!3071 f!539)) (and start!2302 b_free!1577) (and start!2302 b_free!1579 (= f!583 f!539)) b_lambda!5999)))

(declare-fun bs!2941 () Bool)

(declare-fun d!8889 () Bool)

(assert (= bs!2941 (and d!8889 b!11502)))

(assert (=> bs!2941 (= (dynLambda!441 lambda!3071 (head!490 (append!124 xs!292 ys!54)) (foldRight1!105 (tail!502 (append!124 xs!292 ys!54)) f!539)) (++!3 (head!490 (append!124 xs!292 ys!54)) (foldRight1!105 (tail!502 (append!124 xs!292 ys!54)) f!539)))))

(assert (=> bs!2941 m!14433))

(declare-fun m!14443 () Bool)

(assert (=> bs!2941 m!14443))

(assert (=> (and b!11502 (= lambda!3071 f!539) b!11528) d!8889))

(declare-fun b_lambda!6001 () Bool)

(assert (= b_lambda!5995 (or (and b!11503 (= lambda!3072 (y!637 thiss!743))) (and b!11503 (= lambda!3073 (y!637 thiss!743))) (and b!11504 b_free!1581 (= (x!6523 thiss!743) (y!637 thiss!743))) (and b!11504 b_free!1583) b_lambda!6001)))

(declare-fun bs!2942 () Bool)

(declare-fun d!8891 () Bool)

(assert (= bs!2942 (and d!8891 b!11503)))

(assert (=> bs!2942 (= (dynLambda!442 lambda!3072) (dynLambda!441 f!539 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)))))

(declare-fun b_lambda!6011 () Bool)

(assert (=> (not b_lambda!6011) (not bs!2942)))

(assert (=> bs!2942 t!3287))

(declare-fun b_and!5597 () Bool)

(assert (= b_and!5583 (and (=> t!3287 result!2999) b_and!5597)))

(assert (=> bs!2942 t!3289))

(declare-fun b_and!5599 () Bool)

(assert (= b_and!5585 (and (=> t!3289 result!3001) b_and!5599)))

(assert (=> bs!2942 m!14403))

(assert (=> bs!2942 m!14405))

(assert (=> bs!2942 m!14403))

(assert (=> bs!2942 m!14405))

(assert (=> bs!2942 m!14407))

(assert (=> (and b!11503 (= lambda!3072 (y!637 thiss!743)) d!8887) d!8891))

(declare-fun bs!2943 () Bool)

(declare-fun d!8893 () Bool)

(assert (= bs!2943 (and d!8893 b!11503)))

(assert (=> bs!2943 (= (dynLambda!442 lambda!3073) (foldRight1!105 (Cons!272 (head!490 xs!292) (append!124 (tail!502 xs!292) ys!54)) f!539))))

(assert (=> bs!2943 m!14421))

(declare-fun m!14445 () Bool)

(assert (=> bs!2943 m!14445))

(assert (=> (and b!11503 (= lambda!3073 (y!637 thiss!743)) d!8887) d!8893))

(declare-fun b_lambda!6003 () Bool)

(assert (= b_lambda!5989 (or (and b!11502 (= lambda!3071 f!539)) (and start!2302 b_free!1577) (and start!2302 b_free!1579 (= f!583 f!539)) b_lambda!6003)))

(declare-fun bs!2944 () Bool)

(declare-fun d!8895 () Bool)

(assert (= bs!2944 (and d!8895 b!11502)))

(assert (=> bs!2944 (= (dynLambda!441 lambda!3071 (head!490 ys!54) (foldRight1!105 (tail!502 ys!54) f!539)) (++!3 (head!490 ys!54) (foldRight1!105 (tail!502 ys!54) f!539)))))

(assert (=> bs!2944 m!14429))

(declare-fun m!14447 () Bool)

(assert (=> bs!2944 m!14447))

(assert (=> (and b!11502 (= lambda!3071 f!539) b!11526) d!8895))

(declare-fun b_lambda!6005 () Bool)

(assert (= b_lambda!5993 (or (and b!11503 (= lambda!3072 (x!6523 thiss!743))) (and b!11503 (= lambda!3073 (x!6523 thiss!743))) (and b!11504 b_free!1581) (and b!11504 b_free!1583 (= (y!637 thiss!743) (x!6523 thiss!743))) b_lambda!6005)))

(declare-fun bs!2945 () Bool)

(declare-fun d!8897 () Bool)

(assert (= bs!2945 (and d!8897 b!11503)))

(assert (=> bs!2945 (= (dynLambda!442 lambda!3072) (dynLambda!441 f!539 (foldRight1!105 xs!292 f!539) (foldRight1!105 ys!54 f!539)))))

(declare-fun b_lambda!6013 () Bool)

(assert (=> (not b_lambda!6013) (not bs!2945)))

(assert (=> bs!2945 t!3287))

(declare-fun b_and!5601 () Bool)

(assert (= b_and!5597 (and (=> t!3287 result!2999) b_and!5601)))

(assert (=> bs!2945 t!3289))

(declare-fun b_and!5603 () Bool)

(assert (= b_and!5599 (and (=> t!3289 result!3001) b_and!5603)))

(assert (=> bs!2945 m!14403))

(assert (=> bs!2945 m!14405))

(assert (=> bs!2945 m!14403))

(assert (=> bs!2945 m!14405))

(assert (=> bs!2945 m!14407))

(assert (=> (and b!11503 (= lambda!3072 (x!6523 thiss!743)) d!8887) d!8897))

(declare-fun bs!2946 () Bool)

(declare-fun d!8899 () Bool)

(assert (= bs!2946 (and d!8899 b!11503)))

(assert (=> bs!2946 (= (dynLambda!442 lambda!3073) (foldRight1!105 (Cons!272 (head!490 xs!292) (append!124 (tail!502 xs!292) ys!54)) f!539))))

(assert (=> bs!2946 m!14421))

(assert (=> bs!2946 m!14445))

(assert (=> (and b!11503 (= lambda!3073 (x!6523 thiss!743)) d!8887) d!8899))

(declare-fun b_lambda!6007 () Bool)

(assert (= b_lambda!5997 (or (and b!11503 (= lambda!3074 (evidence!188 thiss!743))) (and b!11504 b_free!1585) b_lambda!6007)))

(declare-fun bs!2947 () Bool)

(declare-fun d!8901 () Bool)

(assert (= bs!2947 (and d!8901 b!11503)))

(assert (=> bs!2947 (= (dynLambda!440 lambda!3074) trivial!1)))

(assert (=> (and b!11503 (= lambda!3074 (evidence!188 thiss!743)) b!11531) d!8901))

(declare-fun b_lambda!6009 () Bool)

(assert (= b_lambda!5987 (or (and b!11502 (= lambda!3071 f!539)) (and start!2302 b_free!1577) (and start!2302 b_free!1579 (= f!583 f!539)) b_lambda!6009)))

(declare-fun bs!2948 () Bool)

(declare-fun d!8903 () Bool)

(assert (= bs!2948 (and d!8903 b!11502)))

(assert (=> bs!2948 (= (dynLambda!441 lambda!3071 (head!490 xs!292) (foldRight1!105 (tail!502 xs!292) f!539)) (++!3 (head!490 xs!292) (foldRight1!105 (tail!502 xs!292) f!539)))))

(assert (=> bs!2948 m!14425))

(declare-fun m!14449 () Bool)

(assert (=> bs!2948 m!14449))

(assert (=> (and b!11502 (= lambda!3071 f!539) b!11524) d!8903))

(push 1)

(assert (not b_lambda!5999))

(assert b_and!5601)

(assert (not b_next!3821))

(assert (not bs!2942))

(assert (not b!11524))

(assert b_and!5603)

(assert (not b_lambda!6011))

(assert (not b_lambda!6003))

(assert (not b_lambda!6005))

(assert (not b_next!3827))

(assert b_and!5591)

(assert (not b!11528))

(assert (not bs!2946))

(assert (not b_lambda!5985))

(assert b_and!5595)

(assert (not b_lambda!6013))

(assert (not bs!2948))

(assert (not bs!2943))

(assert (not b_next!3831))

(assert (not bs!2944))

(assert (not b_lambda!6007))

(assert (not b!11518))

(assert (not b!11526))

(assert (not b_next!3819))

(assert (not bs!2945))

(assert b_and!5593)

(assert (not bs!2941))

(assert (not b_lambda!6009))

(assert (not b_next!3829))

(assert (not b_lambda!6001))

(assert (not d!8873))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5601)

(assert (not b_next!3821))

(assert b_and!5603)

(assert (not b_next!3827))

(assert b_and!5591)

(assert b_and!5595)

(assert (not b_next!3831))

(assert (not b_next!3819))

(assert b_and!5593)

(assert (not b_next!3829))

(check-sat)

(pop 1)

