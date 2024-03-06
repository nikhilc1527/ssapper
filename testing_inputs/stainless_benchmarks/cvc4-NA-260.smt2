; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1996 () Bool)

(assert start!1996)

(declare-fun b!9929 () Bool)

(declare-fun b_free!1245 () Bool)

(declare-fun b_next!3061 () Bool)

(assert (=> b!9929 (= b_free!1245 (not b_next!3061))))

(declare-fun tp!2005 () Bool)

(declare-fun b_and!4467 () Bool)

(assert (=> b!9929 (= tp!2005 b_and!4467)))

(declare-fun b_free!1247 () Bool)

(declare-fun b_next!3063 () Bool)

(assert (=> b!9929 (= b_free!1247 (not b_next!3063))))

(declare-fun tp!2004 () Bool)

(declare-fun b_and!4469 () Bool)

(assert (=> b!9929 (= tp!2004 b_and!4469)))

(declare-fun b_free!1249 () Bool)

(declare-fun b_next!3065 () Bool)

(assert (=> b!9929 (= b_free!1249 (not b_next!3065))))

(declare-fun tp!2002 () Bool)

(declare-fun b_and!4471 () Bool)

(assert (=> b!9929 (= tp!2002 b_and!4471)))

(declare-fun b!9937 () Bool)

(declare-fun b_free!1251 () Bool)

(declare-fun b_next!3067 () Bool)

(assert (=> b!9937 (= b_free!1251 (not b_next!3067))))

(declare-fun tp!2000 () Bool)

(declare-fun b_and!4473 () Bool)

(assert (=> b!9937 (= tp!2000 b_and!4473)))

(declare-fun b_free!1253 () Bool)

(declare-fun b_next!3069 () Bool)

(assert (=> b!9937 (= b_free!1253 (not b_next!3069))))

(declare-fun tp!2001 () Bool)

(declare-fun b_and!4475 () Bool)

(assert (=> b!9937 (= tp!2001 b_and!4475)))

(declare-fun b_free!1255 () Bool)

(declare-fun b_next!3071 () Bool)

(assert (=> b!9937 (= b_free!1255 (not b_next!3071))))

(declare-fun tp!2003 () Bool)

(declare-fun b_and!4477 () Bool)

(assert (=> b!9937 (= tp!2003 b_and!4477)))

(declare-fun b!9931 () Bool)

(declare-fun m!13077 () Bool)

(assert (=> b!9931 m!13077))

(assert (=> b!9931 true))

(declare-fun lambda!2585 () Int)

(declare-datatypes () ((EqEvidence!194 (EqEvidence!195 (x!5618 Int) (y!602 Int) (evidence!164 Int)))))

(declare-fun that!164 () EqEvidence!194)

(declare-fun dynLambda!327 (Int) Int)

(assert (=> (and b!9929 b!9931 (= (dynLambda!327 lambda!2585) (dynLambda!327 (x!5618 that!164)))) (= lambda!2585 (x!5618 that!164))))

(assert (=> (and b!9929 b!9931 (= (dynLambda!327 lambda!2585) (dynLambda!327 (y!602 that!164)))) (= lambda!2585 (y!602 that!164))))

(declare-fun thiss!673 () EqEvidence!194)

(assert (=> (and b!9937 b!9931 (= (dynLambda!327 lambda!2585) (dynLambda!327 (x!5618 thiss!673)))) (= lambda!2585 (x!5618 thiss!673))))

(assert (=> (and b!9937 b!9931 (= (dynLambda!327 lambda!2585) (dynLambda!327 (y!602 thiss!673)))) (= lambda!2585 (y!602 thiss!673))))

(declare-fun b_next!3073 () Bool)

(assert (=> b!9929 (= b_next!3061 (or (and b!9931 (= lambda!2585 (x!5618 that!164))) b_next!3073))))

(declare-fun b_next!3075 () Bool)

(assert (=> b!9929 (= b_next!3063 (or (and b!9931 (= lambda!2585 (y!602 that!164))) b_next!3075))))

(declare-fun b_next!3077 () Bool)

(assert (=> b!9937 (= b_next!3067 (or (and b!9931 (= lambda!2585 (x!5618 thiss!673))) b_next!3077))))

(declare-fun b_next!3079 () Bool)

(assert (=> b!9937 (= b_next!3069 (or (and b!9931 (= lambda!2585 (y!602 thiss!673))) b_next!3079))))

(declare-fun m!13079 () Bool)

(assert (=> b!9931 m!13079))

(declare-fun lambda!2586 () Int)

(declare-fun dynLambda!328 (Int) Bool)

(assert (=> (and b!9929 b!9931 (= (dynLambda!328 lambda!2586) (dynLambda!328 (evidence!164 that!164)))) (= lambda!2586 (evidence!164 that!164))))

(assert (=> (and b!9937 b!9931 (= (dynLambda!328 lambda!2586) (dynLambda!328 (evidence!164 thiss!673)))) (= lambda!2586 (evidence!164 thiss!673))))

(declare-fun b_next!3081 () Bool)

(assert (=> b!9929 (= b_next!3065 (or (and b!9931 (= lambda!2586 (evidence!164 that!164))) b_next!3081))))

(declare-fun b_next!3083 () Bool)

(assert (=> b!9937 (= b_next!3071 (or (and b!9931 (= lambda!2586 (evidence!164 thiss!673))) b_next!3083))))

(declare-fun bs!2673 () Bool)

(declare-fun b!9933 () Bool)

(assert (= bs!2673 (and b!9933 b!9931)))

(declare-fun lambda!2587 () Int)

(assert (=> bs!2673 (not (= lambda!2587 lambda!2585))))

(assert (=> b!9933 true))

(declare-fun b_next!3085 () Bool)

(assert (=> b!9929 (= b_next!3073 (or (and b!9933 (= lambda!2587 (x!5618 that!164))) b_next!3085))))

(declare-fun b_next!3087 () Bool)

(assert (=> b!9929 (= b_next!3075 (or (and b!9933 (= lambda!2587 (y!602 that!164))) b_next!3087))))

(declare-fun b_next!3089 () Bool)

(assert (=> b!9937 (= b_next!3077 (or (and b!9933 (= lambda!2587 (x!5618 thiss!673))) b_next!3089))))

(declare-fun b_next!3091 () Bool)

(assert (=> b!9937 (= b_next!3079 (or (and b!9933 (= lambda!2587 (y!602 thiss!673))) b_next!3091))))

(declare-fun lambda!2588 () Int)

(assert (=> bs!2673 (not (= lambda!2588 lambda!2586))))

(assert (=> b!9933 true))

(declare-fun b_next!3093 () Bool)

(assert (=> b!9929 (= b_next!3081 (or (and b!9933 (= lambda!2588 (evidence!164 that!164))) b_next!3093))))

(declare-fun b_next!3095 () Bool)

