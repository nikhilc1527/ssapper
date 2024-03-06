; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2250 () Bool)

(assert start!2250)

(declare-fun b_free!1525 () Bool)

(declare-fun b_next!3673 () Bool)

(assert (=> start!2250 (= b_free!1525 (not b_next!3673))))

(declare-fun tp!2453 () Bool)

(declare-fun b_and!5297 () Bool)

(assert (=> start!2250 (= tp!2453 b_and!5297)))

(declare-fun b_free!1527 () Bool)

(declare-fun b_next!3675 () Bool)

(assert (=> start!2250 (= b_free!1527 (not b_next!3675))))

(declare-fun tp!2454 () Bool)

(declare-fun b_and!5299 () Bool)

(assert (=> start!2250 (= tp!2454 b_and!5299)))

(declare-fun b!11244 () Bool)

(declare-fun b_free!1529 () Bool)

(declare-fun b_next!3677 () Bool)

(assert (=> b!11244 (= b_free!1529 (not b_next!3677))))

(declare-fun tp!2451 () Bool)

(declare-fun b_and!5301 () Bool)

(assert (=> b!11244 (= tp!2451 b_and!5301)))

(declare-fun b_free!1531 () Bool)

(declare-fun b_next!3679 () Bool)

(assert (=> b!11244 (= b_free!1531 (not b_next!3679))))

(declare-fun tp!2452 () Bool)

(declare-fun b_and!5303 () Bool)

(assert (=> b!11244 (= tp!2452 b_and!5303)))

(declare-fun b_free!1533 () Bool)

(declare-fun b_next!3681 () Bool)

(assert (=> b!11244 (= b_free!1533 (not b_next!3681))))

(declare-fun tp!2455 () Bool)

(declare-fun b_and!5305 () Bool)

(assert (=> b!11244 (= tp!2455 b_and!5305)))

(declare-fun f!539 () Int)

(declare-fun b_next!3683 () Bool)

(declare-fun lambda!2999 () Int)

(declare-fun b!11242 () Bool)

(assert (=> start!2250 (= b_next!3673 (or (and b!11242 (= lambda!2999 f!539)) b_next!3683))))

(declare-fun f!574 () Int)

(declare-fun b_next!3685 () Bool)

(assert (=> start!2250 (= b_next!3675 (or (and b!11242 (= lambda!2999 f!574)) b_next!3685))))

(declare-fun b!11238 () Bool)

(assert (=> b!11238 true))

(declare-fun lambda!3000 () Int)

(declare-fun order!215 () Int)

(declare-fun order!217 () Int)

(declare-fun dynLambda!407 (Int Int) Int)

(declare-fun dynLambda!408 (Int Int) Int)

(assert (=> b!11238 (< (dynLambda!407 order!215 f!539) (dynLambda!408 order!217 lambda!3000))))

(assert (=> b!11238 true))

(assert (=> b!11238 true))

(declare-fun b_next!3687 () Bool)

(declare-datatypes () ((Balance!301 (Balance!302 (extraOpen!191 Int) (extraClose!191 Int)))))

(declare-datatypes () ((EqEvidence!232 (EqEvidence!233 (x!6362 Int) (y!631 Int) (evidence!183 Int)))))

(declare-fun thiss!746 () EqEvidence!232)

(assert (=> b!11244 (= b_next!3677 (or (and b!11238 (= lambda!3000 (x!6362 thiss!746))) b_next!3687))))

(declare-fun b_next!3689 () Bool)

(assert (=> b!11244 (= b_next!3679 (or (and b!11238 (= lambda!3000 (y!631 thiss!746))) b_next!3689))))

(assert (=> b!11238 true))

(declare-fun lambda!3001 () Int)

(declare-fun order!219 () Int)

(declare-fun dynLambda!409 (Int Int) Int)

(assert (=> b!11238 (< (dynLambda!407 order!215 f!539) (dynLambda!409 order!219 lambda!3001))))

(assert (=> b!11238 true))

(declare-fun lambda!3002 () Int)

(assert (=> b!11238 (not (= lambda!3002 lambda!3000))))

(assert (=> b!11238 true))

(assert (=> b!11238 (< (dynLambda!407 order!215 f!539) (dynLambda!408 order!217 lambda!3002))))

(assert (=> b!11238 true))

(assert (=> b!11238 true))

(declare-fun b_next!3691 () Bool)

(assert (=> b!11244 (= b_next!3687 (or (and b!11238 (= lambda!3002 (x!6362 thiss!746))) b_next!3691))))

(declare-fun b_next!3693 () Bool)

(assert (=> b!11244 (= b_next!3689 (or (and b!11238 (= lambda!3002 (y!631 thiss!746))) b_next!3693))))

(assert (=> b!11238 true))

