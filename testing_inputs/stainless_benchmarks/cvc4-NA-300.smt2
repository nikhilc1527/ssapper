; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2290 () Bool)

(assert start!2290)

(declare-fun b_free!1567 () Bool)

(declare-fun b_next!3785 () Bool)

(assert (=> start!2290 (= b_free!1567 (not b_next!3785))))

(declare-fun tp!2518 () Bool)

(declare-fun b_and!5509 () Bool)

(assert (=> start!2290 (= tp!2518 b_and!5509)))

(declare-fun b_free!1569 () Bool)

(declare-fun b_next!3787 () Bool)

(assert (=> start!2290 (= b_free!1569 (not b_next!3787))))

(declare-fun tp!2514 () Bool)

(declare-fun b_and!5511 () Bool)

(assert (=> start!2290 (= tp!2514 b_and!5511)))

(declare-fun b!11455 () Bool)

(declare-fun b_free!1571 () Bool)

(declare-fun b_next!3789 () Bool)

(assert (=> b!11455 (= b_free!1571 (not b_next!3789))))

(declare-fun tp!2517 () Bool)

(declare-fun b_and!5513 () Bool)

(assert (=> b!11455 (= tp!2517 b_and!5513)))

(declare-fun b_free!1573 () Bool)

(declare-fun b_next!3791 () Bool)

(assert (=> b!11455 (= b_free!1573 (not b_next!3791))))

(declare-fun tp!2515 () Bool)

(declare-fun b_and!5515 () Bool)

(assert (=> b!11455 (= tp!2515 b_and!5515)))

(declare-fun b_free!1575 () Bool)

(declare-fun b_next!3793 () Bool)

(assert (=> b!11455 (= b_free!1575 (not b_next!3793))))

(declare-fun tp!2516 () Bool)

(declare-fun b_and!5517 () Bool)

(assert (=> b!11455 (= tp!2516 b_and!5517)))

(declare-fun f!539 () Int)

(declare-fun b!11449 () Bool)

(declare-fun b_next!3795 () Bool)

(declare-fun lambda!3059 () Int)

(assert (=> start!2290 (= b_next!3785 (or (and b!11449 (= lambda!3059 f!539)) b_next!3795))))

(declare-fun f!581 () Int)

(declare-fun b_next!3797 () Bool)

(assert (=> start!2290 (= b_next!3787 (or (and b!11449 (= lambda!3059 f!581)) b_next!3797))))

(declare-fun b!11448 () Bool)

(assert (=> b!11448 true))

(declare-fun order!243 () Int)

(declare-fun order!245 () Int)

(declare-fun lambda!3060 () Int)

(declare-fun dynLambda!433 (Int Int) Int)

(declare-fun dynLambda!434 (Int Int) Int)

(assert (=> b!11448 (< (dynLambda!433 order!243 f!539) (dynLambda!434 order!245 lambda!3060))))

(assert (=> b!11448 true))

(assert (=> b!11448 true))

(declare-datatypes () ((Balance!309 (Balance!310 (extraOpen!195 Int) (extraClose!195 Int)))))

(declare-datatypes () ((EqEvidence!240 (EqEvidence!241 (x!6504 Int) (y!636 Int) (evidence!187 Int)))))

(declare-fun thiss!744 () EqEvidence!240)

(declare-fun b_next!3799 () Bool)

(assert (=> b!11455 (= b_next!3789 (or (and b!11448 (= lambda!3060 (x!6504 thiss!744))) b_next!3799))))

(declare-fun b_next!3801 () Bool)

(assert (=> b!11455 (= b_next!3791 (or (and b!11448 (= lambda!3060 (y!636 thiss!744))) b_next!3801))))

(declare-fun lambda!3061 () Int)

(assert (=> b!11448 (not (= lambda!3061 lambda!3060))))

(assert (=> b!11448 true))

(assert (=> b!11448 (< (dynLambda!433 order!243 f!539) (dynLambda!434 order!245 lambda!3061))))

(assert (=> b!11448 true))

(assert (=> b!11448 true))

(declare-fun b_next!3803 () Bool)

(assert (=> b!11455 (= b_next!3799 (or (and b!11448 (= lambda!3061 (x!6504 thiss!744))) b_next!3803))))

(declare-fun b_next!3805 () Bool)

(assert (=> b!11455 (= b_next!3801 (or (and b!11448 (= lambda!3061 (y!636 thiss!744))) b_next!3805))))

(declare-fun m!14343 () Bool)

(assert (=> b!11448 m!14343))

(declare-fun lambda!3062 () Int)

(declare-fun dynLambda!435 (Int) Bool)

(assert (=> (and b!11455 b!11448 (= (dynLambda!435 lambda!3062) (dynLambda!435 (evidence!187 thiss!744)))) (= lambda!3062 (evidence!187 thiss!744))))

