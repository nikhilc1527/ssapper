; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1974 () Bool)

(assert start!1974)

(declare-fun b!9814 () Bool)

(declare-fun b_free!1209 () Bool)

(declare-fun b_next!3001 () Bool)

(assert (=> b!9814 (= b_free!1209 (not b_next!3001))))

(declare-fun tp!1946 () Bool)

(declare-fun b_and!4391 () Bool)

(assert (=> b!9814 (= tp!1946 b_and!4391)))

(declare-fun b_free!1211 () Bool)

(declare-fun b_next!3003 () Bool)

(assert (=> b!9814 (= b_free!1211 (not b_next!3003))))

(declare-fun tp!1947 () Bool)

(declare-fun b_and!4393 () Bool)

(assert (=> b!9814 (= tp!1947 b_and!4393)))

(declare-fun b_free!1213 () Bool)

(declare-fun b_next!3005 () Bool)

(assert (=> b!9814 (= b_free!1213 (not b_next!3005))))

(declare-fun tp!1950 () Bool)

(declare-fun b_and!4395 () Bool)

(assert (=> b!9814 (= tp!1950 b_and!4395)))

(declare-fun b!9813 () Bool)

(declare-fun b_free!1215 () Bool)

(declare-fun b_next!3007 () Bool)

(assert (=> b!9813 (= b_free!1215 (not b_next!3007))))

(declare-fun tp!1949 () Bool)

(declare-fun b_and!4397 () Bool)

(assert (=> b!9813 (= tp!1949 b_and!4397)))

(declare-fun b_free!1217 () Bool)

(declare-fun b_next!3009 () Bool)

(assert (=> b!9813 (= b_free!1217 (not b_next!3009))))

(declare-fun tp!1948 () Bool)

(declare-fun b_and!4399 () Bool)

(assert (=> b!9813 (= tp!1948 b_and!4399)))

(declare-fun b_free!1219 () Bool)

(declare-fun b_next!3011 () Bool)

(assert (=> start!1974 (= b_free!1219 (not b_next!3011))))

(declare-fun tp!1951 () Bool)

(declare-fun b_and!4401 () Bool)

(assert (=> start!1974 (= tp!1951 b_and!4401)))

(declare-fun b!9808 () Bool)

(declare-fun m!12977 () Bool)

(assert (=> b!9808 m!12977))

(assert (=> b!9808 true))

(declare-fun lambda!2535 () Int)

(declare-datatypes () ((EqEvidence!188 (EqEvidence!189 (x!5548 Int) (y!598 Int) (evidence!161 Int)))))

(declare-fun thiss!673 () EqEvidence!188)

(declare-fun dynLambda!323 (Int) Int)

(assert (=> (and b!9814 b!9808 (= (dynLambda!323 lambda!2535) (dynLambda!323 (x!5548 thiss!673)))) (= lambda!2535 (x!5548 thiss!673))))

(assert (=> (and b!9814 b!9808 (= (dynLambda!323 lambda!2535) (dynLambda!323 (y!598 thiss!673)))) (= lambda!2535 (y!598 thiss!673))))

(declare-datatypes () ((EqProof!90 (EqProof!91 (x!5549 Int) (y!599 Int)))))

(declare-fun thiss!675 () EqProof!90)

(assert (=> (and b!9813 b!9808 (= (dynLambda!323 lambda!2535) (dynLambda!323 (x!5549 thiss!675)))) (= lambda!2535 (x!5549 thiss!675))))

(assert (=> (and b!9813 b!9808 (= (dynLambda!323 lambda!2535) (dynLambda!323 (y!599 thiss!675)))) (= lambda!2535 (y!599 thiss!675))))

(declare-fun b_next!3013 () Bool)

(assert (=> b!9814 (= b_next!3001 (or (and b!9808 (= lambda!2535 (x!5548 thiss!673))) b_next!3013))))

(declare-fun b_next!3015 () Bool)

(assert (=> b!9814 (= b_next!3003 (or (and b!9808 (= lambda!2535 (y!598 thiss!673))) b_next!3015))))

(declare-fun b_next!3017 () Bool)

(assert (=> b!9813 (= b_next!3007 (or (and b!9808 (= lambda!2535 (x!5549 thiss!675))) b_next!3017))))

(declare-fun b_next!3019 () Bool)

(assert (=> b!9813 (= b_next!3009 (or (and b!9808 (= lambda!2535 (y!599 thiss!675))) b_next!3019))))

(declare-fun m!12979 () Bool)

(assert (=> b!9808 m!12979))

(declare-fun lambda!2536 () Int)

(declare-fun dynLambda!324 (Int) Bool)

(assert (=> (and b!9814 b!9808 (= (dynLambda!324 lambda!2536) (dynLambda!324 (evidence!161 thiss!673)))) (= lambda!2536 (evidence!161 thiss!673))))

(declare-fun proof!197 () Int)

(assert (=> (and start!1974 b!9808 (= (dynLambda!324 lambda!2536) (dynLambda!324 proof!197))) (= lambda!2536 proof!197)))

(declare-fun b_next!3021 () Bool)

(assert (=> b!9814 (= b_next!3005 (or (and b!9808 (= lambda!2536 (evidence!161 thiss!673))) b_next!3021))))

(declare-fun b_next!3023 () Bool)

(assert (=> start!1974 (= b_next!3011 (or (and b!9808 (= lambda!2536 proof!197)) b_next!3023))))

(declare-fun bs!2650 () Bool)

(declare-fun b!9806 () Bool)

(assert (= bs!2650 (and b!9806 b!9808)))

(declare-fun lambda!2537 () Int)

(assert (=> bs!2650 (not (= lambda!2537 lambda!2535))))

(assert (=> b!9806 true))

(declare-fun b_next!3025 () Bool)

(assert (=> b!9814 (= b_next!3013 (or (and b!9806 (= lambda!2537 (x!5548 thiss!673))) b_next!3025))))

(declare-fun b_next!3027 () Bool)

(assert (=> b!9814 (= b_next!3015 (or (and b!9806 (= lambda!2537 (y!598 thiss!673))) b_next!3027))))

