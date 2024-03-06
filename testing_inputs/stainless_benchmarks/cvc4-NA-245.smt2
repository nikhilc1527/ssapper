; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1876 () Bool)

(assert start!1876)

(declare-fun b!9379 () Bool)

(declare-fun b_free!1097 () Bool)

(declare-fun b_next!2705 () Bool)

(assert (=> b!9379 (= b_free!1097 (not b_next!2705))))

(declare-fun tp!1780 () Bool)

(declare-fun b_and!4075 () Bool)

(assert (=> b!9379 (= tp!1780 b_and!4075)))

(declare-fun b_free!1099 () Bool)

(declare-fun b_next!2707 () Bool)

(assert (=> b!9379 (= b_free!1099 (not b_next!2707))))

(declare-fun tp!1782 () Bool)

(declare-fun b_and!4077 () Bool)

(assert (=> b!9379 (= tp!1782 b_and!4077)))

(declare-fun b_free!1101 () Bool)

(declare-fun b_next!2709 () Bool)

(assert (=> b!9379 (= b_free!1101 (not b_next!2709))))

(declare-fun tp!1784 () Bool)

(declare-fun b_and!4079 () Bool)

(assert (=> b!9379 (= tp!1784 b_and!4079)))

(declare-fun b_free!1103 () Bool)

(declare-fun b_next!2711 () Bool)

(assert (=> start!1876 (= b_free!1103 (not b_next!2711))))

(declare-fun tp!1785 () Bool)

(declare-fun b_and!4081 () Bool)

(assert (=> start!1876 (= tp!1785 b_and!4081)))

(declare-fun b_free!1105 () Bool)

(declare-fun b_next!2713 () Bool)

(assert (=> start!1876 (= b_free!1105 (not b_next!2713))))

(declare-fun tp!1781 () Bool)

(declare-fun b_and!4083 () Bool)

(assert (=> start!1876 (= tp!1781 b_and!4083)))

(declare-fun b!9376 () Bool)

(declare-fun b_free!1107 () Bool)

(declare-fun b_next!2715 () Bool)

(assert (=> b!9376 (= b_free!1107 (not b_next!2715))))

(declare-fun tp!1786 () Bool)

(declare-fun b_and!4085 () Bool)

(assert (=> b!9376 (= tp!1786 b_and!4085)))

(declare-fun b_free!1109 () Bool)

(declare-fun b_next!2717 () Bool)

(assert (=> b!9376 (= b_free!1109 (not b_next!2717))))

(declare-fun tp!1783 () Bool)

(declare-fun b_and!4087 () Bool)

(assert (=> b!9376 (= tp!1783 b_and!4087)))

(declare-fun b_next!2719 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2351 () Int)

(assert (=> start!1876 (= b_next!2711 (or (and start!1876 (= lambda!2351 f!585)) b_next!2719))))

(declare-fun b!9377 () Bool)

(assert (=> b!9377 true))

(declare-fun lambda!2352 () Int)

(declare-fun order!143 () Int)

(declare-fun order!141 () Int)

(declare-fun dynLambda!296 (Int Int) Int)

(declare-fun dynLambda!297 (Int Int) Int)

(assert (=> b!9377 (< (dynLambda!296 order!141 f!585) (dynLambda!297 order!143 lambda!2352))))

(assert (=> b!9377 true))

(declare-datatypes () ((Balance!209 (Balance!210 (extraOpen!145 Int) (extraClose!145 Int)))))

(declare-datatypes () ((EqEvidence!172 (EqEvidence!173 (x!5287 Int) (y!576 Int) (evidence!153 Int)))))

(declare-fun thiss!853 () EqEvidence!172)

(declare-fun b_next!2721 () Bool)

(assert (=> b!9379 (= b_next!2705 (or (and b!9377 (= lambda!2352 (x!5287 thiss!853))) b_next!2721))))

(declare-fun b_next!2723 () Bool)

(assert (=> b!9379 (= b_next!2707 (or (and b!9377 (= lambda!2352 (y!576 thiss!853))) b_next!2723))))

(declare-fun b_next!2725 () Bool)

(declare-datatypes () ((EqProof!78 (EqProof!79 (x!5288 Int) (y!577 Int)))))

(declare-fun thiss!939 () EqProof!78)

(assert (=> b!9376 (= b_next!2715 (or (and b!9377 (= lambda!2352 (x!5288 thiss!939))) b_next!2725))))

(declare-fun b_next!2727 () Bool)

(assert (=> b!9376 (= b_next!2717 (or (and b!9377 (= lambda!2352 (y!577 thiss!939))) b_next!2727))))

(declare-fun lambda!2353 () Int)

(assert (=> b!9377 (not (= lambda!2353 lambda!2352))))

(assert (=> b!9377 true))

(assert (=> b!9377 (< (dynLambda!296 order!141 f!585) (dynLambda!297 order!143 lambda!2353))))

(assert (=> b!9377 true))

(declare-fun b_next!2729 () Bool)

(assert (=> b!9379 (= b_next!2721 (or (and b!9377 (= lambda!2353 (x!5287 thiss!853))) b_next!2729))))

(declare-fun b_next!2731 () Bool)

(assert (=> b!9379 (= b_next!2723 (or (and b!9377 (= lambda!2353 (y!576 thiss!853))) b_next!2731))))

(declare-fun b_next!2733 () Bool)

(assert (=> b!9376 (= b_next!2725 (or (and b!9377 (= lambda!2353 (x!5288 thiss!939))) b_next!2733))))

(declare-fun b_next!2735 () Bool)

(assert (=> b!9376 (= b_next!2727 (or (and b!9377 (= lambda!2353 (y!577 thiss!939))) b_next!2735))))

(assert (=> b!9377 true))

(declare-fun lambda!2354 () Int)

(declare-fun b_next!2737 () Bool)

(assert (=> b!9379 (= b_next!2709 (or (and b!9377 (= lambda!2354 (evidence!153 thiss!853))) b_next!2737))))

(declare-fun b_next!2739 () Bool)

(declare-fun proof!263 () Int)

(assert (=> start!1876 (= b_next!2713 (or (and b!9377 (= lambda!2354 proof!263)) b_next!2739))))

(declare-fun bs!2506 () Bool)

(declare-fun b!9380 () Bool)

(assert (= bs!2506 (and b!9380 b!9377)))

(declare-fun lambda!2355 () Int)

(assert (=> bs!2506 (not (= lambda!2355 lambda!2352))))

(assert (=> bs!2506 (not (= lambda!2355 lambda!2353))))

(assert (=> b!9380 true))

(assert (=> b!9380 (< (dynLambda!296 order!141 f!585) (dynLambda!297 order!143 lambda!2355))))

(assert (=> b!9380 true))

(declare-fun b_next!2741 () Bool)

(assert (=> b!9379 (= b_next!2729 (or (and b!9380 (= lambda!2355 (x!5287 thiss!853))) b_next!2741))))

(declare-fun b_next!2743 () Bool)

(assert (=> b!9379 (= b_next!2731 (or (and b!9380 (= lambda!2355 (y!576 thiss!853))) b_next!2743))))

(declare-fun b_next!2745 () Bool)

(assert (=> b!9376 (= b_next!2733 (or (and b!9380 (= lambda!2355 (x!5288 thiss!939))) b_next!2745))))

(declare-fun b_next!2747 () Bool)

(assert (=> b!9376 (= b_next!2735 (or (and b!9380 (= lambda!2355 (y!577 thiss!939))) b_next!2747))))

(declare-fun b!9378 () Bool)

(declare-fun m!12461 () Bool)

(assert (=> b!9378 m!12461))

(declare-fun bs!2507 () Bool)

(assert (= bs!2507 (and b!9378 b!9377)))

(declare-fun lambda!2356 () Int)

(assert (=> bs!2507 (not (= lambda!2356 lambda!2354))))

(declare-fun dynLambda!298 (Int) Bool)

(assert (=> (and b!9379 b!9378 (= (dynLambda!298 lambda!2356) (dynLambda!298 (evidence!153 thiss!853)))) (= lambda!2356 (evidence!153 thiss!853))))

(assert (=> (and start!1876 b!9378 (= (dynLambda!298 lambda!2356) (dynLambda!298 proof!263))) (= lambda!2356 proof!263)))

(declare-fun b_next!2749 () Bool)

