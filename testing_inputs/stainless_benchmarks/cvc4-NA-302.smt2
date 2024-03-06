; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2314 () Bool)

(assert start!2314)

(declare-fun b_free!1587 () Bool)

(declare-fun b_next!3833 () Bool)

(assert (=> start!2314 (= b_free!1587 (not b_next!3833))))

(declare-fun tp!2544 () Bool)

(declare-fun b_and!5605 () Bool)

(assert (=> start!2314 (= tp!2544 b_and!5605)))

(declare-fun b_free!1589 () Bool)

(declare-fun b_next!3835 () Bool)

(assert (=> start!2314 (= b_free!1589 (not b_next!3835))))

(declare-fun tp!2545 () Bool)

(declare-fun b_and!5607 () Bool)

(assert (=> start!2314 (= tp!2545 b_and!5607)))

(declare-fun b!11553 () Bool)

(declare-fun b_free!1591 () Bool)

(declare-fun b_next!3837 () Bool)

(assert (=> b!11553 (= b_free!1591 (not b_next!3837))))

(declare-fun tp!2542 () Bool)

(declare-fun b_and!5609 () Bool)

(assert (=> b!11553 (= tp!2542 b_and!5609)))

(declare-fun b_free!1593 () Bool)

(declare-fun b_next!3839 () Bool)

(assert (=> b!11553 (= b_free!1593 (not b_next!3839))))

(declare-fun tp!2543 () Bool)

(declare-fun b_and!5611 () Bool)

(assert (=> b!11553 (= tp!2543 b_and!5611)))

(declare-fun f!539 () Int)

(declare-fun b_next!3841 () Bool)

(declare-fun b!11548 () Bool)

(declare-fun lambda!3083 () Int)

(assert (=> start!2314 (= b_next!3833 (or (and b!11548 (= lambda!3083 f!539)) b_next!3841))))

(declare-fun b!11549 () Bool)

(assert (=> b!11549 true))

(declare-fun lambda!3084 () Int)

(declare-fun order!253 () Int)

(declare-fun order!251 () Int)

(declare-fun dynLambda!443 (Int Int) Int)

(declare-fun dynLambda!444 (Int Int) Int)

(assert (=> b!11549 (< (dynLambda!443 order!251 f!539) (dynLambda!444 order!253 lambda!3084))))

(assert (=> b!11549 true))

(assert (=> b!11549 true))

(declare-datatypes () ((Balance!313 (Balance!314 (extraOpen!197 Int) (extraClose!197 Int)))))

(declare-datatypes () ((EqProof!114 (EqProof!115 (x!6549 Int) (y!638 Int)))))

(declare-fun thiss!723 () EqProof!114)

(declare-fun b_next!3843 () Bool)

(assert (=> b!11553 (= b_next!3837 (or (and b!11549 (= lambda!3084 (x!6549 thiss!723))) b_next!3843))))

(declare-fun b_next!3845 () Bool)

(assert (=> b!11553 (= b_next!3839 (or (and b!11549 (= lambda!3084 (y!638 thiss!723))) b_next!3845))))

(declare-fun b!11554 () Bool)

(assert (=> b!11554 true))

(declare-fun lambda!3085 () Int)

(declare-fun order!255 () Int)

(declare-fun dynLambda!445 (Int Int) Int)

(assert (=> b!11554 (< (dynLambda!443 order!251 f!539) (dynLambda!445 order!255 lambda!3085))))

(assert (=> b!11554 true))

(declare-fun b_next!3847 () Bool)

(declare-fun proof!206 () Int)

(assert (=> start!2314 (= b_next!3835 (or (and b!11554 (= lambda!3085 proof!206)) b_next!3847))))

(declare-fun res!4249 () Bool)

(declare-fun e!6462 () Bool)

(assert (=> b!11548 (=> (not res!4249) (not e!6462))))

(assert (=> b!11548 (= res!4249 (= f!539 lambda!3083))))

(declare-fun res!4247 () Bool)

(assert (=> b!11549 (=> (not res!4247) (not e!6462))))