(declare-fun b_next!3029 () Bool)

(assert (=> b!9813 (= b_next!3017 (or (and b!9806 (= lambda!2537 (x!5549 thiss!675))) b_next!3029))))

(declare-fun b_next!3031 () Bool)

(assert (=> b!9813 (= b_next!3019 (or (and b!9806 (= lambda!2537 (y!599 thiss!675))) b_next!3031))))

(declare-fun bs!2651 () Bool)

(declare-fun b!9812 () Bool)

(assert (= bs!2651 (and b!9812 b!9808)))

(declare-fun lambda!2538 () Int)

(assert (=> bs!2651 (not (= lambda!2538 lambda!2536))))

(assert (=> b!9812 true))

(declare-fun b_next!3033 () Bool)

(assert (=> b!9814 (= b_next!3021 (or (and b!9812 (= lambda!2538 (evidence!161 thiss!673))) b_next!3033))))

(declare-fun b_next!3035 () Bool)

(assert (=> start!1974 (= b_next!3023 (or (and b!9812 (= lambda!2538 proof!197)) b_next!3035))))

(declare-fun b!9804 () Bool)

(declare-fun res!3269 () Bool)

(declare-fun e!5807 () Bool)

(assert (=> b!9804 (=> (not res!3269) (not e!5807))))

(declare-fun lambda!2534 () Int)

(declare-datatypes () ((Parenthesis!56 (CloseParenthesis!55) (OpenParenthesis!55))))

(declare-datatypes () ((List!233 (Nil!231) (Cons!230 (head!448 Parenthesis!56) (tail!460 List!233)))))

(declare-fun xs!280 () List!233)

(declare-fun counter!4 () Int)

(declare-fun foldRight!35 (List!233 Int Int) Int)

(assert (=> b!9804 (= res!3269 (= counter!4 (foldRight!35 xs!280 0 lambda!2534)))))

(declare-fun b!9805 () Bool)

(declare-fun e!5809 () Bool)

(declare-datatypes () ((Balance!233 (Balance!234 (extraOpen!157 Int) (extraClose!157 Int)))))

(declare-fun balance!3 () Balance!233)

(declare-fun nonNegative!0 (Balance!233) Bool)

(assert (=> b!9805 (= e!5809 (nonNegative!0 balance!3))))

(declare-fun res!3277 () Bool)

(assert (=> b!9806 (=> (not res!3277) (not e!5807))))

(assert (=> b!9806 (= res!3277 (= thiss!675 (EqProof!91 lambda!2537 lambda!2537)))))

(declare-fun b!9807 () Bool)

(assert (=> b!9807 (= e!5807 (not (dynLambda!324 proof!197)))))

(declare-fun res!3274 () Bool)

(assert (=> b!9808 (=> (not res!3274) (not e!5807))))

(assert (=> b!9808 (= res!3274 (= thiss!673 (EqEvidence!189 lambda!2535 lambda!2535 lambda!2536)))))

(declare-fun b!9809 () Bool)

(declare-fun res!3271 () Bool)

(assert (=> b!9809 (=> (not res!3271) (not e!5807))))

(assert (=> b!9809 (= res!3271 (not (is-Nil!231 xs!280)))))

(declare-fun b!9810 () Bool)

(declare-fun res!3273 () Bool)

(assert (=> b!9810 (=> (not res!3273) (not e!5807))))

(declare-datatypes () ((ProofOps!180 (ProofOps!181 (prop!216 Bool)))))

(declare-fun thiss!651 () ProofOps!180)

(assert (=> b!9810 (= res!3273 (= thiss!651 (ProofOps!181 e!5809)))))

(declare-fun res!3275 () Bool)

(assert (=> b!9810 (=> (not res!3275) (not e!5809))))

(declare-fun balanceToCounter!0 (Balance!233) Int)

(assert (=> b!9810 (= res!3275 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!9811 () Bool)

(declare-fun res!3270 () Bool)

(assert (=> b!9811 (=> (not res!3270) (not e!5807))))

(declare-fun original_sequential_helper!0 (List!233) Bool)

(assert (=> b!9811 (= res!3270 (original_sequential_helper!0 (tail!460 xs!280)))))

(declare-fun res!3272 () Bool)

(assert (=> start!1974 (=> (not res!3272) (not e!5807))))

(declare-fun lambda!2533 () Int)

(declare-fun foldRight!36 (List!233 Balance!233 Int) Balance!233)

(assert (=> start!1974 (= res!3272 (= balance!3 (foldRight!36 xs!280 (Balance!234 0 0) lambda!2533)))))

(assert (=> start!1974 e!5807))

(assert (=> start!1974 true))

(declare-fun e!5806 () Bool)

(declare-fun inv!343 (EqEvidence!188) Bool)

(assert (=> start!1974 (and (inv!343 thiss!673) e!5806)))

(declare-fun e!5808 () Bool)

(declare-fun inv!344 (EqProof!90) Bool)

(assert (=> start!1974 (and (inv!344 thiss!675) e!5808)))

(assert (=> start!1974 tp!1951))

(declare-fun res!3278 () Bool)

(assert (=> b!9812 (=> (not res!3278) (not e!5807))))

(assert (=> b!9812 (= res!3278 (= proof!197 lambda!2538))))

(assert (=> b!9813 (= e!5808 (and tp!1949 tp!1948))))

(assert (=> b!9814 (= e!5806 (and tp!1946 tp!1947 tp!1950))))

(declare-fun b!9815 () Bool)

(declare-fun res!3276 () Bool)

(assert (=> b!9815 (=> (not res!3276) (not e!5807))))

(assert (=> b!9815 (= res!3276 (nonNegative!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)))))

(assert (= (and start!1974 res!3272) b!9804))

(assert (= (and b!9804 res!3269) b!9810))

(assert (= (and b!9810 res!3275) b!9805))

(assert (= (and b!9810 res!3273) b!9809))

(assert (= (and b!9809 res!3271) b!9811))

(assert (= (and b!9811 res!3270) b!9815))

(assert (= (and b!9815 res!3276) b!9808))

(assert (= (and b!9808 res!3274) b!9806))

(assert (= (and b!9806 res!3277) b!9812))

(assert (= (and b!9812 res!3278) b!9807))

(assert (= start!1974 b!9814))

(assert (= start!1974 b!9813))

(declare-fun b_lambda!5247 () Bool)

(assert (=> (not b_lambda!5247) (not b!9807)))

(declare-fun tb!2353 () Bool)

(declare-fun t!2693 () Bool)

(assert (=> (and b!9814 (= (evidence!161 thiss!673) proof!197) t!2693) tb!2353))

(declare-fun result!2393 () Bool)

(assert (=> tb!2353 (= result!2393 true)))

(assert (=> b!9807 t!2693))

(declare-fun b_and!4403 () Bool)

(assert (= b_and!4395 (and (=> t!2693 result!2393) b_and!4403)))

(declare-fun t!2695 () Bool)

(declare-fun tb!2355 () Bool)

(assert (=> (and start!1974 (= proof!197 proof!197) t!2695) tb!2355))

(declare-fun result!2395 () Bool)

(assert (=> tb!2355 (= result!2395 true)))

(assert (=> b!9807 t!2695))

(declare-fun b_and!4405 () Bool)

(assert (= b_and!4401 (and (=> t!2695 result!2395) b_and!4405)))

(declare-fun m!12981 () Bool)

(assert (=> b!9807 m!12981))

(declare-fun m!12983 () Bool)

(assert (=> b!9815 m!12983))

(assert (=> b!9815 m!12983))

(declare-fun m!12985 () Bool)

(assert (=> b!9815 m!12985))

(assert (=> b!9810 m!12977))

(declare-fun m!12987 () Bool)

(assert (=> start!1974 m!12987))

(declare-fun m!12989 () Bool)

(assert (=> start!1974 m!12989))

(declare-fun m!12991 () Bool)

(assert (=> start!1974 m!12991))

(declare-fun m!12993 () Bool)

(assert (=> b!9805 m!12993))

(declare-fun m!12995 () Bool)

(assert (=> b!9804 m!12995))

(declare-fun m!12997 () Bool)

(assert (=> b!9811 m!12997))

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not b_next!3025))