(assert (=> b!9379 (= b_next!2737 (or (and b!9378 (= lambda!2356 (evidence!153 thiss!853))) b_next!2749))))

(declare-fun b_next!2751 () Bool)

(assert (=> start!1876 (= b_next!2739 (or (and b!9378 (= lambda!2356 proof!263)) b_next!2751))))

(declare-fun b!9375 () Bool)

(declare-fun e!5541 () Bool)

(assert (=> b!9375 (= e!5541 (not (dynLambda!298 proof!263)))))

(declare-fun e!5543 () Bool)

(assert (=> b!9376 (= e!5543 (and tp!1786 tp!1783))))

(declare-fun res!3052 () Bool)

(assert (=> b!9377 (=> (not res!3052) (not e!5541))))

(assert (=> b!9377 (= res!3052 (= thiss!853 (EqEvidence!173 lambda!2352 lambda!2353 lambda!2354)))))

(declare-fun res!3054 () Bool)

(assert (=> b!9378 (=> (not res!3054) (not e!5541))))

(assert (=> b!9378 (= res!3054 (= proof!263 lambda!2356))))

(declare-fun res!3053 () Bool)

(assert (=> start!1876 (=> (not res!3053) (not e!5541))))

(assert (=> start!1876 (= res!3053 (= f!585 lambda!2351))))

(assert (=> start!1876 e!5541))

(assert (=> start!1876 true))

(declare-fun e!5542 () Bool)

(declare-fun inv!329 (EqEvidence!172) Bool)

(assert (=> start!1876 (and (inv!329 thiss!853) e!5542)))

(assert (=> start!1876 tp!1785))

(declare-fun inv!330 (EqProof!78) Bool)

(assert (=> start!1876 (and (inv!330 thiss!939) e!5543)))

(assert (=> start!1876 tp!1781))

(assert (=> b!9379 (= e!5542 (and tp!1780 tp!1782 tp!1784))))

(declare-fun res!3051 () Bool)

(assert (=> b!9380 (=> (not res!3051) (not e!5541))))

(assert (=> b!9380 (= res!3051 (= thiss!939 (EqProof!79 lambda!2355 lambda!2355)))))

(declare-fun b!9381 () Bool)

(declare-fun res!3050 () Bool)

(assert (=> b!9381 (=> (not res!3050) (not e!5541))))

(declare-datatypes () ((Tree!67 (Branch!58 (left!441 Tree!67) (right!444 Tree!67)) (Leaf!140 (value!1309 Balance!209)))))

(declare-fun tree!25 () Tree!67)

(assert (=> b!9381 (= res!3050 (not (is-Leaf!140 tree!25)))))

(declare-fun b!9382 () Bool)

(declare-fun res!3049 () Bool)

(assert (=> b!9382 (=> (not res!3049) (not e!5541))))

(declare-datatypes () ((ProofOps!156 (ProofOps!157 (prop!200 Bool)))))

(declare-fun thiss!829 () ProofOps!156)

(declare-fun fold!43 (Tree!67 Int) Balance!209)

(declare-datatypes () ((List!221 (Nil!219) (Cons!218 (head!436 Balance!209) (tail!448 List!221)))))

(declare-fun foldRight1!74 (List!221 Int) Balance!209)

(declare-fun toList!67 (Tree!67) List!221)

(assert (=> b!9382 (= res!3049 (= thiss!829 (ProofOps!157 (= (fold!43 tree!25 f!585) (foldRight1!74 (toList!67 tree!25) f!585)))))))

(assert (= (and start!1876 res!3053) b!9382))

(assert (= (and b!9382 res!3049) b!9381))

(assert (= (and b!9381 res!3050) b!9377))

(assert (= (and b!9377 res!3052) b!9380))

(assert (= (and b!9380 res!3051) b!9378))

(assert (= (and b!9378 res!3054) b!9375))

(assert (= start!1876 b!9379))

(assert (= start!1876 b!9376))

(declare-fun b_lambda!5007 () Bool)

(assert (=> (not b_lambda!5007) (not b!9375)))

(declare-fun tb!2199 () Bool)

(declare-fun t!2539 () Bool)

(assert (=> (and b!9379 (= (evidence!153 thiss!853) proof!263) t!2539) tb!2199))

(declare-fun result!2239 () Bool)

(assert (=> tb!2199 (= result!2239 true)))

(assert (=> b!9375 t!2539))

(declare-fun b_and!4089 () Bool)

(assert (= b_and!4079 (and (=> t!2539 result!2239) b_and!4089)))

(declare-fun t!2541 () Bool)

(declare-fun tb!2201 () Bool)

(assert (=> (and start!1876 (= proof!263 proof!263) t!2541) tb!2201))

(declare-fun result!2241 () Bool)

(assert (=> tb!2201 (= result!2241 true)))

(assert (=> b!9375 t!2541))

(declare-fun b_and!4091 () Bool)

(assert (= b_and!4083 (and (=> t!2541 result!2241) b_and!4091)))

(declare-fun m!12463 () Bool)

(assert (=> b!9375 m!12463))

(declare-fun m!12465 () Bool)

(assert (=> start!1876 m!12465))

(declare-fun m!12467 () Bool)

(assert (=> start!1876 m!12467))

(declare-fun m!12469 () Bool)

(assert (=> b!9382 m!12469))

(declare-fun m!12471 () Bool)

(assert (=> b!9382 m!12471))

(assert (=> b!9382 m!12471))

(declare-fun m!12473 () Bool)

(assert (=> b!9382 m!12473))

(push 1)

(assert b_and!4077)

(assert (not b_next!2745))

(assert (not b!9382))

(assert (not b_next!2749))

(assert (not start!1876))

(assert b_and!4089)

(assert b_and!4075)

(assert b_and!4081)

(assert b_and!4091)

(assert b_and!4087)

(assert (not b_next!2741))

(assert (not b_next!2719))

(assert (not b_lambda!5007))

(assert (not b_next!2751))

(assert (not b_next!2747))

(assert b_and!4085)

(assert (not b_next!2743))

(assert (not b!9378))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4077)

(assert (not b_next!2745))

(assert (not b_next!2749))

(assert b_and!4089)

(assert b_and!4075)

(assert b_and!4081)

(assert b_and!4091)

(assert b_and!4087)

(assert (not b_next!2741))

(assert (not b_next!2719))

(assert (not b_next!2751))

(assert (not b_next!2747))

(assert b_and!4085)

(assert (not b_next!2743))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5009 () Bool)

(assert (= b_lambda!5007 (or (and b!9377 (= lambda!2354 proof!263)) (and b!9378 (= lambda!2356 proof!263)) (and b!9379 b_free!1101 (= (evidence!153 thiss!853) proof!263)) (and start!1876 b_free!1105) b_lambda!5009)))

(declare-fun bs!2508 () Bool)

(declare-fun d!7703 () Bool)

(assert (= bs!2508 (and d!7703 b!9377)))

(declare-fun append!24 (List!221 List!221) Bool)

(assert (=> bs!2508 (= (dynLambda!298 lambda!2354) (append!24 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))))))

(declare-fun m!12475 () Bool)

(assert (=> bs!2508 m!12475))

(declare-fun m!12477 () Bool)

(assert (=> bs!2508 m!12477))

(assert (=> bs!2508 m!12475))

(assert (=> bs!2508 m!12477))

(declare-fun m!12479 () Bool)

(assert (=> bs!2508 m!12479))

(assert (=> (and b!9377 (= lambda!2354 proof!263) b!9375) d!7703))

(declare-fun bs!2509 () Bool)

(declare-fun d!7705 () Bool)

(assert (= bs!2509 (and d!7705 b!9378)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2509 (= (dynLambda!298 lambda!2356) trivial!1)))

(assert (=> (and b!9378 (= lambda!2356 proof!263) b!9375) d!7705))

(push 1)

(assert b_and!4077)

(assert (not b_next!2745))

(assert (not b!9382))

(assert (not b_next!2749))

(assert (not start!1876))

(assert b_and!4089)

(assert b_and!4075)

(assert b_and!4081)

(assert b_and!4091)

(assert b_and!4087)

(assert (not b_next!2741))

(assert (not b_next!2719))

(assert (not bs!2508))

(assert (not b_next!2751))

(assert (not b_next!2747))

(assert b_and!4085)