(assert (=> b!11549 (= res!4247 (= thiss!723 (EqProof!115 lambda!3084 lambda!3084)))))

(declare-fun b!11550 () Bool)

(declare-fun res!4245 () Bool)

(assert (=> b!11550 (=> (not res!4245) (not e!6462))))

(declare-datatypes () ((List!276 (Nil!274) (Cons!273 (head!491 Balance!313) (tail!503 List!276)))))

(declare-fun ys!54 () List!276)

(declare-datatypes () ((ProofOps!252 (ProofOps!253 (prop!259 Bool)))))

(declare-fun thiss!710 () ProofOps!252)

(declare-fun xs!292 () List!276)

(declare-fun dynLambda!446 (Int Balance!313 Balance!313) Balance!313)

(declare-fun foldRight1!106 (List!276 Int) Balance!313)

(declare-fun append!125 (List!276 List!276) List!276)

(assert (=> b!11550 (= res!4245 (= thiss!710 (ProofOps!253 (= (dynLambda!446 f!539 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)) (foldRight1!106 (append!125 xs!292 ys!54) f!539)))))))

(declare-fun b!11551 () Bool)

(declare-fun res!4248 () Bool)

(assert (=> b!11551 (=> (not res!4248) (not e!6462))))

(declare-fun isEmpty!204 (List!276) Bool)

(assert (=> b!11551 (= res!4248 (not (isEmpty!204 ys!54)))))

(declare-fun b!11552 () Bool)

(declare-fun res!4244 () Bool)

(assert (=> b!11552 (=> (not res!4244) (not e!6462))))

(assert (=> b!11552 (= res!4244 (and (is-Cons!273 xs!292) (is-Nil!274 (tail!503 xs!292))))))

(declare-fun e!6461 () Bool)

(assert (=> b!11553 (= e!6461 (and tp!2542 tp!2543))))

(declare-fun res!4246 () Bool)

(assert (=> start!2314 (=> (not res!4246) (not e!6462))))

(assert (=> start!2314 (= res!4246 (not (isEmpty!204 xs!292)))))

(assert (=> start!2314 e!6462))

(assert (=> start!2314 tp!2544))

(declare-fun inv!383 (EqProof!114) Bool)

(assert (=> start!2314 (and (inv!383 thiss!723) e!6461)))

(assert (=> start!2314 true))

(assert (=> start!2314 tp!2545))

(declare-fun res!4250 () Bool)

(assert (=> b!11554 (=> (not res!4250) (not e!6462))))

(assert (=> b!11554 (= res!4250 (= proof!206 lambda!3085))))

(declare-fun b!11555 () Bool)

(declare-fun dynLambda!447 (Int) Bool)

(assert (=> b!11555 (= e!6462 (not (dynLambda!447 proof!206)))))

(assert (= (and start!2314 res!4246) b!11551))

(assert (= (and b!11551 res!4248) b!11548))

(assert (= (and b!11548 res!4249) b!11550))

(assert (= (and b!11550 res!4245) b!11552))

(assert (= (and b!11552 res!4244) b!11549))

(assert (= (and b!11549 res!4247) b!11554))

(assert (= (and b!11554 res!4250) b!11555))

(assert (= start!2314 b!11553))

(declare-fun b_lambda!6015 () Bool)

(assert (=> (not b_lambda!6015) (not b!11550)))

(declare-fun t!3313 () Bool)

(declare-fun tb!2973 () Bool)

(assert (=> (and start!2314 (= f!539 f!539) t!3313) tb!2973))

(declare-fun result!3025 () Bool)

(assert (=> tb!2973 (= result!3025 true)))

(assert (=> b!11550 t!3313))

(declare-fun b_and!5613 () Bool)

(assert (= b_and!5605 (and (=> t!3313 result!3025) b_and!5613)))

(declare-fun b_lambda!6017 () Bool)

(assert (=> (not b_lambda!6017) (not b!11555)))

(declare-fun t!3315 () Bool)

(declare-fun tb!2975 () Bool)

(assert (=> (and start!2314 (= proof!206 proof!206) t!3315) tb!2975))

(declare-fun result!3027 () Bool)