(assert (=> b!9937 (= b_next!3083 (or (and b!9933 (= lambda!2588 (evidence!164 thiss!673))) b_next!3095))))

(declare-fun b!9928 () Bool)

(declare-fun res!3350 () Bool)

(declare-fun e!5863 () Bool)

(assert (=> b!9928 (=> (not res!3350) (not e!5863))))

(declare-datatypes () ((Parenthesis!59 (CloseParenthesis!58) (OpenParenthesis!58))))

(declare-datatypes () ((List!236 (Nil!234) (Cons!233 (head!451 Parenthesis!59) (tail!463 List!236)))))

(declare-fun xs!280 () List!236)

(declare-fun original_sequential_helper!0 (List!236) Bool)

(assert (=> b!9928 (= res!3350 (original_sequential_helper!0 (tail!463 xs!280)))))

(declare-fun e!5864 () Bool)

(assert (=> b!9929 (= e!5864 (and tp!2005 tp!2004 tp!2002))))

(declare-fun res!3349 () Bool)

(assert (=> start!1996 (=> (not res!3349) (not e!5863))))

(declare-datatypes () ((Balance!239 (Balance!240 (extraOpen!160 Int) (extraClose!160 Int)))))

(declare-fun balance!3 () Balance!239)

(declare-fun lambda!2583 () Int)

(declare-fun foldRight!41 (List!236 Balance!239 Int) Balance!239)

(assert (=> start!1996 (= res!3349 (= balance!3 (foldRight!41 xs!280 (Balance!240 0 0) lambda!2583)))))

(assert (=> start!1996 e!5863))

(declare-fun inv!347 (EqEvidence!194) Bool)

(assert (=> start!1996 (and (inv!347 that!164) e!5864)))

(assert (=> start!1996 true))

(declare-fun e!5862 () Bool)

(assert (=> start!1996 (and (inv!347 thiss!673) e!5862)))

(declare-fun b!9930 () Bool)

(declare-fun e!5861 () Bool)

(declare-fun nonNegative!0 (Balance!239) Bool)

(assert (=> b!9930 (= e!5861 (nonNegative!0 balance!3))))

(declare-fun res!3352 () Bool)

(assert (=> b!9931 (=> (not res!3352) (not e!5863))))

(assert (=> b!9931 (= res!3352 (= thiss!673 (EqEvidence!195 lambda!2585 lambda!2585 lambda!2586)))))

(declare-fun b!9932 () Bool)

(declare-fun res!3351 () Bool)

(assert (=> b!9932 (=> (not res!3351) (not e!5863))))

(assert (=> b!9932 (= res!3351 (dynLambda!328 (evidence!164 thiss!673)))))

(declare-fun res!3354 () Bool)

(assert (=> b!9933 (=> (not res!3354) (not e!5863))))

(assert (=> b!9933 (= res!3354 (= that!164 (EqEvidence!195 lambda!2587 lambda!2587 lambda!2588)))))

(declare-fun b!9934 () Bool)

(assert (=> b!9934 (= e!5863 (not (= (dynLambda!327 (y!602 thiss!673)) (dynLambda!327 (x!5618 that!164)))))))

(declare-fun b!9935 () Bool)

(declare-fun res!3348 () Bool)

(assert (=> b!9935 (=> (not res!3348) (not e!5863))))

(assert (=> b!9935 (= res!3348 (nonNegative!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)))))

(declare-fun b!9936 () Bool)

(declare-fun res!3347 () Bool)

(assert (=> b!9936 (=> (not res!3347) (not e!5863))))

(declare-datatypes () ((ProofOps!186 (ProofOps!187 (prop!220 Bool)))))

(declare-fun thiss!651 () ProofOps!186)

(assert (=> b!9936 (= res!3347 (= thiss!651 (ProofOps!187 e!5861)))))

(declare-fun res!3353 () Bool)

(assert (=> b!9936 (=> (not res!3353) (not e!5861))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!239) Int)

(assert (=> b!9936 (= res!3353 (= (balanceToCounter!0 balance!3) counter!4))))

(assert (=> b!9937 (= e!5862 (and tp!2000 tp!2001 tp!2003))))

(declare-fun b!9938 () Bool)

(declare-fun res!3355 () Bool)

(assert (=> b!9938 (=> (not res!3355) (not e!5863))))

(assert (=> b!9938 (= res!3355 (not (is-Nil!234 xs!280)))))

(declare-fun b!9939 () Bool)

(declare-fun res!3356 () Bool)

(assert (=> b!9939 (=> (not res!3356) (not e!5863))))

(declare-fun lambda!2584 () Int)

(declare-fun foldRight!42 (List!236 Int Int) Int)

(assert (=> b!9939 (= res!3356 (= counter!4 (foldRight!42 xs!280 0 lambda!2584)))))

(assert (= (and start!1996 res!3349) b!9939))

(assert (= (and b!9939 res!3356) b!9936))

(assert (= (and b!9936 res!3353) b!9930))

(assert (= (and b!9936 res!3347) b!9938))

(assert (= (and b!9938 res!3355) b!9928))

(assert (= (and b!9928 res!3350) b!9935))

(assert (= (and b!9935 res!3348) b!9931))

(assert (= (and b!9931 res!3352) b!9933))

(assert (= (and b!9933 res!3354) b!9932))

(assert (= (and b!9932 res!3351) b!9934))

(assert (= start!1996 b!9929))

(assert (= start!1996 b!9937))

(declare-fun b_lambda!5283 () Bool)

(assert (=> (not b_lambda!5283) (not b!9932)))

(declare-fun tb!2393 () Bool)

(declare-fun t!2733 () Bool)

(assert (=> (and b!9929 (= (evidence!164 that!164) (evidence!164 thiss!673)) t!2733) tb!2393))

(declare-fun result!2433 () Bool)

(assert (=> tb!2393 (= result!2433 true)))

(assert (=> b!9932 t!2733))

(declare-fun b_and!4479 () Bool)

(assert (= b_and!4471 (and (=> t!2733 result!2433) b_and!4479)))

(declare-fun t!2735 () Bool)

(declare-fun tb!2395 () Bool)

(assert (=> (and b!9937 (= (evidence!164 thiss!673) (evidence!164 thiss!673)) t!2735) tb!2395))

(declare-fun result!2435 () Bool)

(assert (=> tb!2395 (= result!2435 true)))

(assert (=> b!9932 t!2735))

(declare-fun b_and!4481 () Bool)

(assert (= b_and!4477 (and (=> t!2735 result!2435) b_and!4481)))

(declare-fun b_lambda!5285 () Bool)

(assert (=> (not b_lambda!5285) (not b!9934)))

(declare-fun tb!2397 () Bool)

(declare-fun t!2737 () Bool)

(assert (=> (and b!9929 (= (x!5618 that!164) (y!602 thiss!673)) t!2737) tb!2397))