(declare-fun b_next!3807 () Bool)

(assert (=> b!11455 (= b_next!3793 (or (and b!11448 (= lambda!3062 (evidence!187 thiss!744))) b_next!3807))))

(declare-fun res!4197 () Bool)

(declare-fun e!6427 () Bool)

(assert (=> b!11448 (=> (not res!4197) (not e!6427))))

(assert (=> b!11448 (= res!4197 (= thiss!744 (EqEvidence!241 lambda!3060 lambda!3061 lambda!3062)))))

(declare-fun res!4199 () Bool)

(assert (=> b!11449 (=> (not res!4199) (not e!6427))))

(assert (=> b!11449 (= res!4199 (= f!539 lambda!3059))))

(declare-fun b!11450 () Bool)

(declare-fun res!4195 () Bool)

(assert (=> b!11450 (=> (not res!4195) (not e!6427))))

(declare-datatypes () ((List!274 (Nil!272) (Cons!271 (head!489 Balance!309) (tail!501 List!274)))))

(declare-fun xs!292 () List!274)

(assert (=> b!11450 (= res!4195 (or (not (is-Cons!271 xs!292)) (not (is-Nil!272 (tail!501 xs!292)))))))

(declare-fun res!4193 () Bool)

(assert (=> start!2290 (=> (not res!4193) (not e!6427))))

(declare-fun isEmpty!202 (List!274) Bool)

(assert (=> start!2290 (= res!4193 (not (isEmpty!202 xs!292)))))

(assert (=> start!2290 e!6427))

(assert (=> start!2290 tp!2518))

(assert (=> start!2290 tp!2514))

(assert (=> start!2290 true))

(declare-fun e!6426 () Bool)

(declare-fun inv!381 (EqEvidence!240) Bool)

(assert (=> start!2290 (and (inv!381 thiss!744) e!6426)))

(declare-fun b!11451 () Bool)

(declare-fun res!4198 () Bool)

(assert (=> b!11451 (=> (not res!4198) (not e!6427))))

(declare-fun ys!54 () List!274)

(assert (=> b!11451 (= res!4198 (not (isEmpty!202 ys!54)))))

(declare-fun b!11452 () Bool)

(declare-fun thiss!795 () List!274)

(assert (=> b!11452 (= e!6427 (isEmpty!202 thiss!795))))

(declare-fun b!11453 () Bool)

(declare-fun res!4194 () Bool)

(assert (=> b!11453 (=> (not res!4194) (not e!6427))))

(assert (=> b!11453 (= res!4194 (= f!581 f!539))))

(declare-fun b!11454 () Bool)

(declare-fun res!4196 () Bool)

(assert (=> b!11454 (=> (not res!4196) (not e!6427))))

(declare-datatypes () ((ProofOps!248 (ProofOps!249 (prop!257 Bool)))))

(declare-fun thiss!710 () ProofOps!248)

(declare-fun dynLambda!436 (Int Balance!309 Balance!309) Balance!309)

(declare-fun foldRight1!104 (List!274 Int) Balance!309)

(declare-fun append!123 (List!274 List!274) List!274)

(assert (=> b!11454 (= res!4196 (= thiss!710 (ProofOps!249 (= (dynLambda!436 f!539 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)) (foldRight1!104 (append!123 xs!292 ys!54) f!539)))))))

(assert (=> b!11455 (= e!6426 (and tp!2517 tp!2515 tp!2516))))

(declare-fun b!11456 () Bool)

(declare-fun res!4192 () Bool)

(assert (=> b!11456 (=> (not res!4192) (not e!6427))))

(assert (=> b!11456 (= res!4192 (= thiss!795 (Cons!271 (head!489 xs!292) (append!123 (tail!501 xs!292) ys!54))))))

(assert (= (and start!2290 res!4193) b!11451))

(assert (= (and b!11451 res!4198) b!11449))

(assert (= (and b!11449 res!4199) b!11454))

(assert (= (and b!11454 res!4196) b!11450))

(assert (= (and b!11450 res!4195) b!11448))

(assert (= (and b!11448 res!4197) b!11456))

(assert (= (and b!11456 res!4192) b!11453))

(assert (= (and b!11453 res!4194) b!11452))

(assert (= start!2290 b!11455))

(declare-fun b_lambda!5947 () Bool)

(assert (=> (not b_lambda!5947) (not b!11454)))

(declare-fun t!3257 () Bool)

(declare-fun tb!2917 () Bool)

(assert (=> (and start!2290 (= f!539 f!539) t!3257) tb!2917))

(declare-fun result!2969 () Bool)

(assert (=> tb!2917 (= result!2969 true)))

(assert (=> b!11454 t!3257))

(declare-fun b_and!5519 () Bool)

