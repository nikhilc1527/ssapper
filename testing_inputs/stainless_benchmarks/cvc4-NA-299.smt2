; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2278 () Bool)

(assert start!2278)

(declare-fun b_free!1557 () Bool)

(declare-fun b_next!3761 () Bool)

(assert (=> start!2278 (= b_free!1557 (not b_next!3761))))

(declare-fun tp!2502 () Bool)

(declare-fun b_and!5449 () Bool)

(assert (=> start!2278 (= tp!2502 b_and!5449)))

(declare-fun b_free!1559 () Bool)

(declare-fun b_next!3763 () Bool)

(assert (=> start!2278 (= b_free!1559 (not b_next!3763))))

(declare-fun tp!2501 () Bool)

(declare-fun b_and!5451 () Bool)

(assert (=> start!2278 (= tp!2501 b_and!5451)))

(declare-fun b!11402 () Bool)

(declare-fun b_free!1561 () Bool)

(declare-fun b_next!3765 () Bool)

(assert (=> b!11402 (= b_free!1561 (not b_next!3765))))

(declare-fun tp!2500 () Bool)

(declare-fun b_and!5453 () Bool)

(assert (=> b!11402 (= tp!2500 b_and!5453)))

(declare-fun b_free!1563 () Bool)

(declare-fun b_next!3767 () Bool)

(assert (=> b!11402 (= b_free!1563 (not b_next!3767))))

(declare-fun tp!2499 () Bool)

(declare-fun b_and!5455 () Bool)

(assert (=> b!11402 (= tp!2499 b_and!5455)))

(declare-fun b_free!1565 () Bool)

(declare-fun b_next!3769 () Bool)

(assert (=> b!11402 (= b_free!1565 (not b_next!3769))))

(declare-fun tp!2503 () Bool)

(declare-fun b_and!5457 () Bool)

(assert (=> b!11402 (= tp!2503 b_and!5457)))

(declare-fun f!539 () Int)

(declare-fun b!11396 () Bool)

(declare-fun lambda!3047 () Int)

(declare-fun b_next!3771 () Bool)

(assert (=> start!2278 (= b_next!3761 (or (and b!11396 (= lambda!3047 f!539)) b_next!3771))))

(declare-fun b_next!3773 () Bool)

(declare-fun f!579 () Int)

(assert (=> start!2278 (= b_next!3763 (or (and b!11396 (= lambda!3047 f!579)) b_next!3773))))

(declare-fun b!11398 () Bool)

(assert (=> b!11398 true))

(declare-fun order!241 () Int)

(declare-fun order!239 () Int)

(declare-fun lambda!3048 () Int)

(declare-fun dynLambda!428 (Int Int) Int)

(declare-fun dynLambda!429 (Int Int) Int)

(assert (=> b!11398 (< (dynLambda!428 order!239 f!539) (dynLambda!429 order!241 lambda!3048))))

(assert (=> b!11398 true))

(assert (=> b!11398 true))

(declare-datatypes () ((Balance!307 (Balance!308 (extraOpen!194 Int) (extraClose!194 Int)))))

(declare-datatypes () ((EqEvidence!238 (EqEvidence!239 (x!6484 Int) (y!635 Int) (evidence!186 Int)))))

(declare-fun thiss!745 () EqEvidence!238)

(declare-fun b_next!3775 () Bool)

(assert (=> b!11402 (= b_next!3765 (or (and b!11398 (= lambda!3048 (x!6484 thiss!745))) b_next!3775))))

(declare-fun b_next!3777 () Bool)

(assert (=> b!11402 (= b_next!3767 (or (and b!11398 (= lambda!3048 (y!635 thiss!745))) b_next!3777))))

(declare-fun lambda!3049 () Int)

(assert (=> b!11398 (not (= lambda!3049 lambda!3048))))

(assert (=> b!11398 true))

(assert (=> b!11398 (< (dynLambda!428 order!239 f!539) (dynLambda!429 order!241 lambda!3049))))

(assert (=> b!11398 true))

(assert (=> b!11398 true))

(declare-fun b_next!3779 () Bool)

(assert (=> b!11402 (= b_next!3775 (or (and b!11398 (= lambda!3049 (x!6484 thiss!745))) b_next!3779))))

(declare-fun b_next!3781 () Bool)

(assert (=> b!11402 (= b_next!3777 (or (and b!11398 (= lambda!3049 (y!635 thiss!745))) b_next!3781))))

(assert (=> b!11398 true))

(assert (=> b!11398 true))

(declare-fun lambda!3050 () Int)

(declare-fun b_next!3783 () Bool)

(assert (=> b!11402 (= b_next!3769 (or (and b!11398 (= lambda!3050 (evidence!186 thiss!745))) b_next!3783))))

(declare-fun b!11394 () Bool)

(declare-fun res!4168 () Bool)

(declare-fun e!6408 () Bool)