(declare-fun result!2437 () Bool)

(assert (=> tb!2397 (= result!2437 true)))

(assert (=> b!9934 t!2737))

(declare-fun b_and!4483 () Bool)

(assert (= b_and!4467 (and (=> t!2737 result!2437) b_and!4483)))

(declare-fun tb!2399 () Bool)

(declare-fun t!2739 () Bool)

(assert (=> (and b!9929 (= (y!602 that!164) (y!602 thiss!673)) t!2739) tb!2399))

(declare-fun result!2439 () Bool)

(assert (=> tb!2399 (= result!2439 true)))

(assert (=> b!9934 t!2739))

(declare-fun b_and!4485 () Bool)

(assert (= b_and!4469 (and (=> t!2739 result!2439) b_and!4485)))

(declare-fun t!2741 () Bool)

(declare-fun tb!2401 () Bool)

(assert (=> (and b!9937 (= (x!5618 thiss!673) (y!602 thiss!673)) t!2741) tb!2401))

(declare-fun result!2441 () Bool)

(assert (=> tb!2401 (= result!2441 true)))

(assert (=> b!9934 t!2741))

(declare-fun b_and!4487 () Bool)

(assert (= b_and!4473 (and (=> t!2741 result!2441) b_and!4487)))

(declare-fun t!2743 () Bool)

(declare-fun tb!2403 () Bool)

(assert (=> (and b!9937 (= (y!602 thiss!673) (y!602 thiss!673)) t!2743) tb!2403))

(declare-fun result!2443 () Bool)

(assert (=> tb!2403 (= result!2443 true)))

(assert (=> b!9934 t!2743))

(declare-fun b_and!4489 () Bool)

(assert (= b_and!4475 (and (=> t!2743 result!2443) b_and!4489)))

(declare-fun b_lambda!5287 () Bool)

(assert (=> (not b_lambda!5287) (not b!9934)))

(declare-fun t!2745 () Bool)

(declare-fun tb!2405 () Bool)

(assert (=> (and b!9929 (= (x!5618 that!164) (x!5618 that!164)) t!2745) tb!2405))

(declare-fun result!2445 () Bool)

(assert (=> tb!2405 (= result!2445 true)))

(assert (=> b!9934 t!2745))

(declare-fun b_and!4491 () Bool)

(assert (= b_and!4483 (and (=> t!2745 result!2445) b_and!4491)))

(declare-fun t!2747 () Bool)

(declare-fun tb!2407 () Bool)

(assert (=> (and b!9929 (= (y!602 that!164) (x!5618 that!164)) t!2747) tb!2407))

(declare-fun result!2447 () Bool)

(assert (=> tb!2407 (= result!2447 true)))

(assert (=> b!9934 t!2747))

(declare-fun b_and!4493 () Bool)

(assert (= b_and!4485 (and (=> t!2747 result!2447) b_and!4493)))

(declare-fun tb!2409 () Bool)

(declare-fun t!2749 () Bool)

(assert (=> (and b!9937 (= (x!5618 thiss!673) (x!5618 that!164)) t!2749) tb!2409))

(declare-fun result!2449 () Bool)

(assert (=> tb!2409 (= result!2449 true)))

(assert (=> b!9934 t!2749))

(declare-fun b_and!4495 () Bool)

(assert (= b_and!4487 (and (=> t!2749 result!2449) b_and!4495)))

(declare-fun t!2751 () Bool)

(declare-fun tb!2411 () Bool)

(assert (=> (and b!9937 (= (y!602 thiss!673) (x!5618 that!164)) t!2751) tb!2411))

(declare-fun result!2451 () Bool)

(assert (=> tb!2411 (= result!2451 true)))

(assert (=> b!9934 t!2751))

(declare-fun b_and!4497 () Bool)

(assert (= b_and!4489 (and (=> t!2751 result!2451) b_and!4497)))

(declare-fun m!13081 () Bool)

(assert (=> b!9939 m!13081))

(declare-fun m!13083 () Bool)

(assert (=> b!9928 m!13083))

(declare-fun m!13085 () Bool)

(assert (=> start!1996 m!13085))

(declare-fun m!13087 () Bool)

(assert (=> start!1996 m!13087))

(declare-fun m!13089 () Bool)

(assert (=> start!1996 m!13089))

(assert (=> b!9936 m!13077))

(declare-fun m!13091 () Bool)

(assert (=> b!9932 m!13091))

(declare-fun m!13093 () Bool)

(assert (=> b!9930 m!13093))

(declare-fun m!13095 () Bool)

(assert (=> b!9934 m!13095))

(declare-fun m!13097 () Bool)

(assert (=> b!9934 m!13097))

(declare-fun m!13099 () Bool)

(assert (=> b!9935 m!13099))

(assert (=> b!9935 m!13099))

(declare-fun m!13101 () Bool)

(assert (=> b!9935 m!13101))

(push 1)

(assert b_and!4481)

(assert (not b_next!3089))

(assert (not b!9931))

(assert b_and!4479)

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert (not b!9928))

(assert (not b_lambda!5287))

(assert (not b_lambda!5285))

(assert b_and!4491)

(assert b_and!4493)

(assert b_and!4495)

(assert (not b_lambda!5283))

(assert b_and!4497)

(assert (not b!9935))

(assert (not b_next!3085))

(assert (not b_next!3091))

(assert (not start!1996))

(assert (not b!9939))

(assert (not b!9936))

(assert (not b!9930))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4481)

(assert (not b_next!3089))

(assert b_and!4479)

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert b_and!4491)

(assert b_and!4493)

(assert b_and!4495)

(assert b_and!4497)

(assert (not b_next!3085))

(assert (not b_next!3091))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5289 () Bool)

(assert (= b_lambda!5287 (or (and b!9933 (= lambda!2587 (x!5618 that!164))) (and b!9931 (= lambda!2585 (x!5618 that!164))) (and b!9929 b_free!1247 (= (y!602 that!164) (x!5618 that!164))) (and b!9929 b_free!1245) (and b!9937 b_free!1253 (= (y!602 thiss!673) (x!5618 that!164))) (and b!9937 b_free!1251 (= (x!5618 thiss!673) (x!5618 that!164))) b_lambda!5289)))

(declare-fun bs!2674 () Bool)

(declare-fun d!8095 () Bool)

(assert (= bs!2674 (and d!8095 b!9933)))

(declare-fun +$colon!0 (Balance!239 Parenthesis!59) Balance!239)

(assert (=> bs!2674 (= (dynLambda!327 lambda!2587) (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))))))

(assert (=> bs!2674 m!13099))

(assert (=> bs!2674 m!13099))

(declare-fun m!13103 () Bool)

(assert (=> bs!2674 m!13103))

(assert (=> bs!2674 m!13103))

(declare-fun m!13105 () Bool)

(assert (=> bs!2674 m!13105))

