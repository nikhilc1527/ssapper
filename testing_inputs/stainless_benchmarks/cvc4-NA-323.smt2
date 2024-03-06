; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2454 () Bool)

(assert start!2454)

(declare-fun b_free!1863 () Bool)

(declare-fun b_next!4397 () Bool)

(assert (=> start!2454 (= b_free!1863 (not b_next!4397))))

(declare-fun tp!2965 () Bool)

(declare-fun b_and!6487 () Bool)

(assert (=> start!2454 (= tp!2965 b_and!6487)))

(declare-fun b_free!1865 () Bool)

(declare-fun b_next!4399 () Bool)

(assert (=> start!2454 (= b_free!1865 (not b_next!4399))))

(declare-fun tp!2962 () Bool)

(declare-fun b_and!6489 () Bool)

(assert (=> start!2454 (= tp!2962 b_and!6489)))

(declare-fun b!12210 () Bool)

(declare-fun b_free!1867 () Bool)

(declare-fun b_next!4401 () Bool)

(assert (=> b!12210 (= b_free!1867 (not b_next!4401))))

(declare-fun tp!2966 () Bool)

(declare-fun b_and!6491 () Bool)

(assert (=> b!12210 (= tp!2966 b_and!6491)))

(declare-fun b_free!1869 () Bool)

(declare-fun b_next!4403 () Bool)

(assert (=> b!12210 (= b_free!1869 (not b_next!4403))))

(declare-fun tp!2963 () Bool)

(declare-fun b_and!6493 () Bool)

(assert (=> b!12210 (= tp!2963 b_and!6493)))

(declare-fun b!12213 () Bool)

(declare-fun b_free!1871 () Bool)

(declare-fun b_next!4405 () Bool)

(assert (=> b!12213 (= b_free!1871 (not b_next!4405))))

(declare-fun tp!2968 () Bool)

(declare-fun b_and!6495 () Bool)

(assert (=> b!12213 (= tp!2968 b_and!6495)))

(declare-fun b_free!1873 () Bool)

(declare-fun b_next!4407 () Bool)

(assert (=> b!12213 (= b_free!1873 (not b_next!4407))))

(declare-fun tp!2964 () Bool)

(declare-fun b_and!6497 () Bool)

(assert (=> b!12213 (= tp!2964 b_and!6497)))

(declare-fun b_free!1875 () Bool)

(declare-fun b_next!4409 () Bool)

(assert (=> b!12213 (= b_free!1875 (not b_next!4409))))

(declare-fun tp!2967 () Bool)

(declare-fun b_and!6499 () Bool)

(assert (=> b!12213 (= tp!2967 b_and!6499)))

(declare-fun f!539 () Int)

(declare-fun b!12208 () Bool)

(declare-fun lambda!3313 () Int)

(declare-fun b_next!4411 () Bool)

(assert (=> start!2454 (= b_next!4397 (or (and b!12208 (= lambda!3313 f!539)) b_next!4411))))

(declare-fun b!12215 () Bool)

(assert (=> b!12215 true))

(declare-fun order!321 () Int)

(declare-fun lambda!3314 () Int)

(declare-fun order!323 () Int)

(declare-fun dynLambda!516 (Int Int) Int)

(declare-fun dynLambda!517 (Int Int) Int)

(assert (=> b!12215 (< (dynLambda!516 order!321 f!539) (dynLambda!517 order!323 lambda!3314))))

(assert (=> b!12215 true))

(assert (=> b!12215 true))

(declare-datatypes () ((Balance!355 (Balance!356 (extraOpen!218 Int) (extraClose!218 Int)))))

(declare-datatypes () ((EqProof!132 (EqProof!133 (x!7047 Int) (y!666 Int)))))

(declare-fun thiss!789 () EqProof!132)

(declare-fun b_next!4413 () Bool)

(assert (=> b!12210 (= b_next!4401 (or (and b!12215 (= lambda!3314 (x!7047 thiss!789))) b_next!4413))))

(declare-fun b_next!4415 () Bool)

(assert (=> b!12210 (= b_next!4403 (or (and b!12215 (= lambda!3314 (y!666 thiss!789))) b_next!4415))))

(declare-datatypes () ((EqEvidence!282 (EqEvidence!283 (x!7048 Int) (y!667 Int) (evidence!208 Int)))))

(declare-fun thiss!745 () EqEvidence!282)

(declare-fun b_next!4417 () Bool)

(assert (=> b!12213 (= b_next!4405 (or (and b!12215 (= lambda!3314 (x!7048 thiss!745))) b_next!4417))))

(declare-fun b_next!4419 () Bool)

(assert (=> b!12213 (= b_next!4407 (or (and b!12215 (= lambda!3314 (y!667 thiss!745))) b_next!4419))))

(declare-fun lambda!3315 () Int)

(assert (=> b!12215 (not (= lambda!3315 lambda!3314))))

(assert (=> b!12215 true))

(assert (=> b!12215 (< (dynLambda!516 order!321 f!539) (dynLambda!517 order!323 lambda!3315))))

(assert (=> b!12215 true))

(assert (=> b!12215 true))

(declare-fun b_next!4421 () Bool)

(assert (=> b!12210 (= b_next!4413 (or (and b!12215 (= lambda!3315 (x!7047 thiss!789))) b_next!4421))))

(declare-fun b_next!4423 () Bool)

(assert (=> b!12210 (= b_next!4415 (or (and b!12215 (= lambda!3315 (y!666 thiss!789))) b_next!4423))))

(declare-fun b_next!4425 () Bool)

(assert (=> b!12213 (= b_next!4417 (or (and b!12215 (= lambda!3315 (x!7048 thiss!745))) b_next!4425))))

(declare-fun b_next!4427 () Bool)

(assert (=> b!12213 (= b_next!4419 (or (and b!12215 (= lambda!3315 (y!667 thiss!745))) b_next!4427))))

(assert (=> b!12215 true))

(assert (=> b!12215 true))

(declare-fun b_next!4429 () Bool)

(declare-fun lambda!3316 () Int)

(declare-fun proof!220 () Int)

(assert (=> start!2454 (= b_next!4399 (or (and b!12215 (= lambda!3316 proof!220)) b_next!4429))))

(declare-fun b_next!4431 () Bool)

(assert (=> b!12213 (= b_next!4409 (or (and b!12215 (= lambda!3316 (evidence!208 thiss!745))) b_next!4431))))

(declare-fun bs!3174 () Bool)

(declare-fun b!12212 () Bool)

(assert (= bs!3174 (and b!12212 b!12215)))

(declare-fun lambda!3317 () Int)

(assert (=> bs!3174 (not (= lambda!3317 lambda!3314))))

(assert (=> bs!3174 (not (= lambda!3317 lambda!3315))))

(assert (=> b!12212 true))

(assert (=> b!12212 (< (dynLambda!516 order!321 f!539) (dynLambda!517 order!323 lambda!3317))))

(assert (=> b!12212 true))

(assert (=> b!12212 true))

(declare-fun b_next!4433 () Bool)

(assert (=> b!12210 (= b_next!4421 (or (and b!12212 (= lambda!3317 (x!7047 thiss!789))) b_next!4433))))

(declare-fun b_next!4435 () Bool)

(assert (=> b!12210 (= b_next!4423 (or (and b!12212 (= lambda!3317 (y!666 thiss!789))) b_next!4435))))

(declare-fun b_next!4437 () Bool)

(assert (=> b!12213 (= b_next!4425 (or (and b!12212 (= lambda!3317 (x!7048 thiss!745))) b_next!4437))))

(declare-fun b_next!4439 () Bool)

(assert (=> b!12213 (= b_next!4427 (or (and b!12212 (= lambda!3317 (y!667 thiss!745))) b_next!4439))))

(declare-fun b!12216 () Bool)

(declare-fun m!15155 () Bool)

(assert (=> b!12216 m!15155))

(declare-fun bs!3175 () Bool)

(assert (= bs!3175 (and b!12216 b!12215)))

(declare-fun lambda!3318 () Int)

(assert (=> bs!3175 (not (= lambda!3318 lambda!3316))))