(assert (= b_and!5509 (and (=> t!3257 result!2969) b_and!5519)))

(declare-fun t!3259 () Bool)

(declare-fun tb!2919 () Bool)

(assert (=> (and start!2290 (= f!581 f!539) t!3259) tb!2919))

(declare-fun result!2971 () Bool)

(assert (=> tb!2919 (= result!2971 true)))

(assert (=> b!11454 t!3259))

(declare-fun b_and!5521 () Bool)

(assert (= b_and!5511 (and (=> t!3259 result!2971) b_and!5521)))

(declare-fun m!14345 () Bool)

(assert (=> b!11452 m!14345))

(declare-fun m!14347 () Bool)

(assert (=> b!11456 m!14347))

(declare-fun m!14349 () Bool)

(assert (=> b!11454 m!14349))

(declare-fun m!14351 () Bool)

(assert (=> b!11454 m!14351))

(declare-fun m!14353 () Bool)

(assert (=> b!11454 m!14353))

(assert (=> b!11454 m!14351))

(assert (=> b!11454 m!14353))

(declare-fun m!14355 () Bool)

(assert (=> b!11454 m!14355))

(assert (=> b!11454 m!14349))

(declare-fun m!14357 () Bool)

(assert (=> b!11454 m!14357))

(declare-fun m!14359 () Bool)

(assert (=> b!11451 m!14359))

(declare-fun m!14361 () Bool)

(assert (=> start!2290 m!14361))

(declare-fun m!14363 () Bool)

(assert (=> start!2290 m!14363))

(push 1)

(assert (not b!11456))

(assert (not b_next!3803))

(assert (not b!11454))

(assert b_and!5521)

(assert b_and!5519)

(assert (not b!11451))

(assert (not b!11452))

(assert (not b!11448))

(assert (not b_lambda!5947))

(assert b_and!5513)

(assert (not start!2290))

(assert b_and!5515)

(assert (not b_next!3797))

(assert (not b_next!3807))

(assert b_and!5517)

(assert (not b_next!3795))

(assert (not b_next!3805))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3803))

(assert b_and!5521)

(assert b_and!5519)

(assert b_and!5513)

(assert b_and!5515)

(assert (not b_next!3797))

(assert (not b_next!3807))

(assert b_and!5517)

(assert (not b_next!3795))

(assert (not b_next!3805))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5949 () Bool)

(assert (= b_lambda!5947 (or (and b!11449 (= lambda!3059 f!539)) (and start!2290 b_free!1567) (and start!2290 b_free!1569 (= f!581 f!539)) b_lambda!5949)))

(declare-fun bs!2928 () Bool)

(declare-fun d!8827 () Bool)

(assert (= bs!2928 (and d!8827 b!11449)))

(declare-fun ++!3 (Balance!309 Balance!309) Balance!309)

(assert (=> bs!2928 (= (dynLambda!436 lambda!3059 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)) (++!3 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)))))

(assert (=> bs!2928 m!14351))

(assert (=> bs!2928 m!14353))

(declare-fun m!14365 () Bool)

(assert (=> bs!2928 m!14365))

(assert (=> (and b!11449 (= lambda!3059 f!539) b!11454) d!8827))

(push 1)

(assert (not b!11456))

(assert (not b_next!3803))

(assert (not b!11454))

(assert b_and!5521)

(assert b_and!5519)

(assert (not b!11451))

(assert (not b!11452))

(assert (not bs!2928))

(assert (not b!11448))

(assert (not b_lambda!5949))

(assert b_and!5513)

(assert (not start!2290))

(assert b_and!5515)

(assert (not b_next!3797))

(assert (not b_next!3807))

(assert b_and!5517)

(assert (not b_next!3795))

(assert (not b_next!3805))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3803))

(assert b_and!5521)

(assert b_and!5519)

(assert b_and!5513)

(assert b_and!5515)

(assert (not b_next!3797))

(assert (not b_next!3807))

(assert b_and!5517)

(assert (not b_next!3795))

(assert (not b_next!3805))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8829 () Bool)

(declare-fun lt!1766 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8829 (= lt!1766 (min!4 (extraOpen!195 (foldRight1!104 xs!292 f!539)) (extraClose!195 (foldRight1!104 ys!54 f!539))))))

(assert (=> d!8829 (= (++!3 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)) (Balance!310 (- (+ (extraOpen!195 (foldRight1!104 xs!292 f!539)) (extraOpen!195 (foldRight1!104 ys!54 f!539))) lt!1766) (- (+ (extraClose!195 (foldRight1!104 xs!292 f!539)) (extraClose!195 (foldRight1!104 ys!54 f!539))) lt!1766)))))

(declare-fun bs!2929 () Bool)

(assert (= bs!2929 d!8829))