(assert (=> b!11394 (=> (not res!4168) (not e!6408))))

(assert (=> b!11394 (= res!4168 (= f!579 f!539))))

(declare-fun b!11395 () Bool)

(declare-fun res!4172 () Bool)

(assert (=> b!11395 (=> (not res!4172) (not e!6408))))

(declare-datatypes () ((List!273 (Nil!271) (Cons!270 (head!488 Balance!307) (tail!500 List!273)))))

(declare-fun xs!292 () List!273)

(assert (=> b!11395 (= res!4172 (or (not (is-Cons!270 xs!292)) (not (is-Nil!271 (tail!500 xs!292)))))))

(declare-fun res!4166 () Bool)

(assert (=> b!11396 (=> (not res!4166) (not e!6408))))

(assert (=> b!11396 (= res!4166 (= f!539 lambda!3047))))

(declare-fun b!11397 () Bool)

(declare-fun res!4171 () Bool)

(assert (=> b!11397 (=> (not res!4171) (not e!6408))))

(declare-fun thiss!790 () List!273)

(declare-fun ys!54 () List!273)

(declare-fun append!122 (List!273 List!273) List!273)

(assert (=> b!11397 (= res!4171 (= thiss!790 (append!122 (tail!500 xs!292) ys!54)))))

(declare-fun res!4167 () Bool)

(assert (=> b!11398 (=> (not res!4167) (not e!6408))))

(assert (=> b!11398 (= res!4167 (= thiss!745 (EqEvidence!239 lambda!3048 lambda!3049 lambda!3050)))))

(declare-fun b!11399 () Bool)

(declare-fun res!4165 () Bool)

(assert (=> b!11399 (=> (not res!4165) (not e!6408))))

(declare-fun isEmpty!201 (List!273) Bool)

(assert (=> b!11399 (= res!4165 (not (isEmpty!201 ys!54)))))

(declare-fun b!11400 () Bool)

(declare-fun res!4170 () Bool)

(assert (=> b!11400 (=> (not res!4170) (not e!6408))))

(declare-datatypes () ((ProofOps!246 (ProofOps!247 (prop!256 Bool)))))

(declare-fun thiss!710 () ProofOps!246)

(declare-fun dynLambda!430 (Int Balance!307 Balance!307) Balance!307)

(declare-fun foldRight1!103 (List!273 Int) Balance!307)

(assert (=> b!11400 (= res!4170 (= thiss!710 (ProofOps!247 (= (dynLambda!430 f!539 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)) (foldRight1!103 (append!122 xs!292 ys!54) f!539)))))))

(declare-fun b!11401 () Bool)

(assert (=> b!11401 (= e!6408 (isEmpty!201 thiss!790))))

(declare-fun e!6409 () Bool)

(assert (=> b!11402 (= e!6409 (and tp!2500 tp!2499 tp!2503))))

(declare-fun res!4169 () Bool)

(assert (=> start!2278 (=> (not res!4169) (not e!6408))))

(assert (=> start!2278 (= res!4169 (not (isEmpty!201 xs!292)))))

(assert (=> start!2278 e!6408))

(assert (=> start!2278 tp!2502))

(assert (=> start!2278 true))

(declare-fun inv!380 (EqEvidence!238) Bool)

(assert (=> start!2278 (and (inv!380 thiss!745) e!6409)))

(assert (=> start!2278 tp!2501))

(assert (= (and start!2278 res!4169) b!11399))

(assert (= (and b!11399 res!4165) b!11396))

(assert (= (and b!11396 res!4166) b!11400))

(assert (= (and b!11400 res!4170) b!11395))

(assert (= (and b!11395 res!4172) b!11398))

(assert (= (and b!11398 res!4167) b!11397))

(assert (= (and b!11397 res!4171) b!11394))

(assert (= (and b!11394 res!4168) b!11401))

(assert (= start!2278 b!11402))

(declare-fun b_lambda!5907 () Bool)

(assert (=> (not b_lambda!5907) (not b!11400)))

(declare-fun t!3223 () Bool)

(declare-fun tb!2883 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3223) tb!2883))

(declare-fun result!2935 () Bool)

(assert (=> tb!2883 (= result!2935 true)))

(assert (=> b!11400 t!3223))

(declare-fun b_and!5459 () Bool)

(assert (= b_and!5449 (and (=> t!3223 result!2935) b_and!5459)))

(declare-fun tb!2885 () Bool)

(declare-fun t!3225 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3225) tb!2885))

(declare-fun result!2937 () Bool)

(assert (=> tb!2885 (= result!2937 true)))

(assert (=> b!11400 t!3225))

(declare-fun b_and!5461 () Bool)

(assert (= b_and!5451 (and (=> t!3225 result!2937) b_and!5461)))

(declare-fun m!14287 () Bool)

(assert (=> b!11397 m!14287))

(declare-fun m!14289 () Bool)

(assert (=> b!11401 m!14289))