(assert (not b_lambda!5009))

(assert (not b_next!2743))

(assert (not b!9378))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4077)

(assert (not b_next!2745))

(assert (not b_next!2749))

(assert b_and!4089)

(assert b_and!4075)

(assert b_and!4081)

(assert b_and!4091)

(assert b_and!4087)

(assert (not b_next!2741))

(assert (not b_next!2719))

(assert (not b_next!2751))

(assert (not b_next!2747))

(assert b_and!4085)

(assert (not b_next!2743))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2510 () Bool)

(declare-fun d!7707 () Bool)

(assert (= bs!2510 (and d!7707 start!1876)))

(declare-fun lambda!2359 () Int)

(assert (=> bs!2510 (= lambda!2359 lambda!2351)))

(declare-fun b_next!2753 () Bool)

(assert (=> start!1876 (= b_next!2719 (or (and d!7707 (= lambda!2359 f!585)) b_next!2753))))

(declare-fun because!2 (ProofOps!156 Bool) Bool)

(declare-fun ++!3 (Balance!209 Balance!209) Balance!209)

(declare-fun append!96 (List!221 List!221) List!221)

(assert (=> d!7707 (because!2 (ProofOps!157 (= (++!3 (foldRight1!74 (toList!67 (left!441 tree!25)) lambda!2359) (foldRight1!74 (toList!67 (right!444 tree!25)) lambda!2359)) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) lambda!2359))) true)))

(assert (=> d!7707 (= (++!3 (foldRight1!74 (toList!67 (left!441 tree!25)) lambda!2359) (foldRight1!74 (toList!67 (right!444 tree!25)) lambda!2359)) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) lambda!2359))))

(declare-fun e!5546 () Bool)

(assert (=> d!7707 e!5546))

(declare-fun res!3063 () Bool)

(assert (=> d!7707 (=> (not res!3063) (not e!5546))))

(declare-fun isEmpty!175 (List!221) Bool)

(assert (=> d!7707 (= res!3063 (not (isEmpty!175 (toList!67 (left!441 tree!25)))))))

(assert (=> d!7707 (= (append!24 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) true)))

(declare-fun b!9391 () Bool)

(assert (=> b!9391 (= e!5546 (not (isEmpty!175 (toList!67 (right!444 tree!25)))))))

(assert (= (and d!7707 res!3063) b!9391))

(declare-fun m!12481 () Bool)

(assert (=> d!7707 m!12481))

(declare-fun m!12483 () Bool)

(assert (=> d!7707 m!12483))

(assert (=> d!7707 m!12475))

(assert (=> d!7707 m!12477))

(assert (=> d!7707 m!12481))

(declare-fun m!12485 () Bool)

(assert (=> d!7707 m!12485))

(declare-fun m!12487 () Bool)

(assert (=> d!7707 m!12487))

(declare-fun m!12489 () Bool)

(assert (=> d!7707 m!12489))

(assert (=> d!7707 m!12477))

(assert (=> d!7707 m!12487))

(declare-fun m!12491 () Bool)

(assert (=> d!7707 m!12491))

(assert (=> d!7707 m!12475))

(declare-fun m!12493 () Bool)

(assert (=> d!7707 m!12493))

(assert (=> d!7707 m!12475))

(assert (=> d!7707 m!12485))

(assert (=> b!9391 m!12477))

(declare-fun m!12495 () Bool)

(assert (=> b!9391 m!12495))

(assert (=> bs!2508 d!7707))

(declare-fun d!7709 () Bool)

(declare-fun lt!1641 () List!221)

(assert (=> d!7709 (not (isEmpty!175 lt!1641))))

(declare-fun e!5549 () List!221)

(assert (=> d!7709 (= lt!1641 e!5549)))

(declare-fun c!3043 () Bool)

(assert (=> d!7709 (= c!3043 (is-Leaf!140 (left!441 tree!25)))))

(assert (=> d!7709 (= (toList!67 (left!441 tree!25)) lt!1641)))

(declare-fun b!9396 () Bool)

(assert (=> b!9396 (= e!5549 (Cons!218 (value!1309 (left!441 tree!25)) Nil!219))))

(declare-fun b!9397 () Bool)

(assert (=> b!9397 (= e!5549 (append!96 (toList!67 (left!441 (left!441 tree!25))) (toList!67 (right!444 (left!441 tree!25)))))))

(assert (= (and d!7709 c!3043) b!9396))

(assert (= (and d!7709 (not c!3043)) b!9397))

(declare-fun m!12497 () Bool)

(assert (=> d!7709 m!12497))

(declare-fun m!12499 () Bool)

(assert (=> b!9397 m!12499))

(declare-fun m!12501 () Bool)

(assert (=> b!9397 m!12501))

(assert (=> b!9397 m!12499))

(assert (=> b!9397 m!12501))

(declare-fun m!12503 () Bool)

(assert (=> b!9397 m!12503))

(assert (=> bs!2508 d!7709))

(declare-fun d!7711 () Bool)

(declare-fun lt!1642 () List!221)

(assert (=> d!7711 (not (isEmpty!175 lt!1642))))

(declare-fun e!5550 () List!221)

(assert (=> d!7711 (= lt!1642 e!5550)))

(declare-fun c!3044 () Bool)

(assert (=> d!7711 (= c!3044 (is-Leaf!140 (right!444 tree!25)))))

(assert (=> d!7711 (= (toList!67 (right!444 tree!25)) lt!1642)))

(declare-fun b!9398 () Bool)

(assert (=> b!9398 (= e!5550 (Cons!218 (value!1309 (right!444 tree!25)) Nil!219))))

(declare-fun b!9399 () Bool)

(assert (=> b!9399 (= e!5550 (append!96 (toList!67 (left!441 (right!444 tree!25))) (toList!67 (right!444 (right!444 tree!25)))))))

(assert (= (and d!7711 c!3044) b!9398))

(assert (= (and d!7711 (not c!3044)) b!9399))

(declare-fun m!12505 () Bool)

(assert (=> d!7711 m!12505))

(declare-fun m!12507 () Bool)

(assert (=> b!9399 m!12507))

(declare-fun m!12509 () Bool)

(assert (=> b!9399 m!12509))

(assert (=> b!9399 m!12507))

(assert (=> b!9399 m!12509))

(declare-fun m!12511 () Bool)

(assert (=> b!9399 m!12511))

(assert (=> bs!2508 d!7711))

(declare-fun bs!2511 () Bool)

(declare-fun b!9405 () Bool)

(assert (= bs!2511 (and b!9405 b!9377)))

(declare-fun lambda!2364 () Int)

(assert (=> bs!2511 (= (= (left!441 tree!25) tree!25) (= lambda!2364 lambda!2352))))

(assert (=> bs!2511 (not (= lambda!2364 lambda!2353))))

(declare-fun bs!2512 () Bool)

(assert (= bs!2512 (and b!9405 b!9380)))

(assert (=> bs!2512 (not (= lambda!2364 lambda!2355))))

(assert (=> b!9405 true))

(assert (=> b!9405 (< (dynLambda!296 order!141 f!585) (dynLambda!297 order!143 lambda!2364))))

(assert (=> b!9405 true))

(declare-fun b_next!2755 () Bool)

(assert (=> b!9379 (= b_next!2741 (or (and b!9405 (= lambda!2364 (x!5287 thiss!853))) b_next!2755))))

(declare-fun b_next!2757 () Bool)

(assert (=> b!9379 (= b_next!2743 (or (and b!9405 (= lambda!2364 (y!576 thiss!853))) b_next!2757))))

(declare-fun b_next!2759 () Bool)

(assert (=> b!9376 (= b_next!2745 (or (and b!9405 (= lambda!2364 (x!5288 thiss!939))) b_next!2759))))

(declare-fun b_next!2761 () Bool)

(assert (=> b!9376 (= b_next!2747 (or (and b!9405 (= lambda!2364 (y!577 thiss!939))) b_next!2761))))

(declare-fun lambda!2365 () Int)

(assert (=> bs!2511 (= (= (right!444 tree!25) tree!25) (= lambda!2365 lambda!2352))))

(assert (=> bs!2511 (not (= lambda!2365 lambda!2353))))

(assert (=> bs!2512 (not (= lambda!2365 lambda!2355))))

(assert (=> b!9405 (= (= (right!444 tree!25) (left!441 tree!25)) (= lambda!2365 lambda!2364))))