(declare-fun lambda!3003 () Int)

(declare-fun order!221 () Int)

(declare-fun dynLambda!410 (Int Int) Int)

(assert (=> b!11238 (< (dynLambda!407 order!215 f!539) (dynLambda!410 order!221 lambda!3003))))

(assert (=> b!11238 true))

(assert (=> b!11238 true))

(declare-fun b_next!3695 () Bool)

(assert (=> b!11244 (= b_next!3681 (or (and b!11238 (= lambda!3003 (evidence!183 thiss!746))) b_next!3695))))

(declare-fun b!11237 () Bool)

(declare-fun res!4093 () Bool)

(declare-fun e!6363 () Bool)

(assert (=> b!11237 (=> (not res!4093) (not e!6363))))

(declare-datatypes () ((List!270 (Nil!268) (Cons!267 (head!485 Balance!301) (tail!497 List!270)))))

(declare-fun ys!54 () List!270)

(declare-datatypes () ((ProofOps!240 (ProofOps!241 (prop!253 Bool)))))

(declare-fun thiss!710 () ProofOps!240)

(declare-fun xs!292 () List!270)

(declare-fun dynLambda!411 (Int Balance!301 Balance!301) Balance!301)

(declare-fun foldRight1!100 (List!270 Int) Balance!301)

(declare-fun append!119 (List!270 List!270) List!270)

(assert (=> b!11237 (= res!4093 (= thiss!710 (ProofOps!241 (= (dynLambda!411 f!539 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)) (foldRight1!100 (append!119 xs!292 ys!54) f!539)))))))

(declare-fun res!4094 () Bool)

(assert (=> b!11238 (=> (not res!4094) (not e!6363))))

(assert (=> b!11238 (= res!4094 (= thiss!746 (EqEvidence!233 lambda!3000 lambda!3002 lambda!3003)))))

(declare-fun res!4090 () Bool)

(assert (=> start!2250 (=> (not res!4090) (not e!6363))))

(declare-fun isEmpty!198 (List!270) Bool)

(assert (=> start!2250 (= res!4090 (not (isEmpty!198 xs!292)))))

(assert (=> start!2250 e!6363))

(assert (=> start!2250 tp!2453))

(assert (=> start!2250 true))

(declare-fun e!6362 () Bool)

(declare-fun inv!376 (EqEvidence!232) Bool)

(assert (=> start!2250 (and (inv!376 thiss!746) e!6362)))

(assert (=> start!2250 tp!2454))

(declare-fun b!11239 () Bool)

(declare-fun res!4092 () Bool)

(assert (=> b!11239 (=> (not res!4092) (not e!6363))))

(assert (=> b!11239 (= res!4092 (not (isEmpty!198 ys!54)))))

(declare-fun b!11240 () Bool)

(declare-fun res!4088 () Bool)

(assert (=> b!11240 (=> (not res!4088) (not e!6363))))

(declare-fun thiss!767 () List!270)

(assert (=> b!11240 (= res!4088 (and (= thiss!767 (tail!497 xs!292)) (= f!574 f!539)))))

(declare-fun b!11241 () Bool)

(assert (=> b!11241 (= e!6363 (isEmpty!198 thiss!767))))

(declare-fun res!4089 () Bool)

(assert (=> b!11242 (=> (not res!4089) (not e!6363))))

(assert (=> b!11242 (= res!4089 (= f!539 lambda!2999))))

(declare-fun b!11243 () Bool)

(declare-fun res!4091 () Bool)

(assert (=> b!11243 (=> (not res!4091) (not e!6363))))

(assert (=> b!11243 (= res!4091 (or (not (is-Cons!267 xs!292)) (not (is-Nil!268 (tail!497 xs!292)))))))

(assert (=> b!11244 (= e!6362 (and tp!2451 tp!2452 tp!2455))))

(assert (= (and start!2250 res!4090) b!11239))

(assert (= (and b!11239 res!4092) b!11242))

(assert (= (and b!11242 res!4089) b!11237))

(assert (= (and b!11237 res!4093) b!11243))

(assert (= (and b!11243 res!4091) b!11238))

(assert (= (and b!11238 res!4094) b!11240))

(assert (= (and b!11240 res!4088) b!11241))

(assert (= start!2250 b!11244))

(declare-fun b_lambda!5789 () Bool)

(assert (=> (not b_lambda!5789) (not b!11237)))

(declare-fun t!3141 () Bool)

(declare-fun tb!2801 () Bool)

(assert (=> (and start!2250 (= f!539 f!539) t!3141) tb!2801))

(declare-fun result!2853 () Bool)

(assert (=> tb!2801 (= result!2853 true)))

(assert (=> b!11237 t!3141))

(declare-fun b_and!5307 () Bool)