(declare-fun m!14291 () Bool)

(assert (=> b!11400 m!14291))

(declare-fun m!14293 () Bool)

(assert (=> b!11400 m!14293))

(declare-fun m!14295 () Bool)

(assert (=> b!11400 m!14295))

(assert (=> b!11400 m!14293))

(assert (=> b!11400 m!14295))

(declare-fun m!14297 () Bool)

(assert (=> b!11400 m!14297))

(assert (=> b!11400 m!14291))

(declare-fun m!14299 () Bool)

(assert (=> b!11400 m!14299))

(declare-fun m!14301 () Bool)

(assert (=> start!2278 m!14301))

(declare-fun m!14303 () Bool)

(assert (=> start!2278 m!14303))

(declare-fun m!14305 () Bool)

(assert (=> b!11399 m!14305))

(push 1)

(assert (not b!11401))

(assert (not b_next!3771))

(assert (not b_lambda!5907))

(assert b_and!5453)

(assert (not b!11400))

(assert (not start!2278))

(assert b_and!5459)

(assert (not b_next!3773))

(assert b_and!5457)

(assert (not b_next!3779))

(assert b_and!5461)

(assert (not b_next!3781))

(assert (not b!11397))

(assert (not b!11399))

(assert b_and!5455)

(assert (not b_next!3783))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3771))

(assert b_and!5453)

(assert b_and!5459)

(assert (not b_next!3773))

(assert b_and!5457)

(assert (not b_next!3779))

(assert b_and!5461)

(assert (not b_next!3781))

(assert b_and!5455)

(assert (not b_next!3783))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5909 () Bool)

(assert (= b_lambda!5907 (or (and b!11396 (= lambda!3047 f!539)) (and start!2278 b_free!1557) (and start!2278 b_free!1559 (= f!579 f!539)) b_lambda!5909)))

(declare-fun bs!2917 () Bool)

(declare-fun d!8789 () Bool)

(assert (= bs!2917 (and d!8789 b!11396)))

(declare-fun ++!3 (Balance!307 Balance!307) Balance!307)

(assert (=> bs!2917 (= (dynLambda!430 lambda!3047 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)) (++!3 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)))))

(assert (=> bs!2917 m!14293))

(assert (=> bs!2917 m!14295))

(declare-fun m!14307 () Bool)

(assert (=> bs!2917 m!14307))

(assert (=> (and b!11396 (= lambda!3047 f!539) b!11400) d!8789))

(push 1)

(assert (not b!11401))

(assert (not b_next!3771))

(assert b_and!5453)

(assert (not b_lambda!5909))

(assert (not b!11400))

(assert (not start!2278))

(assert (not bs!2917))

(assert b_and!5459)

(assert (not b_next!3773))

(assert b_and!5457)

(assert (not b_next!3779))

(assert b_and!5461)

(assert (not b_next!3781))

(assert (not b!11397))

(assert (not b!11399))

(assert b_and!5455)

(assert (not b_next!3783))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3771))

(assert b_and!5453)

(assert b_and!5459)

(assert (not b_next!3773))

(assert b_and!5457)

(assert (not b_next!3779))

(assert b_and!5461)

(assert (not b_next!3781))

(assert b_and!5455)

(assert (not b_next!3783))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8791 () Bool)

(assert (=> d!8791 (= (isEmpty!201 thiss!790) (is-Nil!271 thiss!790))))

(assert (=> b!11401 d!8791))

(declare-fun lt!1763 () Int)

(declare-fun d!8793 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8793 (= lt!1763 (min!4 (extraOpen!194 (foldRight1!103 xs!292 f!539)) (extraClose!194 (foldRight1!103 ys!54 f!539))))))

(assert (=> d!8793 (= (++!3 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)) (Balance!308 (- (+ (extraOpen!194 (foldRight1!103 xs!292 f!539)) (extraOpen!194 (foldRight1!103 ys!54 f!539))) lt!1763) (- (+ (extraClose!194 (foldRight1!103 xs!292 f!539)) (extraClose!194 (foldRight1!103 ys!54 f!539))) lt!1763)))))

(declare-fun bs!2918 () Bool)

(assert (= bs!2918 d!8793))

(declare-fun m!14309 () Bool)

(assert (=> bs!2918 m!14309))

(assert (=> bs!2917 d!8793))

(declare-fun d!8795 () Bool)

(declare-fun c!3373 () Bool)

(assert (=> d!8795 (= c!3373 (and (is-Cons!270 xs!292) (is-Nil!271 (tail!500 xs!292))))))

(declare-fun e!6412 () Balance!307)

(assert (=> d!8795 (= (foldRight1!103 xs!292 f!539) e!6412)))

(declare-fun b!11413 () Bool)

(assert (=> b!11413 (= e!6412 (head!488 xs!292))))

(declare-fun b!11414 () Bool)