(assert (=> b!9405 true))

(assert (=> b!9405 (< (dynLambda!296 order!141 f!585) (dynLambda!297 order!143 lambda!2365))))

(assert (=> b!9405 true))

(declare-fun b_next!2763 () Bool)

(assert (=> b!9379 (= b_next!2755 (or (and b!9405 (= lambda!2365 (x!5287 thiss!853))) b_next!2763))))

(declare-fun b_next!2765 () Bool)

(assert (=> b!9379 (= b_next!2757 (or (and b!9405 (= lambda!2365 (y!576 thiss!853))) b_next!2765))))

(declare-fun b_next!2767 () Bool)

(assert (=> b!9376 (= b_next!2759 (or (and b!9405 (= lambda!2365 (x!5288 thiss!939))) b_next!2767))))

(declare-fun b_next!2769 () Bool)

(assert (=> b!9376 (= b_next!2761 (or (and b!9405 (= lambda!2365 (y!577 thiss!939))) b_next!2769))))

(declare-fun e!5569 () Balance!209)

(declare-datatypes () ((tuple2!84 (tuple2!85 (_1!42 Balance!209) (_2!42 Balance!209)))))

(declare-fun lt!1645 () tuple2!84)

(declare-fun dynLambda!299 (Int Balance!209 Balance!209) Balance!209)

(assert (=> b!9405 (= e!5569 (dynLambda!299 f!585 (_1!42 lt!1645) (_2!42 lt!1645)))))

(declare-fun dynLambda!300 (Int) Balance!209)

(assert (=> b!9405 (= lt!1645 (tuple2!85 (dynLambda!300 lambda!2364) (dynLambda!300 lambda!2365)))))

(declare-fun d!7713 () Bool)

(declare-fun c!3047 () Bool)

(assert (=> d!7713 (= c!3047 (is-Leaf!140 tree!25))))

(assert (=> d!7713 (= (fold!43 tree!25 f!585) e!5569)))

(declare-fun b!9404 () Bool)

(assert (=> b!9404 (= e!5569 (value!1309 tree!25))))

(assert (= (and d!7713 c!3047) b!9404))

(assert (= (and d!7713 (not c!3047)) b!9405))

(declare-fun b_lambda!5011 () Bool)

(assert (=> (not b_lambda!5011) (not b!9405)))

(declare-fun t!2543 () Bool)

(declare-fun tb!2203 () Bool)

(assert (=> (and start!1876 (= f!585 f!585) t!2543) tb!2203))

(declare-fun result!2243 () Bool)

(assert (=> tb!2203 (= result!2243 true)))

(assert (=> b!9405 t!2543))

(declare-fun b_and!4093 () Bool)

(assert (= b_and!4081 (and (=> t!2543 result!2243) b_and!4093)))

(declare-fun b_lambda!5013 () Bool)

(assert (=> (not b_lambda!5013) (not b!9405)))

(declare-fun b_lambda!5015 () Bool)

(assert (=> (not b_lambda!5015) (not b!9405)))

(declare-fun m!12513 () Bool)

(assert (=> b!9405 m!12513))

(declare-fun m!12515 () Bool)

(assert (=> b!9405 m!12515))

(declare-fun m!12517 () Bool)

(assert (=> b!9405 m!12517))

(assert (=> b!9382 d!7713))

(declare-fun d!7715 () Bool)

(declare-fun c!3050 () Bool)

(assert (=> d!7715 (= c!3050 (and (is-Cons!218 (toList!67 tree!25)) (is-Nil!219 (tail!448 (toList!67 tree!25)))))))

(declare-fun e!5572 () Balance!209)

(assert (=> d!7715 (= (foldRight1!74 (toList!67 tree!25) f!585) e!5572)))

(declare-fun b!9410 () Bool)

(assert (=> b!9410 (= e!5572 (head!436 (toList!67 tree!25)))))

(declare-fun b!9411 () Bool)

(assert (=> b!9411 (= e!5572 (dynLambda!299 f!585 (head!436 (toList!67 tree!25)) (foldRight1!74 (tail!448 (toList!67 tree!25)) f!585)))))

(assert (= (and d!7715 c!3050) b!9410))

(assert (= (and d!7715 (not c!3050)) b!9411))

(declare-fun b_lambda!5017 () Bool)

(assert (=> (not b_lambda!5017) (not b!9411)))

(declare-fun t!2545 () Bool)

(declare-fun tb!2205 () Bool)

(assert (=> (and start!1876 (= f!585 f!585) t!2545) tb!2205))

(declare-fun result!2245 () Bool)

(assert (=> tb!2205 (= result!2245 true)))

(assert (=> b!9411 t!2545))

(declare-fun b_and!4095 () Bool)

(assert (= b_and!4093 (and (=> t!2545 result!2245) b_and!4095)))

(declare-fun m!12519 () Bool)

(assert (=> b!9411 m!12519))

(assert (=> b!9411 m!12519))

(declare-fun m!12521 () Bool)

(assert (=> b!9411 m!12521))

(assert (=> b!9382 d!7715))

(declare-fun d!7717 () Bool)

(declare-fun lt!1646 () List!221)

(assert (=> d!7717 (not (isEmpty!175 lt!1646))))

(declare-fun e!5573 () List!221)

(assert (=> d!7717 (= lt!1646 e!5573)))

(declare-fun c!3051 () Bool)

(assert (=> d!7717 (= c!3051 (is-Leaf!140 tree!25))))

(assert (=> d!7717 (= (toList!67 tree!25) lt!1646)))

(declare-fun b!9412 () Bool)

(assert (=> b!9412 (= e!5573 (Cons!218 (value!1309 tree!25) Nil!219))))

(declare-fun b!9413 () Bool)

(assert (=> b!9413 (= e!5573 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))))))

(assert (= (and d!7717 c!3051) b!9412))

(assert (= (and d!7717 (not c!3051)) b!9413))

(declare-fun m!12523 () Bool)

(assert (=> d!7717 m!12523))

(assert (=> b!9413 m!12475))

(assert (=> b!9413 m!12477))

(assert (=> b!9413 m!12475))

(assert (=> b!9413 m!12477))

(assert (=> b!9413 m!12481))

(assert (=> b!9382 d!7717))

(declare-fun d!7719 () Bool)

(declare-fun res!3067 () Bool)

(declare-fun e!5576 () Bool)

(assert (=> d!7719 (=> (not res!3067) (not e!5576))))

(assert (=> d!7719 (= res!3067 (= (dynLambda!300 (x!5287 thiss!853)) (dynLambda!300 (y!576 thiss!853))))))

(assert (=> d!7719 (= (inv!329 thiss!853) e!5576)))

(declare-fun b!9416 () Bool)

(assert (=> b!9416 (= e!5576 (dynLambda!298 (evidence!153 thiss!853)))))

(assert (= (and d!7719 res!3067) b!9416))

(declare-fun b_lambda!5019 () Bool)

(assert (=> (not b_lambda!5019) (not d!7719)))

(declare-fun t!2547 () Bool)

(declare-fun tb!2207 () Bool)

(assert (=> (and b!9379 (= (x!5287 thiss!853) (x!5287 thiss!853)) t!2547) tb!2207))

(declare-fun result!2247 () Bool)

(assert (=> tb!2207 (= result!2247 true)))

(assert (=> d!7719 t!2547))

(declare-fun b_and!4097 () Bool)

(assert (= b_and!4075 (and (=> t!2547 result!2247) b_and!4097)))

(declare-fun t!2549 () Bool)

(declare-fun tb!2209 () Bool)

(assert (=> (and b!9379 (= (y!576 thiss!853) (x!5287 thiss!853)) t!2549) tb!2209))

(declare-fun result!2249 () Bool)

(assert (=> tb!2209 (= result!2249 true)))

(assert (=> d!7719 t!2549))

(declare-fun b_and!4099 () Bool)

(assert (= b_and!4077 (and (=> t!2549 result!2249) b_and!4099)))

(declare-fun t!2551 () Bool)

(declare-fun tb!2211 () Bool)

(assert (=> (and b!9376 (= (x!5288 thiss!939) (x!5287 thiss!853)) t!2551) tb!2211))

(declare-fun result!2251 () Bool)

(assert (=> tb!2211 (= result!2251 true)))