(declare-fun dynLambda!518 (Int) Bool)

(assert (=> (and start!2454 b!12216 (= (dynLambda!518 lambda!3318) (dynLambda!518 proof!220))) (= lambda!3318 proof!220)))

(assert (=> (and b!12213 b!12216 (= (dynLambda!518 lambda!3318) (dynLambda!518 (evidence!208 thiss!745)))) (= lambda!3318 (evidence!208 thiss!745))))

(declare-fun b_next!4441 () Bool)

(assert (=> start!2454 (= b_next!4429 (or (and b!12216 (= lambda!3318 proof!220)) b_next!4441))))

(declare-fun b_next!4443 () Bool)

(assert (=> b!12213 (= b_next!4431 (or (and b!12216 (= lambda!3318 (evidence!208 thiss!745))) b_next!4443))))

(declare-fun res!4547 () Bool)

(declare-fun e!6717 () Bool)

(assert (=> start!2454 (=> (not res!4547) (not e!6717))))

(declare-datatypes () ((List!287 (Nil!285) (Cons!284 (head!502 Balance!355) (tail!514 List!287)))))

(declare-fun xs!292 () List!287)

(declare-fun isEmpty!215 (List!287) Bool)

(assert (=> start!2454 (= res!4547 (not (isEmpty!215 xs!292)))))

(assert (=> start!2454 e!6717))

(assert (=> start!2454 tp!2965))

(declare-fun e!6716 () Bool)

(declare-fun inv!411 (EqProof!132) Bool)

(assert (=> start!2454 (and (inv!411 thiss!789) e!6716)))

(assert (=> start!2454 tp!2962))

(assert (=> start!2454 true))

(declare-fun e!6715 () Bool)

(declare-fun inv!412 (EqEvidence!282) Bool)

(assert (=> start!2454 (and (inv!412 thiss!745) e!6715)))

(declare-fun res!4546 () Bool)

(assert (=> b!12208 (=> (not res!4546) (not e!6717))))

(assert (=> b!12208 (= res!4546 (= f!539 lambda!3313))))

(declare-fun b!12209 () Bool)

(declare-fun res!4543 () Bool)

(assert (=> b!12209 (=> (not res!4543) (not e!6717))))

(assert (=> b!12209 (= res!4543 (or (not (is-Cons!284 xs!292)) (not (is-Nil!285 (tail!514 xs!292)))))))

(assert (=> b!12210 (= e!6716 (and tp!2966 tp!2963))))

(declare-fun b!12211 () Bool)

(assert (=> b!12211 (= e!6717 (not (dynLambda!518 proof!220)))))

(declare-fun res!4544 () Bool)

(assert (=> b!12212 (=> (not res!4544) (not e!6717))))

(assert (=> b!12212 (= res!4544 (= thiss!789 (EqProof!133 lambda!3317 lambda!3317)))))

(assert (=> b!12213 (= e!6715 (and tp!2968 tp!2964 tp!2967))))

(declare-fun b!12214 () Bool)

(declare-fun res!4548 () Bool)

(assert (=> b!12214 (=> (not res!4548) (not e!6717))))

(declare-fun ys!54 () List!287)

(declare-datatypes () ((ProofOps!274 (ProofOps!275 (prop!272 Bool)))))

(declare-fun thiss!710 () ProofOps!274)

(declare-fun dynLambda!519 (Int Balance!355 Balance!355) Balance!355)

(declare-fun foldRight1!117 (List!287 Int) Balance!355)

(declare-fun append!136 (List!287 List!287) List!287)

(assert (=> b!12214 (= res!4548 (= thiss!710 (ProofOps!275 (= (dynLambda!519 f!539 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)) (foldRight1!117 (append!136 xs!292 ys!54) f!539)))))))

(declare-fun res!4549 () Bool)

(assert (=> b!12215 (=> (not res!4549) (not e!6717))))

(assert (=> b!12215 (= res!4549 (= thiss!745 (EqEvidence!283 lambda!3314 lambda!3315 lambda!3316)))))

(declare-fun res!4542 () Bool)

(assert (=> b!12216 (=> (not res!4542) (not e!6717))))

(assert (=> b!12216 (= res!4542 (= proof!220 lambda!3318))))

(declare-fun b!12217 () Bool)

(declare-fun res!4545 () Bool)

(assert (=> b!12217 (=> (not res!4545) (not e!6717))))

(assert (=> b!12217 (= res!4545 (not (isEmpty!215 ys!54)))))

(assert (= (and start!2454 res!4547) b!12217))

(assert (= (and b!12217 res!4545) b!12208))

(assert (= (and b!12208 res!4546) b!12214))

(assert (= (and b!12214 res!4548) b!12209))

(assert (= (and b!12209 res!4543) b!12215))

(assert (= (and b!12215 res!4549) b!12212))

(assert (= (and b!12212 res!4544) b!12216))

(assert (= (and b!12216 res!4542) b!12211))

(assert (= start!2454 b!12210))

(assert (= start!2454 b!12213))

(declare-fun b_lambda!6713 () Bool)

(assert (=> (not b_lambda!6713) (not b!12211)))

(declare-fun t!3741 () Bool)

(declare-fun tb!3401 () Bool)

(assert (=> (and start!2454 (= proof!220 proof!220) t!3741) tb!3401))

(declare-fun result!3453 () Bool)

(assert (=> tb!3401 (= result!3453 true)))

(assert (=> b!12211 t!3741))

(declare-fun b_and!6501 () Bool)

(assert (= b_and!6489 (and (=> t!3741 result!3453) b_and!6501)))

(declare-fun t!3743 () Bool)

(declare-fun tb!3403 () Bool)

(assert (=> (and b!12213 (= (evidence!208 thiss!745) proof!220) t!3743) tb!3403))

(declare-fun result!3455 () Bool)

(assert (=> tb!3403 (= result!3455 true)))

(assert (=> b!12211 t!3743))

(declare-fun b_and!6503 () Bool)

(assert (= b_and!6499 (and (=> t!3743 result!3455) b_and!6503)))

(declare-fun b_lambda!6715 () Bool)

(assert (=> (not b_lambda!6715) (not b!12214)))

(declare-fun t!3745 () Bool)

(declare-fun tb!3405 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3745) tb!3405))

(declare-fun result!3457 () Bool)

(assert (=> tb!3405 (= result!3457 true)))

(assert (=> b!12214 t!3745))

(declare-fun b_and!6505 () Bool)

(assert (= b_and!6487 (and (=> t!3745 result!3457) b_and!6505)))

(declare-fun m!15157 () Bool)

(assert (=> start!2454 m!15157))

(declare-fun m!15159 () Bool)

(assert (=> start!2454 m!15159))

(declare-fun m!15161 () Bool)

(assert (=> start!2454 m!15161))

(declare-fun m!15163 () Bool)

(assert (=> b!12211 m!15163))

(declare-fun m!15165 () Bool)

(assert (=> b!12214 m!15165))

(declare-fun m!15167 () Bool)

(assert (=> b!12214 m!15167))

(declare-fun m!15169 () Bool)

(assert (=> b!12214 m!15169))

(assert (=> b!12214 m!15167))

(assert (=> b!12214 m!15169))

(declare-fun m!15171 () Bool)

(assert (=> b!12214 m!15171))

(assert (=> b!12214 m!15165))

(declare-fun m!15173 () Bool)

(assert (=> b!12214 m!15173))

(declare-fun m!15175 () Bool)

(assert (=> b!12217 m!15175))

(push 1)

(assert (not start!2454))

(assert (not b_next!4411))

(assert b_and!6503)

(assert (not b_lambda!6713))

(assert b_and!6493)

(assert b_and!6505)

(assert (not b!12216))

(assert (not b_next!4435))

(assert (not b!12217))

(assert (not b_next!4439))

(assert b_and!6495)

(assert (not b_next!4441))

(assert (not b_next!4437))

(assert b_and!6491)

(assert b_and!6497)

(assert (not b_lambda!6715))

(assert (not b_next!4443))

(assert b_and!6501)

(assert (not b!12214))

(assert (not b_next!4433))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4411))

(assert b_and!6503)

(assert b_and!6493)