(assert (=> b!11414 (= e!6412 (dynLambda!430 f!539 (head!488 xs!292) (foldRight1!103 (tail!500 xs!292) f!539)))))

(assert (= (and d!8795 c!3373) b!11413))

(assert (= (and d!8795 (not c!3373)) b!11414))

(declare-fun b_lambda!5911 () Bool)

(assert (=> (not b_lambda!5911) (not b!11414)))

(declare-fun t!3227 () Bool)

(declare-fun tb!2887 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3227) tb!2887))

(declare-fun result!2939 () Bool)

(assert (=> tb!2887 (= result!2939 true)))

(assert (=> b!11414 t!3227))

(declare-fun b_and!5463 () Bool)

(assert (= b_and!5459 (and (=> t!3227 result!2939) b_and!5463)))

(declare-fun tb!2889 () Bool)

(declare-fun t!3229 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3229) tb!2889))

(declare-fun result!2941 () Bool)

(assert (=> tb!2889 (= result!2941 true)))

(assert (=> b!11414 t!3229))

(declare-fun b_and!5465 () Bool)

(assert (= b_and!5461 (and (=> t!3229 result!2941) b_and!5465)))

(declare-fun m!14311 () Bool)

(assert (=> b!11414 m!14311))

(assert (=> b!11414 m!14311))

(declare-fun m!14313 () Bool)

(assert (=> b!11414 m!14313))

(assert (=> b!11400 d!8795))

(declare-fun d!8797 () Bool)

(declare-fun c!3374 () Bool)

(assert (=> d!8797 (= c!3374 (and (is-Cons!270 ys!54) (is-Nil!271 (tail!500 ys!54))))))

(declare-fun e!6413 () Balance!307)

(assert (=> d!8797 (= (foldRight1!103 ys!54 f!539) e!6413)))

(declare-fun b!11415 () Bool)

(assert (=> b!11415 (= e!6413 (head!488 ys!54))))

(declare-fun b!11416 () Bool)

(assert (=> b!11416 (= e!6413 (dynLambda!430 f!539 (head!488 ys!54) (foldRight1!103 (tail!500 ys!54) f!539)))))

(assert (= (and d!8797 c!3374) b!11415))

(assert (= (and d!8797 (not c!3374)) b!11416))

(declare-fun b_lambda!5913 () Bool)

(assert (=> (not b_lambda!5913) (not b!11416)))

(declare-fun t!3231 () Bool)

(declare-fun tb!2891 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3231) tb!2891))

(declare-fun result!2943 () Bool)

(assert (=> tb!2891 (= result!2943 true)))

(assert (=> b!11416 t!3231))

(declare-fun b_and!5467 () Bool)

(assert (= b_and!5463 (and (=> t!3231 result!2943) b_and!5467)))

(declare-fun tb!2893 () Bool)

(declare-fun t!3233 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3233) tb!2893))

(declare-fun result!2945 () Bool)

(assert (=> tb!2893 (= result!2945 true)))

(assert (=> b!11416 t!3233))

(declare-fun b_and!5469 () Bool)

(assert (= b_and!5465 (and (=> t!3233 result!2945) b_and!5469)))

(declare-fun m!14315 () Bool)

(assert (=> b!11416 m!14315))

(assert (=> b!11416 m!14315))

(declare-fun m!14317 () Bool)

(assert (=> b!11416 m!14317))

(assert (=> b!11400 d!8797))

(declare-fun d!8799 () Bool)

(declare-fun c!3375 () Bool)

(assert (=> d!8799 (= c!3375 (and (is-Cons!270 (append!122 xs!292 ys!54)) (is-Nil!271 (tail!500 (append!122 xs!292 ys!54)))))))

(declare-fun e!6414 () Balance!307)

(assert (=> d!8799 (= (foldRight1!103 (append!122 xs!292 ys!54) f!539) e!6414)))

(declare-fun b!11417 () Bool)

(assert (=> b!11417 (= e!6414 (head!488 (append!122 xs!292 ys!54)))))

(declare-fun b!11418 () Bool)

(assert (=> b!11418 (= e!6414 (dynLambda!430 f!539 (head!488 (append!122 xs!292 ys!54)) (foldRight1!103 (tail!500 (append!122 xs!292 ys!54)) f!539)))))

(assert (= (and d!8799 c!3375) b!11417))

(assert (= (and d!8799 (not c!3375)) b!11418))

(declare-fun b_lambda!5915 () Bool)

(assert (=> (not b_lambda!5915) (not b!11418)))

(declare-fun t!3235 () Bool)

(declare-fun tb!2895 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3235) tb!2895))

(declare-fun result!2947 () Bool)

(assert (=> tb!2895 (= result!2947 true)))

(assert (=> b!11418 t!3235))

(declare-fun b_and!5471 () Bool)

(assert (= b_and!5467 (and (=> t!3235 result!2947) b_and!5471)))

(declare-fun t!3237 () Bool)