(assert (=> (and b!9933 (= lambda!2587 (x!5618 that!164)) b!9934) d!8095))

(declare-fun bs!2675 () Bool)

(declare-fun d!8097 () Bool)

(assert (= bs!2675 (and d!8097 b!9931)))

(assert (=> bs!2675 (= (dynLambda!327 lambda!2585) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9931 (= lambda!2585 (x!5618 that!164)) b!9934) d!8097))

(declare-fun b_lambda!5291 () Bool)

(assert (= b_lambda!5283 (or (and b!9931 (= lambda!2586 (evidence!164 thiss!673))) (and b!9933 (= lambda!2588 (evidence!164 thiss!673))) (and b!9929 b_free!1249 (= (evidence!164 that!164) (evidence!164 thiss!673))) (and b!9937 b_free!1255) b_lambda!5291)))

(declare-fun bs!2676 () Bool)

(declare-fun d!8099 () Bool)

(assert (= bs!2676 (and d!8099 b!9931)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2676 (= (dynLambda!328 lambda!2586) trivial!1)))

(assert (=> (and b!9931 (= lambda!2586 (evidence!164 thiss!673)) b!9932) d!8099))

(declare-fun bs!2677 () Bool)

(declare-fun d!8101 () Bool)

(assert (= bs!2677 (and d!8101 b!9933)))

(declare-fun toCounter_updateCounter!0 (Balance!239 Parenthesis!59) Bool)

(assert (=> bs!2677 (= (dynLambda!328 lambda!2588) (toCounter_updateCounter!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280)))))

(assert (=> bs!2677 m!13099))

(assert (=> bs!2677 m!13099))

(declare-fun m!13107 () Bool)

(assert (=> bs!2677 m!13107))

(assert (=> (and b!9933 (= lambda!2588 (evidence!164 thiss!673)) b!9932) d!8101))

(declare-fun b_lambda!5293 () Bool)

(assert (= b_lambda!5285 (or (and b!9931 (= lambda!2585 (y!602 thiss!673))) (and b!9929 b_free!1245 (= (x!5618 that!164) (y!602 thiss!673))) (and b!9929 b_free!1247 (= (y!602 that!164) (y!602 thiss!673))) (and b!9937 b_free!1251 (= (x!5618 thiss!673) (y!602 thiss!673))) (and b!9937 b_free!1253) (and b!9933 (= lambda!2587 (y!602 thiss!673))) b_lambda!5293)))

(declare-fun bs!2678 () Bool)

(declare-fun d!8103 () Bool)

(assert (= bs!2678 (and d!8103 b!9933)))

(assert (=> bs!2678 (= (dynLambda!327 lambda!2587) (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))))))

(assert (=> bs!2678 m!13099))

(assert (=> bs!2678 m!13099))

(assert (=> bs!2678 m!13103))

(assert (=> bs!2678 m!13103))

(assert (=> bs!2678 m!13105))

(assert (=> (and b!9933 (= lambda!2587 (y!602 thiss!673)) b!9934) d!8103))

(declare-fun bs!2679 () Bool)

(declare-fun d!8105 () Bool)

(assert (= bs!2679 (and d!8105 b!9931)))

(assert (=> bs!2679 (= (dynLambda!327 lambda!2585) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9931 (= lambda!2585 (y!602 thiss!673)) b!9934) d!8105))

(push 1)

(assert b_and!4481)

(assert (not b_next!3089))

(assert (not b!9931))

(assert b_and!4479)

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert (not bs!2678))

(assert (not b_lambda!5293))

(assert (not b_lambda!5289))

(assert (not b!9928))

(assert b_and!4491)

(assert b_and!4493)

(assert b_and!4495)

(assert (not b_lambda!5291))

(assert b_and!4497)

(assert (not b!9935))

(assert (not b_next!3085))

(assert (not bs!2677))

(assert (not b_next!3091))

(assert (not start!1996))

(assert (not b!9939))

(assert (not b!9936))

(assert (not b!9930))

(assert (not bs!2674))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4481)

(assert (not b_next!3089))

(assert b_and!4479)

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert b_and!4491)

(assert b_and!4493)

(assert b_and!4495)

(assert b_and!4497)

(assert (not b_next!3085))

(assert (not b_next!3091))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2680 () Bool)

(declare-fun d!8107 () Bool)

(assert (= bs!2680 (and d!8107 start!1996)))

(declare-fun lambda!2595 () Int)

(assert (=> bs!2680 (= lambda!2595 lambda!2583)))

(declare-fun bs!2681 () Bool)

(assert (= bs!2681 (and d!8107 b!9939)))

(declare-fun lambda!2596 () Int)

(assert (=> bs!2681 (= lambda!2596 lambda!2584)))

(declare-fun e!5871 () Bool)

(declare-fun e!5872 () Bool)

(declare-fun because!2 (ProofOps!186 Bool) Bool)

(assert (=> d!8107 (because!2 (ProofOps!187 e!5871) e!5872)))

(declare-fun c!3154 () Bool)

(assert (=> d!8107 (= c!3154 (is-Nil!234 (tail!463 xs!280)))))

(declare-fun res!3363 () Bool)

(assert (=> d!8107 (=> (not res!3363) (not e!5871))))

(declare-fun lt!1699 () Balance!239)

(declare-fun lt!1700 () Int)

(assert (=> d!8107 (= res!3363 (= (balanceToCounter!0 lt!1699) lt!1700))))

(assert (=> d!8107 (= lt!1700 (foldRight!42 (tail!463 xs!280) 0 lambda!2596))))

(assert (=> d!8107 (= lt!1699 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2595))))

(assert (=> d!8107 (= (original_sequential_helper!0 (tail!463 xs!280)) true)))

(declare-fun b!9956 () Bool)

(assert (=> b!9956 (= e!5872 true)))

(declare-fun b!9957 () Bool)

(declare-fun res!3365 () Bool)

(declare-fun e!5873 () Bool)

(assert (=> b!9957 (=> (not res!3365) (not e!5873))))

(assert (=> b!9957 (= res!3365 (nonNegative!0 (foldRight!41 (tail!463 (tail!463 xs!280)) (Balance!240 0 0) lambda!2595)))))

(declare-fun b!9958 () Bool)

(assert (=> b!9958 (= e!5871 (nonNegative!0 lt!1699))))

(declare-fun b!9959 () Bool)

(assert (=> b!9959 (= e!5872 e!5873)))

(declare-fun res!3364 () Bool)

(assert (=> b!9959 (=> (not res!3364) (not e!5873))))

(assert (=> b!9959 (= res!3364 (original_sequential_helper!0 (tail!463 (tail!463 xs!280))))))

(declare-fun b!9960 () Bool)

(assert (=> b!9960 (= e!5873 true)))

(assert (=> b!9960 (= (balanceToCounter!0 lt!1699) lt!1700)))