(assert b_and!6505)

(assert (not b_next!4435))

(assert (not b_next!4439))

(assert b_and!6495)

(assert (not b_next!4441))

(assert (not b_next!4437))

(assert b_and!6491)

(assert b_and!6497)

(assert (not b_next!4443))

(assert b_and!6501)

(assert (not b_next!4433))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6717 () Bool)

(assert (= b_lambda!6715 (or (and b!12208 (= lambda!3313 f!539)) (and start!2454 b_free!1863) b_lambda!6717)))

(declare-fun bs!3176 () Bool)

(declare-fun d!9435 () Bool)

(assert (= bs!3176 (and d!9435 b!12208)))

(declare-fun ++!3 (Balance!355 Balance!355) Balance!355)

(assert (=> bs!3176 (= (dynLambda!519 lambda!3313 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)) (++!3 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)))))

(assert (=> bs!3176 m!15167))

(assert (=> bs!3176 m!15169))

(declare-fun m!15177 () Bool)

(assert (=> bs!3176 m!15177))

(assert (=> (and b!12208 (= lambda!3313 f!539) b!12214) d!9435))

(declare-fun b_lambda!6719 () Bool)

(assert (= b_lambda!6713 (or (and b!12215 (= lambda!3316 proof!220)) (and b!12216 (= lambda!3318 proof!220)) (and start!2454 b_free!1865) (and b!12213 b_free!1875 (= (evidence!208 thiss!745) proof!220)) b_lambda!6719)))

(declare-fun bs!3177 () Bool)

(declare-fun d!9437 () Bool)

(assert (= bs!3177 (and d!9437 b!12215)))

(declare-fun append!24 (List!287 List!287) Bool)

(assert (=> bs!3177 (= (dynLambda!518 lambda!3316) (append!24 (tail!514 xs!292) ys!54))))

(declare-fun m!15179 () Bool)

(assert (=> bs!3177 m!15179))

(assert (=> (and b!12215 (= lambda!3316 proof!220) b!12211) d!9437))

(declare-fun bs!3178 () Bool)

(declare-fun d!9439 () Bool)

(assert (= bs!3178 (and d!9439 b!12216)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3178 (= (dynLambda!518 lambda!3318) trivial!1)))

(assert (=> (and b!12216 (= lambda!3318 proof!220) b!12211) d!9439))

(push 1)

(assert (not start!2454))

(assert (not b_next!4411))

(assert b_and!6503)

(assert b_and!6493)

(assert b_and!6505)

(assert (not b!12216))

(assert (not b_next!4435))

(assert (not bs!3177))

(assert (not b!12217))

(assert (not b_next!4439))

(assert b_and!6495)

(assert (not b_next!4441))

(assert (not b_next!4437))

(assert (not b_lambda!6717))

(assert b_and!6491)

(assert b_and!6497)

(assert (not b_next!4443))

(assert b_and!6501)

(assert (not b!12214))

(assert (not b_next!4433))

(assert (not bs!3176))

(assert (not b_lambda!6719))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4411))

(assert b_and!6503)

(assert b_and!6493)

(assert b_and!6505)

(assert (not b_next!4435))

(assert (not b_next!4439))

(assert b_and!6495)

(assert (not b_next!4441))

(assert (not b_next!4437))

(assert b_and!6491)

(assert b_and!6497)

(assert (not b_next!4443))

(assert b_and!6501)

(assert (not b_next!4433))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9441 () Bool)

(declare-fun c!3475 () Bool)

(assert (=> d!9441 (= c!3475 (and (is-Cons!284 xs!292) (is-Nil!285 (tail!514 xs!292))))))

(declare-fun e!6720 () Balance!355)

(assert (=> d!9441 (= (foldRight1!117 xs!292 f!539) e!6720)))

(declare-fun b!12228 () Bool)

(assert (=> b!12228 (= e!6720 (head!502 xs!292))))

(declare-fun b!12229 () Bool)

(assert (=> b!12229 (= e!6720 (dynLambda!519 f!539 (head!502 xs!292) (foldRight1!117 (tail!514 xs!292) f!539)))))

(assert (= (and d!9441 c!3475) b!12228))

(assert (= (and d!9441 (not c!3475)) b!12229))

(declare-fun b_lambda!6721 () Bool)

(assert (=> (not b_lambda!6721) (not b!12229)))

(declare-fun t!3747 () Bool)

(declare-fun tb!3407 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3747) tb!3407))

(declare-fun result!3459 () Bool)

(assert (=> tb!3407 (= result!3459 true)))

(assert (=> b!12229 t!3747))

(declare-fun b_and!6507 () Bool)

(assert (= b_and!6505 (and (=> t!3747 result!3459) b_and!6507)))

(declare-fun m!15181 () Bool)

(assert (=> b!12229 m!15181))

(assert (=> b!12229 m!15181))

(declare-fun m!15183 () Bool)

(assert (=> b!12229 m!15183))

(assert (=> b!12214 d!9441))

(declare-fun d!9443 () Bool)

(declare-fun c!3476 () Bool)

(assert (=> d!9443 (= c!3476 (and (is-Cons!284 ys!54) (is-Nil!285 (tail!514 ys!54))))))

(declare-fun e!6721 () Balance!355)

(assert (=> d!9443 (= (foldRight1!117 ys!54 f!539) e!6721)))

(declare-fun b!12230 () Bool)

(assert (=> b!12230 (= e!6721 (head!502 ys!54))))

(declare-fun b!12231 () Bool)

(assert (=> b!12231 (= e!6721 (dynLambda!519 f!539 (head!502 ys!54) (foldRight1!117 (tail!514 ys!54) f!539)))))

(assert (= (and d!9443 c!3476) b!12230))

(assert (= (and d!9443 (not c!3476)) b!12231))

(declare-fun b_lambda!6723 () Bool)

(assert (=> (not b_lambda!6723) (not b!12231)))

(declare-fun t!3749 () Bool)

(declare-fun tb!3409 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3749) tb!3409))

(declare-fun result!3461 () Bool)

(assert (=> tb!3409 (= result!3461 true)))

(assert (=> b!12231 t!3749))

(declare-fun b_and!6509 () Bool)

(assert (= b_and!6507 (and (=> t!3749 result!3461) b_and!6509)))

(declare-fun m!15185 () Bool)

(assert (=> b!12231 m!15185))

(assert (=> b!12231 m!15185))

(declare-fun m!15187 () Bool)

(assert (=> b!12231 m!15187))

(assert (=> b!12214 d!9443))

(declare-fun d!9445 () Bool)

(declare-fun c!3477 () Bool)

(assert (=> d!9445 (= c!3477 (and (is-Cons!284 (append!136 xs!292 ys!54)) (is-Nil!285 (tail!514 (append!136 xs!292 ys!54)))))))

(declare-fun e!6722 () Balance!355)

(assert (=> d!9445 (= (foldRight1!117 (append!136 xs!292 ys!54) f!539) e!6722)))

(declare-fun b!12232 () Bool)

(assert (=> b!12232 (= e!6722 (head!502 (append!136 xs!292 ys!54)))))

(declare-fun b!12233 () Bool)

(assert (=> b!12233 (= e!6722 (dynLambda!519 f!539 (head!502 (append!136 xs!292 ys!54)) (foldRight1!117 (tail!514 (append!136 xs!292 ys!54)) f!539)))))

(assert (= (and d!9445 c!3477) b!12232))

(assert (= (and d!9445 (not c!3477)) b!12233))

(declare-fun b_lambda!6725 () Bool)

(assert (=> (not b_lambda!6725) (not b!12233)))

(declare-fun t!3751 () Bool)

(declare-fun tb!3411 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3751) tb!3411))

(declare-fun result!3463 () Bool)

(assert (=> tb!3411 (= result!3463 true)))

(assert (=> b!12233 t!3751))

(declare-fun b_and!6511 () Bool)

(assert (= b_and!6509 (and (=> t!3751 result!3463) b_and!6511)))

(declare-fun m!15189 () Bool)

(assert (=> b!12233 m!15189))

(assert (=> b!12233 m!15189))

(declare-fun m!15191 () Bool)