(declare-fun tb!2897 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3237) tb!2897))

(declare-fun result!2949 () Bool)

(assert (=> tb!2897 (= result!2949 true)))

(assert (=> b!11418 t!3237))

(declare-fun b_and!5473 () Bool)

(assert (= b_and!5469 (and (=> t!3237 result!2949) b_and!5473)))

(declare-fun m!14319 () Bool)

(assert (=> b!11418 m!14319))

(assert (=> b!11418 m!14319))

(declare-fun m!14321 () Bool)

(assert (=> b!11418 m!14321))

(assert (=> b!11400 d!8799))

(declare-fun d!8801 () Bool)

(declare-fun c!3378 () Bool)

(assert (=> d!8801 (= c!3378 (is-Nil!271 xs!292))))

(declare-fun e!6417 () List!273)

(assert (=> d!8801 (= (append!122 xs!292 ys!54) e!6417)))

(declare-fun b!11423 () Bool)

(assert (=> b!11423 (= e!6417 ys!54)))

(declare-fun b!11424 () Bool)

(assert (=> b!11424 (= e!6417 (Cons!270 (head!488 xs!292) (append!122 (tail!500 xs!292) ys!54)))))

(assert (= (and d!8801 c!3378) b!11423))

(assert (= (and d!8801 (not c!3378)) b!11424))

(assert (=> b!11424 m!14287))

(assert (=> b!11400 d!8801))

(declare-fun d!8803 () Bool)

(assert (=> d!8803 (= (isEmpty!201 ys!54) (is-Nil!271 ys!54))))

(assert (=> b!11399 d!8803))

(declare-fun d!8805 () Bool)

(declare-fun c!3379 () Bool)

(assert (=> d!8805 (= c!3379 (is-Nil!271 (tail!500 xs!292)))))

(declare-fun e!6418 () List!273)

(assert (=> d!8805 (= (append!122 (tail!500 xs!292) ys!54) e!6418)))

(declare-fun b!11425 () Bool)

(assert (=> b!11425 (= e!6418 ys!54)))

(declare-fun b!11426 () Bool)

(assert (=> b!11426 (= e!6418 (Cons!270 (head!488 (tail!500 xs!292)) (append!122 (tail!500 (tail!500 xs!292)) ys!54)))))

(assert (= (and d!8805 c!3379) b!11425))

(assert (= (and d!8805 (not c!3379)) b!11426))

(declare-fun m!14323 () Bool)

(assert (=> b!11426 m!14323))

(assert (=> b!11397 d!8805))

(declare-fun d!8807 () Bool)

(assert (=> d!8807 (= (isEmpty!201 xs!292) (is-Nil!271 xs!292))))

(assert (=> start!2278 d!8807))

(declare-fun d!8809 () Bool)

(declare-fun res!4175 () Bool)

(declare-fun e!6421 () Bool)

(assert (=> d!8809 (=> (not res!4175) (not e!6421))))

(declare-fun dynLambda!431 (Int) Balance!307)

(assert (=> d!8809 (= res!4175 (= (dynLambda!431 (x!6484 thiss!745)) (dynLambda!431 (y!635 thiss!745))))))

(assert (=> d!8809 (= (inv!380 thiss!745) e!6421)))

(declare-fun b!11429 () Bool)

(declare-fun dynLambda!432 (Int) Bool)

(assert (=> b!11429 (= e!6421 (dynLambda!432 (evidence!186 thiss!745)))))

(assert (= (and d!8809 res!4175) b!11429))

(declare-fun b_lambda!5917 () Bool)

(assert (=> (not b_lambda!5917) (not d!8809)))

(declare-fun t!3239 () Bool)

(declare-fun tb!2899 () Bool)

(assert (=> (and b!11402 (= (x!6484 thiss!745) (x!6484 thiss!745)) t!3239) tb!2899))

(declare-fun result!2951 () Bool)

(assert (=> tb!2899 (= result!2951 true)))

(assert (=> d!8809 t!3239))

(declare-fun b_and!5475 () Bool)

(assert (= b_and!5453 (and (=> t!3239 result!2951) b_and!5475)))

(declare-fun t!3241 () Bool)

(declare-fun tb!2901 () Bool)

(assert (=> (and b!11402 (= (y!635 thiss!745) (x!6484 thiss!745)) t!3241) tb!2901))

(declare-fun result!2953 () Bool)

(assert (=> tb!2901 (= result!2953 true)))

(assert (=> d!8809 t!3241))

(declare-fun b_and!5477 () Bool)

(assert (= b_and!5455 (and (=> t!3241 result!2953) b_and!5477)))

(declare-fun b_lambda!5919 () Bool)

(assert (=> (not b_lambda!5919) (not d!8809)))

(declare-fun t!3243 () Bool)

(declare-fun tb!2903 () Bool)

(assert (=> (and b!11402 (= (x!6484 thiss!745) (y!635 thiss!745)) t!3243) tb!2903))