(assert b_and!4393)

(assert (not b_lambda!5247))

(assert b_and!4403)

(assert (not b_next!3033))

(assert (not b!9805))

(assert (not b!9811))

(assert (not b!9804))

(assert b_and!4391)

(assert b_and!4397)

(assert b_and!4399)

(assert (not start!1974))

(assert (not b!9808))

(assert (not b_next!3031))

(assert (not b!9810))

(assert (not b!9815))

(assert b_and!4405)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not b_next!3025))

(assert b_and!4393)

(assert b_and!4403)

(assert (not b_next!3033))

(assert b_and!4391)

(assert b_and!4397)

(assert b_and!4399)

(assert (not b_next!3031))

(assert b_and!4405)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5249 () Bool)

(assert (= b_lambda!5247 (or (and b!9808 (= lambda!2536 proof!197)) (and b!9812 (= lambda!2538 proof!197)) (and b!9814 b_free!1213 (= (evidence!161 thiss!673) proof!197)) (and start!1974 b_free!1219) b_lambda!5249)))

(declare-fun bs!2652 () Bool)

(declare-fun d!8043 () Bool)

(assert (= bs!2652 (and d!8043 b!9808)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2652 (= (dynLambda!324 lambda!2536) trivial!1)))

(assert (=> (and b!9808 (= lambda!2536 proof!197) b!9807) d!8043))

(declare-fun bs!2653 () Bool)

(declare-fun d!8045 () Bool)

(assert (= bs!2653 (and d!8045 b!9812)))

(declare-fun toCounter_updateCounter!0 (Balance!233 Parenthesis!56) Bool)

(assert (=> bs!2653 (= (dynLambda!324 lambda!2538) (toCounter_updateCounter!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280)))))

(assert (=> bs!2653 m!12983))

(assert (=> bs!2653 m!12983))

(declare-fun m!12999 () Bool)

(assert (=> bs!2653 m!12999))

(assert (=> (and b!9812 (= lambda!2538 proof!197) b!9807) d!8045))

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not bs!2653))

(assert (not b_next!3025))

(assert b_and!4393)

(assert b_and!4403)

(assert (not b_next!3033))

(assert (not b!9805))

(assert (not b!9811))

(assert (not b!9804))

(assert b_and!4391)

(assert b_and!4397)

(assert b_and!4399)

(assert (not start!1974))

(assert (not b!9808))

(assert (not b_next!3031))

(assert (not b!9810))

(assert (not b!9815))

(assert b_and!4405)

(assert (not b_lambda!5249))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not b_next!3025))

(assert b_and!4393)

(assert b_and!4403)

(assert (not b_next!3033))

(assert b_and!4391)

(assert b_and!4397)

(assert b_and!4399)

(assert (not b_next!3031))

(assert b_and!4405)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8047 () Bool)

(assert (=> d!8047 (= (nonNegative!0 balance!3) (and (>= (extraOpen!157 balance!3) 0) (>= (extraClose!157 balance!3) 0)))))

(assert (=> b!9805 d!8047))

(declare-fun d!8049 () Bool)

(assert (=> d!8049 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!157 balance!3) 0) (- 1) (ite (and (= (extraOpen!157 balance!3) 0) (= (extraClose!157 balance!3) 0)) 0 (ite (>= (extraClose!157 balance!3) 0) (extraClose!157 balance!3) (- 1)))))))

(assert (=> b!9808 d!8049))

(declare-fun d!8051 () Bool)

(assert (=> d!8051 (= trivial!1 true)))

(assert (=> b!9808 d!8051))

(declare-fun d!8053 () Bool)

(declare-fun c!3134 () Bool)

(assert (=> d!8053 (= c!3134 (is-Nil!231 xs!280))))

(declare-fun e!5812 () Balance!233)

(assert (=> d!8053 (= (foldRight!36 xs!280 (Balance!234 0 0) lambda!2533) e!5812)))

(declare-fun b!9827 () Bool)

(assert (=> b!9827 (= e!5812 (Balance!234 0 0))))