(declare-fun m!14367 () Bool)

(assert (=> bs!2929 m!14367))

(assert (=> bs!2928 d!8829))

(declare-fun d!8831 () Bool)

(assert (=> d!8831 (= (isEmpty!202 thiss!795) (is-Nil!272 thiss!795))))

(assert (=> b!11452 d!8831))

(declare-fun d!8833 () Bool)

(declare-fun c!3382 () Bool)

(assert (=> d!8833 (= c!3382 (is-Nil!272 (tail!501 xs!292)))))

(declare-fun e!6430 () List!274)

(assert (=> d!8833 (= (append!123 (tail!501 xs!292) ys!54) e!6430)))

(declare-fun b!11465 () Bool)

(assert (=> b!11465 (= e!6430 ys!54)))

(declare-fun b!11466 () Bool)

(assert (=> b!11466 (= e!6430 (Cons!271 (head!489 (tail!501 xs!292)) (append!123 (tail!501 (tail!501 xs!292)) ys!54)))))

(assert (= (and d!8833 c!3382) b!11465))

(assert (= (and d!8833 (not c!3382)) b!11466))

(declare-fun m!14369 () Bool)

(assert (=> b!11466 m!14369))

(assert (=> b!11456 d!8833))

(declare-fun d!8835 () Bool)

(assert (=> d!8835 (= (isEmpty!202 xs!292) (is-Nil!272 xs!292))))

(assert (=> start!2290 d!8835))

(declare-fun d!8837 () Bool)

(declare-fun res!4202 () Bool)

(declare-fun e!6433 () Bool)

(assert (=> d!8837 (=> (not res!4202) (not e!6433))))

(declare-fun dynLambda!437 (Int) Balance!309)

(assert (=> d!8837 (= res!4202 (= (dynLambda!437 (x!6504 thiss!744)) (dynLambda!437 (y!636 thiss!744))))))

(assert (=> d!8837 (= (inv!381 thiss!744) e!6433)))

(declare-fun b!11469 () Bool)

(assert (=> b!11469 (= e!6433 (dynLambda!435 (evidence!187 thiss!744)))))

(assert (= (and d!8837 res!4202) b!11469))

(declare-fun b_lambda!5951 () Bool)

(assert (=> (not b_lambda!5951) (not d!8837)))

(declare-fun t!3261 () Bool)

(declare-fun tb!2921 () Bool)

(assert (=> (and b!11455 (= (x!6504 thiss!744) (x!6504 thiss!744)) t!3261) tb!2921))

(declare-fun result!2973 () Bool)

(assert (=> tb!2921 (= result!2973 true)))

(assert (=> d!8837 t!3261))

(declare-fun b_and!5523 () Bool)

(assert (= b_and!5513 (and (=> t!3261 result!2973) b_and!5523)))

(declare-fun t!3263 () Bool)

(declare-fun tb!2923 () Bool)

(assert (=> (and b!11455 (= (y!636 thiss!744) (x!6504 thiss!744)) t!3263) tb!2923))

(declare-fun result!2975 () Bool)

(assert (=> tb!2923 (= result!2975 true)))

(assert (=> d!8837 t!3263))

(declare-fun b_and!5525 () Bool)

(assert (= b_and!5515 (and (=> t!3263 result!2975) b_and!5525)))

(declare-fun b_lambda!5953 () Bool)

(assert (=> (not b_lambda!5953) (not d!8837)))

(declare-fun t!3265 () Bool)

(declare-fun tb!2925 () Bool)

(assert (=> (and b!11455 (= (x!6504 thiss!744) (y!636 thiss!744)) t!3265) tb!2925))

(declare-fun result!2977 () Bool)

(assert (=> tb!2925 (= result!2977 true)))

(assert (=> d!8837 t!3265))

(declare-fun b_and!5527 () Bool)

(assert (= b_and!5523 (and (=> t!3265 result!2977) b_and!5527)))

(declare-fun t!3267 () Bool)

(declare-fun tb!2927 () Bool)

(assert (=> (and b!11455 (= (y!636 thiss!744) (y!636 thiss!744)) t!3267) tb!2927))

(declare-fun result!2979 () Bool)

(assert (=> tb!2927 (= result!2979 true)))

(assert (=> d!8837 t!3267))

(declare-fun b_and!5529 () Bool)

(assert (= b_and!5525 (and (=> t!3267 result!2979) b_and!5529)))

(declare-fun b_lambda!5955 () Bool)

(assert (=> (not b_lambda!5955) (not b!11469)))

(declare-fun t!3269 () Bool)

(declare-fun tb!2929 () Bool)

(assert (=> (and b!11455 (= (evidence!187 thiss!744) (evidence!187 thiss!744)) t!3269) tb!2929))

(declare-fun result!2981 () Bool)