(assert (=> d!7719 t!2551))

(declare-fun b_and!4101 () Bool)

(assert (= b_and!4085 (and (=> t!2551 result!2251) b_and!4101)))

(declare-fun tb!2213 () Bool)

(declare-fun t!2553 () Bool)

(assert (=> (and b!9376 (= (y!577 thiss!939) (x!5287 thiss!853)) t!2553) tb!2213))

(declare-fun result!2253 () Bool)

(assert (=> tb!2213 (= result!2253 true)))

(assert (=> d!7719 t!2553))

(declare-fun b_and!4103 () Bool)

(assert (= b_and!4087 (and (=> t!2553 result!2253) b_and!4103)))

(declare-fun b_lambda!5021 () Bool)

(assert (=> (not b_lambda!5021) (not d!7719)))

(declare-fun t!2555 () Bool)

(declare-fun tb!2215 () Bool)

(assert (=> (and b!9379 (= (x!5287 thiss!853) (y!576 thiss!853)) t!2555) tb!2215))

(declare-fun result!2255 () Bool)

(assert (=> tb!2215 (= result!2255 true)))

(assert (=> d!7719 t!2555))

(declare-fun b_and!4105 () Bool)

(assert (= b_and!4097 (and (=> t!2555 result!2255) b_and!4105)))

(declare-fun t!2557 () Bool)

(declare-fun tb!2217 () Bool)

(assert (=> (and b!9379 (= (y!576 thiss!853) (y!576 thiss!853)) t!2557) tb!2217))

(declare-fun result!2257 () Bool)

(assert (=> tb!2217 (= result!2257 true)))

(assert (=> d!7719 t!2557))

(declare-fun b_and!4107 () Bool)

(assert (= b_and!4099 (and (=> t!2557 result!2257) b_and!4107)))

(declare-fun t!2559 () Bool)

(declare-fun tb!2219 () Bool)

(assert (=> (and b!9376 (= (x!5288 thiss!939) (y!576 thiss!853)) t!2559) tb!2219))

(declare-fun result!2259 () Bool)

(assert (=> tb!2219 (= result!2259 true)))

(assert (=> d!7719 t!2559))

(declare-fun b_and!4109 () Bool)

(assert (= b_and!4101 (and (=> t!2559 result!2259) b_and!4109)))

(declare-fun tb!2221 () Bool)

(declare-fun t!2561 () Bool)

(assert (=> (and b!9376 (= (y!577 thiss!939) (y!576 thiss!853)) t!2561) tb!2221))

(declare-fun result!2261 () Bool)

(assert (=> tb!2221 (= result!2261 true)))

(assert (=> d!7719 t!2561))

(declare-fun b_and!4111 () Bool)

(assert (= b_and!4103 (and (=> t!2561 result!2261) b_and!4111)))

(declare-fun b_lambda!5023 () Bool)

(assert (=> (not b_lambda!5023) (not b!9416)))

(declare-fun t!2563 () Bool)

(declare-fun tb!2223 () Bool)

(assert (=> (and b!9379 (= (evidence!153 thiss!853) (evidence!153 thiss!853)) t!2563) tb!2223))

(declare-fun result!2263 () Bool)

(assert (=> tb!2223 (= result!2263 true)))

(assert (=> b!9416 t!2563))

(declare-fun b_and!4113 () Bool)

(assert (= b_and!4089 (and (=> t!2563 result!2263) b_and!4113)))

(declare-fun t!2565 () Bool)

(declare-fun tb!2225 () Bool)

(assert (=> (and start!1876 (= proof!263 (evidence!153 thiss!853)) t!2565) tb!2225))

(declare-fun result!2265 () Bool)

(assert (=> tb!2225 (= result!2265 true)))

(assert (=> b!9416 t!2565))

(declare-fun b_and!4115 () Bool)

(assert (= b_and!4091 (and (=> t!2565 result!2265) b_and!4115)))

(declare-fun m!12525 () Bool)

(assert (=> d!7719 m!12525))

(declare-fun m!12527 () Bool)

(assert (=> d!7719 m!12527))

(declare-fun m!12529 () Bool)

(assert (=> b!9416 m!12529))

(assert (=> start!1876 d!7719))

(declare-fun d!7721 () Bool)

(assert (=> d!7721 (= (inv!330 thiss!939) (= (dynLambda!300 (x!5288 thiss!939)) (dynLambda!300 (y!577 thiss!939))))))

(declare-fun b_lambda!5025 () Bool)

(assert (=> (not b_lambda!5025) (not d!7721)))

(declare-fun t!2567 () Bool)

(declare-fun tb!2227 () Bool)

(assert (=> (and b!9379 (= (x!5287 thiss!853) (x!5288 thiss!939)) t!2567) tb!2227))

(declare-fun result!2267 () Bool)

(assert (=> tb!2227 (= result!2267 true)))

(assert (=> d!7721 t!2567))

(declare-fun b_and!4117 () Bool)

(assert (= b_and!4105 (and (=> t!2567 result!2267) b_and!4117)))

(declare-fun tb!2229 () Bool)

(declare-fun t!2569 () Bool)

(assert (=> (and b!9379 (= (y!576 thiss!853) (x!5288 thiss!939)) t!2569) tb!2229))

(declare-fun result!2269 () Bool)

(assert (=> tb!2229 (= result!2269 true)))

(assert (=> d!7721 t!2569))

(declare-fun b_and!4119 () Bool)

(assert (= b_and!4107 (and (=> t!2569 result!2269) b_and!4119)))

(declare-fun t!2571 () Bool)

(declare-fun tb!2231 () Bool)

(assert (=> (and b!9376 (= (x!5288 thiss!939) (x!5288 thiss!939)) t!2571) tb!2231))

(declare-fun result!2271 () Bool)

(assert (=> tb!2231 (= result!2271 true)))

(assert (=> d!7721 t!2571))

(declare-fun b_and!4121 () Bool)

(assert (= b_and!4109 (and (=> t!2571 result!2271) b_and!4121)))

(declare-fun t!2573 () Bool)

(declare-fun tb!2233 () Bool)

(assert (=> (and b!9376 (= (y!577 thiss!939) (x!5288 thiss!939)) t!2573) tb!2233))

(declare-fun result!2273 () Bool)

(assert (=> tb!2233 (= result!2273 true)))

(assert (=> d!7721 t!2573))

(declare-fun b_and!4123 () Bool)

(assert (= b_and!4111 (and (=> t!2573 result!2273) b_and!4123)))

(declare-fun b_lambda!5027 () Bool)

(assert (=> (not b_lambda!5027) (not d!7721)))

(declare-fun t!2575 () Bool)

(declare-fun tb!2235 () Bool)

(assert (=> (and b!9379 (= (x!5287 thiss!853) (y!577 thiss!939)) t!2575) tb!2235))

(declare-fun result!2275 () Bool)

(assert (=> tb!2235 (= result!2275 true)))

(assert (=> d!7721 t!2575))

(declare-fun b_and!4125 () Bool)

(assert (= b_and!4117 (and (=> t!2575 result!2275) b_and!4125)))

(declare-fun tb!2237 () Bool)

(declare-fun t!2577 () Bool)

(assert (=> (and b!9379 (= (y!576 thiss!853) (y!577 thiss!939)) t!2577) tb!2237))

(declare-fun result!2277 () Bool)

(assert (=> tb!2237 (= result!2277 true)))

(assert (=> d!7721 t!2577))

(declare-fun b_and!4127 () Bool)

(assert (= b_and!4119 (and (=> t!2577 result!2277) b_and!4127)))

(declare-fun t!2579 () Bool)

(declare-fun tb!2239 () Bool)

(assert (=> (and b!9376 (= (x!5288 thiss!939) (y!577 thiss!939)) t!2579) tb!2239))

(declare-fun result!2279 () Bool)

(assert (=> tb!2239 (= result!2279 true)))

(assert (=> d!7721 t!2579))

(declare-fun b_and!4129 () Bool)

(assert (= b_and!4121 (and (=> t!2579 result!2279) b_and!4129)))

(declare-fun t!2581 () Bool)

(declare-fun tb!2241 () Bool)

(assert (=> (and b!9376 (= (y!577 thiss!939) (y!577 thiss!939)) t!2581) tb!2241))

(declare-fun result!2281 () Bool)