(declare-fun result!2955 () Bool)

(assert (=> tb!2903 (= result!2955 true)))

(assert (=> d!8809 t!3243))

(declare-fun b_and!5479 () Bool)

(assert (= b_and!5475 (and (=> t!3243 result!2955) b_and!5479)))

(declare-fun t!3245 () Bool)

(declare-fun tb!2905 () Bool)

(assert (=> (and b!11402 (= (y!635 thiss!745) (y!635 thiss!745)) t!3245) tb!2905))

(declare-fun result!2957 () Bool)

(assert (=> tb!2905 (= result!2957 true)))

(assert (=> d!8809 t!3245))

(declare-fun b_and!5481 () Bool)

(assert (= b_and!5477 (and (=> t!3245 result!2957) b_and!5481)))

(declare-fun b_lambda!5921 () Bool)

(assert (=> (not b_lambda!5921) (not b!11429)))

(declare-fun t!3247 () Bool)

(declare-fun tb!2907 () Bool)

(assert (=> (and b!11402 (= (evidence!186 thiss!745) (evidence!186 thiss!745)) t!3247) tb!2907))

(declare-fun result!2959 () Bool)

(assert (=> tb!2907 (= result!2959 true)))

(assert (=> b!11429 t!3247))

(declare-fun b_and!5483 () Bool)

(assert (= b_and!5457 (and (=> t!3247 result!2959) b_and!5483)))

(declare-fun m!14325 () Bool)

(assert (=> d!8809 m!14325))

(declare-fun m!14327 () Bool)

(assert (=> d!8809 m!14327))

(declare-fun m!14329 () Bool)

(assert (=> b!11429 m!14329))

(assert (=> start!2278 d!8809))

(declare-fun b_lambda!5923 () Bool)

(assert (= b_lambda!5915 (or (and b!11396 (= lambda!3047 f!539)) (and start!2278 b_free!1557) (and start!2278 b_free!1559 (= f!579 f!539)) b_lambda!5923)))

(declare-fun bs!2919 () Bool)

(declare-fun d!8811 () Bool)

(assert (= bs!2919 (and d!8811 b!11396)))

(assert (=> bs!2919 (= (dynLambda!430 lambda!3047 (head!488 (append!122 xs!292 ys!54)) (foldRight1!103 (tail!500 (append!122 xs!292 ys!54)) f!539)) (++!3 (head!488 (append!122 xs!292 ys!54)) (foldRight1!103 (tail!500 (append!122 xs!292 ys!54)) f!539)))))

(assert (=> bs!2919 m!14319))

(declare-fun m!14331 () Bool)

(assert (=> bs!2919 m!14331))

(assert (=> (and b!11396 (= lambda!3047 f!539) b!11418) d!8811))

(declare-fun b_lambda!5925 () Bool)

(assert (= b_lambda!5911 (or (and b!11396 (= lambda!3047 f!539)) (and start!2278 b_free!1557) (and start!2278 b_free!1559 (= f!579 f!539)) b_lambda!5925)))

(declare-fun bs!2920 () Bool)

(declare-fun d!8813 () Bool)

(assert (= bs!2920 (and d!8813 b!11396)))

(assert (=> bs!2920 (= (dynLambda!430 lambda!3047 (head!488 xs!292) (foldRight1!103 (tail!500 xs!292) f!539)) (++!3 (head!488 xs!292) (foldRight1!103 (tail!500 xs!292) f!539)))))

(assert (=> bs!2920 m!14311))

(declare-fun m!14333 () Bool)

(assert (=> bs!2920 m!14333))

(assert (=> (and b!11396 (= lambda!3047 f!539) b!11414) d!8813))

(declare-fun b_lambda!5927 () Bool)

(assert (= b_lambda!5921 (or (and b!11398 (= lambda!3050 (evidence!186 thiss!745))) (and b!11402 b_free!1565) b_lambda!5927)))

(declare-fun bs!2921 () Bool)

(declare-fun d!8815 () Bool)

(assert (= bs!2921 (and d!8815 b!11398)))

(declare-fun append!24 (List!273 List!273) Bool)

(assert (=> bs!2921 (= (dynLambda!432 lambda!3050) (append!24 (tail!500 xs!292) ys!54))))

(declare-fun m!14335 () Bool)

(assert (=> bs!2921 m!14335))

(assert (=> (and b!11398 (= lambda!3050 (evidence!186 thiss!745)) b!11429) d!8815))

(declare-fun b_lambda!5929 () Bool)

(assert (= b_lambda!5917 (or (and b!11398 (= lambda!3048 (x!6484 thiss!745))) (and b!11398 (= lambda!3049 (x!6484 thiss!745))) (and b!11402 b_free!1561) (and b!11402 b_free!1563 (= (y!635 thiss!745) (x!6484 thiss!745))) b_lambda!5929)))

(declare-fun bs!2922 () Bool)