(assert (= b_and!5297 (and (=> t!3141 result!2853) b_and!5307)))

(declare-fun tb!2803 () Bool)

(declare-fun t!3143 () Bool)

(assert (=> (and start!2250 (= f!574 f!539) t!3143) tb!2803))

(declare-fun result!2855 () Bool)

(assert (=> tb!2803 (= result!2855 true)))

(assert (=> b!11237 t!3143))

(declare-fun b_and!5309 () Bool)

(assert (= b_and!5299 (and (=> t!3143 result!2855) b_and!5309)))

(declare-fun m!14149 () Bool)

(assert (=> b!11237 m!14149))

(declare-fun m!14151 () Bool)

(assert (=> b!11237 m!14151))

(declare-fun m!14153 () Bool)

(assert (=> b!11237 m!14153))

(assert (=> b!11237 m!14151))

(assert (=> b!11237 m!14153))

(declare-fun m!14155 () Bool)

(assert (=> b!11237 m!14155))

(assert (=> b!11237 m!14149))

(declare-fun m!14157 () Bool)

(assert (=> b!11237 m!14157))

(declare-fun m!14159 () Bool)

(assert (=> start!2250 m!14159))

(declare-fun m!14161 () Bool)

(assert (=> start!2250 m!14161))

(declare-fun m!14163 () Bool)

(assert (=> b!11239 m!14163))

(declare-fun m!14165 () Bool)

(assert (=> b!11241 m!14165))

(push 1)

(assert b_and!5301)

(assert b_and!5307)

(assert (not b_next!3691))

(assert b_and!5303)

(assert b_and!5305)

(assert (not b_next!3683))

(assert (not b!11241))

(assert (not b!11237))

(assert b_and!5309)

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert (not start!2250))

(assert (not b_next!3695))

(assert (not b!11239))

(assert (not b_lambda!5789))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5301)

(assert b_and!5307)

(assert (not b_next!3691))

(assert b_and!5303)

(assert b_and!5305)

(assert (not b_next!3683))

(assert b_and!5309)

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert (not b_next!3695))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5791 () Bool)

(assert (= b_lambda!5789 (or (and b!11242 (= lambda!2999 f!539)) (and start!2250 b_free!1525) (and start!2250 b_free!1527 (= f!574 f!539)) b_lambda!5791)))

(declare-fun bs!2885 () Bool)

(declare-fun d!8697 () Bool)

(assert (= bs!2885 (and d!8697 b!11242)))

(declare-fun ++!3 (Balance!301 Balance!301) Balance!301)

(assert (=> bs!2885 (= (dynLambda!411 lambda!2999 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)) (++!3 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)))))

(assert (=> bs!2885 m!14151))

(assert (=> bs!2885 m!14153))

(declare-fun m!14167 () Bool)

(assert (=> bs!2885 m!14167))

(assert (=> (and b!11242 (= lambda!2999 f!539) b!11237) d!8697))

(push 1)

(assert b_and!5301)

(assert (not bs!2885))

(assert b_and!5307)

(assert (not b_next!3691))

(assert b_and!5303)

(assert b_and!5305)

(assert (not b_lambda!5791))

(assert (not b_next!3683))

(assert (not b!11241))

(assert (not b!11237))

(assert b_and!5309)

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert (not start!2250))

(assert (not b_next!3695))

(assert (not b!11239))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5301)

(assert b_and!5307)

(assert (not b_next!3691))

(assert b_and!5303)

(assert b_and!5305)

(assert (not b_next!3683))

(assert b_and!5309)

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert (not b_next!3695))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8699 () Bool)

(declare-fun lt!1757 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8699 (= lt!1757 (min!4 (extraOpen!191 (foldRight1!100 xs!292 f!539)) (extraClose!191 (foldRight1!100 ys!54 f!539))))))

(assert (=> d!8699 (= (++!3 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)) (Balance!302 (- (+ (extraOpen!191 (foldRight1!100 xs!292 f!539)) (extraOpen!191 (foldRight1!100 ys!54 f!539))) lt!1757) (- (+ (extraClose!191 (foldRight1!100 xs!292 f!539)) (extraClose!191 (foldRight1!100 ys!54 f!539))) lt!1757)))))

(declare-fun bs!2886 () Bool)

(assert (= bs!2886 d!8699))

(declare-fun m!14169 () Bool)

(assert (=> bs!2886 m!14169))

(assert (=> bs!2885 d!8699))

(declare-fun d!8701 () Bool)

(assert (=> d!8701 (= (isEmpty!198 thiss!767) (is-Nil!268 thiss!767))))

(assert (=> b!11241 d!8701))

(declare-fun d!8703 () Bool)

(assert (=> d!8703 (= (isEmpty!198 xs!292) (is-Nil!268 xs!292))))