(assert (=> tb!2929 (= result!2981 true)))

(assert (=> b!11469 t!3269))

(declare-fun b_and!5531 () Bool)

(assert (= b_and!5517 (and (=> t!3269 result!2981) b_and!5531)))

(declare-fun m!14371 () Bool)

(assert (=> d!8837 m!14371))

(declare-fun m!14373 () Bool)

(assert (=> d!8837 m!14373))

(declare-fun m!14375 () Bool)

(assert (=> b!11469 m!14375))

(assert (=> start!2290 d!8837))

(declare-fun d!8839 () Bool)

(assert (=> d!8839 (= (isEmpty!202 ys!54) (is-Nil!272 ys!54))))

(assert (=> b!11451 d!8839))

(declare-fun d!8841 () Bool)

(declare-fun c!3385 () Bool)

(assert (=> d!8841 (= c!3385 (and (is-Cons!271 xs!292) (is-Nil!272 (tail!501 xs!292))))))

(declare-fun e!6436 () Balance!309)

(assert (=> d!8841 (= (foldRight1!104 xs!292 f!539) e!6436)))

(declare-fun b!11474 () Bool)

(assert (=> b!11474 (= e!6436 (head!489 xs!292))))

(declare-fun b!11475 () Bool)

(assert (=> b!11475 (= e!6436 (dynLambda!436 f!539 (head!489 xs!292) (foldRight1!104 (tail!501 xs!292) f!539)))))

(assert (= (and d!8841 c!3385) b!11474))

(assert (= (and d!8841 (not c!3385)) b!11475))

(declare-fun b_lambda!5957 () Bool)

(assert (=> (not b_lambda!5957) (not b!11475)))

(declare-fun t!3271 () Bool)

(declare-fun tb!2931 () Bool)

(assert (=> (and start!2290 (= f!539 f!539) t!3271) tb!2931))

(declare-fun result!2983 () Bool)

(assert (=> tb!2931 (= result!2983 true)))

(assert (=> b!11475 t!3271))

(declare-fun b_and!5533 () Bool)

(assert (= b_and!5519 (and (=> t!3271 result!2983) b_and!5533)))

(declare-fun tb!2933 () Bool)

(declare-fun t!3273 () Bool)

(assert (=> (and start!2290 (= f!581 f!539) t!3273) tb!2933))

(declare-fun result!2985 () Bool)

(assert (=> tb!2933 (= result!2985 true)))

(assert (=> b!11475 t!3273))

(declare-fun b_and!5535 () Bool)

(assert (= b_and!5521 (and (=> t!3273 result!2985) b_and!5535)))

(declare-fun m!14377 () Bool)

(assert (=> b!11475 m!14377))

(assert (=> b!11475 m!14377))

(declare-fun m!14379 () Bool)

(assert (=> b!11475 m!14379))

(assert (=> b!11454 d!8841))

(declare-fun d!8843 () Bool)

(declare-fun c!3386 () Bool)

(assert (=> d!8843 (= c!3386 (and (is-Cons!271 ys!54) (is-Nil!272 (tail!501 ys!54))))))

(declare-fun e!6437 () Balance!309)

(assert (=> d!8843 (= (foldRight1!104 ys!54 f!539) e!6437)))

(declare-fun b!11476 () Bool)

(assert (=> b!11476 (= e!6437 (head!489 ys!54))))

(declare-fun b!11477 () Bool)

(assert (=> b!11477 (= e!6437 (dynLambda!436 f!539 (head!489 ys!54) (foldRight1!104 (tail!501 ys!54) f!539)))))

(assert (= (and d!8843 c!3386) b!11476))

(assert (= (and d!8843 (not c!3386)) b!11477))

(declare-fun b_lambda!5959 () Bool)

(assert (=> (not b_lambda!5959) (not b!11477)))

(declare-fun t!3275 () Bool)

(declare-fun tb!2935 () Bool)

(assert (=> (and start!2290 (= f!539 f!539) t!3275) tb!2935))

(declare-fun result!2987 () Bool)

(assert (=> tb!2935 (= result!2987 true)))

(assert (=> b!11477 t!3275))

(declare-fun b_and!5537 () Bool)

(assert (= b_and!5533 (and (=> t!3275 result!2987) b_and!5537)))

(declare-fun tb!2937 () Bool)

(declare-fun t!3277 () Bool)

(assert (=> (and start!2290 (= f!581 f!539) t!3277) tb!2937))

(declare-fun result!2989 () Bool)

(assert (=> tb!2937 (= result!2989 true)))

(assert (=> b!11477 t!3277))

(declare-fun b_and!5539 () Bool)

(assert (= b_and!5535 (and (=> t!3277 result!2989) b_and!5539)))

(declare-fun m!14381 () Bool)