(assert (=> b!12233 m!15191))

(assert (=> b!12214 d!9445))

(declare-fun d!9447 () Bool)

(declare-fun c!3480 () Bool)

(assert (=> d!9447 (= c!3480 (is-Nil!285 xs!292))))

(declare-fun e!6725 () List!287)

(assert (=> d!9447 (= (append!136 xs!292 ys!54) e!6725)))

(declare-fun b!12238 () Bool)

(assert (=> b!12238 (= e!6725 ys!54)))

(declare-fun b!12239 () Bool)

(assert (=> b!12239 (= e!6725 (Cons!284 (head!502 xs!292) (append!136 (tail!514 xs!292) ys!54)))))

(assert (= (and d!9447 c!3480) b!12238))

(assert (= (and d!9447 (not c!3480)) b!12239))

(declare-fun m!15193 () Bool)

(assert (=> b!12239 m!15193))

(assert (=> b!12214 d!9447))

(declare-fun d!9449 () Bool)

(declare-fun lt!1797 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9449 (= lt!1797 (min!4 (extraOpen!218 (foldRight1!117 xs!292 f!539)) (extraClose!218 (foldRight1!117 ys!54 f!539))))))

(assert (=> d!9449 (= (++!3 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)) (Balance!356 (- (+ (extraOpen!218 (foldRight1!117 xs!292 f!539)) (extraOpen!218 (foldRight1!117 ys!54 f!539))) lt!1797) (- (+ (extraClose!218 (foldRight1!117 xs!292 f!539)) (extraClose!218 (foldRight1!117 ys!54 f!539))) lt!1797)))))

(declare-fun bs!3179 () Bool)

(assert (= bs!3179 d!9449))

(declare-fun m!15195 () Bool)

(assert (=> bs!3179 m!15195))

(assert (=> bs!3176 d!9449))

(declare-fun bs!3180 () Bool)

(declare-fun d!9451 () Bool)

(assert (= bs!3180 (and d!9451 b!12208)))

(declare-fun lambda!3321 () Int)

(assert (=> bs!3180 (= lambda!3321 lambda!3313)))

(declare-fun b_next!4445 () Bool)

(assert (=> start!2454 (= b_next!4411 (or (and d!9451 (= lambda!3321 f!539)) b_next!4445))))

(declare-fun because!2 (ProofOps!274 Bool) Bool)

(assert (=> d!9451 (because!2 (ProofOps!275 (= (++!3 (foldRight1!117 (tail!514 xs!292) lambda!3321) (foldRight1!117 ys!54 lambda!3321)) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) lambda!3321))) true)))

(assert (=> d!9451 (= (++!3 (foldRight1!117 (tail!514 xs!292) lambda!3321) (foldRight1!117 ys!54 lambda!3321)) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) lambda!3321))))

(declare-fun e!6728 () Bool)

(assert (=> d!9451 e!6728))

(declare-fun res!4558 () Bool)

(assert (=> d!9451 (=> (not res!4558) (not e!6728))))

(assert (=> d!9451 (= res!4558 (not (isEmpty!215 (tail!514 xs!292))))))

(assert (=> d!9451 (= (append!24 (tail!514 xs!292) ys!54) true)))

(declare-fun b!12242 () Bool)

(assert (=> b!12242 (= e!6728 (not (isEmpty!215 ys!54)))))

(assert (= (and d!9451 res!4558) b!12242))

(declare-fun m!15197 () Bool)

(assert (=> d!9451 m!15197))

(assert (=> d!9451 m!15193))

(declare-fun m!15199 () Bool)

(assert (=> d!9451 m!15199))

(assert (=> d!9451 m!15193))

(declare-fun m!15201 () Bool)

(assert (=> d!9451 m!15201))

(declare-fun m!15203 () Bool)

(assert (=> d!9451 m!15203))

(assert (=> d!9451 m!15201))

(assert (=> d!9451 m!15197))

(declare-fun m!15205 () Bool)

(assert (=> d!9451 m!15205))

(declare-fun m!15207 () Bool)

(assert (=> d!9451 m!15207))

(assert (=> b!12242 m!15175))

(assert (=> bs!3177 d!9451))

(declare-fun d!9453 () Bool)

(assert (=> d!9453 (= (isEmpty!215 ys!54) (is-Nil!285 ys!54))))

(assert (=> b!12217 d!9453))

(declare-fun d!9455 () Bool)

(assert (=> d!9455 (= (isEmpty!215 xs!292) (is-Nil!285 xs!292))))

(assert (=> start!2454 d!9455))

(declare-fun d!9457 () Bool)

(declare-fun dynLambda!520 (Int) Balance!355)

(assert (=> d!9457 (= (inv!411 thiss!789) (= (dynLambda!520 (x!7047 thiss!789)) (dynLambda!520 (y!666 thiss!789))))))

(declare-fun b_lambda!6727 () Bool)

(assert (=> (not b_lambda!6727) (not d!9457)))

(declare-fun t!3753 () Bool)

(declare-fun tb!3413 () Bool)

(assert (=> (and b!12210 (= (x!7047 thiss!789) (x!7047 thiss!789)) t!3753) tb!3413))

(declare-fun result!3465 () Bool)

(assert (=> tb!3413 (= result!3465 true)))

(assert (=> d!9457 t!3753))

(declare-fun b_and!6513 () Bool)

(assert (= b_and!6491 (and (=> t!3753 result!3465) b_and!6513)))

(declare-fun t!3755 () Bool)

(declare-fun tb!3415 () Bool)

(assert (=> (and b!12210 (= (y!666 thiss!789) (x!7047 thiss!789)) t!3755) tb!3415))

(declare-fun result!3467 () Bool)

(assert (=> tb!3415 (= result!3467 true)))

(assert (=> d!9457 t!3755))

(declare-fun b_and!6515 () Bool)

(assert (= b_and!6493 (and (=> t!3755 result!3467) b_and!6515)))

(declare-fun tb!3417 () Bool)

(declare-fun t!3757 () Bool)

(assert (=> (and b!12213 (= (x!7048 thiss!745) (x!7047 thiss!789)) t!3757) tb!3417))

(declare-fun result!3469 () Bool)

(assert (=> tb!3417 (= result!3469 true)))

(assert (=> d!9457 t!3757))

(declare-fun b_and!6517 () Bool)

(assert (= b_and!6495 (and (=> t!3757 result!3469) b_and!6517)))

(declare-fun tb!3419 () Bool)

(declare-fun t!3759 () Bool)

(assert (=> (and b!12213 (= (y!667 thiss!745) (x!7047 thiss!789)) t!3759) tb!3419))

(declare-fun result!3471 () Bool)

(assert (=> tb!3419 (= result!3471 true)))

(assert (=> d!9457 t!3759))

(declare-fun b_and!6519 () Bool)

(assert (= b_and!6497 (and (=> t!3759 result!3471) b_and!6519)))

(declare-fun b_lambda!6729 () Bool)

(assert (=> (not b_lambda!6729) (not d!9457)))

(declare-fun t!3761 () Bool)

(declare-fun tb!3421 () Bool)

(assert (=> (and b!12210 (= (x!7047 thiss!789) (y!666 thiss!789)) t!3761) tb!3421))

(declare-fun result!3473 () Bool)

(assert (=> tb!3421 (= result!3473 true)))

(assert (=> d!9457 t!3761))

(declare-fun b_and!6521 () Bool)

(assert (= b_and!6513 (and (=> t!3761 result!3473) b_and!6521)))

(declare-fun t!3763 () Bool)

(declare-fun tb!3423 () Bool)

(assert (=> (and b!12210 (= (y!666 thiss!789) (y!666 thiss!789)) t!3763) tb!3423))

(declare-fun result!3475 () Bool)

(assert (=> tb!3423 (= result!3475 true)))

(assert (=> d!9457 t!3763))

(declare-fun b_and!6523 () Bool)

(assert (= b_and!6515 (and (=> t!3763 result!3475) b_and!6523)))

(declare-fun t!3765 () Bool)

(declare-fun tb!3425 () Bool)

(assert (=> (and b!12213 (= (x!7048 thiss!745) (y!666 thiss!789)) t!3765) tb!3425))