(assert (=> start!2250 d!8703))

(declare-fun d!8705 () Bool)

(declare-fun res!4097 () Bool)

(declare-fun e!6366 () Bool)

(assert (=> d!8705 (=> (not res!4097) (not e!6366))))

(declare-fun dynLambda!412 (Int) Balance!301)

(assert (=> d!8705 (= res!4097 (= (dynLambda!412 (x!6362 thiss!746)) (dynLambda!412 (y!631 thiss!746))))))

(assert (=> d!8705 (= (inv!376 thiss!746) e!6366)))

(declare-fun b!11259 () Bool)

(declare-fun dynLambda!413 (Int) Bool)

(assert (=> b!11259 (= e!6366 (dynLambda!413 (evidence!183 thiss!746)))))

(assert (= (and d!8705 res!4097) b!11259))

(declare-fun b_lambda!5793 () Bool)

(assert (=> (not b_lambda!5793) (not d!8705)))

(declare-fun t!3145 () Bool)

(declare-fun tb!2805 () Bool)

(assert (=> (and b!11244 (= (x!6362 thiss!746) (x!6362 thiss!746)) t!3145) tb!2805))

(declare-fun result!2857 () Bool)

(assert (=> tb!2805 (= result!2857 true)))

(assert (=> d!8705 t!3145))

(declare-fun b_and!5311 () Bool)

(assert (= b_and!5301 (and (=> t!3145 result!2857) b_and!5311)))

(declare-fun t!3147 () Bool)

(declare-fun tb!2807 () Bool)

(assert (=> (and b!11244 (= (y!631 thiss!746) (x!6362 thiss!746)) t!3147) tb!2807))

(declare-fun result!2859 () Bool)

(assert (=> tb!2807 (= result!2859 true)))

(assert (=> d!8705 t!3147))

(declare-fun b_and!5313 () Bool)

(assert (= b_and!5303 (and (=> t!3147 result!2859) b_and!5313)))

(declare-fun b_lambda!5795 () Bool)

(assert (=> (not b_lambda!5795) (not d!8705)))

(declare-fun t!3149 () Bool)

(declare-fun tb!2809 () Bool)

(assert (=> (and b!11244 (= (x!6362 thiss!746) (y!631 thiss!746)) t!3149) tb!2809))

(declare-fun result!2861 () Bool)

(assert (=> tb!2809 (= result!2861 true)))

(assert (=> d!8705 t!3149))

(declare-fun b_and!5315 () Bool)

(assert (= b_and!5311 (and (=> t!3149 result!2861) b_and!5315)))

(declare-fun t!3151 () Bool)

(declare-fun tb!2811 () Bool)

(assert (=> (and b!11244 (= (y!631 thiss!746) (y!631 thiss!746)) t!3151) tb!2811))

(declare-fun result!2863 () Bool)

(assert (=> tb!2811 (= result!2863 true)))

(assert (=> d!8705 t!3151))

(declare-fun b_and!5317 () Bool)

(assert (= b_and!5313 (and (=> t!3151 result!2863) b_and!5317)))

(declare-fun b_lambda!5797 () Bool)

(assert (=> (not b_lambda!5797) (not b!11259)))

(declare-fun t!3153 () Bool)

(declare-fun tb!2813 () Bool)

(assert (=> (and b!11244 (= (evidence!183 thiss!746) (evidence!183 thiss!746)) t!3153) tb!2813))

(declare-fun result!2865 () Bool)

(assert (=> tb!2813 (= result!2865 true)))

(assert (=> b!11259 t!3153))

(declare-fun b_and!5319 () Bool)

(assert (= b_and!5305 (and (=> t!3153 result!2865) b_and!5319)))

(declare-fun m!14171 () Bool)

(assert (=> d!8705 m!14171))

(declare-fun m!14173 () Bool)

(assert (=> d!8705 m!14173))

(declare-fun m!14175 () Bool)

(assert (=> b!11259 m!14175))

(assert (=> start!2250 d!8705))

(declare-fun d!8707 () Bool)

(assert (=> d!8707 (= (isEmpty!198 ys!54) (is-Nil!268 ys!54))))

(assert (=> b!11239 d!8707))

(declare-fun d!8709 () Bool)

(declare-fun c!3357 () Bool)

(assert (=> d!8709 (= c!3357 (and (is-Cons!267 xs!292) (is-Nil!268 (tail!497 xs!292))))))

(declare-fun e!6369 () Balance!301)

(assert (=> d!8709 (= (foldRight1!100 xs!292 f!539) e!6369)))

(declare-fun b!11264 () Bool)

(assert (=> b!11264 (= e!6369 (head!485 xs!292))))

(declare-fun b!11265 () Bool)