(declare-fun b!9828 () Bool)

(declare-fun dynLambda!325 (Int Parenthesis!56 Balance!233) Balance!233)

(assert (=> b!9828 (= e!5812 (dynLambda!325 lambda!2533 (head!448 xs!280) (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)))))

(assert (= (and d!8053 c!3134) b!9827))

(assert (= (and d!8053 (not c!3134)) b!9828))

(declare-fun b_lambda!5251 () Bool)

(assert (=> (not b_lambda!5251) (not b!9828)))

(assert (=> b!9828 m!12983))

(assert (=> b!9828 m!12983))

(declare-fun m!13001 () Bool)

(assert (=> b!9828 m!13001))

(assert (=> start!1974 d!8053))

(declare-fun d!8055 () Bool)

(declare-fun res!3281 () Bool)

(declare-fun e!5815 () Bool)

(assert (=> d!8055 (=> (not res!3281) (not e!5815))))

(assert (=> d!8055 (= res!3281 (= (dynLambda!323 (x!5548 thiss!673)) (dynLambda!323 (y!598 thiss!673))))))

(assert (=> d!8055 (= (inv!343 thiss!673) e!5815)))

(declare-fun b!9831 () Bool)

(assert (=> b!9831 (= e!5815 (dynLambda!324 (evidence!161 thiss!673)))))

(assert (= (and d!8055 res!3281) b!9831))

(declare-fun b_lambda!5253 () Bool)

(assert (=> (not b_lambda!5253) (not d!8055)))

(declare-fun t!2697 () Bool)

(declare-fun tb!2357 () Bool)

(assert (=> (and b!9814 (= (x!5548 thiss!673) (x!5548 thiss!673)) t!2697) tb!2357))

(declare-fun result!2397 () Bool)

(assert (=> tb!2357 (= result!2397 true)))

(assert (=> d!8055 t!2697))

(declare-fun b_and!4407 () Bool)

(assert (= b_and!4391 (and (=> t!2697 result!2397) b_and!4407)))

(declare-fun t!2699 () Bool)

(declare-fun tb!2359 () Bool)

(assert (=> (and b!9814 (= (y!598 thiss!673) (x!5548 thiss!673)) t!2699) tb!2359))

(declare-fun result!2399 () Bool)

(assert (=> tb!2359 (= result!2399 true)))

(assert (=> d!8055 t!2699))

(declare-fun b_and!4409 () Bool)

(assert (= b_and!4393 (and (=> t!2699 result!2399) b_and!4409)))

(declare-fun tb!2361 () Bool)

(declare-fun t!2701 () Bool)

(assert (=> (and b!9813 (= (x!5549 thiss!675) (x!5548 thiss!673)) t!2701) tb!2361))

(declare-fun result!2401 () Bool)

(assert (=> tb!2361 (= result!2401 true)))

(assert (=> d!8055 t!2701))

(declare-fun b_and!4411 () Bool)

(assert (= b_and!4397 (and (=> t!2701 result!2401) b_and!4411)))

(declare-fun t!2703 () Bool)

(declare-fun tb!2363 () Bool)

(assert (=> (and b!9813 (= (y!599 thiss!675) (x!5548 thiss!673)) t!2703) tb!2363))

(declare-fun result!2403 () Bool)

(assert (=> tb!2363 (= result!2403 true)))

(assert (=> d!8055 t!2703))

(declare-fun b_and!4413 () Bool)

(assert (= b_and!4399 (and (=> t!2703 result!2403) b_and!4413)))

(declare-fun b_lambda!5255 () Bool)

(assert (=> (not b_lambda!5255) (not d!8055)))

(declare-fun t!2705 () Bool)

(declare-fun tb!2365 () Bool)

(assert (=> (and b!9814 (= (x!5548 thiss!673) (y!598 thiss!673)) t!2705) tb!2365))

(declare-fun result!2405 () Bool)

(assert (=> tb!2365 (= result!2405 true)))

(assert (=> d!8055 t!2705))

(declare-fun b_and!4415 () Bool)

(assert (= b_and!4407 (and (=> t!2705 result!2405) b_and!4415)))

(declare-fun t!2707 () Bool)

(declare-fun tb!2367 () Bool)

(assert (=> (and b!9814 (= (y!598 thiss!673) (y!598 thiss!673)) t!2707) tb!2367))

(declare-fun result!2407 () Bool)

(assert (=> tb!2367 (= result!2407 true)))

(assert (=> d!8055 t!2707))

(declare-fun b_and!4417 () Bool)

(assert (= b_and!4409 (and (=> t!2707 result!2407) b_and!4417)))

(declare-fun t!2709 () Bool)

(declare-fun tb!2369 () Bool)

(assert (=> (and b!9813 (= (x!5549 thiss!675) (y!598 thiss!673)) t!2709) tb!2369))

(declare-fun result!2409 () Bool)

(assert (=> tb!2369 (= result!2409 true)))

(assert (=> d!8055 t!2709))

(declare-fun b_and!4419 () Bool)

(assert (= b_and!4411 (and (=> t!2709 result!2409) b_and!4419)))

(declare-fun t!2711 () Bool)

(declare-fun tb!2371 () Bool)

(assert (=> (and b!9813 (= (y!599 thiss!675) (y!598 thiss!673)) t!2711) tb!2371))

(declare-fun result!2411 () Bool)

(assert (=> tb!2371 (= result!2411 true)))

(assert (=> d!8055 t!2711))

(declare-fun b_and!4421 () Bool)

(assert (= b_and!4413 (and (=> t!2711 result!2411) b_and!4421)))

(declare-fun b_lambda!5257 () Bool)

(assert (=> (not b_lambda!5257) (not b!9831)))

(declare-fun t!2713 () Bool)

(declare-fun tb!2373 () Bool)

(assert (=> (and b!9814 (= (evidence!161 thiss!673) (evidence!161 thiss!673)) t!2713) tb!2373))

(declare-fun result!2413 () Bool)

(assert (=> tb!2373 (= result!2413 true)))

(assert (=> b!9831 t!2713))