(declare-fun result!3477 () Bool)

(assert (=> tb!3425 (= result!3477 true)))

(assert (=> d!9457 t!3765))

(declare-fun b_and!6525 () Bool)

(assert (= b_and!6517 (and (=> t!3765 result!3477) b_and!6525)))

(declare-fun t!3767 () Bool)

(declare-fun tb!3427 () Bool)

(assert (=> (and b!12213 (= (y!667 thiss!745) (y!666 thiss!789)) t!3767) tb!3427))

(declare-fun result!3479 () Bool)

(assert (=> tb!3427 (= result!3479 true)))

(assert (=> d!9457 t!3767))

(declare-fun b_and!6527 () Bool)

(assert (= b_and!6519 (and (=> t!3767 result!3479) b_and!6527)))

(declare-fun m!15209 () Bool)

(assert (=> d!9457 m!15209))

(declare-fun m!15211 () Bool)

(assert (=> d!9457 m!15211))

(assert (=> start!2454 d!9457))

(declare-fun d!9459 () Bool)

(declare-fun res!4561 () Bool)

(declare-fun e!6731 () Bool)

(assert (=> d!9459 (=> (not res!4561) (not e!6731))))

(assert (=> d!9459 (= res!4561 (= (dynLambda!520 (x!7048 thiss!745)) (dynLambda!520 (y!667 thiss!745))))))

(assert (=> d!9459 (= (inv!412 thiss!745) e!6731)))

(declare-fun b!12245 () Bool)

(assert (=> b!12245 (= e!6731 (dynLambda!518 (evidence!208 thiss!745)))))

(assert (= (and d!9459 res!4561) b!12245))

(declare-fun b_lambda!6731 () Bool)

(assert (=> (not b_lambda!6731) (not d!9459)))

(declare-fun t!3769 () Bool)

(declare-fun tb!3429 () Bool)

(assert (=> (and b!12210 (= (x!7047 thiss!789) (x!7048 thiss!745)) t!3769) tb!3429))

(declare-fun result!3481 () Bool)

(assert (=> tb!3429 (= result!3481 true)))

(assert (=> d!9459 t!3769))

(declare-fun b_and!6529 () Bool)

(assert (= b_and!6521 (and (=> t!3769 result!3481) b_and!6529)))

(declare-fun t!3771 () Bool)

(declare-fun tb!3431 () Bool)

(assert (=> (and b!12210 (= (y!666 thiss!789) (x!7048 thiss!745)) t!3771) tb!3431))

(declare-fun result!3483 () Bool)

(assert (=> tb!3431 (= result!3483 true)))

(assert (=> d!9459 t!3771))

(declare-fun b_and!6531 () Bool)

(assert (= b_and!6523 (and (=> t!3771 result!3483) b_and!6531)))

(declare-fun t!3773 () Bool)

(declare-fun tb!3433 () Bool)

(assert (=> (and b!12213 (= (x!7048 thiss!745) (x!7048 thiss!745)) t!3773) tb!3433))

(declare-fun result!3485 () Bool)

(assert (=> tb!3433 (= result!3485 true)))

(assert (=> d!9459 t!3773))

(declare-fun b_and!6533 () Bool)

(assert (= b_and!6525 (and (=> t!3773 result!3485) b_and!6533)))

(declare-fun t!3775 () Bool)

(declare-fun tb!3435 () Bool)

(assert (=> (and b!12213 (= (y!667 thiss!745) (x!7048 thiss!745)) t!3775) tb!3435))

(declare-fun result!3487 () Bool)

(assert (=> tb!3435 (= result!3487 true)))

(assert (=> d!9459 t!3775))

(declare-fun b_and!6535 () Bool)

(assert (= b_and!6527 (and (=> t!3775 result!3487) b_and!6535)))

(declare-fun b_lambda!6733 () Bool)

(assert (=> (not b_lambda!6733) (not d!9459)))

(declare-fun tb!3437 () Bool)

(declare-fun t!3777 () Bool)

(assert (=> (and b!12210 (= (x!7047 thiss!789) (y!667 thiss!745)) t!3777) tb!3437))

(declare-fun result!3489 () Bool)

(assert (=> tb!3437 (= result!3489 true)))

(assert (=> d!9459 t!3777))

(declare-fun b_and!6537 () Bool)

(assert (= b_and!6529 (and (=> t!3777 result!3489) b_and!6537)))

(declare-fun tb!3439 () Bool)

(declare-fun t!3779 () Bool)

(assert (=> (and b!12210 (= (y!666 thiss!789) (y!667 thiss!745)) t!3779) tb!3439))

(declare-fun result!3491 () Bool)

(assert (=> tb!3439 (= result!3491 true)))

(assert (=> d!9459 t!3779))

(declare-fun b_and!6539 () Bool)

(assert (= b_and!6531 (and (=> t!3779 result!3491) b_and!6539)))

(declare-fun t!3781 () Bool)

(declare-fun tb!3441 () Bool)

(assert (=> (and b!12213 (= (x!7048 thiss!745) (y!667 thiss!745)) t!3781) tb!3441))

(declare-fun result!3493 () Bool)

(assert (=> tb!3441 (= result!3493 true)))

(assert (=> d!9459 t!3781))

(declare-fun b_and!6541 () Bool)

(assert (= b_and!6533 (and (=> t!3781 result!3493) b_and!6541)))

(declare-fun t!3783 () Bool)

(declare-fun tb!3443 () Bool)

(assert (=> (and b!12213 (= (y!667 thiss!745) (y!667 thiss!745)) t!3783) tb!3443))

(declare-fun result!3495 () Bool)

(assert (=> tb!3443 (= result!3495 true)))

(assert (=> d!9459 t!3783))

(declare-fun b_and!6543 () Bool)

(assert (= b_and!6535 (and (=> t!3783 result!3495) b_and!6543)))

(declare-fun b_lambda!6735 () Bool)

(assert (=> (not b_lambda!6735) (not b!12245)))

(declare-fun t!3785 () Bool)

(declare-fun tb!3445 () Bool)

(assert (=> (and start!2454 (= proof!220 (evidence!208 thiss!745)) t!3785) tb!3445))

(declare-fun result!3497 () Bool)

(assert (=> tb!3445 (= result!3497 true)))

(assert (=> b!12245 t!3785))

(declare-fun b_and!6545 () Bool)

(assert (= b_and!6501 (and (=> t!3785 result!3497) b_and!6545)))

(declare-fun t!3787 () Bool)

(declare-fun tb!3447 () Bool)

(assert (=> (and b!12213 (= (evidence!208 thiss!745) (evidence!208 thiss!745)) t!3787) tb!3447))

(declare-fun result!3499 () Bool)

(assert (=> tb!3447 (= result!3499 true)))

(assert (=> b!12245 t!3787))

(declare-fun b_and!6547 () Bool)

(assert (= b_and!6503 (and (=> t!3787 result!3499) b_and!6547)))

(declare-fun m!15213 () Bool)

(assert (=> d!9459 m!15213))

(declare-fun m!15215 () Bool)

(assert (=> d!9459 m!15215))

(declare-fun m!15217 () Bool)

(assert (=> b!12245 m!15217))

(assert (=> start!2454 d!9459))

(declare-fun d!9461 () Bool)

(assert (=> d!9461 (= trivial!1 true)))

(assert (=> b!12216 d!9461))

(declare-fun b_lambda!6737 () Bool)

(assert (= b_lambda!6731 (or (and b!12213 b_free!1873 (= (y!667 thiss!745) (x!7048 thiss!745))) (and b!12210 b_free!1869 (= (y!666 thiss!789) (x!7048 thiss!745))) (and b!12213 b_free!1871) (and b!12210 b_free!1867 (= (x!7047 thiss!789) (x!7048 thiss!745))) (and b!12215 (= lambda!3314 (x!7048 thiss!745))) (and b!12215 (= lambda!3315 (x!7048 thiss!745))) (and b!12212 (= lambda!3317 (x!7048 thiss!745))) b_lambda!6737)))

(declare-fun bs!3181 () Bool)

(declare-fun d!9463 () Bool)