(assert (=> tb!2241 (= result!2281 true)))

(assert (=> d!7721 t!2581))

(declare-fun b_and!4131 () Bool)

(assert (= b_and!4123 (and (=> t!2581 result!2281) b_and!4131)))

(declare-fun m!12531 () Bool)

(assert (=> d!7721 m!12531))

(declare-fun m!12533 () Bool)

(assert (=> d!7721 m!12533))

(assert (=> start!1876 d!7721))

(declare-fun d!7723 () Bool)

(assert (=> d!7723 (= trivial!1 true)))

(assert (=> b!9378 d!7723))

(declare-fun b_lambda!5029 () Bool)

(assert (= b_lambda!5019 (or (and b!9376 b_free!1107 (= (x!5288 thiss!939) (x!5287 thiss!853))) (and b!9405 (= lambda!2364 (x!5287 thiss!853))) (and b!9377 (= lambda!2352 (x!5287 thiss!853))) (and b!9379 b_free!1097) (and b!9405 (= lambda!2365 (x!5287 thiss!853))) (and b!9377 (= lambda!2353 (x!5287 thiss!853))) (and b!9379 b_free!1099 (= (y!576 thiss!853) (x!5287 thiss!853))) (and b!9376 b_free!1109 (= (y!577 thiss!939) (x!5287 thiss!853))) (and b!9380 (= lambda!2355 (x!5287 thiss!853))) b_lambda!5029)))

(declare-fun bs!2513 () Bool)

(declare-fun d!7725 () Bool)

(assert (= bs!2513 (and d!7725 b!9377)))

(assert (=> bs!2513 (= (dynLambda!300 lambda!2353) (dynLambda!299 f!585 (foldRight1!74 (toList!67 (left!441 tree!25)) f!585) (foldRight1!74 (toList!67 (right!444 tree!25)) f!585)))))

(declare-fun b_lambda!5047 () Bool)

(assert (=> (not b_lambda!5047) (not bs!2513)))

(declare-fun t!2583 () Bool)

(declare-fun tb!2243 () Bool)

(assert (=> (and start!1876 (= f!585 f!585) t!2583) tb!2243))

(declare-fun result!2283 () Bool)

(assert (=> tb!2243 (= result!2283 true)))

(assert (=> bs!2513 t!2583))

(declare-fun b_and!4133 () Bool)

(assert (= b_and!4095 (and (=> t!2583 result!2283) b_and!4133)))

(assert (=> bs!2513 m!12475))

(declare-fun m!12535 () Bool)

(assert (=> bs!2513 m!12535))

(declare-fun m!12537 () Bool)

(assert (=> bs!2513 m!12537))

(declare-fun m!12539 () Bool)

(assert (=> bs!2513 m!12539))

(assert (=> bs!2513 m!12477))

(assert (=> bs!2513 m!12475))

(assert (=> bs!2513 m!12535))

(assert (=> bs!2513 m!12477))

(assert (=> bs!2513 m!12537))

(assert (=> (and b!9377 (= lambda!2353 (x!5287 thiss!853)) d!7719) d!7725))

(declare-fun bs!2514 () Bool)

(declare-fun d!7727 () Bool)

(assert (= bs!2514 (and d!7727 b!9405)))

(assert (=> bs!2514 (= (dynLambda!300 lambda!2365) (fold!43 (right!444 tree!25) f!585))))

(declare-fun m!12541 () Bool)

(assert (=> bs!2514 m!12541))

(assert (=> (and b!9405 (= lambda!2365 (x!5287 thiss!853)) d!7719) d!7727))

(declare-fun bs!2515 () Bool)

(declare-fun d!7729 () Bool)

(assert (= bs!2515 (and d!7729 b!9380)))

(assert (=> bs!2515 (= (dynLambda!300 lambda!2355) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) f!585))))

(assert (=> bs!2515 m!12475))

(assert (=> bs!2515 m!12477))

(assert (=> bs!2515 m!12475))

(assert (=> bs!2515 m!12477))

(assert (=> bs!2515 m!12481))

(assert (=> bs!2515 m!12481))

(declare-fun m!12543 () Bool)

(assert (=> bs!2515 m!12543))

(assert (=> (and b!9380 (= lambda!2355 (x!5287 thiss!853)) d!7719) d!7729))

(declare-fun bs!2516 () Bool)

(declare-fun d!7731 () Bool)

(assert (= bs!2516 (and d!7731 b!9405)))

(assert (=> bs!2516 (= (dynLambda!300 lambda!2364) (fold!43 (left!441 tree!25) f!585))))

(declare-fun m!12545 () Bool)

(assert (=> bs!2516 m!12545))

(assert (=> (and b!9405 (= lambda!2364 (x!5287 thiss!853)) d!7719) d!7731))

(declare-fun bs!2517 () Bool)

(declare-fun d!7733 () Bool)

(assert (= bs!2517 (and d!7733 b!9377)))

(assert (=> bs!2517 (= (dynLambda!300 lambda!2352) (fold!43 tree!25 f!585))))

(assert (=> bs!2517 m!12469))

(assert (=> (and b!9377 (= lambda!2352 (x!5287 thiss!853)) d!7719) d!7733))

(declare-fun b_lambda!5031 () Bool)

(assert (= b_lambda!5027 (or (and b!9377 (= lambda!2352 (y!577 thiss!939))) (and b!9380 (= lambda!2355 (y!577 thiss!939))) (and b!9376 b_free!1107 (= (x!5288 thiss!939) (y!577 thiss!939))) (and b!9379 b_free!1097 (= (x!5287 thiss!853) (y!577 thiss!939))) (and b!9377 (= lambda!2353 (y!577 thiss!939))) (and b!9379 b_free!1099 (= (y!576 thiss!853) (y!577 thiss!939))) (and b!9376 b_free!1109) (and b!9405 (= lambda!2365 (y!577 thiss!939))) (and b!9405 (= lambda!2364 (y!577 thiss!939))) b_lambda!5031)))

(declare-fun bs!2518 () Bool)

(declare-fun d!7735 () Bool)

(assert (= bs!2518 (and d!7735 b!9377)))

(assert (=> bs!2518 (= (dynLambda!300 lambda!2353) (dynLambda!299 f!585 (foldRight1!74 (toList!67 (left!441 tree!25)) f!585) (foldRight1!74 (toList!67 (right!444 tree!25)) f!585)))))

(declare-fun b_lambda!5049 () Bool)

(assert (=> (not b_lambda!5049) (not bs!2518)))

(assert (=> bs!2518 t!2583))

(declare-fun b_and!4135 () Bool)

(assert (= b_and!4133 (and (=> t!2583 result!2283) b_and!4135)))

(assert (=> bs!2518 m!12475))

(assert (=> bs!2518 m!12535))

(assert (=> bs!2518 m!12537))

(assert (=> bs!2518 m!12539))

(assert (=> bs!2518 m!12477))

(assert (=> bs!2518 m!12475))

(assert (=> bs!2518 m!12535))

(assert (=> bs!2518 m!12477))

(assert (=> bs!2518 m!12537))

(assert (=> (and b!9377 (= lambda!2353 (y!577 thiss!939)) d!7721) d!7735))

(declare-fun bs!2519 () Bool)

(declare-fun d!7737 () Bool)

(assert (= bs!2519 (and d!7737 b!9377)))

(assert (=> bs!2519 (= (dynLambda!300 lambda!2352) (fold!43 tree!25 f!585))))

(assert (=> bs!2519 m!12469))

(assert (=> (and b!9377 (= lambda!2352 (y!577 thiss!939)) d!7721) d!7737))

(declare-fun bs!2520 () Bool)

(declare-fun d!7739 () Bool)

(assert (= bs!2520 (and d!7739 b!9405)))

(assert (=> bs!2520 (= (dynLambda!300 lambda!2365) (fold!43 (right!444 tree!25) f!585))))

(assert (=> bs!2520 m!12541))

(assert (=> (and b!9405 (= lambda!2365 (y!577 thiss!939)) d!7721) d!7739))

(declare-fun bs!2521 () Bool)

(declare-fun d!7741 () Bool)

(assert (= bs!2521 (and d!7741 b!9380)))

(assert (=> bs!2521 (= (dynLambda!300 lambda!2355) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) f!585))))

(assert (=> bs!2521 m!12475))