(declare-fun b_and!4423 () Bool)

(assert (= b_and!4403 (and (=> t!2713 result!2413) b_and!4423)))

(declare-fun t!2715 () Bool)

(declare-fun tb!2375 () Bool)

(assert (=> (and start!1974 (= proof!197 (evidence!161 thiss!673)) t!2715) tb!2375))

(declare-fun result!2415 () Bool)

(assert (=> tb!2375 (= result!2415 true)))

(assert (=> b!9831 t!2715))

(declare-fun b_and!4425 () Bool)

(assert (= b_and!4405 (and (=> t!2715 result!2415) b_and!4425)))

(declare-fun m!13003 () Bool)

(assert (=> d!8055 m!13003))

(declare-fun m!13005 () Bool)

(assert (=> d!8055 m!13005))

(declare-fun m!13007 () Bool)

(assert (=> b!9831 m!13007))

(assert (=> start!1974 d!8055))

(declare-fun d!8057 () Bool)

(assert (=> d!8057 (= (inv!344 thiss!675) (= (dynLambda!323 (x!5549 thiss!675)) (dynLambda!323 (y!599 thiss!675))))))

(declare-fun b_lambda!5259 () Bool)

(assert (=> (not b_lambda!5259) (not d!8057)))

(declare-fun t!2717 () Bool)

(declare-fun tb!2377 () Bool)

(assert (=> (and b!9814 (= (x!5548 thiss!673) (x!5549 thiss!675)) t!2717) tb!2377))

(declare-fun result!2417 () Bool)

(assert (=> tb!2377 (= result!2417 true)))

(assert (=> d!8057 t!2717))

(declare-fun b_and!4427 () Bool)

(assert (= b_and!4415 (and (=> t!2717 result!2417) b_and!4427)))

(declare-fun tb!2379 () Bool)

(declare-fun t!2719 () Bool)

(assert (=> (and b!9814 (= (y!598 thiss!673) (x!5549 thiss!675)) t!2719) tb!2379))

(declare-fun result!2419 () Bool)

(assert (=> tb!2379 (= result!2419 true)))

(assert (=> d!8057 t!2719))

(declare-fun b_and!4429 () Bool)

(assert (= b_and!4417 (and (=> t!2719 result!2419) b_and!4429)))

(declare-fun t!2721 () Bool)

(declare-fun tb!2381 () Bool)

(assert (=> (and b!9813 (= (x!5549 thiss!675) (x!5549 thiss!675)) t!2721) tb!2381))

(declare-fun result!2421 () Bool)

(assert (=> tb!2381 (= result!2421 true)))

(assert (=> d!8057 t!2721))

(declare-fun b_and!4431 () Bool)

(assert (= b_and!4419 (and (=> t!2721 result!2421) b_and!4431)))

(declare-fun t!2723 () Bool)

(declare-fun tb!2383 () Bool)

(assert (=> (and b!9813 (= (y!599 thiss!675) (x!5549 thiss!675)) t!2723) tb!2383))

(declare-fun result!2423 () Bool)

(assert (=> tb!2383 (= result!2423 true)))

(assert (=> d!8057 t!2723))

(declare-fun b_and!4433 () Bool)

(assert (= b_and!4421 (and (=> t!2723 result!2423) b_and!4433)))

(declare-fun b_lambda!5261 () Bool)

(assert (=> (not b_lambda!5261) (not d!8057)))

(declare-fun tb!2385 () Bool)

(declare-fun t!2725 () Bool)

(assert (=> (and b!9814 (= (x!5548 thiss!673) (y!599 thiss!675)) t!2725) tb!2385))

(declare-fun result!2425 () Bool)

(assert (=> tb!2385 (= result!2425 true)))

(assert (=> d!8057 t!2725))

(declare-fun b_and!4435 () Bool)

(assert (= b_and!4427 (and (=> t!2725 result!2425) b_and!4435)))

(declare-fun tb!2387 () Bool)

(declare-fun t!2727 () Bool)

(assert (=> (and b!9814 (= (y!598 thiss!673) (y!599 thiss!675)) t!2727) tb!2387))

(declare-fun result!2427 () Bool)

(assert (=> tb!2387 (= result!2427 true)))

(assert (=> d!8057 t!2727))

(declare-fun b_and!4437 () Bool)

(assert (= b_and!4429 (and (=> t!2727 result!2427) b_and!4437)))

(declare-fun t!2729 () Bool)

(declare-fun tb!2389 () Bool)

(assert (=> (and b!9813 (= (x!5549 thiss!675) (y!599 thiss!675)) t!2729) tb!2389))

(declare-fun result!2429 () Bool)

(assert (=> tb!2389 (= result!2429 true)))

(assert (=> d!8057 t!2729))

(declare-fun b_and!4439 () Bool)

(assert (= b_and!4431 (and (=> t!2729 result!2429) b_and!4439)))

(declare-fun t!2731 () Bool)

(declare-fun tb!2391 () Bool)

(assert (=> (and b!9813 (= (y!599 thiss!675) (y!599 thiss!675)) t!2731) tb!2391))

(declare-fun result!2431 () Bool)

(assert (=> tb!2391 (= result!2431 true)))

(assert (=> d!8057 t!2731))

(declare-fun b_and!4441 () Bool)

(assert (= b_and!4433 (and (=> t!2731 result!2431) b_and!4441)))

(declare-fun m!13009 () Bool)

(assert (=> d!8057 m!13009))

(declare-fun m!13011 () Bool)

(assert (=> d!8057 m!13011))

(assert (=> start!1974 d!8057))

(declare-fun d!8059 () Bool)

(declare-fun c!3137 () Bool)

(assert (=> d!8059 (= c!3137 (is-Nil!231 xs!280))))

(declare-fun e!5818 () Int)

(assert (=> d!8059 (= (foldRight!35 xs!280 0 lambda!2534) e!5818)))

(declare-fun b!9836 () Bool)

(assert (=> b!9836 (= e!5818 0)))

(declare-fun b!9837 () Bool)

(declare-fun dynLambda!326 (Int Parenthesis!56 Int) Int)