(assert (=> b!11265 (= e!6369 (dynLambda!411 f!539 (head!485 xs!292) (foldRight1!100 (tail!497 xs!292) f!539)))))

(assert (= (and d!8709 c!3357) b!11264))

(assert (= (and d!8709 (not c!3357)) b!11265))

(declare-fun b_lambda!5799 () Bool)

(assert (=> (not b_lambda!5799) (not b!11265)))

(declare-fun t!3155 () Bool)

(declare-fun tb!2815 () Bool)

(assert (=> (and start!2250 (= f!539 f!539) t!3155) tb!2815))

(declare-fun result!2867 () Bool)

(assert (=> tb!2815 (= result!2867 true)))

(assert (=> b!11265 t!3155))

(declare-fun b_and!5321 () Bool)

(assert (= b_and!5307 (and (=> t!3155 result!2867) b_and!5321)))

(declare-fun t!3157 () Bool)

(declare-fun tb!2817 () Bool)

(assert (=> (and start!2250 (= f!574 f!539) t!3157) tb!2817))

(declare-fun result!2869 () Bool)

(assert (=> tb!2817 (= result!2869 true)))

(assert (=> b!11265 t!3157))

(declare-fun b_and!5323 () Bool)

(assert (= b_and!5309 (and (=> t!3157 result!2869) b_and!5323)))

(declare-fun m!14177 () Bool)

(assert (=> b!11265 m!14177))

(assert (=> b!11265 m!14177))

(declare-fun m!14179 () Bool)

(assert (=> b!11265 m!14179))

(assert (=> b!11237 d!8709))

(declare-fun d!8711 () Bool)

(declare-fun c!3358 () Bool)

(assert (=> d!8711 (= c!3358 (and (is-Cons!267 ys!54) (is-Nil!268 (tail!497 ys!54))))))

(declare-fun e!6370 () Balance!301)

(assert (=> d!8711 (= (foldRight1!100 ys!54 f!539) e!6370)))

(declare-fun b!11266 () Bool)

(assert (=> b!11266 (= e!6370 (head!485 ys!54))))

(declare-fun b!11267 () Bool)

(assert (=> b!11267 (= e!6370 (dynLambda!411 f!539 (head!485 ys!54) (foldRight1!100 (tail!497 ys!54) f!539)))))

(assert (= (and d!8711 c!3358) b!11266))

(assert (= (and d!8711 (not c!3358)) b!11267))

(declare-fun b_lambda!5801 () Bool)

(assert (=> (not b_lambda!5801) (not b!11267)))

(declare-fun t!3159 () Bool)

(declare-fun tb!2819 () Bool)

(assert (=> (and start!2250 (= f!539 f!539) t!3159) tb!2819))

(declare-fun result!2871 () Bool)

(assert (=> tb!2819 (= result!2871 true)))

(assert (=> b!11267 t!3159))

(declare-fun b_and!5325 () Bool)

(assert (= b_and!5321 (and (=> t!3159 result!2871) b_and!5325)))

(declare-fun tb!2821 () Bool)

(declare-fun t!3161 () Bool)

(assert (=> (and start!2250 (= f!574 f!539) t!3161) tb!2821))

(declare-fun result!2873 () Bool)

(assert (=> tb!2821 (= result!2873 true)))

(assert (=> b!11267 t!3161))

(declare-fun b_and!5327 () Bool)

(assert (= b_and!5323 (and (=> t!3161 result!2873) b_and!5327)))

(declare-fun m!14181 () Bool)

(assert (=> b!11267 m!14181))

(assert (=> b!11267 m!14181))

(declare-fun m!14183 () Bool)

(assert (=> b!11267 m!14183))

(assert (=> b!11237 d!8711))

(declare-fun d!8713 () Bool)

(declare-fun c!3359 () Bool)

(assert (=> d!8713 (= c!3359 (and (is-Cons!267 (append!119 xs!292 ys!54)) (is-Nil!268 (tail!497 (append!119 xs!292 ys!54)))))))

(declare-fun e!6371 () Balance!301)

(assert (=> d!8713 (= (foldRight1!100 (append!119 xs!292 ys!54) f!539) e!6371)))

(declare-fun b!11268 () Bool)

(assert (=> b!11268 (= e!6371 (head!485 (append!119 xs!292 ys!54)))))

(declare-fun b!11269 () Bool)

(assert (=> b!11269 (= e!6371 (dynLambda!411 f!539 (head!485 (append!119 xs!292 ys!54)) (foldRight1!100 (tail!497 (append!119 xs!292 ys!54)) f!539)))))

(assert (= (and d!8713 c!3359) b!11268))

(assert (= (and d!8713 (not c!3359)) b!11269))

(declare-fun b_lambda!5803 () Bool)