(assert (=> b!11477 m!14381))

(assert (=> b!11477 m!14381))

(declare-fun m!14383 () Bool)

(assert (=> b!11477 m!14383))

(assert (=> b!11454 d!8843))

(declare-fun d!8845 () Bool)

(declare-fun c!3387 () Bool)

(assert (=> d!8845 (= c!3387 (and (is-Cons!271 (append!123 xs!292 ys!54)) (is-Nil!272 (tail!501 (append!123 xs!292 ys!54)))))))

(declare-fun e!6438 () Balance!309)

(assert (=> d!8845 (= (foldRight1!104 (append!123 xs!292 ys!54) f!539) e!6438)))

(declare-fun b!11478 () Bool)

(assert (=> b!11478 (= e!6438 (head!489 (append!123 xs!292 ys!54)))))

(declare-fun b!11479 () Bool)

(assert (=> b!11479 (= e!6438 (dynLambda!436 f!539 (head!489 (append!123 xs!292 ys!54)) (foldRight1!104 (tail!501 (append!123 xs!292 ys!54)) f!539)))))

(assert (= (and d!8845 c!3387) b!11478))

(assert (= (and d!8845 (not c!3387)) b!11479))

(declare-fun b_lambda!5961 () Bool)

(assert (=> (not b_lambda!5961) (not b!11479)))

(declare-fun t!3279 () Bool)

(declare-fun tb!2939 () Bool)

(assert (=> (and start!2290 (= f!539 f!539) t!3279) tb!2939))

(declare-fun result!2991 () Bool)

(assert (=> tb!2939 (= result!2991 true)))

(assert (=> b!11479 t!3279))

(declare-fun b_and!5541 () Bool)

(assert (= b_and!5537 (and (=> t!3279 result!2991) b_and!5541)))

(declare-fun t!3281 () Bool)

(declare-fun tb!2941 () Bool)

(assert (=> (and start!2290 (= f!581 f!539) t!3281) tb!2941))

(declare-fun result!2993 () Bool)

(assert (=> tb!2941 (= result!2993 true)))

(assert (=> b!11479 t!3281))

(declare-fun b_and!5543 () Bool)

(assert (= b_and!5539 (and (=> t!3281 result!2993) b_and!5543)))

(declare-fun m!14385 () Bool)

(assert (=> b!11479 m!14385))

(assert (=> b!11479 m!14385))

(declare-fun m!14387 () Bool)

(assert (=> b!11479 m!14387))

(assert (=> b!11454 d!8845))

(declare-fun d!8847 () Bool)

(declare-fun c!3388 () Bool)

(assert (=> d!8847 (= c!3388 (is-Nil!272 xs!292))))

(declare-fun e!6439 () List!274)

(assert (=> d!8847 (= (append!123 xs!292 ys!54) e!6439)))

(declare-fun b!11480 () Bool)

(assert (=> b!11480 (= e!6439 ys!54)))

(declare-fun b!11481 () Bool)

(assert (=> b!11481 (= e!6439 (Cons!271 (head!489 xs!292) (append!123 (tail!501 xs!292) ys!54)))))

(assert (= (and d!8847 c!3388) b!11480))

(assert (= (and d!8847 (not c!3388)) b!11481))

(assert (=> b!11481 m!14347))

(assert (=> b!11454 d!8847))

(declare-fun d!8849 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!8849 (= trivial!1 true)))

(assert (=> b!11448 d!8849))

(declare-fun b_lambda!5963 () Bool)

(assert (= b_lambda!5955 (or (and b!11448 (= lambda!3062 (evidence!187 thiss!744))) (and b!11455 b_free!1575) b_lambda!5963)))

(declare-fun bs!2930 () Bool)

(declare-fun d!8851 () Bool)

(assert (= bs!2930 (and d!8851 b!11448)))

(assert (=> bs!2930 (= (dynLambda!435 lambda!3062) trivial!1)))

(assert (=> (and b!11448 (= lambda!3062 (evidence!187 thiss!744)) b!11469) d!8851))

(declare-fun b_lambda!5965 () Bool)

(assert (= b_lambda!5959 (or (and b!11449 (= lambda!3059 f!539)) (and start!2290 b_free!1567) (and start!2290 b_free!1569 (= f!581 f!539)) b_lambda!5965)))

(declare-fun bs!2931 () Bool)

(declare-fun d!8853 () Bool)

(assert (= bs!2931 (and d!8853 b!11449)))

(assert (=> bs!2931 (= (dynLambda!436 lambda!3059 (head!489 ys!54) (foldRight1!104 (tail!501 ys!54) f!539)) (++!3 (head!489 ys!54) (foldRight1!104 (tail!501 ys!54) f!539)))))

(assert (=> bs!2931 m!14381))