(assert (= (and d!8107 res!3363) b!9958))

(assert (= (and b!9959 res!3364) b!9957))

(assert (= (and b!9957 res!3365) b!9960))

(assert (= (and d!8107 c!3154) b!9956))

(assert (= (and d!8107 (not c!3154)) b!9959))

(declare-fun m!13109 () Bool)

(assert (=> b!9960 m!13109))

(declare-fun m!13111 () Bool)

(assert (=> d!8107 m!13111))

(assert (=> d!8107 m!13109))

(declare-fun m!13113 () Bool)

(assert (=> d!8107 m!13113))

(declare-fun m!13115 () Bool)

(assert (=> d!8107 m!13115))

(declare-fun m!13117 () Bool)

(assert (=> b!9959 m!13117))

(declare-fun m!13119 () Bool)

(assert (=> b!9958 m!13119))

(declare-fun m!13121 () Bool)

(assert (=> b!9957 m!13121))

(assert (=> b!9957 m!13121))

(declare-fun m!13123 () Bool)

(assert (=> b!9957 m!13123))

(assert (=> b!9928 d!8107))

(declare-fun d!8109 () Bool)

(declare-fun c!3157 () Bool)

(assert (=> d!8109 (= c!3157 (is-Nil!234 xs!280))))

(declare-fun e!5876 () Balance!239)

(assert (=> d!8109 (= (foldRight!41 xs!280 (Balance!240 0 0) lambda!2583) e!5876)))

(declare-fun b!9965 () Bool)

(assert (=> b!9965 (= e!5876 (Balance!240 0 0))))

(declare-fun b!9966 () Bool)

(declare-fun dynLambda!329 (Int Parenthesis!59 Balance!239) Balance!239)

(assert (=> b!9966 (= e!5876 (dynLambda!329 lambda!2583 (head!451 xs!280) (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)))))

(assert (= (and d!8109 c!3157) b!9965))

(assert (= (and d!8109 (not c!3157)) b!9966))

(declare-fun b_lambda!5295 () Bool)

(assert (=> (not b_lambda!5295) (not b!9966)))

(assert (=> b!9966 m!13099))

(assert (=> b!9966 m!13099))

(declare-fun m!13125 () Bool)

(assert (=> b!9966 m!13125))

(assert (=> start!1996 d!8109))

(declare-fun d!8111 () Bool)

(declare-fun res!3368 () Bool)

(declare-fun e!5879 () Bool)

(assert (=> d!8111 (=> (not res!3368) (not e!5879))))

(assert (=> d!8111 (= res!3368 (= (dynLambda!327 (x!5618 that!164)) (dynLambda!327 (y!602 that!164))))))

(assert (=> d!8111 (= (inv!347 that!164) e!5879)))

(declare-fun b!9969 () Bool)

(assert (=> b!9969 (= e!5879 (dynLambda!328 (evidence!164 that!164)))))

(assert (= (and d!8111 res!3368) b!9969))

(declare-fun b_lambda!5297 () Bool)

(assert (=> (not b_lambda!5297) (not d!8111)))

(assert (=> d!8111 t!2745))

(declare-fun b_and!4499 () Bool)

(assert (= b_and!4491 (and (=> t!2745 result!2445) b_and!4499)))

(assert (=> d!8111 t!2747))

(declare-fun b_and!4501 () Bool)

(assert (= b_and!4493 (and (=> t!2747 result!2447) b_and!4501)))

(assert (=> d!8111 t!2749))

(declare-fun b_and!4503 () Bool)

(assert (= b_and!4495 (and (=> t!2749 result!2449) b_and!4503)))

(assert (=> d!8111 t!2751))

(declare-fun b_and!4505 () Bool)

(assert (= b_and!4497 (and (=> t!2751 result!2451) b_and!4505)))

(declare-fun b_lambda!5299 () Bool)

(assert (=> (not b_lambda!5299) (not d!8111)))

(declare-fun t!2753 () Bool)

(declare-fun tb!2413 () Bool)

(assert (=> (and b!9929 (= (x!5618 that!164) (y!602 that!164)) t!2753) tb!2413))

(declare-fun result!2453 () Bool)

(assert (=> tb!2413 (= result!2453 true)))

(assert (=> d!8111 t!2753))

(declare-fun b_and!4507 () Bool)

(assert (= b_and!4499 (and (=> t!2753 result!2453) b_and!4507)))

(declare-fun t!2755 () Bool)

(declare-fun tb!2415 () Bool)

(assert (=> (and b!9929 (= (y!602 that!164) (y!602 that!164)) t!2755) tb!2415))

(declare-fun result!2455 () Bool)

(assert (=> tb!2415 (= result!2455 true)))

(assert (=> d!8111 t!2755))

(declare-fun b_and!4509 () Bool)

(assert (= b_and!4501 (and (=> t!2755 result!2455) b_and!4509)))

(declare-fun t!2757 () Bool)

(declare-fun tb!2417 () Bool)

(assert (=> (and b!9937 (= (x!5618 thiss!673) (y!602 that!164)) t!2757) tb!2417))

(declare-fun result!2457 () Bool)

(assert (=> tb!2417 (= result!2457 true)))

(assert (=> d!8111 t!2757))

(declare-fun b_and!4511 () Bool)

(assert (= b_and!4503 (and (=> t!2757 result!2457) b_and!4511)))

(declare-fun tb!2419 () Bool)

(declare-fun t!2759 () Bool)

(assert (=> (and b!9937 (= (y!602 thiss!673) (y!602 that!164)) t!2759) tb!2419))

(declare-fun result!2459 () Bool)

(assert (=> tb!2419 (= result!2459 true)))

(assert (=> d!8111 t!2759))

(declare-fun b_and!4513 () Bool)

(assert (= b_and!4505 (and (=> t!2759 result!2459) b_and!4513)))

(declare-fun b_lambda!5301 () Bool)

(assert (=> (not b_lambda!5301) (not b!9969)))

(declare-fun t!2761 () Bool)

(declare-fun tb!2421 () Bool)

(assert (=> (and b!9929 (= (evidence!164 that!164) (evidence!164 that!164)) t!2761) tb!2421))

(declare-fun result!2461 () Bool)

(assert (=> tb!2421 (= result!2461 true)))

(assert (=> b!9969 t!2761))

(declare-fun b_and!4515 () Bool)

(assert (= b_and!4479 (and (=> t!2761 result!2461) b_and!4515)))

(declare-fun tb!2423 () Bool)

(declare-fun t!2763 () Bool)

(assert (=> (and b!9937 (= (evidence!164 thiss!673) (evidence!164 that!164)) t!2763) tb!2423))

(declare-fun result!2463 () Bool)

(assert (=> tb!2423 (= result!2463 true)))

(assert (=> b!9969 t!2763))

(declare-fun b_and!4517 () Bool)