(assert (=> bs!2521 m!12477))

(assert (=> bs!2521 m!12475))

(assert (=> bs!2521 m!12477))

(assert (=> bs!2521 m!12481))

(assert (=> bs!2521 m!12481))

(assert (=> bs!2521 m!12543))

(assert (=> (and b!9380 (= lambda!2355 (y!577 thiss!939)) d!7721) d!7741))

(declare-fun bs!2522 () Bool)

(declare-fun d!7743 () Bool)

(assert (= bs!2522 (and d!7743 b!9405)))

(assert (=> bs!2522 (= (dynLambda!300 lambda!2364) (fold!43 (left!441 tree!25) f!585))))

(assert (=> bs!2522 m!12545))

(assert (=> (and b!9405 (= lambda!2364 (y!577 thiss!939)) d!7721) d!7743))

(declare-fun b_lambda!5033 () Bool)

(assert (= b_lambda!5023 (or (and b!9377 (= lambda!2354 (evidence!153 thiss!853))) (and b!9378 (= lambda!2356 (evidence!153 thiss!853))) (and b!9379 b_free!1101) (and start!1876 b_free!1105 (= proof!263 (evidence!153 thiss!853))) b_lambda!5033)))

(declare-fun bs!2523 () Bool)

(declare-fun d!7745 () Bool)

(assert (= bs!2523 (and d!7745 b!9377)))

(assert (=> bs!2523 (= (dynLambda!298 lambda!2354) (append!24 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))))))

(assert (=> bs!2523 m!12475))

(assert (=> bs!2523 m!12477))

(assert (=> bs!2523 m!12475))

(assert (=> bs!2523 m!12477))

(assert (=> bs!2523 m!12479))

(assert (=> (and b!9377 (= lambda!2354 (evidence!153 thiss!853)) b!9416) d!7745))

(declare-fun bs!2524 () Bool)

(declare-fun d!7747 () Bool)

(assert (= bs!2524 (and d!7747 b!9378)))

(assert (=> bs!2524 (= (dynLambda!298 lambda!2356) trivial!1)))

(assert (=> (and b!9378 (= lambda!2356 (evidence!153 thiss!853)) b!9416) d!7747))

(declare-fun b_lambda!5035 () Bool)

(assert (= b_lambda!5013 (or b!9405 b_lambda!5035)))

(declare-fun bs!2525 () Bool)

(declare-fun d!7749 () Bool)

(assert (= bs!2525 (and d!7749 b!9405)))

(assert (=> bs!2525 (= (dynLambda!300 lambda!2364) (fold!43 (left!441 tree!25) f!585))))

(assert (=> bs!2525 m!12545))

(assert (=> b!9405 d!7749))

(declare-fun b_lambda!5037 () Bool)

(assert (= b_lambda!5011 (or (and start!1876 (= lambda!2351 f!585)) (and d!7707 (= lambda!2359 f!585)) (and start!1876 b_free!1103) b_lambda!5037)))

(declare-fun bs!2526 () Bool)

(declare-fun d!7751 () Bool)

(assert (= bs!2526 (and d!7751 start!1876)))

(assert (=> bs!2526 (= (dynLambda!299 lambda!2351 (_1!42 lt!1645) (_2!42 lt!1645)) (++!3 (_1!42 lt!1645) (_2!42 lt!1645)))))

(declare-fun m!12547 () Bool)

(assert (=> bs!2526 m!12547))

(assert (=> (and start!1876 (= lambda!2351 f!585) b!9405) d!7751))

(declare-fun bs!2527 () Bool)

(declare-fun d!7753 () Bool)

(assert (= bs!2527 (and d!7753 d!7707)))

(assert (=> bs!2527 (= (dynLambda!299 lambda!2359 (_1!42 lt!1645) (_2!42 lt!1645)) (++!3 (_1!42 lt!1645) (_2!42 lt!1645)))))

(assert (=> bs!2527 m!12547))

(assert (=> (and d!7707 (= lambda!2359 f!585) b!9405) d!7753))

(declare-fun b_lambda!5039 () Bool)

(assert (= b_lambda!5021 (or (and b!9405 (= lambda!2364 (y!576 thiss!853))) (and b!9405 (= lambda!2365 (y!576 thiss!853))) (and b!9379 b_free!1097 (= (x!5287 thiss!853) (y!576 thiss!853))) (and b!9377 (= lambda!2352 (y!576 thiss!853))) (and b!9379 b_free!1099) (and b!9377 (= lambda!2353 (y!576 thiss!853))) (and b!9380 (= lambda!2355 (y!576 thiss!853))) (and b!9376 b_free!1107 (= (x!5288 thiss!939) (y!576 thiss!853))) (and b!9376 b_free!1109 (= (y!577 thiss!939) (y!576 thiss!853))) b_lambda!5039)))

(declare-fun bs!2528 () Bool)

(declare-fun d!7755 () Bool)

(assert (= bs!2528 (and d!7755 b!9405)))

(assert (=> bs!2528 (= (dynLambda!300 lambda!2364) (fold!43 (left!441 tree!25) f!585))))

(assert (=> bs!2528 m!12545))

(assert (=> (and b!9405 (= lambda!2364 (y!576 thiss!853)) d!7719) d!7755))

(declare-fun bs!2529 () Bool)

(declare-fun d!7757 () Bool)

(assert (= bs!2529 (and d!7757 b!9405)))

(assert (=> bs!2529 (= (dynLambda!300 lambda!2365) (fold!43 (right!444 tree!25) f!585))))

(assert (=> bs!2529 m!12541))

(assert (=> (and b!9405 (= lambda!2365 (y!576 thiss!853)) d!7719) d!7757))

(declare-fun bs!2530 () Bool)

(declare-fun d!7759 () Bool)

(assert (= bs!2530 (and d!7759 b!9377)))

(assert (=> bs!2530 (= (dynLambda!300 lambda!2353) (dynLambda!299 f!585 (foldRight1!74 (toList!67 (left!441 tree!25)) f!585) (foldRight1!74 (toList!67 (right!444 tree!25)) f!585)))))

(declare-fun b_lambda!5051 () Bool)

(assert (=> (not b_lambda!5051) (not bs!2530)))

(assert (=> bs!2530 t!2583))

(declare-fun b_and!4137 () Bool)

(assert (= b_and!4135 (and (=> t!2583 result!2283) b_and!4137)))

(assert (=> bs!2530 m!12475))

(assert (=> bs!2530 m!12535))

(assert (=> bs!2530 m!12537))

(assert (=> bs!2530 m!12539))

(assert (=> bs!2530 m!12477))

(assert (=> bs!2530 m!12475))

(assert (=> bs!2530 m!12535))

(assert (=> bs!2530 m!12477))

(assert (=> bs!2530 m!12537))

(assert (=> (and b!9377 (= lambda!2353 (y!576 thiss!853)) d!7719) d!7759))

(declare-fun bs!2531 () Bool)

(declare-fun d!7761 () Bool)

(assert (= bs!2531 (and d!7761 b!9377)))

(assert (=> bs!2531 (= (dynLambda!300 lambda!2352) (fold!43 tree!25 f!585))))

(assert (=> bs!2531 m!12469))

(assert (=> (and b!9377 (= lambda!2352 (y!576 thiss!853)) d!7719) d!7761))

(declare-fun bs!2532 () Bool)

(declare-fun d!7763 () Bool)

(assert (= bs!2532 (and d!7763 b!9380)))

(assert (=> bs!2532 (= (dynLambda!300 lambda!2355) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) f!585))))

(assert (=> bs!2532 m!12475))

(assert (=> bs!2532 m!12477))

(assert (=> bs!2532 m!12475))

(assert (=> bs!2532 m!12477))

(assert (=> bs!2532 m!12481))

(assert (=> bs!2532 m!12481))

(assert (=> bs!2532 m!12543))

(assert (=> (and b!9380 (= lambda!2355 (y!576 thiss!853)) d!7719) d!7763))

(declare-fun b_lambda!5041 () Bool)

(assert (= b_lambda!5015 (or b!9405 b_lambda!5041)))

(declare-fun bs!2533 () Bool)

(declare-fun d!7765 () Bool)

(assert (= bs!2533 (and d!7765 b!9405)))

(assert (=> bs!2533 (= (dynLambda!300 lambda!2365) (fold!43 (right!444 tree!25) f!585))))