(declare-fun m!14389 () Bool)

(assert (=> bs!2931 m!14389))

(assert (=> (and b!11449 (= lambda!3059 f!539) b!11477) d!8853))

(declare-fun b_lambda!5967 () Bool)

(assert (= b_lambda!5951 (or (and b!11448 (= lambda!3060 (x!6504 thiss!744))) (and b!11448 (= lambda!3061 (x!6504 thiss!744))) (and b!11455 b_free!1571) (and b!11455 b_free!1573 (= (y!636 thiss!744) (x!6504 thiss!744))) b_lambda!5967)))

(declare-fun bs!2932 () Bool)

(declare-fun d!8855 () Bool)

(assert (= bs!2932 (and d!8855 b!11448)))

(assert (=> bs!2932 (= (dynLambda!437 lambda!3060) (dynLambda!436 f!539 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)))))

(declare-fun b_lambda!5975 () Bool)

(assert (=> (not b_lambda!5975) (not bs!2932)))

(assert (=> bs!2932 t!3257))

(declare-fun b_and!5545 () Bool)

(assert (= b_and!5541 (and (=> t!3257 result!2969) b_and!5545)))

(assert (=> bs!2932 t!3259))

(declare-fun b_and!5547 () Bool)

(assert (= b_and!5543 (and (=> t!3259 result!2971) b_and!5547)))

(assert (=> bs!2932 m!14351))

(assert (=> bs!2932 m!14353))

(assert (=> bs!2932 m!14351))

(assert (=> bs!2932 m!14353))

(assert (=> bs!2932 m!14355))

(assert (=> (and b!11448 (= lambda!3060 (x!6504 thiss!744)) d!8837) d!8855))

(declare-fun bs!2933 () Bool)

(declare-fun d!8857 () Bool)

(assert (= bs!2933 (and d!8857 b!11448)))