(assert (= b_and!4481 (and (=> t!2763 result!2463) b_and!4517)))

(assert (=> d!8111 m!13097))

(declare-fun m!13127 () Bool)

(assert (=> d!8111 m!13127))

(declare-fun m!13129 () Bool)

(assert (=> b!9969 m!13129))

(assert (=> start!1996 d!8111))

(declare-fun d!8113 () Bool)

(declare-fun res!3369 () Bool)

(declare-fun e!5880 () Bool)

(assert (=> d!8113 (=> (not res!3369) (not e!5880))))

(assert (=> d!8113 (= res!3369 (= (dynLambda!327 (x!5618 thiss!673)) (dynLambda!327 (y!602 thiss!673))))))

(assert (=> d!8113 (= (inv!347 thiss!673) e!5880)))

(declare-fun b!9970 () Bool)

(assert (=> b!9970 (= e!5880 (dynLambda!328 (evidence!164 thiss!673)))))

(assert (= (and d!8113 res!3369) b!9970))

(declare-fun b_lambda!5303 () Bool)

(assert (=> (not b_lambda!5303) (not d!8113)))

(declare-fun t!2765 () Bool)

(declare-fun tb!2425 () Bool)

(assert (=> (and b!9929 (= (x!5618 that!164) (x!5618 thiss!673)) t!2765) tb!2425))

(declare-fun result!2465 () Bool)

(assert (=> tb!2425 (= result!2465 true)))

(assert (=> d!8113 t!2765))

(declare-fun b_and!4519 () Bool)

(assert (= b_and!4507 (and (=> t!2765 result!2465) b_and!4519)))

(declare-fun t!2767 () Bool)

(declare-fun tb!2427 () Bool)

(assert (=> (and b!9929 (= (y!602 that!164) (x!5618 thiss!673)) t!2767) tb!2427))

(declare-fun result!2467 () Bool)

(assert (=> tb!2427 (= result!2467 true)))

(assert (=> d!8113 t!2767))

(declare-fun b_and!4521 () Bool)

(assert (= b_and!4509 (and (=> t!2767 result!2467) b_and!4521)))

(declare-fun t!2769 () Bool)

(declare-fun tb!2429 () Bool)

(assert (=> (and b!9937 (= (x!5618 thiss!673) (x!5618 thiss!673)) t!2769) tb!2429))

(declare-fun result!2469 () Bool)

(assert (=> tb!2429 (= result!2469 true)))

(assert (=> d!8113 t!2769))

(declare-fun b_and!4523 () Bool)

(assert (= b_and!4511 (and (=> t!2769 result!2469) b_and!4523)))

(declare-fun t!2771 () Bool)

(declare-fun tb!2431 () Bool)

(assert (=> (and b!9937 (= (y!602 thiss!673) (x!5618 thiss!673)) t!2771) tb!2431))

(declare-fun result!2471 () Bool)

(assert (=> tb!2431 (= result!2471 true)))

(assert (=> d!8113 t!2771))

(declare-fun b_and!4525 () Bool)

(assert (= b_and!4513 (and (=> t!2771 result!2471) b_and!4525)))

(declare-fun b_lambda!5305 () Bool)

(assert (=> (not b_lambda!5305) (not d!8113)))

(assert (=> d!8113 t!2737))

(declare-fun b_and!4527 () Bool)

(assert (= b_and!4519 (and (=> t!2737 result!2437) b_and!4527)))

(assert (=> d!8113 t!2739))

(declare-fun b_and!4529 () Bool)

(assert (= b_and!4521 (and (=> t!2739 result!2439) b_and!4529)))

(assert (=> d!8113 t!2741))

(declare-fun b_and!4531 () Bool)

(assert (= b_and!4523 (and (=> t!2741 result!2441) b_and!4531)))

(assert (=> d!8113 t!2743))

(declare-fun b_and!4533 () Bool)

(assert (= b_and!4525 (and (=> t!2743 result!2443) b_and!4533)))

(declare-fun b_lambda!5307 () Bool)

(assert (=> (not b_lambda!5307) (not b!9970)))

(assert (=> b!9970 t!2733))

(declare-fun b_and!4535 () Bool)

(assert (= b_and!4515 (and (=> t!2733 result!2433) b_and!4535)))

(assert (=> b!9970 t!2735))

(declare-fun b_and!4537 () Bool)

(assert (= b_and!4517 (and (=> t!2735 result!2435) b_and!4537)))

(declare-fun m!13131 () Bool)

(assert (=> d!8113 m!13131))

(assert (=> d!8113 m!13095))

(assert (=> b!9970 m!13091))

(assert (=> start!1996 d!8113))

(declare-fun d!8115 () Bool)

(assert (=> d!8115 (= (nonNegative!0 balance!3) (and (>= (extraOpen!160 balance!3) 0) (>= (extraClose!160 balance!3) 0)))))

(assert (=> b!9930 d!8115))

(declare-fun d!8117 () Bool)

(assert (=> d!8117 (= (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) (ite (> (extraOpen!160 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) 0) (- 1) (ite (and (= (extraOpen!160 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) 0) (= (extraClose!160 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) 0)) 0 (ite (>= (extraClose!160 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) 0) (extraClose!160 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))) (- 1)))))))

(assert (=> bs!2678 d!8117))

(declare-fun d!8119 () Bool)

(assert (=> d!8119 (= (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280)) (ite (and (is-OpenParenthesis!58 (head!451 xs!280)) (> (extraClose!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 0)) (Balance!240 (extraOpen!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) (- (extraClose!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 1)) (ite (is-OpenParenthesis!58 (head!451 xs!280)) (Balance!240 (+ (extraOpen!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 1) (extraClose!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583))) (Balance!240 (extraOpen!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) (+ (extraClose!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 1)))))))

(assert (=> bs!2678 d!8119))

(declare-fun d!8121 () Bool)

(declare-fun c!3158 () Bool)

(assert (=> d!8121 (= c!3158 (is-Nil!234 (tail!463 xs!280)))))

(declare-fun e!5881 () Balance!239)

(assert (=> d!8121 (= (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) e!5881)))

(declare-fun b!9972 () Bool)

(assert (=> b!9972 (= e!5881 (Balance!240 0 0))))

(declare-fun b!9973 () Bool)

(assert (=> b!9973 (= e!5881 (dynLambda!329 lambda!2583 (head!451 (tail!463 xs!280)) (foldRight!41 (tail!463 (tail!463 xs!280)) (Balance!240 0 0) lambda!2583)))))

(assert (= (and d!8121 c!3158) b!9972))

(assert (= (and d!8121 (not c!3158)) b!9973))

(declare-fun b_lambda!5309 () Bool)

(assert (=> (not b_lambda!5309) (not b!9973)))

(declare-fun m!13133 () Bool)

(assert (=> b!9973 m!13133))

(assert (=> b!9973 m!13133))

(declare-fun m!13135 () Bool)

(assert (=> b!9973 m!13135))

(assert (=> bs!2678 d!8121))

(declare-fun d!8123 () Bool)

(assert (=> d!8123 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!160 balance!3) 0) (- 1) (ite (and (= (extraOpen!160 balance!3) 0) (= (extraClose!160 balance!3) 0)) 0 (ite (>= (extraClose!160 balance!3) 0) (extraClose!160 balance!3) (- 1)))))))