(assert (=> b!9837 (= e!5818 (dynLambda!326 lambda!2534 (head!448 xs!280) (foldRight!35 (tail!460 xs!280) 0 lambda!2534)))))

(assert (= (and d!8059 c!3137) b!9836))

(assert (= (and d!8059 (not c!3137)) b!9837))

(declare-fun b_lambda!5263 () Bool)

(assert (=> (not b_lambda!5263) (not b!9837)))

(declare-fun m!13013 () Bool)

(assert (=> b!9837 m!13013))

(assert (=> b!9837 m!13013))

(declare-fun m!13015 () Bool)

(assert (=> b!9837 m!13015))

(assert (=> b!9804 d!8059))

(declare-fun d!8061 () Bool)

(assert (=> d!8061 (= (nonNegative!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)) (and (>= (extraOpen!157 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)) 0) (>= (extraClose!157 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)) 0)))))

(assert (=> b!9815 d!8061))

(declare-fun d!8063 () Bool)

(declare-fun c!3138 () Bool)

(assert (=> d!8063 (= c!3138 (is-Nil!231 (tail!460 xs!280)))))

(declare-fun e!5819 () Balance!233)

(assert (=> d!8063 (= (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) e!5819)))

(declare-fun b!9838 () Bool)

(assert (=> b!9838 (= e!5819 (Balance!234 0 0))))

(declare-fun b!9839 () Bool)

(assert (=> b!9839 (= e!5819 (dynLambda!325 lambda!2533 (head!448 (tail!460 xs!280)) (foldRight!36 (tail!460 (tail!460 xs!280)) (Balance!234 0 0) lambda!2533)))))

(assert (= (and d!8063 c!3138) b!9838))

(assert (= (and d!8063 (not c!3138)) b!9839))

(declare-fun b_lambda!5265 () Bool)

(assert (=> (not b_lambda!5265) (not b!9839)))

(declare-fun m!13017 () Bool)

(assert (=> b!9839 m!13017))

(assert (=> b!9839 m!13017))

(declare-fun m!13019 () Bool)

(assert (=> b!9839 m!13019))

(assert (=> b!9815 d!8063))

(declare-fun bs!2654 () Bool)

(declare-fun d!8065 () Bool)

(assert (= bs!2654 (and d!8065 start!1974)))

(declare-fun lambda!2545 () Int)

(assert (=> bs!2654 (= lambda!2545 lambda!2533)))

(declare-fun bs!2655 () Bool)

(assert (= bs!2655 (and d!8065 b!9804)))

(declare-fun lambda!2546 () Int)

(assert (=> bs!2655 (= lambda!2546 lambda!2534)))

(declare-fun b!9850 () Bool)

(declare-fun e!5826 () Bool)

(declare-fun e!5827 () Bool)

(assert (=> b!9850 (= e!5826 e!5827)))

(declare-fun res!3288 () Bool)

(assert (=> b!9850 (=> (not res!3288) (not e!5827))))

(assert (=> b!9850 (= res!3288 (original_sequential_helper!0 (tail!460 (tail!460 xs!280))))))

(declare-fun b!9851 () Bool)

(declare-fun res!3290 () Bool)

(assert (=> b!9851 (=> (not res!3290) (not e!5827))))

(assert (=> b!9851 (= res!3290 (nonNegative!0 (foldRight!36 (tail!460 (tail!460 xs!280)) (Balance!234 0 0) lambda!2545)))))

(declare-fun b!9852 () Bool)

(assert (=> b!9852 (= e!5827 true)))

(declare-fun lt!1693 () Balance!233)

(declare-fun lt!1694 () Int)

(assert (=> b!9852 (= (balanceToCounter!0 lt!1693) lt!1694)))

(declare-fun b!9853 () Bool)

(assert (=> b!9853 (= e!5826 true)))

(declare-fun e!5828 () Bool)

(declare-fun because!2 (ProofOps!180 Bool) Bool)

(assert (=> d!8065 (because!2 (ProofOps!181 e!5828) e!5826)))

(declare-fun c!3143 () Bool)

(assert (=> d!8065 (= c!3143 (is-Nil!231 (tail!460 xs!280)))))

(declare-fun res!3289 () Bool)

(assert (=> d!8065 (=> (not res!3289) (not e!5828))))

(assert (=> d!8065 (= res!3289 (= (balanceToCounter!0 lt!1693) lt!1694))))

(assert (=> d!8065 (= lt!1694 (foldRight!35 (tail!460 xs!280) 0 lambda!2546))))

(assert (=> d!8065 (= lt!1693 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2545))))

(assert (=> d!8065 (= (original_sequential_helper!0 (tail!460 xs!280)) true)))

(declare-fun b!9854 () Bool)

(assert (=> b!9854 (= e!5828 (nonNegative!0 lt!1693))))

(assert (= (and d!8065 res!3289) b!9854))

(assert (= (and b!9850 res!3288) b!9851))

(assert (= (and b!9851 res!3290) b!9852))

(assert (= (and d!8065 c!3143) b!9853))

(assert (= (and d!8065 (not c!3143)) b!9850))

(declare-fun m!13021 () Bool)

(assert (=> b!9854 m!13021))

(declare-fun m!13023 () Bool)

(assert (=> b!9851 m!13023))

(assert (=> b!9851 m!13023))

(declare-fun m!13025 () Bool)

(assert (=> b!9851 m!13025))

(declare-fun m!13027 () Bool)

(assert (=> b!9850 m!13027))

(declare-fun m!13029 () Bool)

(assert (=> d!8065 m!13029))

(declare-fun m!13031 () Bool)

(assert (=> d!8065 m!13031))

(declare-fun m!13033 () Bool)

(assert (=> d!8065 m!13033))

(declare-fun m!13035 () Bool)

(assert (=> d!8065 m!13035))

(assert (=> b!9852 m!13031))

(assert (=> b!9811 d!8065))

(declare-fun d!8067 () Bool)

(declare-fun updateCounter!0 (Parenthesis!56 Int) Int)

(declare-fun +$colon!0 (Balance!233 Parenthesis!56) Balance!233)