(assert (=> bs!2933 (= (dynLambda!437 lambda!3061) (dynLambda!436 f!539 (head!489 xs!292) (foldRight1!104 (append!123 (tail!501 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!5977 () Bool)

(assert (=> (not b_lambda!5977) (not bs!2933)))

(declare-fun t!3283 () Bool)

(declare-fun tb!2943 () Bool)

(assert (=> (and start!2290 (= f!539 f!539) t!3283) tb!2943))

(declare-fun result!2995 () Bool)

(assert (=> tb!2943 (= result!2995 true)))

(assert (=> bs!2933 t!3283))

(declare-fun b_and!5549 () Bool)

(assert (= b_and!5545 (and (=> t!3283 result!2995) b_and!5549)))

(declare-fun tb!2945 () Bool)

(declare-fun t!3285 () Bool)

(assert (=> (and start!2290 (= f!581 f!539) t!3285) tb!2945))

(declare-fun result!2997 () Bool)

(assert (=> tb!2945 (= result!2997 true)))

(assert (=> bs!2933 t!3285))

(declare-fun b_and!5551 () Bool)

(assert (= b_and!5547 (and (=> t!3285 result!2997) b_and!5551)))

(assert (=> bs!2933 m!14347))

(assert (=> bs!2933 m!14347))

(declare-fun m!14391 () Bool)

(assert (=> bs!2933 m!14391))

(assert (=> bs!2933 m!14391))

(declare-fun m!14393 () Bool)

(assert (=> bs!2933 m!14393))

(assert (=> (and b!11448 (= lambda!3061 (x!6504 thiss!744)) d!8837) d!8857))

(declare-fun b_lambda!5969 () Bool)

(assert (= b_lambda!5961 (or (and b!11449 (= lambda!3059 f!539)) (and start!2290 b_free!1567) (and start!2290 b_free!1569 (= f!581 f!539)) b_lambda!5969)))

(declare-fun bs!2934 () Bool)

(declare-fun d!8859 () Bool)

(assert (= bs!2934 (and d!8859 b!11449)))

(assert (=> bs!2934 (= (dynLambda!436 lambda!3059 (head!489 (append!123 xs!292 ys!54)) (foldRight1!104 (tail!501 (append!123 xs!292 ys!54)) f!539)) (++!3 (head!489 (append!123 xs!292 ys!54)) (foldRight1!104 (tail!501 (append!123 xs!292 ys!54)) f!539)))))

(assert (=> bs!2934 m!14385))

(declare-fun m!14395 () Bool)

(assert (=> bs!2934 m!14395))

(assert (=> (and b!11449 (= lambda!3059 f!539) b!11479) d!8859))

(declare-fun b_lambda!5971 () Bool)

(assert (= b_lambda!5953 (or (and b!11448 (= lambda!3060 (y!636 thiss!744))) (and b!11448 (= lambda!3061 (y!636 thiss!744))) (and b!11455 b_free!1571 (= (x!6504 thiss!744) (y!636 thiss!744))) (and b!11455 b_free!1573) b_lambda!5971)))

(declare-fun bs!2935 () Bool)

(declare-fun d!8861 () Bool)

(assert (= bs!2935 (and d!8861 b!11448)))

(assert (=> bs!2935 (= (dynLambda!437 lambda!3060) (dynLambda!436 f!539 (foldRight1!104 xs!292 f!539) (foldRight1!104 ys!54 f!539)))))

(declare-fun b_lambda!5979 () Bool)

(assert (=> (not b_lambda!5979) (not bs!2935)))

(assert (=> bs!2935 t!3257))

(declare-fun b_and!5553 () Bool)

(assert (= b_and!5549 (and (=> t!3257 result!2969) b_and!5553)))

(assert (=> bs!2935 t!3259))

(declare-fun b_and!5555 () Bool)

(assert (= b_and!5551 (and (=> t!3259 result!2971) b_and!5555)))

(assert (=> bs!2935 m!14351))

(assert (=> bs!2935 m!14353))

(assert (=> bs!2935 m!14351))

(assert (=> bs!2935 m!14353))

(assert (=> bs!2935 m!14355))

(assert (=> (and b!11448 (= lambda!3060 (y!636 thiss!744)) d!8837) d!8861))

(declare-fun bs!2936 () Bool)

(declare-fun d!8863 () Bool)

(assert (= bs!2936 (and d!8863 b!11448)))

(assert (=> bs!2936 (= (dynLambda!437 lambda!3061) (dynLambda!436 f!539 (head!489 xs!292) (foldRight1!104 (append!123 (tail!501 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!5981 () Bool)

(assert (=> (not b_lambda!5981) (not bs!2936)))

(assert (=> bs!2936 t!3283))

(declare-fun b_and!5557 () Bool)

(assert (= b_and!5553 (and (=> t!3283 result!2995) b_and!5557)))

(assert (=> bs!2936 t!3285))

(declare-fun b_and!5559 () Bool)

(assert (= b_and!5555 (and (=> t!3285 result!2997) b_and!5559)))

(assert (=> bs!2936 m!14347))

(assert (=> bs!2936 m!14347))

(assert (=> bs!2936 m!14391))

(assert (=> bs!2936 m!14391))

(assert (=> bs!2936 m!14393))

(assert (=> (and b!11448 (= lambda!3061 (y!636 thiss!744)) d!8837) d!8863))

(declare-fun b_lambda!5973 () Bool)

(assert (= b_lambda!5957 (or (and b!11449 (= lambda!3059 f!539)) (and start!2290 b_free!1567) (and start!2290 b_free!1569 (= f!581 f!539)) b_lambda!5973)))

(declare-fun bs!2937 () Bool)

(declare-fun d!8865 () Bool)

(assert (= bs!2937 (and d!8865 b!11449)))

(assert (=> bs!2937 (= (dynLambda!436 lambda!3059 (head!489 xs!292) (foldRight1!104 (tail!501 xs!292) f!539)) (++!3 (head!489 xs!292) (foldRight1!104 (tail!501 xs!292) f!539)))))

(assert (=> bs!2937 m!14377))

(declare-fun m!14397 () Bool)

(assert (=> bs!2937 m!14397))

(assert (=> (and b!11449 (= lambda!3059 f!539) b!11475) d!8865))

(push 1)

(assert (not b_lambda!5971))

(assert (not b_next!3803))

(assert (not b!11479))

(assert (not bs!2936))

(assert (not b!11481))

(assert (not b_lambda!5965))

(assert (not b_lambda!5981))

(assert (not bs!2931))

(assert (not b_lambda!5973))

(assert (not b!11477))

(assert (not b!11466))

(assert (not bs!2934))

(assert (not bs!2933))

(assert (not b_lambda!5967))

(assert b_and!5531)

(assert (not bs!2932))

(assert (not bs!2935))

(assert (not b_lambda!5949))

(assert (not b_lambda!5975))

(assert b_and!5559)

(assert (not b!11475))

(assert (not b_lambda!5977))

(assert (not b_lambda!5979))

(assert (not b_lambda!5963))

(assert b_and!5527)

(assert (not b_next!3797))

(assert (not d!8829))

(assert (not b_next!3807))

(assert (not bs!2937))

(assert b_and!5529)

(assert b_and!5557)

(assert (not b_next!3795))

(assert (not b_next!3805))

(assert (not b_lambda!5969))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3803))

(assert b_and!5531)

(assert b_and!5559)

(assert b_and!5527)

(assert (not b_next!3797))

(assert (not b_next!3807))

(assert b_and!5529)

(assert b_and!5557)

(assert (not b_next!3795))

(assert (not b_next!3805))

(check-sat)

(pop 1)