(assert (=> b!9936 d!8123))

(assert (=> b!9931 d!8123))

(declare-fun d!8125 () Bool)

(assert (=> d!8125 (= trivial!1 true)))

(assert (=> b!9931 d!8125))

(assert (=> bs!2674 d!8117))

(assert (=> bs!2674 d!8119))

(assert (=> bs!2674 d!8121))

(declare-fun d!8127 () Bool)

(declare-fun updateCounter!0 (Parenthesis!59 Int) Int)

(assert (=> d!8127 (= (updateCounter!0 (head!451 xs!280) (balanceToCounter!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583))) (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))))))

(assert (=> d!8127 (nonNegative!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583))))

(assert (=> d!8127 (= (toCounter_updateCounter!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280)) true)))

(declare-fun bs!2682 () Bool)

(assert (= bs!2682 d!8127))

(assert (=> bs!2682 m!13099))

(declare-fun m!13137 () Bool)

(assert (=> bs!2682 m!13137))

(assert (=> bs!2682 m!13099))

(assert (=> bs!2682 m!13101))

(assert (=> bs!2682 m!13103))

(assert (=> bs!2682 m!13105))

(assert (=> bs!2682 m!13099))

(assert (=> bs!2682 m!13103))

(assert (=> bs!2682 m!13137))

(declare-fun m!13139 () Bool)

(assert (=> bs!2682 m!13139))

(assert (=> bs!2677 d!8127))

(assert (=> bs!2677 d!8121))

(declare-fun d!8129 () Bool)

(assert (=> d!8129 (= (nonNegative!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) (and (>= (extraOpen!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 0) (>= (extraClose!160 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) 0)))))

(assert (=> b!9935 d!8129))

(assert (=> b!9935 d!8121))

(declare-fun d!8131 () Bool)

(declare-fun c!3161 () Bool)

(assert (=> d!8131 (= c!3161 (is-Nil!234 xs!280))))

(declare-fun e!5884 () Int)

(assert (=> d!8131 (= (foldRight!42 xs!280 0 lambda!2584) e!5884)))

(declare-fun b!9979 () Bool)

(assert (=> b!9979 (= e!5884 0)))

(declare-fun b!9980 () Bool)

(declare-fun dynLambda!330 (Int Parenthesis!59 Int) Int)

(assert (=> b!9980 (= e!5884 (dynLambda!330 lambda!2584 (head!451 xs!280) (foldRight!42 (tail!463 xs!280) 0 lambda!2584)))))

(assert (= (and d!8131 c!3161) b!9979))

(assert (= (and d!8131 (not c!3161)) b!9980))

(declare-fun b_lambda!5311 () Bool)

(assert (=> (not b_lambda!5311) (not b!9980)))

(declare-fun m!13141 () Bool)

(assert (=> b!9980 m!13141))

(assert (=> b!9980 m!13141))

(declare-fun m!13143 () Bool)

(assert (=> b!9980 m!13143))

(assert (=> b!9939 d!8131))

(declare-fun b_lambda!5313 () Bool)

(assert (= b_lambda!5295 (or start!1996 b_lambda!5313)))

(declare-fun bs!2683 () Bool)

(declare-fun d!8133 () Bool)

(assert (= bs!2683 (and d!8133 start!1996)))

(assert (=> bs!2683 (= (dynLambda!329 lambda!2583 (head!451 xs!280) (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583)) (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280)))))

(assert (=> bs!2683 m!13099))

(assert (=> bs!2683 m!13103))

(assert (=> b!9966 d!8133))

(declare-fun b_lambda!5315 () Bool)

(assert (= b_lambda!5297 (or (and b!9933 (= lambda!2587 (x!5618 that!164))) (and b!9931 (= lambda!2585 (x!5618 that!164))) (and b!9929 b_free!1247 (= (y!602 that!164) (x!5618 that!164))) (and b!9929 b_free!1245) (and b!9937 b_free!1253 (= (y!602 thiss!673) (x!5618 that!164))) (and b!9937 b_free!1251 (= (x!5618 thiss!673) (x!5618 that!164))) b_lambda!5315)))

(assert (=> (and b!9933 (= lambda!2587 (x!5618 that!164)) d!8111) d!8095))

(assert (=> (and b!9931 (= lambda!2585 (x!5618 that!164)) d!8111) d!8097))

(declare-fun b_lambda!5317 () Bool)

(assert (= b_lambda!5307 (or (and b!9931 (= lambda!2586 (evidence!164 thiss!673))) (and b!9933 (= lambda!2588 (evidence!164 thiss!673))) (and b!9929 b_free!1249 (= (evidence!164 that!164) (evidence!164 thiss!673))) (and b!9937 b_free!1255) b_lambda!5317)))

(assert (=> (and b!9931 (= lambda!2586 (evidence!164 thiss!673)) b!9970) d!8099))

(assert (=> (and b!9933 (= lambda!2588 (evidence!164 thiss!673)) b!9970) d!8101))

(declare-fun b_lambda!5319 () Bool)

(assert (= b_lambda!5309 (or start!1996 b_lambda!5319)))

(declare-fun bs!2684 () Bool)

(declare-fun d!8135 () Bool)

(assert (= bs!2684 (and d!8135 start!1996)))

(assert (=> bs!2684 (= (dynLambda!329 lambda!2583 (head!451 (tail!463 xs!280)) (foldRight!41 (tail!463 (tail!463 xs!280)) (Balance!240 0 0) lambda!2583)) (+$colon!0 (foldRight!41 (tail!463 (tail!463 xs!280)) (Balance!240 0 0) lambda!2583) (head!451 (tail!463 xs!280))))))

(assert (=> bs!2684 m!13133))

(declare-fun m!13145 () Bool)

(assert (=> bs!2684 m!13145))

(assert (=> b!9973 d!8135))

(declare-fun b_lambda!5321 () Bool)

(assert (= b_lambda!5305 (or (and b!9931 (= lambda!2585 (y!602 thiss!673))) (and b!9929 b_free!1245 (= (x!5618 that!164) (y!602 thiss!673))) (and b!9929 b_free!1247 (= (y!602 that!164) (y!602 thiss!673))) (and b!9937 b_free!1251 (= (x!5618 thiss!673) (y!602 thiss!673))) (and b!9937 b_free!1253) (and b!9933 (= lambda!2587 (y!602 thiss!673))) b_lambda!5321)))