(assert (=> tb!2975 (= result!3027 true)))

(assert (=> b!11555 t!3315))

(declare-fun b_and!5615 () Bool)

(assert (= b_and!5607 (and (=> t!3315 result!3027) b_and!5615)))

(declare-fun m!14451 () Bool)

(assert (=> b!11550 m!14451))

(declare-fun m!14453 () Bool)

(assert (=> b!11550 m!14453))

(declare-fun m!14455 () Bool)

(assert (=> b!11550 m!14455))

(assert (=> b!11550 m!14453))

(assert (=> b!11550 m!14455))

(declare-fun m!14457 () Bool)

(assert (=> b!11550 m!14457))

(assert (=> b!11550 m!14451))

(declare-fun m!14459 () Bool)

(assert (=> b!11550 m!14459))

(declare-fun m!14461 () Bool)

(assert (=> b!11551 m!14461))

(declare-fun m!14463 () Bool)

(assert (=> start!2314 m!14463))

(declare-fun m!14465 () Bool)

(assert (=> start!2314 m!14465))

(declare-fun m!14467 () Bool)

(assert (=> b!11555 m!14467))

(push 1)

(assert b_and!5609)

(assert (not b!11550))

(assert (not b_lambda!6015))

(assert b_and!5613)

(assert b_and!5611)

(assert (not b_next!3841))

(assert (not b_next!3845))

(assert (not b!11551))

(assert b_and!5615)

(assert (not b_lambda!6017))

(assert (not b_next!3847))

(assert (not start!2314))

(assert (not b_next!3843))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5609)

(assert b_and!5613)

(assert b_and!5611)

(assert (not b_next!3841))

(assert (not b_next!3845))

(assert b_and!5615)

(assert (not b_next!3847))

(assert (not b_next!3843))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6019 () Bool)

(assert (= b_lambda!6015 (or (and b!11548 (= lambda!3083 f!539)) (and start!2314 b_free!1587) b_lambda!6019)))

(declare-fun bs!2950 () Bool)

(declare-fun d!8905 () Bool)

(assert (= bs!2950 (and d!8905 b!11548)))

(declare-fun ++!3 (Balance!313 Balance!313) Balance!313)

(assert (=> bs!2950 (= (dynLambda!446 lambda!3083 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)) (++!3 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)))))

(assert (=> bs!2950 m!14453))

(assert (=> bs!2950 m!14455))

(declare-fun m!14469 () Bool)

(assert (=> bs!2950 m!14469))

(assert (=> (and b!11548 (= lambda!3083 f!539) b!11550) d!8905))

(declare-fun b_lambda!6021 () Bool)

(assert (= b_lambda!6017 (or (and b!11554 (= lambda!3085 proof!206)) (and start!2314 b_free!1589) b_lambda!6021)))

(declare-fun bs!2951 () Bool)

(declare-fun d!8907 () Bool)

(assert (= bs!2951 (and d!8907 b!11554)))

(assert (=> bs!2951 (= (dynLambda!447 lambda!3085) (= (foldRight1!106 xs!292 f!539) (head!491 xs!292)))))

(assert (=> bs!2951 m!14453))

(assert (=> (and b!11554 (= lambda!3085 proof!206) b!11555) d!8907))

(push 1)

(assert b_and!5609)

(assert (not b!11550))

(assert (not b_lambda!6019))

(assert (not bs!2950))

(assert b_and!5613)

(assert b_and!5611)

(assert (not b_next!3841))

(assert (not b_next!3845))

(assert (not b_lambda!6021))

(assert (not bs!2951))

(assert (not b!11551))

(assert b_and!5615)

(assert (not b_next!3847))

(assert (not start!2314))

(assert (not b_next!3843))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5609)

(assert b_and!5613)

(assert b_and!5611)

(assert (not b_next!3841))

(assert (not b_next!3845))

(assert b_and!5615)

(assert (not b_next!3847))

(assert (not b_next!3843))

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1772 () Int)