(assert (=> d!8067 (= (updateCounter!0 (head!448 xs!280) (balanceToCounter!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533))) (balanceToCounter!0 (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280))))))

(assert (=> d!8067 (nonNegative!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533))))

(assert (=> d!8067 (= (toCounter_updateCounter!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280)) true)))

(declare-fun bs!2656 () Bool)

(assert (= bs!2656 d!8067))

(assert (=> bs!2656 m!12983))

(assert (=> bs!2656 m!12985))

(declare-fun m!13037 () Bool)

(assert (=> bs!2656 m!13037))

(declare-fun m!13039 () Bool)

(assert (=> bs!2656 m!13039))

(assert (=> bs!2656 m!12983))

(declare-fun m!13041 () Bool)

(assert (=> bs!2656 m!13041))

(assert (=> bs!2656 m!12983))

(assert (=> bs!2656 m!13037))

(assert (=> bs!2656 m!13041))

(declare-fun m!13043 () Bool)

(assert (=> bs!2656 m!13043))

(assert (=> bs!2653 d!8067))

(assert (=> bs!2653 d!8063))

(assert (=> b!9810 d!8049))

(declare-fun b_lambda!5267 () Bool)

(assert (= b_lambda!5255 (or (and b!9813 b_free!1217 (= (y!599 thiss!675) (y!598 thiss!673))) (and b!9813 b_free!1215 (= (x!5549 thiss!675) (y!598 thiss!673))) (and b!9814 b_free!1209 (= (x!5548 thiss!673) (y!598 thiss!673))) (and b!9814 b_free!1211) (and b!9806 (= lambda!2537 (y!598 thiss!673))) (and b!9808 (= lambda!2535 (y!598 thiss!673))) b_lambda!5267)))

(declare-fun bs!2657 () Bool)

(declare-fun d!8069 () Bool)

(assert (= bs!2657 (and d!8069 b!9808)))

(assert (=> bs!2657 (= (dynLambda!323 lambda!2535) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9808 (= lambda!2535 (y!598 thiss!673)) d!8055) d!8069))

(declare-fun bs!2658 () Bool)

(declare-fun d!8071 () Bool)

(assert (= bs!2658 (and d!8071 b!9806)))

(assert (=> bs!2658 (= (dynLambda!323 lambda!2537) (balanceToCounter!0 (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280))))))

(assert (=> bs!2658 m!12983))

(assert (=> bs!2658 m!12983))

(assert (=> bs!2658 m!13037))

(assert (=> bs!2658 m!13037))

(assert (=> bs!2658 m!13039))

(assert (=> (and b!9806 (= lambda!2537 (y!598 thiss!673)) d!8055) d!8071))

(declare-fun b_lambda!5269 () Bool)

(assert (= b_lambda!5251 (or start!1974 b_lambda!5269)))

(declare-fun bs!2659 () Bool)

(declare-fun d!8073 () Bool)

(assert (= bs!2659 (and d!8073 start!1974)))

(assert (=> bs!2659 (= (dynLambda!325 lambda!2533 (head!448 xs!280) (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533)) (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280)))))

(assert (=> bs!2659 m!12983))

(assert (=> bs!2659 m!13037))

(assert (=> b!9828 d!8073))

(declare-fun b_lambda!5271 () Bool)

(assert (= b_lambda!5265 (or start!1974 b_lambda!5271)))

(declare-fun bs!2660 () Bool)

(declare-fun d!8075 () Bool)

(assert (= bs!2660 (and d!8075 start!1974)))

(assert (=> bs!2660 (= (dynLambda!325 lambda!2533 (head!448 (tail!460 xs!280)) (foldRight!36 (tail!460 (tail!460 xs!280)) (Balance!234 0 0) lambda!2533)) (+$colon!0 (foldRight!36 (tail!460 (tail!460 xs!280)) (Balance!234 0 0) lambda!2533) (head!448 (tail!460 xs!280))))))

(assert (=> bs!2660 m!13017))

(declare-fun m!13045 () Bool)

(assert (=> bs!2660 m!13045))

(assert (=> b!9839 d!8075))

(declare-fun b_lambda!5273 () Bool)

(assert (= b_lambda!5263 (or b!9804 b_lambda!5273)))

(declare-fun bs!2661 () Bool)

(declare-fun d!8077 () Bool)

(assert (= bs!2661 (and d!8077 b!9804)))

(assert (=> bs!2661 (= (dynLambda!326 lambda!2534 (head!448 xs!280) (foldRight!35 (tail!460 xs!280) 0 lambda!2534)) (updateCounter!0 (head!448 xs!280) (foldRight!35 (tail!460 xs!280) 0 lambda!2534)))))

(assert (=> bs!2661 m!13013))

(declare-fun m!13047 () Bool)

(assert (=> bs!2661 m!13047))

(assert (=> b!9837 d!8077))

(declare-fun b_lambda!5275 () Bool)

(assert (= b_lambda!5253 (or (and b!9814 b_free!1209) (and b!9806 (= lambda!2537 (x!5548 thiss!673))) (and b!9814 b_free!1211 (= (y!598 thiss!673) (x!5548 thiss!673))) (and b!9813 b_free!1217 (= (y!599 thiss!675) (x!5548 thiss!673))) (and b!9813 b_free!1215 (= (x!5549 thiss!675) (x!5548 thiss!673))) (and b!9808 (= lambda!2535 (x!5548 thiss!673))) b_lambda!5275)))

(declare-fun bs!2662 () Bool)

(declare-fun d!8079 () Bool)

(assert (= bs!2662 (and d!8079 b!9806)))

(assert (=> bs!2662 (= (dynLambda!323 lambda!2537) (balanceToCounter!0 (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280))))))

(assert (=> bs!2662 m!12983))

(assert (=> bs!2662 m!12983))

(assert (=> bs!2662 m!13037))

(assert (=> bs!2662 m!13037))

(assert (=> bs!2662 m!13039))

(assert (=> (and b!9806 (= lambda!2537 (x!5548 thiss!673)) d!8055) d!8079))

(declare-fun bs!2663 () Bool)

(declare-fun d!8081 () Bool)