(assert (=> (and b!9933 (= lambda!2587 (y!602 thiss!673)) d!8113) d!8103))

(assert (=> (and b!9931 (= lambda!2585 (y!602 thiss!673)) d!8113) d!8105))

(declare-fun b_lambda!5323 () Bool)

(assert (= b_lambda!5303 (or (and b!9929 b_free!1247 (= (y!602 that!164) (x!5618 thiss!673))) (and b!9937 b_free!1253 (= (y!602 thiss!673) (x!5618 thiss!673))) (and b!9933 (= lambda!2587 (x!5618 thiss!673))) (and b!9929 b_free!1245 (= (x!5618 that!164) (x!5618 thiss!673))) (and b!9931 (= lambda!2585 (x!5618 thiss!673))) (and b!9937 b_free!1251) b_lambda!5323)))

(declare-fun bs!2685 () Bool)

(declare-fun d!8137 () Bool)

(assert (= bs!2685 (and d!8137 b!9933)))

(assert (=> bs!2685 (= (dynLambda!327 lambda!2587) (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))))))

(assert (=> bs!2685 m!13099))

(assert (=> bs!2685 m!13099))

(assert (=> bs!2685 m!13103))

(assert (=> bs!2685 m!13103))

(assert (=> bs!2685 m!13105))

(assert (=> (and b!9933 (= lambda!2587 (x!5618 thiss!673)) d!8113) d!8137))

(declare-fun bs!2686 () Bool)

(declare-fun d!8139 () Bool)

(assert (= bs!2686 (and d!8139 b!9931)))

(assert (=> bs!2686 (= (dynLambda!327 lambda!2585) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9931 (= lambda!2585 (x!5618 thiss!673)) d!8113) d!8139))

(declare-fun b_lambda!5325 () Bool)

(assert (= b_lambda!5301 (or (and b!9931 (= lambda!2586 (evidence!164 that!164))) (and b!9933 (= lambda!2588 (evidence!164 that!164))) (and b!9929 b_free!1249) (and b!9937 b_free!1255 (= (evidence!164 thiss!673) (evidence!164 that!164))) b_lambda!5325)))

(declare-fun bs!2687 () Bool)

(declare-fun d!8141 () Bool)

(assert (= bs!2687 (and d!8141 b!9931)))

(assert (=> bs!2687 (= (dynLambda!328 lambda!2586) trivial!1)))

(assert (=> (and b!9931 (= lambda!2586 (evidence!164 that!164)) b!9969) d!8141))

(declare-fun bs!2688 () Bool)

(declare-fun d!8143 () Bool)

(assert (= bs!2688 (and d!8143 b!9933)))

(assert (=> bs!2688 (= (dynLambda!328 lambda!2588) (toCounter_updateCounter!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280)))))

(assert (=> bs!2688 m!13099))

(assert (=> bs!2688 m!13099))

(assert (=> bs!2688 m!13107))

(assert (=> (and b!9933 (= lambda!2588 (evidence!164 that!164)) b!9969) d!8143))

(declare-fun b_lambda!5327 () Bool)

(assert (= b_lambda!5311 (or b!9939 b_lambda!5327)))

(declare-fun bs!2689 () Bool)

(declare-fun d!8145 () Bool)

(assert (= bs!2689 (and d!8145 b!9939)))

(assert (=> bs!2689 (= (dynLambda!330 lambda!2584 (head!451 xs!280) (foldRight!42 (tail!463 xs!280) 0 lambda!2584)) (updateCounter!0 (head!451 xs!280) (foldRight!42 (tail!463 xs!280) 0 lambda!2584)))))

(assert (=> bs!2689 m!13141))

(declare-fun m!13147 () Bool)

(assert (=> bs!2689 m!13147))

(assert (=> b!9980 d!8145))

(declare-fun b_lambda!5329 () Bool)

(assert (= b_lambda!5299 (or (and b!9937 b_free!1251 (= (x!5618 thiss!673) (y!602 that!164))) (and b!9933 (= lambda!2587 (y!602 that!164))) (and b!9929 b_free!1247) (and b!9937 b_free!1253 (= (y!602 thiss!673) (y!602 that!164))) (and b!9931 (= lambda!2585 (y!602 that!164))) (and b!9929 b_free!1245 (= (x!5618 that!164) (y!602 that!164))) b_lambda!5329)))

(declare-fun bs!2690 () Bool)

(declare-fun d!8147 () Bool)

(assert (= bs!2690 (and d!8147 b!9931)))

(assert (=> bs!2690 (= (dynLambda!327 lambda!2585) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9931 (= lambda!2585 (y!602 that!164)) d!8111) d!8147))

(declare-fun bs!2691 () Bool)

(declare-fun d!8149 () Bool)

(assert (= bs!2691 (and d!8149 b!9933)))

(assert (=> bs!2691 (= (dynLambda!327 lambda!2587) (balanceToCounter!0 (+$colon!0 (foldRight!41 (tail!463 xs!280) (Balance!240 0 0) lambda!2583) (head!451 xs!280))))))

(assert (=> bs!2691 m!13099))

(assert (=> bs!2691 m!13099))

(assert (=> bs!2691 m!13103))

(assert (=> bs!2691 m!13103))

(assert (=> bs!2691 m!13105))

(assert (=> (and b!9933 (= lambda!2587 (y!602 that!164)) d!8111) d!8149))

(push 1)

(assert (not b!9973))

(assert (not bs!2685))

(assert (not b!9958))

(assert (not b_next!3089))

(assert (not b_lambda!5323))

(assert b_and!4527)

(assert (not b_lambda!5325))

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert (not b_lambda!5313))

(assert b_and!4531)

(assert (not bs!2684))

(assert (not d!8127))

(assert (not b_lambda!5293))

(assert (not d!8107))

(assert (not b_lambda!5289))

(assert b_and!4537)

(assert (not b!9957))

(assert (not bs!2691))

(assert (not bs!2688))

(assert (not b_lambda!5317))

(assert (not b_lambda!5321))

(assert (not b_lambda!5319))

(assert b_and!4533)

(assert (not b_lambda!5291))

(assert (not b!9966))

(assert (not b!9980))

(assert b_and!4529)

(assert (not b_lambda!5327))

(assert (not b_next!3085))

(assert (not b_next!3091))

(assert (not bs!2683))

(assert (not bs!2689))

(assert (not b_lambda!5329))

(assert (not b!9960))

(assert b_and!4535)

(assert (not b!9959))

(assert (not b_lambda!5315))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3089))

(assert b_and!4527)

(assert (not b_next!3093))

(assert (not b_next!3095))

(assert (not b_next!3087))

(assert b_and!4531)

(assert b_and!4537)

(assert b_and!4533)

(assert b_and!4529)

(assert (not b_next!3085))

(assert (not b_next!3091))

(assert b_and!4535)

(check-sat)

(pop 1)