(assert (=> (not b_lambda!5803) (not b!11269)))

(declare-fun t!3163 () Bool)

(declare-fun tb!2823 () Bool)

(assert (=> (and start!2250 (= f!539 f!539) t!3163) tb!2823))

(declare-fun result!2875 () Bool)

(assert (=> tb!2823 (= result!2875 true)))

(assert (=> b!11269 t!3163))

(declare-fun b_and!5329 () Bool)

(assert (= b_and!5325 (and (=> t!3163 result!2875) b_and!5329)))

(declare-fun t!3165 () Bool)

(declare-fun tb!2825 () Bool)

(assert (=> (and start!2250 (= f!574 f!539) t!3165) tb!2825))

(declare-fun result!2877 () Bool)

(assert (=> tb!2825 (= result!2877 true)))

(assert (=> b!11269 t!3165))

(declare-fun b_and!5331 () Bool)

(assert (= b_and!5327 (and (=> t!3165 result!2877) b_and!5331)))

(declare-fun m!14185 () Bool)

(assert (=> b!11269 m!14185))

(assert (=> b!11269 m!14185))

(declare-fun m!14187 () Bool)

(assert (=> b!11269 m!14187))

(assert (=> b!11237 d!8713))

(declare-fun d!8715 () Bool)

(declare-fun c!3362 () Bool)

(assert (=> d!8715 (= c!3362 (is-Nil!268 xs!292))))

(declare-fun e!6374 () List!270)

(assert (=> d!8715 (= (append!119 xs!292 ys!54) e!6374)))

(declare-fun b!11274 () Bool)

(assert (=> b!11274 (= e!6374 ys!54)))

(declare-fun b!11275 () Bool)

(assert (=> b!11275 (= e!6374 (Cons!267 (head!485 xs!292) (append!119 (tail!497 xs!292) ys!54)))))

(assert (= (and d!8715 c!3362) b!11274))

(assert (= (and d!8715 (not c!3362)) b!11275))

(declare-fun m!14189 () Bool)

(assert (=> b!11275 m!14189))

(assert (=> b!11237 d!8715))

(declare-fun b_lambda!5805 () Bool)

(assert (= b_lambda!5801 (or (and b!11242 (= lambda!2999 f!539)) (and start!2250 b_free!1525) (and start!2250 b_free!1527 (= f!574 f!539)) b_lambda!5805)))

(declare-fun bs!2887 () Bool)

(declare-fun d!8717 () Bool)

(assert (= bs!2887 (and d!8717 b!11242)))

(assert (=> bs!2887 (= (dynLambda!411 lambda!2999 (head!485 ys!54) (foldRight1!100 (tail!497 ys!54) f!539)) (++!3 (head!485 ys!54) (foldRight1!100 (tail!497 ys!54) f!539)))))

(assert (=> bs!2887 m!14181))

(declare-fun m!14191 () Bool)

(assert (=> bs!2887 m!14191))

(assert (=> (and b!11242 (= lambda!2999 f!539) b!11267) d!8717))

(declare-fun b_lambda!5807 () Bool)

(assert (= b_lambda!5795 (or (and b!11238 (= lambda!3000 (y!631 thiss!746))) (and b!11238 (= lambda!3002 (y!631 thiss!746))) (and b!11244 b_free!1529 (= (x!6362 thiss!746) (y!631 thiss!746))) (and b!11244 b_free!1531) b_lambda!5807)))

(declare-fun bs!2888 () Bool)

(declare-fun d!8719 () Bool)

(assert (= bs!2888 (and d!8719 b!11238)))

(assert (=> bs!2888 (= (dynLambda!412 lambda!3000) (dynLambda!411 f!539 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)))))

(declare-fun b_lambda!5817 () Bool)

(assert (=> (not b_lambda!5817) (not bs!2888)))

(assert (=> bs!2888 t!3141))

(declare-fun b_and!5333 () Bool)

(assert (= b_and!5329 (and (=> t!3141 result!2853) b_and!5333)))

(assert (=> bs!2888 t!3143))

(declare-fun b_and!5335 () Bool)

(assert (= b_and!5331 (and (=> t!3143 result!2855) b_and!5335)))

(assert (=> bs!2888 m!14151))

(assert (=> bs!2888 m!14153))

(assert (=> bs!2888 m!14151))

(assert (=> bs!2888 m!14153))

(assert (=> bs!2888 m!14155))

(assert (=> (and b!11238 (= lambda!3000 (y!631 thiss!746)) d!8705) d!8719))

(declare-fun bs!2889 () Bool)

(declare-fun d!8721 () Bool)

(assert (= bs!2889 (and d!8721 b!11238)))

(declare-fun dynLambda!414 (Int Balance!301) Balance!301)