(declare-fun d!8909 () Bool)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8909 (= lt!1772 (min!4 (extraOpen!197 (foldRight1!106 xs!292 f!539)) (extraClose!197 (foldRight1!106 ys!54 f!539))))))

(assert (=> d!8909 (= (++!3 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)) (Balance!314 (- (+ (extraOpen!197 (foldRight1!106 xs!292 f!539)) (extraOpen!197 (foldRight1!106 ys!54 f!539))) lt!1772) (- (+ (extraClose!197 (foldRight1!106 xs!292 f!539)) (extraClose!197 (foldRight1!106 ys!54 f!539))) lt!1772)))))

(declare-fun bs!2952 () Bool)

(assert (= bs!2952 d!8909))

(declare-fun m!14471 () Bool)

(assert (=> bs!2952 m!14471))

(assert (=> bs!2950 d!8909))

(declare-fun d!8911 () Bool)

(declare-fun c!3399 () Bool)

(assert (=> d!8911 (= c!3399 (and (is-Cons!273 xs!292) (is-Nil!274 (tail!503 xs!292))))))

(declare-fun e!6465 () Balance!313)

(assert (=> d!8911 (= (foldRight1!106 xs!292 f!539) e!6465)))

(declare-fun b!11568 () Bool)

(assert (=> b!11568 (= e!6465 (head!491 xs!292))))

(declare-fun b!11569 () Bool)

(assert (=> b!11569 (= e!6465 (dynLambda!446 f!539 (head!491 xs!292) (foldRight1!106 (tail!503 xs!292) f!539)))))

(assert (= (and d!8911 c!3399) b!11568))

(assert (= (and d!8911 (not c!3399)) b!11569))

(declare-fun b_lambda!6023 () Bool)

(assert (=> (not b_lambda!6023) (not b!11569)))

(declare-fun t!3317 () Bool)

(declare-fun tb!2977 () Bool)

(assert (=> (and start!2314 (= f!539 f!539) t!3317) tb!2977))

(declare-fun result!3029 () Bool)

(assert (=> tb!2977 (= result!3029 true)))

(assert (=> b!11569 t!3317))

(declare-fun b_and!5617 () Bool)

(assert (= b_and!5613 (and (=> t!3317 result!3029) b_and!5617)))

(declare-fun m!14473 () Bool)

(assert (=> b!11569 m!14473))

(assert (=> b!11569 m!14473))

(declare-fun m!14475 () Bool)

(assert (=> b!11569 m!14475))

(assert (=> bs!2951 d!8911))

(declare-fun d!8913 () Bool)

(assert (=> d!8913 (= (isEmpty!204 xs!292) (is-Nil!274 xs!292))))

(assert (=> start!2314 d!8913))

(declare-fun d!8915 () Bool)

(declare-fun dynLambda!448 (Int) Balance!313)

(assert (=> d!8915 (= (inv!383 thiss!723) (= (dynLambda!448 (x!6549 thiss!723)) (dynLambda!448 (y!638 thiss!723))))))

(declare-fun b_lambda!6025 () Bool)

(assert (=> (not b_lambda!6025) (not d!8915)))

(declare-fun t!3319 () Bool)

(declare-fun tb!2979 () Bool)

(assert (=> (and b!11553 (= (x!6549 thiss!723) (x!6549 thiss!723)) t!3319) tb!2979))

(declare-fun result!3031 () Bool)

(assert (=> tb!2979 (= result!3031 true)))

(assert (=> d!8915 t!3319))

(declare-fun b_and!5619 () Bool)

(assert (= b_and!5609 (and (=> t!3319 result!3031) b_and!5619)))

(declare-fun t!3321 () Bool)

(declare-fun tb!2981 () Bool)

(assert (=> (and b!11553 (= (y!638 thiss!723) (x!6549 thiss!723)) t!3321) tb!2981))

(declare-fun result!3033 () Bool)

(assert (=> tb!2981 (= result!3033 true)))

(assert (=> d!8915 t!3321))

(declare-fun b_and!5621 () Bool)

(assert (= b_and!5611 (and (=> t!3321 result!3033) b_and!5621)))

(declare-fun b_lambda!6027 () Bool)