(declare-fun d!8817 () Bool)

(assert (= bs!2922 (and d!8817 b!11398)))

(assert (=> bs!2922 (= (dynLambda!431 lambda!3048) (dynLambda!430 f!539 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)))))

(declare-fun b_lambda!5935 () Bool)

(assert (=> (not b_lambda!5935) (not bs!2922)))

(assert (=> bs!2922 t!3223))

(declare-fun b_and!5485 () Bool)

(assert (= b_and!5471 (and (=> t!3223 result!2935) b_and!5485)))

(assert (=> bs!2922 t!3225))

(declare-fun b_and!5487 () Bool)

(assert (= b_and!5473 (and (=> t!3225 result!2937) b_and!5487)))

(assert (=> bs!2922 m!14293))

(assert (=> bs!2922 m!14295))

(assert (=> bs!2922 m!14293))

(assert (=> bs!2922 m!14295))

(assert (=> bs!2922 m!14297))

(assert (=> (and b!11398 (= lambda!3048 (x!6484 thiss!745)) d!8809) d!8817))

(declare-fun bs!2923 () Bool)

(declare-fun d!8819 () Bool)

(assert (= bs!2923 (and d!8819 b!11398)))

(assert (=> bs!2923 (= (dynLambda!431 lambda!3049) (dynLambda!430 f!539 (head!488 xs!292) (dynLambda!430 f!539 (foldRight1!103 (tail!500 xs!292) f!539) (foldRight1!103 ys!54 f!539))))))

(declare-fun b_lambda!5937 () Bool)

(assert (=> (not b_lambda!5937) (not bs!2923)))

(declare-fun t!3249 () Bool)

(declare-fun tb!2909 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3249) tb!2909))

(declare-fun result!2961 () Bool)

(assert (=> tb!2909 (= result!2961 true)))

(assert (=> bs!2923 t!3249))

(declare-fun b_and!5489 () Bool)

(assert (= b_and!5485 (and (=> t!3249 result!2961) b_and!5489)))

(declare-fun t!3251 () Bool)

(declare-fun tb!2911 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3251) tb!2911))

(declare-fun result!2963 () Bool)

(assert (=> tb!2911 (= result!2963 true)))

(assert (=> bs!2923 t!3251))

(declare-fun b_and!5491 () Bool)

(assert (= b_and!5487 (and (=> t!3251 result!2963) b_and!5491)))

(declare-fun b_lambda!5939 () Bool)

(assert (=> (not b_lambda!5939) (not bs!2923)))

(declare-fun t!3253 () Bool)

(declare-fun tb!2913 () Bool)

(assert (=> (and start!2278 (= f!539 f!539) t!3253) tb!2913))

(declare-fun result!2965 () Bool)

(assert (=> tb!2913 (= result!2965 true)))

(assert (=> bs!2923 t!3253))

(declare-fun b_and!5493 () Bool)

(assert (= b_and!5489 (and (=> t!3253 result!2965) b_and!5493)))

(declare-fun tb!2915 () Bool)

(declare-fun t!3255 () Bool)

(assert (=> (and start!2278 (= f!579 f!539) t!3255) tb!2915))

(declare-fun result!2967 () Bool)

(assert (=> tb!2915 (= result!2967 true)))

(assert (=> bs!2923 t!3255))

(declare-fun b_and!5495 () Bool)

(assert (= b_and!5491 (and (=> t!3255 result!2967) b_and!5495)))

(assert (=> bs!2923 m!14311))

(declare-fun m!14337 () Bool)

(assert (=> bs!2923 m!14337))

(declare-fun m!14339 () Bool)

(assert (=> bs!2923 m!14339))

(assert (=> bs!2923 m!14295))

(assert (=> bs!2923 m!14311))

(assert (=> bs!2923 m!14295))

(assert (=> bs!2923 m!14337))

(assert (=> (and b!11398 (= lambda!3049 (x!6484 thiss!745)) d!8809) d!8819))

(declare-fun b_lambda!5931 () Bool)

(assert (= b_lambda!5913 (or (and b!11396 (= lambda!3047 f!539)) (and start!2278 b_free!1557) (and start!2278 b_free!1559 (= f!579 f!539)) b_lambda!5931)))

(declare-fun bs!2924 () Bool)

(declare-fun d!8821 () Bool)

(assert (= bs!2924 (and d!8821 b!11396)))

(assert (=> bs!2924 (= (dynLambda!430 lambda!3047 (head!488 ys!54) (foldRight1!103 (tail!500 ys!54) f!539)) (++!3 (head!488 ys!54) (foldRight1!103 (tail!500 ys!54) f!539)))))

(assert (=> bs!2924 m!14315))

(declare-fun m!14341 () Bool)

(assert (=> bs!2924 m!14341))

(assert (=> (and b!11396 (= lambda!3047 f!539) b!11416) d!8821))

(declare-fun b_lambda!5933 () Bool)