(assert (=> bs!2889 (= (dynLambda!412 lambda!3002) (dynLambda!411 f!539 (dynLambda!414 lambda!3001 (foldRight1!100 (tail!497 xs!292) f!539)) (foldRight1!100 ys!54 f!539)))))

(declare-fun b_lambda!5819 () Bool)

(assert (=> (not b_lambda!5819) (not bs!2889)))

(declare-fun t!3167 () Bool)

(declare-fun tb!2827 () Bool)

(assert (=> (and start!2250 (= f!539 f!539) t!3167) tb!2827))

(declare-fun result!2879 () Bool)

(assert (=> tb!2827 (= result!2879 true)))

(assert (=> bs!2889 t!3167))

(declare-fun b_and!5337 () Bool)

(assert (= b_and!5333 (and (=> t!3167 result!2879) b_and!5337)))

(declare-fun t!3169 () Bool)

(declare-fun tb!2829 () Bool)

(assert (=> (and start!2250 (= f!574 f!539) t!3169) tb!2829))

(declare-fun result!2881 () Bool)

(assert (=> tb!2829 (= result!2881 true)))

(assert (=> bs!2889 t!3169))

(declare-fun b_and!5339 () Bool)

(assert (= b_and!5335 (and (=> t!3169 result!2881) b_and!5339)))

(declare-fun b_lambda!5821 () Bool)

(assert (=> (not b_lambda!5821) (not bs!2889)))

(assert (=> bs!2889 m!14177))

(declare-fun m!14193 () Bool)

(assert (=> bs!2889 m!14193))

(assert (=> bs!2889 m!14153))

(declare-fun m!14195 () Bool)

(assert (=> bs!2889 m!14195))

(assert (=> bs!2889 m!14153))

(assert (=> bs!2889 m!14177))

(assert (=> bs!2889 m!14193))

(assert (=> (and b!11238 (= lambda!3002 (y!631 thiss!746)) d!8705) d!8721))

(declare-fun b_lambda!5809 () Bool)

(assert (= b_lambda!5797 (or (and b!11238 (= lambda!3003 (evidence!183 thiss!746))) (and b!11244 b_free!1533) b_lambda!5809)))

(declare-fun bs!2890 () Bool)

(declare-fun d!8723 () Bool)

(assert (= bs!2890 (and d!8723 b!11238)))

(declare-fun append_is_associative!0 (Balance!301 Balance!301 Balance!301) Bool)

(assert (=> bs!2890 (= (dynLambda!413 lambda!3003) (append_is_associative!0 (head!485 xs!292) (foldRight1!100 (tail!497 xs!292) f!539) (foldRight1!100 ys!54 f!539)))))

(assert (=> bs!2890 m!14177))

(assert (=> bs!2890 m!14153))

(assert (=> bs!2890 m!14177))

(assert (=> bs!2890 m!14153))

(declare-fun m!14197 () Bool)

(assert (=> bs!2890 m!14197))

(assert (=> (and b!11238 (= lambda!3003 (evidence!183 thiss!746)) b!11259) d!8723))

(declare-fun b_lambda!5811 () Bool)

(assert (= b_lambda!5793 (or (and b!11238 (= lambda!3000 (x!6362 thiss!746))) (and b!11238 (= lambda!3002 (x!6362 thiss!746))) (and b!11244 b_free!1529) (and b!11244 b_free!1531 (= (y!631 thiss!746) (x!6362 thiss!746))) b_lambda!5811)))

(declare-fun bs!2891 () Bool)

(declare-fun d!8725 () Bool)

(assert (= bs!2891 (and d!8725 b!11238)))

(assert (=> bs!2891 (= (dynLambda!412 lambda!3000) (dynLambda!411 f!539 (foldRight1!100 xs!292 f!539) (foldRight1!100 ys!54 f!539)))))

(declare-fun b_lambda!5823 () Bool)

(assert (=> (not b_lambda!5823) (not bs!2891)))

(assert (=> bs!2891 t!3141))

(declare-fun b_and!5341 () Bool)

(assert (= b_and!5337 (and (=> t!3141 result!2853) b_and!5341)))

(assert (=> bs!2891 t!3143))

(declare-fun b_and!5343 () Bool)

(assert (= b_and!5339 (and (=> t!3143 result!2855) b_and!5343)))

(assert (=> bs!2891 m!14151))

(assert (=> bs!2891 m!14153))

(assert (=> bs!2891 m!14151))

(assert (=> bs!2891 m!14153))

(assert (=> bs!2891 m!14155))

(assert (=> (and b!11238 (= lambda!3000 (x!6362 thiss!746)) d!8705) d!8725))

(declare-fun bs!2892 () Bool)

(declare-fun d!8727 () Bool)