(assert (=> (not b_lambda!6027) (not d!8915)))

(declare-fun t!3323 () Bool)

(declare-fun tb!2983 () Bool)

(assert (=> (and b!11553 (= (x!6549 thiss!723) (y!638 thiss!723)) t!3323) tb!2983))

(declare-fun result!3035 () Bool)

(assert (=> tb!2983 (= result!3035 true)))

(assert (=> d!8915 t!3323))

(declare-fun b_and!5623 () Bool)

(assert (= b_and!5619 (and (=> t!3323 result!3035) b_and!5623)))

(declare-fun t!3325 () Bool)

(declare-fun tb!2985 () Bool)

(assert (=> (and b!11553 (= (y!638 thiss!723) (y!638 thiss!723)) t!3325) tb!2985))

(declare-fun result!3037 () Bool)

(assert (=> tb!2985 (= result!3037 true)))

(assert (=> d!8915 t!3325))

(declare-fun b_and!5625 () Bool)

(assert (= b_and!5621 (and (=> t!3325 result!3037) b_and!5625)))

(declare-fun m!14477 () Bool)

(assert (=> d!8915 m!14477))

(declare-fun m!14479 () Bool)

(assert (=> d!8915 m!14479))

(assert (=> start!2314 d!8915))

(declare-fun d!8917 () Bool)

(assert (=> d!8917 (= (isEmpty!204 ys!54) (is-Nil!274 ys!54))))

(assert (=> b!11551 d!8917))

(assert (=> b!11550 d!8911))

(declare-fun d!8919 () Bool)

(declare-fun c!3400 () Bool)

(assert (=> d!8919 (= c!3400 (and (is-Cons!273 ys!54) (is-Nil!274 (tail!503 ys!54))))))

(declare-fun e!6466 () Balance!313)

(assert (=> d!8919 (= (foldRight1!106 ys!54 f!539) e!6466)))

(declare-fun b!11570 () Bool)

(assert (=> b!11570 (= e!6466 (head!491 ys!54))))

(declare-fun b!11571 () Bool)

(assert (=> b!11571 (= e!6466 (dynLambda!446 f!539 (head!491 ys!54) (foldRight1!106 (tail!503 ys!54) f!539)))))

(assert (= (and d!8919 c!3400) b!11570))

(assert (= (and d!8919 (not c!3400)) b!11571))

(declare-fun b_lambda!6029 () Bool)

(assert (=> (not b_lambda!6029) (not b!11571)))

(declare-fun t!3327 () Bool)

(declare-fun tb!2987 () Bool)

(assert (=> (and start!2314 (= f!539 f!539) t!3327) tb!2987))

(declare-fun result!3039 () Bool)

(assert (=> tb!2987 (= result!3039 true)))

(assert (=> b!11571 t!3327))

(declare-fun b_and!5627 () Bool)

(assert (= b_and!5617 (and (=> t!3327 result!3039) b_and!5627)))

(declare-fun m!14481 () Bool)

(assert (=> b!11571 m!14481))

(assert (=> b!11571 m!14481))

(declare-fun m!14483 () Bool)

(assert (=> b!11571 m!14483))

(assert (=> b!11550 d!8919))

(declare-fun d!8921 () Bool)

(declare-fun c!3401 () Bool)

(assert (=> d!8921 (= c!3401 (and (is-Cons!273 (append!125 xs!292 ys!54)) (is-Nil!274 (tail!503 (append!125 xs!292 ys!54)))))))

(declare-fun e!6467 () Balance!313)

(assert (=> d!8921 (= (foldRight1!106 (append!125 xs!292 ys!54) f!539) e!6467)))

(declare-fun b!11572 () Bool)

(assert (=> b!11572 (= e!6467 (head!491 (append!125 xs!292 ys!54)))))

(declare-fun b!11573 () Bool)

(assert (=> b!11573 (= e!6467 (dynLambda!446 f!539 (head!491 (append!125 xs!292 ys!54)) (foldRight1!106 (tail!503 (append!125 xs!292 ys!54)) f!539)))))

(assert (= (and d!8921 c!3401) b!11572))