(assert (= bs!2663 (and d!8081 b!9808)))

(assert (=> bs!2663 (= (dynLambda!323 lambda!2535) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9808 (= lambda!2535 (x!5548 thiss!673)) d!8055) d!8081))

(declare-fun b_lambda!5277 () Bool)

(assert (= b_lambda!5259 (or (and b!9814 b_free!1209 (= (x!5548 thiss!673) (x!5549 thiss!675))) (and b!9813 b_free!1217 (= (y!599 thiss!675) (x!5549 thiss!675))) (and b!9814 b_free!1211 (= (y!598 thiss!673) (x!5549 thiss!675))) (and b!9806 (= lambda!2537 (x!5549 thiss!675))) (and b!9808 (= lambda!2535 (x!5549 thiss!675))) (and b!9813 b_free!1215) b_lambda!5277)))

(declare-fun bs!2664 () Bool)

(declare-fun d!8083 () Bool)

(assert (= bs!2664 (and d!8083 b!9806)))

(assert (=> bs!2664 (= (dynLambda!323 lambda!2537) (balanceToCounter!0 (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280))))))

(assert (=> bs!2664 m!12983))

(assert (=> bs!2664 m!12983))

(assert (=> bs!2664 m!13037))

(assert (=> bs!2664 m!13037))

(assert (=> bs!2664 m!13039))

(assert (=> (and b!9806 (= lambda!2537 (x!5549 thiss!675)) d!8057) d!8083))

(declare-fun bs!2665 () Bool)

(declare-fun d!8085 () Bool)

(assert (= bs!2665 (and d!8085 b!9808)))

(assert (=> bs!2665 (= (dynLambda!323 lambda!2535) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9808 (= lambda!2535 (x!5549 thiss!675)) d!8057) d!8085))

(declare-fun b_lambda!5279 () Bool)

(assert (= b_lambda!5261 (or (and b!9806 (= lambda!2537 (y!599 thiss!675))) (and b!9814 b_free!1209 (= (x!5548 thiss!673) (y!599 thiss!675))) (and b!9813 b_free!1217) (and b!9808 (= lambda!2535 (y!599 thiss!675))) (and b!9814 b_free!1211 (= (y!598 thiss!673) (y!599 thiss!675))) (and b!9813 b_free!1215 (= (x!5549 thiss!675) (y!599 thiss!675))) b_lambda!5279)))

(declare-fun bs!2666 () Bool)

(declare-fun d!8087 () Bool)

(assert (= bs!2666 (and d!8087 b!9806)))

(assert (=> bs!2666 (= (dynLambda!323 lambda!2537) (balanceToCounter!0 (+$colon!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280))))))

(assert (=> bs!2666 m!12983))

(assert (=> bs!2666 m!12983))

(assert (=> bs!2666 m!13037))

(assert (=> bs!2666 m!13037))

(assert (=> bs!2666 m!13039))

(assert (=> (and b!9806 (= lambda!2537 (y!599 thiss!675)) d!8057) d!8087))

(declare-fun bs!2667 () Bool)

(declare-fun d!8089 () Bool)

(assert (= bs!2667 (and d!8089 b!9808)))

(assert (=> bs!2667 (= (dynLambda!323 lambda!2535) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9808 (= lambda!2535 (y!599 thiss!675)) d!8057) d!8089))

(declare-fun b_lambda!5281 () Bool)

(assert (= b_lambda!5257 (or (and b!9808 (= lambda!2536 (evidence!161 thiss!673))) (and b!9812 (= lambda!2538 (evidence!161 thiss!673))) (and b!9814 b_free!1213) (and start!1974 b_free!1219 (= proof!197 (evidence!161 thiss!673))) b_lambda!5281)))

(declare-fun bs!2668 () Bool)

(declare-fun d!8091 () Bool)

(assert (= bs!2668 (and d!8091 b!9808)))

(assert (=> bs!2668 (= (dynLambda!324 lambda!2536) trivial!1)))

(assert (=> (and b!9808 (= lambda!2536 (evidence!161 thiss!673)) b!9831) d!8091))

(declare-fun bs!2669 () Bool)

(declare-fun d!8093 () Bool)

(assert (= bs!2669 (and d!8093 b!9812)))

(assert (=> bs!2669 (= (dynLambda!324 lambda!2538) (toCounter_updateCounter!0 (foldRight!36 (tail!460 xs!280) (Balance!234 0 0) lambda!2533) (head!448 xs!280)))))

(assert (=> bs!2669 m!12983))

(assert (=> bs!2669 m!12983))

(assert (=> bs!2669 m!12999))

(assert (=> (and b!9812 (= lambda!2538 (evidence!161 thiss!673)) b!9831) d!8093))

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not b!9851))

(assert (not b!9852))

(assert (not b!9850))

(assert (not b!9839))

(assert (not bs!2659))

(assert (not b_lambda!5267))

(assert (not b_lambda!5275))

(assert (not b_next!3025))

(assert (not bs!2666))

(assert b_and!4437)

(assert (not b!9828))

(assert (not b_lambda!5279))

(assert (not bs!2660))

(assert (not b_next!3033))

(assert (not bs!2664))

(assert (not bs!2658))

(assert b_and!4439)

(assert b_and!4435)

(assert (not bs!2662))

(assert (not b!9837))

(assert (not b!9854))

(assert (not d!8065))

(assert (not b_lambda!5273))

(assert b_and!4425)

(assert (not b_next!3031))

(assert (not d!8067))

(assert (not b_lambda!5277))

(assert b_and!4441)

(assert b_and!4423)

(assert (not bs!2669))

(assert (not b_lambda!5281))

(assert (not bs!2661))

(assert (not b_lambda!5269))

(assert (not b_lambda!5249))

(assert (not b_lambda!5271))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3035))

(assert (not b_next!3027))

(assert (not b_next!3029))

(assert (not b_next!3025))

(assert b_and!4437)

(assert (not b_next!3033))

(assert b_and!4439)

(assert b_and!4435)

(assert b_and!4425)

(assert (not b_next!3031))

(assert b_and!4441)

(assert b_and!4423)

(check-sat)

(pop 1)