(assert (= bs!2892 (and d!8727 b!11238)))

(assert (=> bs!2892 (= (dynLambda!412 lambda!3002) (dynLambda!411 f!539 (dynLambda!414 lambda!3001 (foldRight1!100 (tail!497 xs!292) f!539)) (foldRight1!100 ys!54 f!539)))))

(declare-fun b_lambda!5825 () Bool)

(assert (=> (not b_lambda!5825) (not bs!2892)))

(assert (=> bs!2892 t!3167))

(declare-fun b_and!5345 () Bool)

(assert (= b_and!5341 (and (=> t!3167 result!2879) b_and!5345)))

(assert (=> bs!2892 t!3169))

(declare-fun b_and!5347 () Bool)

(assert (= b_and!5343 (and (=> t!3169 result!2881) b_and!5347)))

(declare-fun b_lambda!5827 () Bool)

(assert (=> (not b_lambda!5827) (not bs!2892)))

(assert (=> bs!2892 m!14177))

(assert (=> bs!2892 m!14193))

(assert (=> bs!2892 m!14153))

(assert (=> bs!2892 m!14195))

(assert (=> bs!2892 m!14153))

(assert (=> bs!2892 m!14177))

(assert (=> bs!2892 m!14193))

(assert (=> (and b!11238 (= lambda!3002 (x!6362 thiss!746)) d!8705) d!8727))

(declare-fun b_lambda!5813 () Bool)

(assert (= b_lambda!5799 (or (and b!11242 (= lambda!2999 f!539)) (and start!2250 b_free!1525) (and start!2250 b_free!1527 (= f!574 f!539)) b_lambda!5813)))

(declare-fun bs!2893 () Bool)

(declare-fun d!8729 () Bool)

(assert (= bs!2893 (and d!8729 b!11242)))

(assert (=> bs!2893 (= (dynLambda!411 lambda!2999 (head!485 xs!292) (foldRight1!100 (tail!497 xs!292) f!539)) (++!3 (head!485 xs!292) (foldRight1!100 (tail!497 xs!292) f!539)))))

(assert (=> bs!2893 m!14177))

(declare-fun m!14199 () Bool)

(assert (=> bs!2893 m!14199))

(assert (=> (and b!11242 (= lambda!2999 f!539) b!11265) d!8729))

(declare-fun b_lambda!5815 () Bool)

(assert (= b_lambda!5803 (or (and b!11242 (= lambda!2999 f!539)) (and start!2250 b_free!1525) (and start!2250 b_free!1527 (= f!574 f!539)) b_lambda!5815)))

(declare-fun bs!2894 () Bool)

(declare-fun d!8731 () Bool)

(assert (= bs!2894 (and d!8731 b!11242)))

(assert (=> bs!2894 (= (dynLambda!411 lambda!2999 (head!485 (append!119 xs!292 ys!54)) (foldRight1!100 (tail!497 (append!119 xs!292 ys!54)) f!539)) (++!3 (head!485 (append!119 xs!292 ys!54)) (foldRight1!100 (tail!497 (append!119 xs!292 ys!54)) f!539)))))

(assert (=> bs!2894 m!14185))

(declare-fun m!14201 () Bool)

(assert (=> bs!2894 m!14201))

(assert (=> (and b!11242 (= lambda!2999 f!539) b!11269) d!8731))

(push 1)

(assert b_and!5347)

(assert b_and!5317)

(assert (not b_lambda!5819))

(assert (not b_lambda!5815))

(assert (not b!11269))

(assert b_and!5345)

(assert (not b_next!3691))

(assert (not b_lambda!5825))

(assert (not bs!2890))

(assert (not b_lambda!5807))

(assert (not b_lambda!5823))

(assert (not bs!2887))

(assert (not b!11265))

(assert (not b_lambda!5809))

(assert (not bs!2889))

(assert (not b_lambda!5791))

(assert (not b_next!3683))

(assert (not b_lambda!5813))

(assert (not b_lambda!5805))

(assert (not bs!2888))

(assert (not d!8699))

(assert (not bs!2893))

(assert (not bs!2891))

(assert (not b_lambda!5821))

(assert b_and!5315)

(assert (not b_lambda!5811))

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert (not bs!2892))

(assert (not bs!2894))

(assert b_and!5319)

(assert (not b!11267))

(assert (not b_next!3695))

(assert (not b_lambda!5817))

(assert (not b_lambda!5827))

(assert (not b!11275))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5347)

(assert b_and!5317)

(assert b_and!5345)

(assert (not b_next!3691))

(assert (not b_next!3683))

(assert b_and!5315)

(assert (not b_next!3693))

(assert (not b_next!3685))

(assert b_and!5319)

(assert (not b_next!3695))

(check-sat)

(pop 1)