(assert (= (and d!8921 (not c!3401)) b!11573))

(declare-fun b_lambda!6031 () Bool)

(assert (=> (not b_lambda!6031) (not b!11573)))

(declare-fun t!3329 () Bool)

(declare-fun tb!2989 () Bool)

(assert (=> (and start!2314 (= f!539 f!539) t!3329) tb!2989))

(declare-fun result!3041 () Bool)

(assert (=> tb!2989 (= result!3041 true)))

(assert (=> b!11573 t!3329))

(declare-fun b_and!5629 () Bool)

(assert (= b_and!5627 (and (=> t!3329 result!3041) b_and!5629)))

(declare-fun m!14485 () Bool)

(assert (=> b!11573 m!14485))

(assert (=> b!11573 m!14485))

(declare-fun m!14487 () Bool)

(assert (=> b!11573 m!14487))

(assert (=> b!11550 d!8921))

(declare-fun d!8923 () Bool)

(declare-fun c!3404 () Bool)

(assert (=> d!8923 (= c!3404 (is-Nil!274 xs!292))))

(declare-fun e!6470 () List!276)

(assert (=> d!8923 (= (append!125 xs!292 ys!54) e!6470)))

(declare-fun b!11578 () Bool)

(assert (=> b!11578 (= e!6470 ys!54)))

(declare-fun b!11579 () Bool)

(assert (=> b!11579 (= e!6470 (Cons!273 (head!491 xs!292) (append!125 (tail!503 xs!292) ys!54)))))

(assert (= (and d!8923 c!3404) b!11578))

(assert (= (and d!8923 (not c!3404)) b!11579))

(declare-fun m!14489 () Bool)

(assert (=> b!11579 m!14489))

(assert (=> b!11550 d!8923))

(declare-fun b_lambda!6033 () Bool)

(assert (= b_lambda!6029 (or (and b!11548 (= lambda!3083 f!539)) (and start!2314 b_free!1587) b_lambda!6033)))

(declare-fun bs!2953 () Bool)

(declare-fun d!8925 () Bool)

(assert (= bs!2953 (and d!8925 b!11548)))

(assert (=> bs!2953 (= (dynLambda!446 lambda!3083 (head!491 ys!54) (foldRight1!106 (tail!503 ys!54) f!539)) (++!3 (head!491 ys!54) (foldRight1!106 (tail!503 ys!54) f!539)))))

(assert (=> bs!2953 m!14481))

(declare-fun m!14491 () Bool)

(assert (=> bs!2953 m!14491))

(assert (=> (and b!11548 (= lambda!3083 f!539) b!11571) d!8925))

(declare-fun b_lambda!6035 () Bool)

(assert (= b_lambda!6031 (or (and b!11548 (= lambda!3083 f!539)) (and start!2314 b_free!1587) b_lambda!6035)))

(declare-fun bs!2954 () Bool)

(declare-fun d!8927 () Bool)

(assert (= bs!2954 (and d!8927 b!11548)))

(assert (=> bs!2954 (= (dynLambda!446 lambda!3083 (head!491 (append!125 xs!292 ys!54)) (foldRight1!106 (tail!503 (append!125 xs!292 ys!54)) f!539)) (++!3 (head!491 (append!125 xs!292 ys!54)) (foldRight1!106 (tail!503 (append!125 xs!292 ys!54)) f!539)))))

(assert (=> bs!2954 m!14485))

(declare-fun m!14493 () Bool)

(assert (=> bs!2954 m!14493))

(assert (=> (and b!11548 (= lambda!3083 f!539) b!11573) d!8927))

(declare-fun b_lambda!6037 () Bool)

(assert (= b_lambda!6025 (or (and b!11549 (= lambda!3084 (x!6549 thiss!723))) (and b!11553 b_free!1591) (and b!11553 b_free!1593 (= (y!638 thiss!723) (x!6549 thiss!723))) b_lambda!6037)))

(declare-fun bs!2955 () Bool)

(declare-fun d!8929 () Bool)

(assert (= bs!2955 (and d!8929 b!11549)))