(assert (= bs!3181 (and d!9463 b!12215)))

(assert (=> bs!3181 (= (dynLambda!520 lambda!3315) (dynLambda!519 f!539 (head!502 xs!292) (dynLambda!519 f!539 (foldRight1!117 (tail!514 xs!292) f!539) (foldRight1!117 ys!54 f!539))))))

(declare-fun b_lambda!6753 () Bool)

(assert (=> (not b_lambda!6753) (not bs!3181)))

(declare-fun t!3789 () Bool)

(declare-fun tb!3449 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3789) tb!3449))

(declare-fun result!3501 () Bool)

(assert (=> tb!3449 (= result!3501 true)))

(assert (=> bs!3181 t!3789))

(declare-fun b_and!6549 () Bool)

(assert (= b_and!6511 (and (=> t!3789 result!3501) b_and!6549)))

(declare-fun b_lambda!6755 () Bool)

(assert (=> (not b_lambda!6755) (not bs!3181)))

(declare-fun t!3791 () Bool)

(declare-fun tb!3451 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3791) tb!3451))

(declare-fun result!3503 () Bool)

(assert (=> tb!3451 (= result!3503 true)))

(assert (=> bs!3181 t!3791))

(declare-fun b_and!6551 () Bool)

(assert (= b_and!6549 (and (=> t!3791 result!3503) b_and!6551)))

(assert (=> bs!3181 m!15181))

(declare-fun m!15219 () Bool)

(assert (=> bs!3181 m!15219))

(declare-fun m!15221 () Bool)

(assert (=> bs!3181 m!15221))

(assert (=> bs!3181 m!15169))

(assert (=> bs!3181 m!15181))

(assert (=> bs!3181 m!15169))

(assert (=> bs!3181 m!15219))

(assert (=> (and b!12215 (= lambda!3315 (x!7048 thiss!745)) d!9459) d!9463))

(declare-fun bs!3182 () Bool)

(declare-fun d!9465 () Bool)

(assert (= bs!3182 (and d!9465 b!12215)))

(assert (=> bs!3182 (= (dynLambda!520 lambda!3314) (dynLambda!519 f!539 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)))))

(declare-fun b_lambda!6757 () Bool)

(assert (=> (not b_lambda!6757) (not bs!3182)))

(assert (=> bs!3182 t!3745))

(declare-fun b_and!6553 () Bool)

(assert (= b_and!6551 (and (=> t!3745 result!3457) b_and!6553)))

(assert (=> bs!3182 m!15167))

(assert (=> bs!3182 m!15169))

(assert (=> bs!3182 m!15167))

(assert (=> bs!3182 m!15169))

(assert (=> bs!3182 m!15171))

(assert (=> (and b!12215 (= lambda!3314 (x!7048 thiss!745)) d!9459) d!9465))

(declare-fun bs!3183 () Bool)

(declare-fun d!9467 () Bool)

(assert (= bs!3183 (and d!9467 b!12212)))