(assert (= b_lambda!5919 (or (and b!11398 (= lambda!3048 (y!635 thiss!745))) (and b!11398 (= lambda!3049 (y!635 thiss!745))) (and b!11402 b_free!1561 (= (x!6484 thiss!745) (y!635 thiss!745))) (and b!11402 b_free!1563) b_lambda!5933)))

(declare-fun bs!2925 () Bool)

(declare-fun d!8823 () Bool)

(assert (= bs!2925 (and d!8823 b!11398)))

(assert (=> bs!2925 (= (dynLambda!431 lambda!3048) (dynLambda!430 f!539 (foldRight1!103 xs!292 f!539) (foldRight1!103 ys!54 f!539)))))

(declare-fun b_lambda!5941 () Bool)

(assert (=> (not b_lambda!5941) (not bs!2925)))

(assert (=> bs!2925 t!3223))

(declare-fun b_and!5497 () Bool)

(assert (= b_and!5493 (and (=> t!3223 result!2935) b_and!5497)))

(assert (=> bs!2925 t!3225))

(declare-fun b_and!5499 () Bool)

(assert (= b_and!5495 (and (=> t!3225 result!2937) b_and!5499)))

(assert (=> bs!2925 m!14293))

(assert (=> bs!2925 m!14295))

(assert (=> bs!2925 m!14293))

(assert (=> bs!2925 m!14295))

(assert (=> bs!2925 m!14297))

(assert (=> (and b!11398 (= lambda!3048 (y!635 thiss!745)) d!8809) d!8823))

(declare-fun bs!2926 () Bool)

(declare-fun d!8825 () Bool)

(assert (= bs!2926 (and d!8825 b!11398)))

(assert (=> bs!2926 (= (dynLambda!431 lambda!3049) (dynLambda!430 f!539 (head!488 xs!292) (dynLambda!430 f!539 (foldRight1!103 (tail!500 xs!292) f!539) (foldRight1!103 ys!54 f!539))))))

(declare-fun b_lambda!5943 () Bool)

(assert (=> (not b_lambda!5943) (not bs!2926)))

(assert (=> bs!2926 t!3249))

(declare-fun b_and!5501 () Bool)

(assert (= b_and!5497 (and (=> t!3249 result!2961) b_and!5501)))

(assert (=> bs!2926 t!3251))

(declare-fun b_and!5503 () Bool)

(assert (= b_and!5499 (and (=> t!3251 result!2963) b_and!5503)))

(declare-fun b_lambda!5945 () Bool)

(assert (=> (not b_lambda!5945) (not bs!2926)))

(assert (=> bs!2926 t!3253))

(declare-fun b_and!5505 () Bool)

(assert (= b_and!5501 (and (=> t!3253 result!2965) b_and!5505)))

(assert (=> bs!2926 t!3255))

(declare-fun b_and!5507 () Bool)

(assert (= b_and!5503 (and (=> t!3255 result!2967) b_and!5507)))

(assert (=> bs!2926 m!14311))

(assert (=> bs!2926 m!14337))

(assert (=> bs!2926 m!14339))

(assert (=> bs!2926 m!14295))

(assert (=> bs!2926 m!14311))

(assert (=> bs!2926 m!14295))

(assert (=> bs!2926 m!14337))

(assert (=> (and b!11398 (= lambda!3049 (y!635 thiss!745)) d!8809) d!8825))

(push 1)

(assert (not b_lambda!5933))

(assert b_and!5481)

(assert (not bs!2924))

(assert (not b_lambda!5935))

(assert (not b!11424))

(assert (not b_lambda!5945))

(assert (not b_next!3771))

(assert (not b_lambda!5937))

(assert (not b!11418))

(assert (not bs!2922))

(assert (not b_lambda!5927))

(assert (not d!8793))

(assert b_and!5483)

(assert (not b_lambda!5931))

(assert (not b!11414))

(assert (not bs!2921))

(assert (not b_lambda!5929))

(assert (not bs!2926))

(assert (not b_lambda!5909))

(assert (not b!11426))

(assert b_and!5479)

(assert (not bs!2923))

(assert b_and!5507)

(assert (not bs!2925))

(assert (not b_next!3773))

(assert (not b_next!3779))

(assert (not b_lambda!5943))

(assert (not b!11416))

(assert (not b_lambda!5939))

(assert (not b_next!3781))

(assert (not bs!2920))

(assert (not bs!2919))

(assert (not b_lambda!5923))

(assert b_and!5505)

(assert (not b_lambda!5925))

(assert (not b_next!3783))

(assert (not b_lambda!5941))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5481)

(assert (not b_next!3771))

(assert b_and!5483)

(assert b_and!5479)

(assert b_and!5507)

(assert (not b_next!3773))

(assert (not b_next!3779))

(assert (not b_next!3781))

(assert b_and!5505)

(assert (not b_next!3783))

(check-sat)

(pop 1)