(assert (=> bs!2533 m!12541))

(assert (=> b!9405 d!7765))

(declare-fun b_lambda!5043 () Bool)

(assert (= b_lambda!5017 (or (and start!1876 (= lambda!2351 f!585)) (and d!7707 (= lambda!2359 f!585)) (and start!1876 b_free!1103) b_lambda!5043)))

(declare-fun bs!2534 () Bool)

(declare-fun d!7767 () Bool)

(assert (= bs!2534 (and d!7767 start!1876)))

(assert (=> bs!2534 (= (dynLambda!299 lambda!2351 (head!436 (toList!67 tree!25)) (foldRight1!74 (tail!448 (toList!67 tree!25)) f!585)) (++!3 (head!436 (toList!67 tree!25)) (foldRight1!74 (tail!448 (toList!67 tree!25)) f!585)))))

(assert (=> bs!2534 m!12519))

(declare-fun m!12549 () Bool)

(assert (=> bs!2534 m!12549))

(assert (=> (and start!1876 (= lambda!2351 f!585) b!9411) d!7767))

(declare-fun bs!2535 () Bool)

(declare-fun d!7769 () Bool)

(assert (= bs!2535 (and d!7769 d!7707)))

(assert (=> bs!2535 (= (dynLambda!299 lambda!2359 (head!436 (toList!67 tree!25)) (foldRight1!74 (tail!448 (toList!67 tree!25)) f!585)) (++!3 (head!436 (toList!67 tree!25)) (foldRight1!74 (tail!448 (toList!67 tree!25)) f!585)))))

(assert (=> bs!2535 m!12519))

(assert (=> bs!2535 m!12549))

(assert (=> (and d!7707 (= lambda!2359 f!585) b!9411) d!7769))

(declare-fun b_lambda!5045 () Bool)

(assert (= b_lambda!5025 (or (and b!9405 (= lambda!2364 (x!5288 thiss!939))) (and b!9379 b_free!1097 (= (x!5287 thiss!853) (x!5288 thiss!939))) (and b!9405 (= lambda!2365 (x!5288 thiss!939))) (and b!9380 (= lambda!2355 (x!5288 thiss!939))) (and b!9376 b_free!1107) (and b!9376 b_free!1109 (= (y!577 thiss!939) (x!5288 thiss!939))) (and b!9379 b_free!1099 (= (y!576 thiss!853) (x!5288 thiss!939))) (and b!9377 (= lambda!2353 (x!5288 thiss!939))) (and b!9377 (= lambda!2352 (x!5288 thiss!939))) b_lambda!5045)))

(declare-fun bs!2536 () Bool)

(declare-fun d!7771 () Bool)

(assert (= bs!2536 (and d!7771 b!9405)))

(assert (=> bs!2536 (= (dynLambda!300 lambda!2365) (fold!43 (right!444 tree!25) f!585))))

(assert (=> bs!2536 m!12541))

(assert (=> (and b!9405 (= lambda!2365 (x!5288 thiss!939)) d!7721) d!7771))

(declare-fun bs!2537 () Bool)

(declare-fun d!7773 () Bool)

(assert (= bs!2537 (and d!7773 b!9380)))

(assert (=> bs!2537 (= (dynLambda!300 lambda!2355) (foldRight1!74 (append!96 (toList!67 (left!441 tree!25)) (toList!67 (right!444 tree!25))) f!585))))

(assert (=> bs!2537 m!12475))

(assert (=> bs!2537 m!12477))

(assert (=> bs!2537 m!12475))

(assert (=> bs!2537 m!12477))

(assert (=> bs!2537 m!12481))

(assert (=> bs!2537 m!12481))

(assert (=> bs!2537 m!12543))

(assert (=> (and b!9380 (= lambda!2355 (x!5288 thiss!939)) d!7721) d!7773))

(declare-fun bs!2538 () Bool)

(declare-fun d!7775 () Bool)

(assert (= bs!2538 (and d!7775 b!9377)))

(assert (=> bs!2538 (= (dynLambda!300 lambda!2352) (fold!43 tree!25 f!585))))

(assert (=> bs!2538 m!12469))

(assert (=> (and b!9377 (= lambda!2352 (x!5288 thiss!939)) d!7721) d!7775))

(declare-fun bs!2539 () Bool)

(declare-fun d!7777 () Bool)

(assert (= bs!2539 (and d!7777 b!9405)))

(assert (=> bs!2539 (= (dynLambda!300 lambda!2364) (fold!43 (left!441 tree!25) f!585))))

(assert (=> bs!2539 m!12545))

(assert (=> (and b!9405 (= lambda!2364 (x!5288 thiss!939)) d!7721) d!7777))

(declare-fun bs!2540 () Bool)

(declare-fun d!7779 () Bool)

(assert (= bs!2540 (and d!7779 b!9377)))

(assert (=> bs!2540 (= (dynLambda!300 lambda!2353) (dynLambda!299 f!585 (foldRight1!74 (toList!67 (left!441 tree!25)) f!585) (foldRight1!74 (toList!67 (right!444 tree!25)) f!585)))))

(declare-fun b_lambda!5053 () Bool)

(assert (=> (not b_lambda!5053) (not bs!2540)))

(assert (=> bs!2540 t!2583))

(declare-fun b_and!4139 () Bool)

(assert (= b_and!4137 (and (=> t!2583 result!2283) b_and!4139)))

(assert (=> bs!2540 m!12475))

(assert (=> bs!2540 m!12535))

(assert (=> bs!2540 m!12537))

(assert (=> bs!2540 m!12539))

(assert (=> bs!2540 m!12477))

(assert (=> bs!2540 m!12475))

(assert (=> bs!2540 m!12535))

(assert (=> bs!2540 m!12477))

(assert (=> bs!2540 m!12537))

(assert (=> (and b!9377 (= lambda!2353 (x!5288 thiss!939)) d!7721) d!7779))

(push 1)

(assert (not b_lambda!5033))

(assert (not b_lambda!5041))

(assert (not b_next!2763))

(assert (not b!9399))

(assert (not b_lambda!5037))

(assert (not b!9391))

(assert (not b_lambda!5029))

(assert (not b!9411))

(assert (not b_lambda!5031))

(assert (not bs!2522))

(assert (not bs!2514))

(assert (not b!9397))

(assert (not b_lambda!5035))

(assert (not b_lambda!5053))

(assert (not b_lambda!5043))

(assert (not b_next!2749))

(assert b_and!4113)

(assert (not bs!2518))

(assert (not bs!2523))

(assert b_and!4125)

(assert (not b_next!2769))

(assert (not bs!2516))

(assert (not bs!2528))

(assert (not bs!2535))

(assert b_and!4131)

(assert (not b_next!2753))

(assert (not bs!2513))

(assert b_and!4115)

(assert (not bs!2537))

(assert (not bs!2540))

(assert (not d!7709))

(assert b_and!4139)

(assert (not bs!2517))

(assert b_and!4127)

(assert (not d!7711))

(assert (not bs!2533))

(assert (not b_next!2767))

(assert (not bs!2531))

(assert (not b!9413))

(assert (not bs!2527))

(assert (not bs!2529))

(assert (not d!7717))

(assert (not b_lambda!5047))

(assert (not b_next!2751))

(assert (not bs!2519))

(assert (not d!7707))

(assert (not bs!2526))

(assert (not b_next!2765))

(assert (not bs!2530))

(assert (not bs!2538))

(assert (not bs!2536))

(assert (not b_lambda!5009))

(assert (not bs!2525))

(assert (not b_lambda!5045))

(assert (not bs!2515))

(assert (not bs!2539))

(assert (not bs!2520))

(assert b_and!4129)

(assert (not bs!2532))

(assert (not bs!2521))

(assert (not b_lambda!5039))

(assert (not bs!2534))

(assert (not b_lambda!5051))

(assert (not b_lambda!5049))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2763))

(assert (not b_next!2749))

(assert b_and!4113)

(assert b_and!4125)

(assert (not b_next!2769))

(assert b_and!4131)

(assert (not b_next!2753))

(assert b_and!4115)

(assert b_and!4139)

(assert b_and!4127)

(assert (not b_next!2767))

(assert (not b_next!2751))

(assert (not b_next!2765))

(assert b_and!4129)

(check-sat)

(pop 1)