(assert (=> bs!3183 (= (dynLambda!520 lambda!3317) (dynLambda!519 f!539 (head!502 xs!292) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6759 () Bool)

(assert (=> (not b_lambda!6759) (not bs!3183)))

(declare-fun t!3793 () Bool)

(declare-fun tb!3453 () Bool)

(assert (=> (and start!2454 (= f!539 f!539) t!3793) tb!3453))

(declare-fun result!3505 () Bool)

(assert (=> tb!3453 (= result!3505 true)))

(assert (=> bs!3183 t!3793))

(declare-fun b_and!6555 () Bool)

(assert (= b_and!6553 (and (=> t!3793 result!3505) b_and!6555)))

(assert (=> bs!3183 m!15193))

(assert (=> bs!3183 m!15193))

(declare-fun m!15223 () Bool)

(assert (=> bs!3183 m!15223))

(assert (=> bs!3183 m!15223))

(declare-fun m!15225 () Bool)

(assert (=> bs!3183 m!15225))

(assert (=> (and b!12212 (= lambda!3317 (x!7048 thiss!745)) d!9459) d!9467))

(declare-fun b_lambda!6739 () Bool)

(assert (= b_lambda!6729 (or (and b!12210 b_free!1867 (= (x!7047 thiss!789) (y!666 thiss!789))) (and b!12210 b_free!1869) (and b!12212 (= lambda!3317 (y!666 thiss!789))) (and b!12213 b_free!1873 (= (y!667 thiss!745) (y!666 thiss!789))) (and b!12215 (= lambda!3315 (y!666 thiss!789))) (and b!12213 b_free!1871 (= (x!7048 thiss!745) (y!666 thiss!789))) (and b!12215 (= lambda!3314 (y!666 thiss!789))) b_lambda!6739)))

(declare-fun bs!3184 () Bool)

(declare-fun d!9469 () Bool)

(assert (= bs!3184 (and d!9469 b!12212)))

(assert (=> bs!3184 (= (dynLambda!520 lambda!3317) (dynLambda!519 f!539 (head!502 xs!292) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6761 () Bool)

(assert (=> (not b_lambda!6761) (not bs!3184)))

(assert (=> bs!3184 t!3793))

(declare-fun b_and!6557 () Bool)

(assert (= b_and!6555 (and (=> t!3793 result!3505) b_and!6557)))

(assert (=> bs!3184 m!15193))

(assert (=> bs!3184 m!15193))

(assert (=> bs!3184 m!15223))

(assert (=> bs!3184 m!15223))

(assert (=> bs!3184 m!15225))

(assert (=> (and b!12212 (= lambda!3317 (y!666 thiss!789)) d!9457) d!9469))

(declare-fun bs!3185 () Bool)

(declare-fun d!9471 () Bool)

(assert (= bs!3185 (and d!9471 b!12215)))

(assert (=> bs!3185 (= (dynLambda!520 lambda!3315) (dynLambda!519 f!539 (head!502 xs!292) (dynLambda!519 f!539 (foldRight1!117 (tail!514 xs!292) f!539) (foldRight1!117 ys!54 f!539))))))

(declare-fun b_lambda!6763 () Bool)

(assert (=> (not b_lambda!6763) (not bs!3185)))

(assert (=> bs!3185 t!3789))

(declare-fun b_and!6559 () Bool)

(assert (= b_and!6557 (and (=> t!3789 result!3501) b_and!6559)))

(declare-fun b_lambda!6765 () Bool)

(assert (=> (not b_lambda!6765) (not bs!3185)))

(assert (=> bs!3185 t!3791))

(declare-fun b_and!6561 () Bool)

(assert (= b_and!6559 (and (=> t!3791 result!3503) b_and!6561)))

(assert (=> bs!3185 m!15181))

(assert (=> bs!3185 m!15219))

(assert (=> bs!3185 m!15221))

(assert (=> bs!3185 m!15169))

(assert (=> bs!3185 m!15181))

(assert (=> bs!3185 m!15169))

(assert (=> bs!3185 m!15219))

(assert (=> (and b!12215 (= lambda!3315 (y!666 thiss!789)) d!9457) d!9471))

(declare-fun bs!3186 () Bool)

(declare-fun d!9473 () Bool)

(assert (= bs!3186 (and d!9473 b!12215)))

(assert (=> bs!3186 (= (dynLambda!520 lambda!3314) (dynLambda!519 f!539 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)))))

(declare-fun b_lambda!6767 () Bool)

(assert (=> (not b_lambda!6767) (not bs!3186)))

(assert (=> bs!3186 t!3745))

(declare-fun b_and!6563 () Bool)

(assert (= b_and!6561 (and (=> t!3745 result!3457) b_and!6563)))

(assert (=> bs!3186 m!15167))

(assert (=> bs!3186 m!15169))

(assert (=> bs!3186 m!15167))

(assert (=> bs!3186 m!15169))

(assert (=> bs!3186 m!15171))

(assert (=> (and b!12215 (= lambda!3314 (y!666 thiss!789)) d!9457) d!9473))

(declare-fun b_lambda!6741 () Bool)

(assert (= b_lambda!6735 (or (and b!12215 (= lambda!3316 (evidence!208 thiss!745))) (and b!12216 (= lambda!3318 (evidence!208 thiss!745))) (and start!2454 b_free!1865 (= proof!220 (evidence!208 thiss!745))) (and b!12213 b_free!1875) b_lambda!6741)))

(declare-fun bs!3187 () Bool)

(declare-fun d!9475 () Bool)

(assert (= bs!3187 (and d!9475 b!12215)))

(assert (=> bs!3187 (= (dynLambda!518 lambda!3316) (append!24 (tail!514 xs!292) ys!54))))

(assert (=> bs!3187 m!15179))

(assert (=> (and b!12215 (= lambda!3316 (evidence!208 thiss!745)) b!12245) d!9475))

(declare-fun bs!3188 () Bool)

(declare-fun d!9477 () Bool)

(assert (= bs!3188 (and d!9477 b!12216)))

(assert (=> bs!3188 (= (dynLambda!518 lambda!3318) trivial!1)))

(assert (=> (and b!12216 (= lambda!3318 (evidence!208 thiss!745)) b!12245) d!9477))

(declare-fun b_lambda!6743 () Bool)

(assert (= b_lambda!6733 (or (and b!12210 b_free!1869 (= (y!666 thiss!789) (y!667 thiss!745))) (and b!12213 b_free!1873) (and b!12210 b_free!1867 (= (x!7047 thiss!789) (y!667 thiss!745))) (and b!12215 (= lambda!3315 (y!667 thiss!745))) (and b!12213 b_free!1871 (= (x!7048 thiss!745) (y!667 thiss!745))) (and b!12215 (= lambda!3314 (y!667 thiss!745))) (and b!12212 (= lambda!3317 (y!667 thiss!745))) b_lambda!6743)))

(declare-fun bs!3189 () Bool)

(declare-fun d!9479 () Bool)

(assert (= bs!3189 (and d!9479 b!12215)))

(assert (=> bs!3189 (= (dynLambda!520 lambda!3315) (dynLambda!519 f!539 (head!502 xs!292) (dynLambda!519 f!539 (foldRight1!117 (tail!514 xs!292) f!539) (foldRight1!117 ys!54 f!539))))))

(declare-fun b_lambda!6769 () Bool)

(assert (=> (not b_lambda!6769) (not bs!3189)))

(assert (=> bs!3189 t!3789))

(declare-fun b_and!6565 () Bool)

(assert (= b_and!6563 (and (=> t!3789 result!3501) b_and!6565)))

(declare-fun b_lambda!6771 () Bool)

(assert (=> (not b_lambda!6771) (not bs!3189)))

(assert (=> bs!3189 t!3791))

(declare-fun b_and!6567 () Bool)

(assert (= b_and!6565 (and (=> t!3791 result!3503) b_and!6567)))

(assert (=> bs!3189 m!15181))

(assert (=> bs!3189 m!15219))

(assert (=> bs!3189 m!15221))

(assert (=> bs!3189 m!15169))

(assert (=> bs!3189 m!15181))

(assert (=> bs!3189 m!15169))

(assert (=> bs!3189 m!15219))

(assert (=> (and b!12215 (= lambda!3315 (y!667 thiss!745)) d!9459) d!9479))

(declare-fun bs!3190 () Bool)

(declare-fun d!9481 () Bool)

(assert (= bs!3190 (and d!9481 b!12215)))

(assert (=> bs!3190 (= (dynLambda!520 lambda!3314) (dynLambda!519 f!539 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)))))

(declare-fun b_lambda!6773 () Bool)

(assert (=> (not b_lambda!6773) (not bs!3190)))

(assert (=> bs!3190 t!3745))

(declare-fun b_and!6569 () Bool)

(assert (= b_and!6567 (and (=> t!3745 result!3457) b_and!6569)))

(assert (=> bs!3190 m!15167))

(assert (=> bs!3190 m!15169))

(assert (=> bs!3190 m!15167))

(assert (=> bs!3190 m!15169))

(assert (=> bs!3190 m!15171))

(assert (=> (and b!12215 (= lambda!3314 (y!667 thiss!745)) d!9459) d!9481))

(declare-fun bs!3191 () Bool)

(declare-fun d!9483 () Bool)

(assert (= bs!3191 (and d!9483 b!12212)))

(assert (=> bs!3191 (= (dynLambda!520 lambda!3317) (dynLambda!519 f!539 (head!502 xs!292) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6775 () Bool)

(assert (=> (not b_lambda!6775) (not bs!3191)))

(assert (=> bs!3191 t!3793))

(declare-fun b_and!6571 () Bool)

(assert (= b_and!6569 (and (=> t!3793 result!3505) b_and!6571)))

(assert (=> bs!3191 m!15193))

(assert (=> bs!3191 m!15193))

(assert (=> bs!3191 m!15223))

(assert (=> bs!3191 m!15223))

(assert (=> bs!3191 m!15225))

(assert (=> (and b!12212 (= lambda!3317 (y!667 thiss!745)) d!9459) d!9483))

(declare-fun b_lambda!6745 () Bool)

(assert (= b_lambda!6727 (or (and b!12215 (= lambda!3315 (x!7047 thiss!789))) (and b!12213 b_free!1873 (= (y!667 thiss!745) (x!7047 thiss!789))) (and b!12213 b_free!1871 (= (x!7048 thiss!745) (x!7047 thiss!789))) (and b!12215 (= lambda!3314 (x!7047 thiss!789))) (and b!12210 b_free!1869 (= (y!666 thiss!789) (x!7047 thiss!789))) (and b!12212 (= lambda!3317 (x!7047 thiss!789))) (and b!12210 b_free!1867) b_lambda!6745)))

(declare-fun bs!3192 () Bool)

(declare-fun d!9485 () Bool)

(assert (= bs!3192 (and d!9485 b!12212)))

(assert (=> bs!3192 (= (dynLambda!520 lambda!3317) (dynLambda!519 f!539 (head!502 xs!292) (foldRight1!117 (append!136 (tail!514 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6777 () Bool)

(assert (=> (not b_lambda!6777) (not bs!3192)))

(assert (=> bs!3192 t!3793))

(declare-fun b_and!6573 () Bool)

(assert (= b_and!6571 (and (=> t!3793 result!3505) b_and!6573)))

(assert (=> bs!3192 m!15193))

(assert (=> bs!3192 m!15193))

(assert (=> bs!3192 m!15223))

(assert (=> bs!3192 m!15223))

(assert (=> bs!3192 m!15225))

(assert (=> (and b!12212 (= lambda!3317 (x!7047 thiss!789)) d!9457) d!9485))

(declare-fun bs!3193 () Bool)

(declare-fun d!9487 () Bool)

(assert (= bs!3193 (and d!9487 b!12215)))

(assert (=> bs!3193 (= (dynLambda!520 lambda!3314) (dynLambda!519 f!539 (foldRight1!117 xs!292 f!539) (foldRight1!117 ys!54 f!539)))))

(declare-fun b_lambda!6779 () Bool)

(assert (=> (not b_lambda!6779) (not bs!3193)))

(assert (=> bs!3193 t!3745))

(declare-fun b_and!6575 () Bool)

(assert (= b_and!6573 (and (=> t!3745 result!3457) b_and!6575)))

(assert (=> bs!3193 m!15167))

(assert (=> bs!3193 m!15169))

(assert (=> bs!3193 m!15167))

(assert (=> bs!3193 m!15169))

(assert (=> bs!3193 m!15171))

(assert (=> (and b!12215 (= lambda!3314 (x!7047 thiss!789)) d!9457) d!9487))

(declare-fun bs!3194 () Bool)

(declare-fun d!9489 () Bool)

(assert (= bs!3194 (and d!9489 b!12215)))

(assert (=> bs!3194 (= (dynLambda!520 lambda!3315) (dynLambda!519 f!539 (head!502 xs!292) (dynLambda!519 f!539 (foldRight1!117 (tail!514 xs!292) f!539) (foldRight1!117 ys!54 f!539))))))

(declare-fun b_lambda!6781 () Bool)

(assert (=> (not b_lambda!6781) (not bs!3194)))

(assert (=> bs!3194 t!3789))

(declare-fun b_and!6577 () Bool)

(assert (= b_and!6575 (and (=> t!3789 result!3501) b_and!6577)))

(declare-fun b_lambda!6783 () Bool)

(assert (=> (not b_lambda!6783) (not bs!3194)))

(assert (=> bs!3194 t!3791))

(declare-fun b_and!6579 () Bool)

(assert (= b_and!6577 (and (=> t!3791 result!3503) b_and!6579)))

(assert (=> bs!3194 m!15181))

(assert (=> bs!3194 m!15219))

(assert (=> bs!3194 m!15221))

(assert (=> bs!3194 m!15169))

(assert (=> bs!3194 m!15181))

(assert (=> bs!3194 m!15169))

(assert (=> bs!3194 m!15219))

(assert (=> (and b!12215 (= lambda!3315 (x!7047 thiss!789)) d!9457) d!9489))

(declare-fun b_lambda!6747 () Bool)

(assert (= b_lambda!6725 (or (and b!12208 (= lambda!3313 f!539)) (and start!2454 b_free!1863) (and d!9451 (= lambda!3321 f!539)) b_lambda!6747)))

(declare-fun bs!3195 () Bool)

(declare-fun d!9491 () Bool)

(assert (= bs!3195 (and d!9491 b!12208)))

(assert (=> bs!3195 (= (dynLambda!519 lambda!3313 (head!502 (append!136 xs!292 ys!54)) (foldRight1!117 (tail!514 (append!136 xs!292 ys!54)) f!539)) (++!3 (head!502 (append!136 xs!292 ys!54)) (foldRight1!117 (tail!514 (append!136 xs!292 ys!54)) f!539)))))

(assert (=> bs!3195 m!15189))

(declare-fun m!15227 () Bool)

(assert (=> bs!3195 m!15227))

(assert (=> (and b!12208 (= lambda!3313 f!539) b!12233) d!9491))

(declare-fun bs!3196 () Bool)

(declare-fun d!9493 () Bool)

(assert (= bs!3196 (and d!9493 d!9451)))

(assert (=> bs!3196 (= (dynLambda!519 lambda!3321 (head!502 (append!136 xs!292 ys!54)) (foldRight1!117 (tail!514 (append!136 xs!292 ys!54)) f!539)) (++!3 (head!502 (append!136 xs!292 ys!54)) (foldRight1!117 (tail!514 (append!136 xs!292 ys!54)) f!539)))))

(assert (=> bs!3196 m!15189))

(assert (=> bs!3196 m!15227))

(assert (=> (and d!9451 (= lambda!3321 f!539) b!12233) d!9493))

(declare-fun b_lambda!6749 () Bool)

(assert (= b_lambda!6721 (or (and b!12208 (= lambda!3313 f!539)) (and start!2454 b_free!1863) (and d!9451 (= lambda!3321 f!539)) b_lambda!6749)))

(declare-fun bs!3197 () Bool)

(declare-fun d!9495 () Bool)

(assert (= bs!3197 (and d!9495 b!12208)))

(assert (=> bs!3197 (= (dynLambda!519 lambda!3313 (head!502 xs!292) (foldRight1!117 (tail!514 xs!292) f!539)) (++!3 (head!502 xs!292) (foldRight1!117 (tail!514 xs!292) f!539)))))

(assert (=> bs!3197 m!15181))

(declare-fun m!15229 () Bool)

(assert (=> bs!3197 m!15229))

(assert (=> (and b!12208 (= lambda!3313 f!539) b!12229) d!9495))

(declare-fun bs!3198 () Bool)

(declare-fun d!9497 () Bool)

(assert (= bs!3198 (and d!9497 d!9451)))

(assert (=> bs!3198 (= (dynLambda!519 lambda!3321 (head!502 xs!292) (foldRight1!117 (tail!514 xs!292) f!539)) (++!3 (head!502 xs!292) (foldRight1!117 (tail!514 xs!292) f!539)))))

(assert (=> bs!3198 m!15181))

(assert (=> bs!3198 m!15229))

(assert (=> (and d!9451 (= lambda!3321 f!539) b!12229) d!9497))

(declare-fun b_lambda!6751 () Bool)

(assert (= b_lambda!6723 (or (and b!12208 (= lambda!3313 f!539)) (and start!2454 b_free!1863) (and d!9451 (= lambda!3321 f!539)) b_lambda!6751)))

(declare-fun bs!3199 () Bool)

(declare-fun d!9499 () Bool)

(assert (= bs!3199 (and d!9499 b!12208)))

(assert (=> bs!3199 (= (dynLambda!519 lambda!3313 (head!502 ys!54) (foldRight1!117 (tail!514 ys!54) f!539)) (++!3 (head!502 ys!54) (foldRight1!117 (tail!514 ys!54) f!539)))))

(assert (=> bs!3199 m!15185))

(declare-fun m!15231 () Bool)

(assert (=> bs!3199 m!15231))

(assert (=> (and b!12208 (= lambda!3313 f!539) b!12231) d!9499))

(declare-fun bs!3200 () Bool)

(declare-fun d!9501 () Bool)

(assert (= bs!3200 (and d!9501 d!9451)))

(assert (=> bs!3200 (= (dynLambda!519 lambda!3321 (head!502 ys!54) (foldRight1!117 (tail!514 ys!54) f!539)) (++!3 (head!502 ys!54) (foldRight1!117 (tail!514 ys!54) f!539)))))

(assert (=> bs!3200 m!15185))

(assert (=> bs!3200 m!15231))

(assert (=> (and d!9451 (= lambda!3321 f!539) b!12231) d!9501))

(push 1)

(assert (not b!12233))

(assert b_and!6539)

(assert (not b_lambda!6751))

(assert (not b_lambda!6761))

(assert (not b_lambda!6767))

(assert (not b_lambda!6781))

(assert (not b_lambda!6783))

(assert b_and!6543)

(assert (not bs!3193))

(assert (not b_lambda!6757))

(assert b_and!6547)

(assert (not bs!3184))

(assert (not b_lambda!6753))

(assert (not b_next!4445))

(assert (not bs!3182))

(assert (not bs!3190))

(assert (not b!12229))

(assert (not bs!3197))

(assert (not b_lambda!6747))

(assert (not b_next!4435))

(assert (not bs!3181))

(assert b_and!6579)

(assert b_and!6541)

(assert (not b_lambda!6765))

(assert (not b_next!4439))

(assert (not b_lambda!6769))

(assert (not b_next!4441))

(assert (not b!12231))

(assert (not b_next!4437))

(assert (not bs!3200))

(assert (not b_lambda!6759))

(assert (not bs!3192))

(assert (not bs!3195))

(assert (not b_lambda!6739))

(assert (not b_lambda!6737))

(assert (not b_lambda!6749))

(assert (not bs!3199))

(assert (not b_lambda!6717))

(assert (not b_lambda!6743))

(assert (not b_lambda!6779))

(assert (not bs!3185))

(assert (not b_lambda!6773))

(assert b_and!6537)

(assert (not b_lambda!6771))

(assert (not b!12239))

(assert (not bs!3194))

(assert (not b_lambda!6755))

(assert (not bs!3186))

(assert (not b_lambda!6741))

(assert b_and!6545)

(assert (not bs!3198))

(assert (not bs!3191))

(assert (not bs!3196))

(assert (not d!9451))

(assert (not d!9449))

(assert (not b_next!4443))

(assert (not b_lambda!6777))

(assert (not bs!3183))

(assert (not b_lambda!6775))

(assert (not b_lambda!6745))

(assert (not bs!3187))

(assert (not b_next!4433))

(assert (not b_lambda!6719))

(assert (not b!12242))

(assert (not bs!3189))

(assert (not b_lambda!6763))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6539)

(assert b_and!6543)

(assert b_and!6547)

(assert (not b_next!4445))

(assert (not b_next!4435))

(assert b_and!6579)

(assert b_and!6541)

(assert (not b_next!4439))

(assert (not b_next!4441))

(assert (not b_next!4437))

(assert b_and!6537)

(assert b_and!6545)

(assert (not b_next!4443))

(assert (not b_next!4433))

(check-sat)

(pop 1)