(assert (=> bs!2955 (= (dynLambda!448 lambda!3084) (dynLambda!446 f!539 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)))))

(declare-fun b_lambda!6043 () Bool)

(assert (=> (not b_lambda!6043) (not bs!2955)))

(assert (=> bs!2955 t!3313))

(declare-fun b_and!5631 () Bool)

(assert (= b_and!5629 (and (=> t!3313 result!3025) b_and!5631)))

(assert (=> bs!2955 m!14453))

(assert (=> bs!2955 m!14455))

(assert (=> bs!2955 m!14453))

(assert (=> bs!2955 m!14455))

(assert (=> bs!2955 m!14457))

(assert (=> (and b!11549 (= lambda!3084 (x!6549 thiss!723)) d!8915) d!8929))

(declare-fun b_lambda!6039 () Bool)

(assert (= b_lambda!6023 (or (and b!11548 (= lambda!3083 f!539)) (and start!2314 b_free!1587) b_lambda!6039)))

(declare-fun bs!2956 () Bool)

(declare-fun d!8931 () Bool)

(assert (= bs!2956 (and d!8931 b!11548)))

(assert (=> bs!2956 (= (dynLambda!446 lambda!3083 (head!491 xs!292) (foldRight1!106 (tail!503 xs!292) f!539)) (++!3 (head!491 xs!292) (foldRight1!106 (tail!503 xs!292) f!539)))))

(assert (=> bs!2956 m!14473))

(declare-fun m!14495 () Bool)

(assert (=> bs!2956 m!14495))

(assert (=> (and b!11548 (= lambda!3083 f!539) b!11569) d!8931))

(declare-fun b_lambda!6041 () Bool)

(assert (= b_lambda!6027 (or (and b!11549 (= lambda!3084 (y!638 thiss!723))) (and b!11553 b_free!1591 (= (x!6549 thiss!723) (y!638 thiss!723))) (and b!11553 b_free!1593) b_lambda!6041)))

(declare-fun bs!2957 () Bool)

(declare-fun d!8933 () Bool)

(assert (= bs!2957 (and d!8933 b!11549)))

(assert (=> bs!2957 (= (dynLambda!448 lambda!3084) (dynLambda!446 f!539 (foldRight1!106 xs!292 f!539) (foldRight1!106 ys!54 f!539)))))

(declare-fun b_lambda!6045 () Bool)

(assert (=> (not b_lambda!6045) (not bs!2957)))

(assert (=> bs!2957 t!3313))

(declare-fun b_and!5633 () Bool)

(assert (= b_and!5631 (and (=> t!3313 result!3025) b_and!5633)))

(assert (=> bs!2957 m!14453))

(assert (=> bs!2957 m!14455))

(assert (=> bs!2957 m!14453))

(assert (=> bs!2957 m!14455))

(assert (=> bs!2957 m!14457))

(assert (=> (and b!11549 (= lambda!3084 (y!638 thiss!723)) d!8915) d!8933))

(push 1)

(assert (not bs!2955))

(assert (not b!11571))

(assert (not b_lambda!6019))

(assert (not b_lambda!6035))

(assert (not bs!2956))

(assert (not b_next!3841))

(assert (not b_lambda!6033))

(assert b_and!5633)

(assert (not b_next!3845))

(assert (not b_lambda!6021))

(assert (not bs!2953))

(assert b_and!5625)

(assert (not b!11579))

(assert (not b_lambda!6037))

(assert (not b_lambda!6041))

(assert b_and!5615)

(assert (not b_next!3847))

(assert (not b!11573))

(assert (not d!8909))

(assert (not b_lambda!6043))

(assert (not b_lambda!6039))

(assert (not b_next!3843))

(assert (not bs!2957))

(assert (not b!11569))

(assert (not b_lambda!6045))

(assert (not bs!2954))

(assert b_and!5623)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3841))

(assert b_and!5633)

(assert (not b_next!3845))

(assert b_and!5625)

(assert b_and!5615)

(assert (not b_next!3847))

(assert (not b_next!3843))

(assert b_and!5623)

(check-sat)

(pop 1)

