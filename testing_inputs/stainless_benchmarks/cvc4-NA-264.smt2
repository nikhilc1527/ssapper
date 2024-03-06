; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2020 () Bool)

(assert start!2020)

(declare-fun b!10106 () Bool)

(declare-fun b_free!1293 () Bool)

(declare-fun b_next!3165 () Bool)

(assert (=> b!10106 (= b_free!1293 (not b_next!3165))))

(declare-fun tp!2076 () Bool)

(declare-fun b_and!4579 () Bool)

(assert (=> b!10106 (= tp!2076 b_and!4579)))

(declare-fun b_free!1295 () Bool)

(declare-fun b_next!3167 () Bool)

(assert (=> b!10106 (= b_free!1295 (not b_next!3167))))

(declare-fun tp!2075 () Bool)

(declare-fun b_and!4581 () Bool)

(assert (=> b!10106 (= tp!2075 b_and!4581)))

(declare-fun b_free!1297 () Bool)

(declare-fun b_next!3169 () Bool)

(assert (=> b!10106 (= b_free!1297 (not b_next!3169))))

(declare-fun tp!2074 () Bool)

(declare-fun b_and!4583 () Bool)

(assert (=> b!10106 (= tp!2074 b_and!4583)))

(declare-fun b!10098 () Bool)

(declare-fun b_free!1299 () Bool)

(declare-fun b_next!3171 () Bool)

(assert (=> b!10098 (= b_free!1299 (not b_next!3171))))

(declare-fun tp!2072 () Bool)

(declare-fun b_and!4585 () Bool)

(assert (=> b!10098 (= tp!2072 b_and!4585)))

(declare-fun b_free!1301 () Bool)

(declare-fun b_next!3173 () Bool)

(assert (=> b!10098 (= b_free!1301 (not b_next!3173))))

(declare-fun tp!2077 () Bool)

(declare-fun b_and!4587 () Bool)

(assert (=> b!10098 (= tp!2077 b_and!4587)))

(declare-fun b_free!1303 () Bool)

(declare-fun b_next!3175 () Bool)

(assert (=> b!10098 (= b_free!1303 (not b_next!3175))))

(declare-fun tp!2073 () Bool)

(declare-fun b_and!4589 () Bool)

(assert (=> b!10098 (= tp!2073 b_and!4589)))

(declare-fun b!10095 () Bool)

(declare-fun m!13199 () Bool)

(assert (=> b!10095 m!13199))

(assert (=> b!10095 true))

(declare-fun lambda!2670 () Int)

(declare-datatypes () ((EqEvidence!202 (EqEvidence!203 (x!5732 Int) (y!607 Int) (evidence!168 Int)))))

(declare-fun thiss!672 () EqEvidence!202)

(declare-fun dynLambda!333 (Int) Int)

(assert (=> (and b!10106 b!10095 (= (dynLambda!333 lambda!2670) (dynLambda!333 (x!5732 thiss!672)))) (= lambda!2670 (x!5732 thiss!672))))

(assert (=> (and b!10106 b!10095 (= (dynLambda!333 lambda!2670) (dynLambda!333 (y!607 thiss!672)))) (= lambda!2670 (y!607 thiss!672))))

(declare-fun that!165 () EqEvidence!202)

(assert (=> (and b!10098 b!10095 (= (dynLambda!333 lambda!2670) (dynLambda!333 (x!5732 that!165)))) (= lambda!2670 (x!5732 that!165))))

(assert (=> (and b!10098 b!10095 (= (dynLambda!333 lambda!2670) (dynLambda!333 (y!607 that!165)))) (= lambda!2670 (y!607 that!165))))

(declare-fun b_next!3177 () Bool)

(assert (=> b!10106 (= b_next!3165 (or (and b!10095 (= lambda!2670 (x!5732 thiss!672))) b_next!3177))))

(declare-fun b_next!3179 () Bool)

(assert (=> b!10106 (= b_next!3167 (or (and b!10095 (= lambda!2670 (y!607 thiss!672))) b_next!3179))))

(declare-fun b_next!3181 () Bool)

(assert (=> b!10098 (= b_next!3171 (or (and b!10095 (= lambda!2670 (x!5732 that!165))) b_next!3181))))

(declare-fun b_next!3183 () Bool)

(assert (=> b!10098 (= b_next!3173 (or (and b!10095 (= lambda!2670 (y!607 that!165))) b_next!3183))))

(declare-fun lambda!2671 () Int)

(assert (=> b!10095 (not (= lambda!2671 lambda!2670))))

(assert (=> b!10095 true))

(declare-fun b_next!3185 () Bool)

(assert (=> b!10106 (= b_next!3177 (or (and b!10095 (= lambda!2671 (x!5732 thiss!672))) b_next!3185))))

(declare-fun b_next!3187 () Bool)

(assert (=> b!10106 (= b_next!3179 (or (and b!10095 (= lambda!2671 (y!607 thiss!672))) b_next!3187))))

(declare-fun b_next!3189 () Bool)

(assert (=> b!10098 (= b_next!3181 (or (and b!10095 (= lambda!2671 (x!5732 that!165))) b_next!3189))))

(declare-fun b_next!3191 () Bool)

(assert (=> b!10098 (= b_next!3183 (or (and b!10095 (= lambda!2671 (y!607 that!165))) b_next!3191))))

(assert (=> b!10095 true))

(declare-fun lambda!2672 () Int)

(declare-fun b_next!3193 () Bool)

(assert (=> b!10106 (= b_next!3169 (or (and b!10095 (= lambda!2672 (evidence!168 thiss!672))) b_next!3193))))

(declare-fun b_next!3195 () Bool)

(assert (=> b!10098 (= b_next!3175 (or (and b!10095 (= lambda!2672 (evidence!168 that!165))) b_next!3195))))

(declare-fun bs!2700 () Bool)

(declare-fun b!10099 () Bool)

(assert (= bs!2700 (and b!10099 b!10095)))

(declare-fun lambda!2673 () Int)

(assert (=> bs!2700 (not (= lambda!2673 lambda!2670))))

(assert (=> bs!2700 (not (= lambda!2673 lambda!2671))))

(assert (=> b!10099 true))

(declare-fun b_next!3197 () Bool)

(assert (=> b!10106 (= b_next!3185 (or (and b!10099 (= lambda!2673 (x!5732 thiss!672))) b_next!3197))))

(declare-fun b_next!3199 () Bool)

(assert (=> b!10106 (= b_next!3187 (or (and b!10099 (= lambda!2673 (y!607 thiss!672))) b_next!3199))))

(declare-fun b_next!3201 () Bool)

(assert (=> b!10098 (= b_next!3189 (or (and b!10099 (= lambda!2673 (x!5732 that!165))) b_next!3201))))

(declare-fun b_next!3203 () Bool)

(assert (=> b!10098 (= b_next!3191 (or (and b!10099 (= lambda!2673 (y!607 that!165))) b_next!3203))))

(declare-fun lambda!2674 () Int)

(assert (=> bs!2700 (not (= lambda!2674 lambda!2672))))

(declare-fun dynLambda!334 (Int) Bool)

(assert (=> (and b!10106 b!10099 (= (dynLambda!334 lambda!2674) (dynLambda!334 (evidence!168 thiss!672)))) (= lambda!2674 (evidence!168 thiss!672))))

(assert (=> (and b!10098 b!10099 (= (dynLambda!334 lambda!2674) (dynLambda!334 (evidence!168 that!165)))) (= lambda!2674 (evidence!168 that!165))))

(declare-fun b_next!3205 () Bool)

(assert (=> b!10106 (= b_next!3193 (or (and b!10099 (= lambda!2674 (evidence!168 thiss!672))) b_next!3205))))

(declare-fun b_next!3207 () Bool)

(assert (=> b!10098 (= b_next!3195 (or (and b!10099 (= lambda!2674 (evidence!168 that!165))) b_next!3207))))

(declare-fun res!3464 () Bool)

(declare-fun e!5931 () Bool)

(assert (=> b!10095 (=> (not res!3464) (not e!5931))))

(assert (=> b!10095 (= res!3464 (= thiss!672 (EqEvidence!203 lambda!2670 lambda!2671 lambda!2672)))))

(declare-fun b!10096 () Bool)

(declare-fun res!3457 () Bool)

(assert (=> b!10096 (=> (not res!3457) (not e!5931))))

(declare-datatypes () ((Parenthesis!63 (CloseParenthesis!62) (OpenParenthesis!62))))

(declare-datatypes () ((List!240 (Nil!238) (Cons!237 (head!455 Parenthesis!63) (tail!467 List!240)))))

(declare-fun xs!280 () List!240)

(declare-fun lambda!2668 () Int)

(declare-datatypes () ((Balance!247 (Balance!248 (extraOpen!164 Int) (extraClose!164 Int)))))

(declare-fun nonNegative!0 (Balance!247) Bool)

(declare-fun foldRight!49 (List!240 Balance!247 Int) Balance!247)

(assert (=> b!10096 (= res!3457 (nonNegative!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)))))

(declare-fun b!10097 () Bool)

(declare-fun e!5930 () Bool)

(declare-fun balance!3 () Balance!247)

(assert (=> b!10097 (= e!5930 (nonNegative!0 balance!3))))

(declare-fun e!5932 () Bool)

(assert (=> b!10098 (= e!5932 (and tp!2072 tp!2077 tp!2073))))

(declare-fun res!3465 () Bool)

(assert (=> b!10099 (=> (not res!3465) (not e!5931))))

(assert (=> b!10099 (= res!3465 (= that!165 (EqEvidence!203 lambda!2673 lambda!2673 lambda!2674)))))

(declare-fun b!10100 () Bool)

(declare-fun res!3462 () Bool)

(assert (=> b!10100 (=> (not res!3462) (not e!5931))))

(declare-fun lambda!2669 () Int)

(declare-fun counter!4 () Int)

(declare-fun foldRight!50 (List!240 Int Int) Int)

(assert (=> b!10100 (= res!3462 (= counter!4 (foldRight!50 xs!280 0 lambda!2669)))))

(declare-fun res!3461 () Bool)

(assert (=> start!2020 (=> (not res!3461) (not e!5931))))

(assert (=> start!2020 (= res!3461 (= balance!3 (foldRight!49 xs!280 (Balance!248 0 0) lambda!2668)))))

(assert (=> start!2020 e!5931))

(assert (=> start!2020 true))

(declare-fun e!5929 () Bool)

(declare-fun inv!352 (EqEvidence!202) Bool)

(assert (=> start!2020 (and (inv!352 thiss!672) e!5929)))

(assert (=> start!2020 (and (inv!352 that!165) e!5932)))

(declare-fun b!10101 () Bool)

(declare-fun res!3456 () Bool)

(assert (=> b!10101 (=> (not res!3456) (not e!5931))))

(declare-fun original_sequential_helper!0 (List!240) Bool)

(assert (=> b!10101 (= res!3456 (original_sequential_helper!0 (tail!467 xs!280)))))

(declare-fun b!10102 () Bool)

(declare-fun res!3458 () Bool)

(assert (=> b!10102 (=> (not res!3458) (not e!5931))))

(assert (=> b!10102 (= res!3458 (not (is-Nil!238 xs!280)))))

(declare-fun b!10103 () Bool)

(declare-fun res!3460 () Bool)

(assert (=> b!10103 (=> (not res!3460) (not e!5931))))

(declare-datatypes () ((ProofOps!194 (ProofOps!195 (prop!225 Bool)))))

(declare-fun thiss!651 () ProofOps!194)

(assert (=> b!10103 (= res!3460 (= thiss!651 (ProofOps!195 e!5930)))))

(declare-fun res!3459 () Bool)

(assert (=> b!10103 (=> (not res!3459) (not e!5930))))

(declare-fun balanceToCounter!0 (Balance!247) Int)

(assert (=> b!10103 (= res!3459 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10104 () Bool)

(declare-fun res!3463 () Bool)

(assert (=> b!10104 (=> (not res!3463) (not e!5931))))

(assert (=> b!10104 (= res!3463 (dynLambda!334 (evidence!168 thiss!672)))))

(declare-fun b!10105 () Bool)

(assert (=> b!10105 (= e!5931 (not (= (dynLambda!333 (y!607 thiss!672)) (dynLambda!333 (x!5732 that!165)))))))

(assert (=> b!10106 (= e!5929 (and tp!2076 tp!2075 tp!2074))))

(assert (= (and start!2020 res!3461) b!10100))

(assert (= (and b!10100 res!3462) b!10103))

(assert (= (and b!10103 res!3459) b!10097))

(assert (= (and b!10103 res!3460) b!10102))

(assert (= (and b!10102 res!3458) b!10101))

(assert (= (and b!10101 res!3456) b!10096))

(assert (= (and b!10096 res!3457) b!10095))

(assert (= (and b!10095 res!3464) b!10099))

(assert (= (and b!10099 res!3465) b!10104))

(assert (= (and b!10104 res!3463) b!10105))

(assert (= start!2020 b!10106))

(assert (= start!2020 b!10098))

(declare-fun b_lambda!5335 () Bool)

(assert (=> (not b_lambda!5335) (not b!10104)))

(declare-fun t!2777 () Bool)

(declare-fun tb!2437 () Bool)

(assert (=> (and b!10106 (= (evidence!168 thiss!672) (evidence!168 thiss!672)) t!2777) tb!2437))

(declare-fun result!2477 () Bool)

(assert (=> tb!2437 (= result!2477 true)))

(assert (=> b!10104 t!2777))

(declare-fun b_and!4591 () Bool)

(assert (= b_and!4583 (and (=> t!2777 result!2477) b_and!4591)))

(declare-fun tb!2439 () Bool)

(declare-fun t!2779 () Bool)

(assert (=> (and b!10098 (= (evidence!168 that!165) (evidence!168 thiss!672)) t!2779) tb!2439))

(declare-fun result!2479 () Bool)

(assert (=> tb!2439 (= result!2479 true)))

(assert (=> b!10104 t!2779))

(declare-fun b_and!4593 () Bool)

(assert (= b_and!4589 (and (=> t!2779 result!2479) b_and!4593)))

(declare-fun b_lambda!5337 () Bool)

(assert (=> (not b_lambda!5337) (not b!10105)))

(declare-fun t!2781 () Bool)

(declare-fun tb!2441 () Bool)

(assert (=> (and b!10106 (= (x!5732 thiss!672) (y!607 thiss!672)) t!2781) tb!2441))

(declare-fun result!2481 () Bool)

(assert (=> tb!2441 (= result!2481 true)))

(assert (=> b!10105 t!2781))

(declare-fun b_and!4595 () Bool)

(assert (= b_and!4579 (and (=> t!2781 result!2481) b_and!4595)))

(declare-fun t!2783 () Bool)

(declare-fun tb!2443 () Bool)

(assert (=> (and b!10106 (= (y!607 thiss!672) (y!607 thiss!672)) t!2783) tb!2443))

(declare-fun result!2483 () Bool)

(assert (=> tb!2443 (= result!2483 true)))

(assert (=> b!10105 t!2783))

(declare-fun b_and!4597 () Bool)

(assert (= b_and!4581 (and (=> t!2783 result!2483) b_and!4597)))

(declare-fun tb!2445 () Bool)

(declare-fun t!2785 () Bool)

(assert (=> (and b!10098 (= (x!5732 that!165) (y!607 thiss!672)) t!2785) tb!2445))

(declare-fun result!2485 () Bool)

(assert (=> tb!2445 (= result!2485 true)))

(assert (=> b!10105 t!2785))

(declare-fun b_and!4599 () Bool)

(assert (= b_and!4585 (and (=> t!2785 result!2485) b_and!4599)))

(declare-fun tb!2447 () Bool)

(declare-fun t!2787 () Bool)

(assert (=> (and b!10098 (= (y!607 that!165) (y!607 thiss!672)) t!2787) tb!2447))

(declare-fun result!2487 () Bool)

(assert (=> tb!2447 (= result!2487 true)))

(assert (=> b!10105 t!2787))

(declare-fun b_and!4601 () Bool)

(assert (= b_and!4587 (and (=> t!2787 result!2487) b_and!4601)))

(declare-fun b_lambda!5339 () Bool)

(assert (=> (not b_lambda!5339) (not b!10105)))

(declare-fun tb!2449 () Bool)

(declare-fun t!2789 () Bool)

(assert (=> (and b!10106 (= (x!5732 thiss!672) (x!5732 that!165)) t!2789) tb!2449))

(declare-fun result!2489 () Bool)

(assert (=> tb!2449 (= result!2489 true)))

(assert (=> b!10105 t!2789))

(declare-fun b_and!4603 () Bool)

(assert (= b_and!4595 (and (=> t!2789 result!2489) b_and!4603)))

(declare-fun t!2791 () Bool)

(declare-fun tb!2451 () Bool)

(assert (=> (and b!10106 (= (y!607 thiss!672) (x!5732 that!165)) t!2791) tb!2451))

(declare-fun result!2491 () Bool)

(assert (=> tb!2451 (= result!2491 true)))

(assert (=> b!10105 t!2791))

(declare-fun b_and!4605 () Bool)

(assert (= b_and!4597 (and (=> t!2791 result!2491) b_and!4605)))

(declare-fun t!2793 () Bool)

(declare-fun tb!2453 () Bool)

(assert (=> (and b!10098 (= (x!5732 that!165) (x!5732 that!165)) t!2793) tb!2453))

(declare-fun result!2493 () Bool)

(assert (=> tb!2453 (= result!2493 true)))

(assert (=> b!10105 t!2793))

(declare-fun b_and!4607 () Bool)

(assert (= b_and!4599 (and (=> t!2793 result!2493) b_and!4607)))

(declare-fun t!2795 () Bool)

(declare-fun tb!2455 () Bool)

(assert (=> (and b!10098 (= (y!607 that!165) (x!5732 that!165)) t!2795) tb!2455))

(declare-fun result!2495 () Bool)

(assert (=> tb!2455 (= result!2495 true)))

(assert (=> b!10105 t!2795))

(declare-fun b_and!4609 () Bool)

(assert (= b_and!4601 (and (=> t!2795 result!2495) b_and!4609)))

(declare-fun m!13201 () Bool)

(assert (=> b!10097 m!13201))

(declare-fun m!13203 () Bool)

(assert (=> b!10104 m!13203))

(assert (=> b!10103 m!13199))

(declare-fun m!13205 () Bool)

(assert (=> b!10101 m!13205))

(declare-fun m!13207 () Bool)

(assert (=> b!10105 m!13207))

(declare-fun m!13209 () Bool)

(assert (=> b!10105 m!13209))

(declare-fun m!13211 () Bool)

(assert (=> start!2020 m!13211))

(declare-fun m!13213 () Bool)

(assert (=> start!2020 m!13213))

(declare-fun m!13215 () Bool)

(assert (=> start!2020 m!13215))

(declare-fun m!13217 () Bool)

(assert (=> b!10100 m!13217))

(declare-fun m!13219 () Bool)

(assert (=> b!10096 m!13219))

(assert (=> b!10096 m!13219))

(declare-fun m!13221 () Bool)

(assert (=> b!10096 m!13221))

(push 1)

(assert (not b_next!3207))

(assert (not b_next!3205))

(assert b_and!4591)

(assert (not b!10097))

(assert (not b!10095))

(assert (not start!2020))

(assert b_and!4609)

(assert (not b_next!3201))

(assert b_and!4603)

(assert (not b_next!3199))

(assert (not b_lambda!5339))

(assert (not b!10103))

(assert (not b_lambda!5337))

(assert b_and!4593)

(assert (not b_lambda!5335))

(assert (not b!10096))

(assert b_and!4605)

(assert (not b_next!3203))

(assert (not b_next!3197))

(assert (not b!10101))

(assert b_and!4607)

(assert (not b!10100))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3207))

(assert (not b_next!3205))

(assert b_and!4591)

(assert b_and!4609)

(assert (not b_next!3201))

(assert b_and!4603)

(assert (not b_next!3199))

(assert b_and!4593)

(assert b_and!4605)

(assert (not b_next!3203))

(assert (not b_next!3197))

(assert b_and!4607)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5341 () Bool)

(assert (= b_lambda!5335 (or (and b!10095 (= lambda!2672 (evidence!168 thiss!672))) (and b!10099 (= lambda!2674 (evidence!168 thiss!672))) (and b!10106 b_free!1297) (and b!10098 b_free!1303 (= (evidence!168 that!165) (evidence!168 thiss!672))) b_lambda!5341)))

(declare-fun bs!2701 () Bool)

(declare-fun d!8155 () Bool)

(assert (= bs!2701 (and d!8155 b!10095)))

(declare-fun toCounter_updateCounter!0 (Balance!247 Parenthesis!63) Bool)

(assert (=> bs!2701 (= (dynLambda!334 lambda!2672) (toCounter_updateCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280)))))

(assert (=> bs!2701 m!13219))

(assert (=> bs!2701 m!13219))

(declare-fun m!13223 () Bool)

(assert (=> bs!2701 m!13223))

(assert (=> (and b!10095 (= lambda!2672 (evidence!168 thiss!672)) b!10104) d!8155))

(declare-fun bs!2702 () Bool)

(declare-fun d!8157 () Bool)

(assert (= bs!2702 (and d!8157 b!10099)))

(assert (=> bs!2702 (= (dynLambda!334 lambda!2674) true)))

(assert (=> (and b!10099 (= lambda!2674 (evidence!168 thiss!672)) b!10104) d!8157))

(declare-fun b_lambda!5343 () Bool)

(assert (= b_lambda!5337 (or (and b!10095 (= lambda!2671 (y!607 thiss!672))) (and b!10099 (= lambda!2673 (y!607 thiss!672))) (and b!10098 b_free!1299 (= (x!5732 that!165) (y!607 thiss!672))) (and b!10106 b_free!1293 (= (x!5732 thiss!672) (y!607 thiss!672))) (and b!10106 b_free!1295) (and b!10095 (= lambda!2670 (y!607 thiss!672))) (and b!10098 b_free!1301 (= (y!607 that!165) (y!607 thiss!672))) b_lambda!5343)))

(declare-fun bs!2703 () Bool)

(declare-fun d!8159 () Bool)

(assert (= bs!2703 (and d!8159 b!10095)))

(declare-fun +$colon!0 (Balance!247 Parenthesis!63) Balance!247)

(assert (=> bs!2703 (= (dynLambda!333 lambda!2671) (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))))))

(assert (=> bs!2703 m!13219))

(assert (=> bs!2703 m!13219))

(declare-fun m!13225 () Bool)

(assert (=> bs!2703 m!13225))

(assert (=> bs!2703 m!13225))

(declare-fun m!13227 () Bool)

(assert (=> bs!2703 m!13227))

(assert (=> (and b!10095 (= lambda!2671 (y!607 thiss!672)) b!10105) d!8159))

(declare-fun bs!2704 () Bool)

(declare-fun d!8161 () Bool)

(assert (= bs!2704 (and d!8161 b!10095)))

(assert (=> bs!2704 (= (dynLambda!333 lambda!2670) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10095 (= lambda!2670 (y!607 thiss!672)) b!10105) d!8161))

(declare-fun bs!2705 () Bool)

(declare-fun d!8163 () Bool)

(assert (= bs!2705 (and d!8163 b!10099)))

(declare-fun updateCounter!0 (Parenthesis!63 Int) Int)

(assert (=> bs!2705 (= (dynLambda!333 lambda!2673) (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))))))

(assert (=> bs!2705 m!13219))

(assert (=> bs!2705 m!13219))

(declare-fun m!13229 () Bool)

(assert (=> bs!2705 m!13229))

(assert (=> bs!2705 m!13229))

(declare-fun m!13231 () Bool)

(assert (=> bs!2705 m!13231))

(assert (=> (and b!10099 (= lambda!2673 (y!607 thiss!672)) b!10105) d!8163))

(declare-fun b_lambda!5345 () Bool)

(assert (= b_lambda!5339 (or (and b!10095 (= lambda!2670 (x!5732 that!165))) (and b!10099 (= lambda!2673 (x!5732 that!165))) (and b!10095 (= lambda!2671 (x!5732 that!165))) (and b!10098 b_free!1301 (= (y!607 that!165) (x!5732 that!165))) (and b!10098 b_free!1299) (and b!10106 b_free!1295 (= (y!607 thiss!672) (x!5732 that!165))) (and b!10106 b_free!1293 (= (x!5732 thiss!672) (x!5732 that!165))) b_lambda!5345)))

(declare-fun bs!2706 () Bool)

(declare-fun d!8165 () Bool)

(assert (= bs!2706 (and d!8165 b!10095)))

(assert (=> bs!2706 (= (dynLambda!333 lambda!2670) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10095 (= lambda!2670 (x!5732 that!165)) b!10105) d!8165))

(declare-fun bs!2707 () Bool)

(declare-fun d!8167 () Bool)

(assert (= bs!2707 (and d!8167 b!10099)))

(assert (=> bs!2707 (= (dynLambda!333 lambda!2673) (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))))))

(assert (=> bs!2707 m!13219))

(assert (=> bs!2707 m!13219))

(assert (=> bs!2707 m!13229))

(assert (=> bs!2707 m!13229))

(assert (=> bs!2707 m!13231))

(assert (=> (and b!10099 (= lambda!2673 (x!5732 that!165)) b!10105) d!8167))

(declare-fun bs!2708 () Bool)

(declare-fun d!8169 () Bool)

(assert (= bs!2708 (and d!8169 b!10095)))

(assert (=> bs!2708 (= (dynLambda!333 lambda!2671) (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))))))

(assert (=> bs!2708 m!13219))

(assert (=> bs!2708 m!13219))

(assert (=> bs!2708 m!13225))

(assert (=> bs!2708 m!13225))

(assert (=> bs!2708 m!13227))

(assert (=> (and b!10095 (= lambda!2671 (x!5732 that!165)) b!10105) d!8169))

(push 1)

(assert (not bs!2708))

(assert (not b_next!3207))

(assert (not bs!2701))

(assert (not b_next!3205))

(assert b_and!4591)

(assert (not b!10097))

(assert (not b!10095))

(assert (not start!2020))

(assert b_and!4609)

(assert (not b_next!3201))

(assert b_and!4603)

(assert (not b_next!3199))

(assert (not b_lambda!5341))

(assert (not b!10103))

(assert b_and!4593)

(assert (not bs!2703))

(assert (not b!10096))

(assert b_and!4605)

(assert (not b_next!3203))

(assert (not b_next!3197))

(assert (not b!10101))

(assert (not b_lambda!5343))

(assert b_and!4607)

(assert (not b_lambda!5345))

(assert (not b!10100))

(assert (not bs!2707))

(assert (not bs!2705))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3207))

(assert (not b_next!3205))

(assert b_and!4591)

(assert b_and!4609)

(assert (not b_next!3201))

(assert b_and!4603)

(assert (not b_next!3199))

(assert b_and!4593)

(assert b_and!4605)

(assert (not b_next!3203))

(assert (not b_next!3197))

(assert b_and!4607)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2709 () Bool)

(declare-fun d!8171 () Bool)

(assert (= bs!2709 (and d!8171 start!2020)))

(declare-fun lambda!2681 () Int)

(assert (=> bs!2709 (= lambda!2681 lambda!2668)))

(declare-fun bs!2710 () Bool)

(assert (= bs!2710 (and d!8171 b!10100)))

(declare-fun lambda!2682 () Int)

(assert (=> bs!2710 (= lambda!2682 lambda!2669)))

(declare-fun b!10123 () Bool)

(declare-fun e!5940 () Bool)

(declare-fun lt!1706 () Balance!247)

(assert (=> b!10123 (= e!5940 (nonNegative!0 lt!1706))))

(declare-fun b!10124 () Bool)

(declare-fun e!5941 () Bool)

(declare-fun e!5939 () Bool)

(assert (=> b!10124 (= e!5941 e!5939)))

(declare-fun res!3474 () Bool)

(assert (=> b!10124 (=> (not res!3474) (not e!5939))))

(assert (=> b!10124 (= res!3474 (original_sequential_helper!0 (tail!467 (tail!467 xs!280))))))

(declare-fun b!10125 () Bool)

(assert (=> b!10125 (= e!5939 true)))

(declare-fun lt!1705 () Int)

(assert (=> b!10125 (= (balanceToCounter!0 lt!1706) lt!1705)))

(declare-fun because!2 (ProofOps!194 Bool) Bool)

(assert (=> d!8171 (because!2 (ProofOps!195 e!5940) e!5941)))

(declare-fun c!3174 () Bool)

(assert (=> d!8171 (= c!3174 (is-Nil!238 (tail!467 xs!280)))))

(declare-fun res!3472 () Bool)

(assert (=> d!8171 (=> (not res!3472) (not e!5940))))

(assert (=> d!8171 (= res!3472 (= (balanceToCounter!0 lt!1706) lt!1705))))

(assert (=> d!8171 (= lt!1705 (foldRight!50 (tail!467 xs!280) 0 lambda!2682))))

(assert (=> d!8171 (= lt!1706 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2681))))

(assert (=> d!8171 (= (original_sequential_helper!0 (tail!467 xs!280)) true)))

(declare-fun b!10126 () Bool)

(assert (=> b!10126 (= e!5941 true)))

(declare-fun b!10127 () Bool)

(declare-fun res!3473 () Bool)

(assert (=> b!10127 (=> (not res!3473) (not e!5939))))

(assert (=> b!10127 (= res!3473 (nonNegative!0 (foldRight!49 (tail!467 (tail!467 xs!280)) (Balance!248 0 0) lambda!2681)))))

(assert (= (and d!8171 res!3472) b!10123))

(assert (= (and b!10124 res!3474) b!10127))

(assert (= (and b!10127 res!3473) b!10125))

(assert (= (and d!8171 c!3174) b!10126))

(assert (= (and d!8171 (not c!3174)) b!10124))

(declare-fun m!13233 () Bool)

(assert (=> b!10125 m!13233))

(declare-fun m!13235 () Bool)

(assert (=> b!10123 m!13235))

(declare-fun m!13237 () Bool)

(assert (=> d!8171 m!13237))

(assert (=> d!8171 m!13233))

(declare-fun m!13239 () Bool)

(assert (=> d!8171 m!13239))

(declare-fun m!13241 () Bool)

(assert (=> d!8171 m!13241))

(declare-fun m!13243 () Bool)

(assert (=> b!10124 m!13243))

(declare-fun m!13245 () Bool)

(assert (=> b!10127 m!13245))

(assert (=> b!10127 m!13245))

(declare-fun m!13247 () Bool)

(assert (=> b!10127 m!13247))

(assert (=> b!10101 d!8171))

(declare-fun d!8173 () Bool)

(assert (=> d!8173 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!164 balance!3) 0) (- 1) (ite (and (= (extraOpen!164 balance!3) 0) (= (extraClose!164 balance!3) 0)) 0 (ite (>= (extraClose!164 balance!3) 0) (extraClose!164 balance!3) (- 1)))))))

(assert (=> b!10103 d!8173))

(declare-fun d!8175 () Bool)

(assert (=> d!8175 (= (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))) (ite (< (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0) (- 1) (ite (is-OpenParenthesis!62 (head!455 xs!280)) (- (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 1) (+ (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 1))))))

(assert (=> bs!2707 d!8175))

(declare-fun d!8177 () Bool)

(assert (=> d!8177 (= (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (ite (> (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0) (- 1) (ite (and (= (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0) (= (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0)) 0 (ite (>= (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0) (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (- 1)))))))

(assert (=> bs!2707 d!8177))

(declare-fun d!8179 () Bool)

(declare-fun c!3178 () Bool)

(assert (=> d!8179 (= c!3178 (is-Nil!238 (tail!467 xs!280)))))

(declare-fun e!5944 () Balance!247)

(assert (=> d!8179 (= (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) e!5944)))

(declare-fun b!10133 () Bool)

(assert (=> b!10133 (= e!5944 (Balance!248 0 0))))

(declare-fun b!10134 () Bool)

(declare-fun dynLambda!335 (Int Parenthesis!63 Balance!247) Balance!247)

(assert (=> b!10134 (= e!5944 (dynLambda!335 lambda!2668 (head!455 (tail!467 xs!280)) (foldRight!49 (tail!467 (tail!467 xs!280)) (Balance!248 0 0) lambda!2668)))))

(assert (= (and d!8179 c!3178) b!10133))

(assert (= (and d!8179 (not c!3178)) b!10134))

(declare-fun b_lambda!5347 () Bool)

(assert (=> (not b_lambda!5347) (not b!10134)))

(declare-fun m!13249 () Bool)

(assert (=> b!10134 m!13249))

(assert (=> b!10134 m!13249))

(declare-fun m!13251 () Bool)

(assert (=> b!10134 m!13251))

(assert (=> bs!2707 d!8179))

(declare-fun d!8181 () Bool)

(assert (=> d!8181 (= (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))) (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))))))

(assert (=> d!8181 (nonNegative!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))))

(assert (=> d!8181 (= (toCounter_updateCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280)) true)))

(declare-fun bs!2711 () Bool)

(assert (= bs!2711 d!8181))

(assert (=> bs!2711 m!13225))

(assert (=> bs!2711 m!13227))

(assert (=> bs!2711 m!13219))

(assert (=> bs!2711 m!13221))

(assert (=> bs!2711 m!13229))

(assert (=> bs!2711 m!13231))

(assert (=> bs!2711 m!13219))

(assert (=> bs!2711 m!13229))

(assert (=> bs!2711 m!13219))

(assert (=> bs!2711 m!13225))

(assert (=> bs!2701 d!8181))

(assert (=> bs!2701 d!8179))

(assert (=> b!10095 d!8173))

(declare-fun d!8183 () Bool)

(assert (=> d!8183 (= (nonNegative!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (and (>= (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0) (>= (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0)))))

(assert (=> b!10096 d!8183))

(assert (=> b!10096 d!8179))

(declare-fun d!8185 () Bool)

(assert (=> d!8185 (= (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) (ite (> (extraOpen!164 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) 0) (- 1) (ite (and (= (extraOpen!164 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) 0) (= (extraClose!164 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) 0)) 0 (ite (>= (extraClose!164 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) 0) (extraClose!164 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))) (- 1)))))))

(assert (=> bs!2708 d!8185))

(declare-fun d!8187 () Bool)

(assert (=> d!8187 (= (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280)) (ite (and (is-OpenParenthesis!62 (head!455 xs!280)) (> (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 0)) (Balance!248 (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (- (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 1)) (ite (is-OpenParenthesis!62 (head!455 xs!280)) (Balance!248 (+ (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 1) (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))) (Balance!248 (extraOpen!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (+ (extraClose!164 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) 1)))))))

(assert (=> bs!2708 d!8187))

(assert (=> bs!2708 d!8179))

(declare-fun d!8189 () Bool)

(declare-fun c!3181 () Bool)

(assert (=> d!8189 (= c!3181 (is-Nil!238 xs!280))))

(declare-fun e!5947 () Int)

(assert (=> d!8189 (= (foldRight!50 xs!280 0 lambda!2669) e!5947)))

(declare-fun b!10140 () Bool)

(assert (=> b!10140 (= e!5947 0)))

(declare-fun b!10141 () Bool)

(declare-fun dynLambda!336 (Int Parenthesis!63 Int) Int)

(assert (=> b!10141 (= e!5947 (dynLambda!336 lambda!2669 (head!455 xs!280) (foldRight!50 (tail!467 xs!280) 0 lambda!2669)))))

(assert (= (and d!8189 c!3181) b!10140))

(assert (= (and d!8189 (not c!3181)) b!10141))

(declare-fun b_lambda!5349 () Bool)

(assert (=> (not b_lambda!5349) (not b!10141)))

(declare-fun m!13253 () Bool)

(assert (=> b!10141 m!13253))

(assert (=> b!10141 m!13253))

(declare-fun m!13255 () Bool)

(assert (=> b!10141 m!13255))

(assert (=> b!10100 d!8189))

(assert (=> bs!2703 d!8185))

(assert (=> bs!2703 d!8187))

(assert (=> bs!2703 d!8179))

(declare-fun d!8191 () Bool)

(assert (=> d!8191 (= (nonNegative!0 balance!3) (and (>= (extraOpen!164 balance!3) 0) (>= (extraClose!164 balance!3) 0)))))

(assert (=> b!10097 d!8191))

(assert (=> bs!2705 d!8175))

(assert (=> bs!2705 d!8177))

(assert (=> bs!2705 d!8179))

(declare-fun d!8193 () Bool)

(declare-fun c!3182 () Bool)

(assert (=> d!8193 (= c!3182 (is-Nil!238 xs!280))))

(declare-fun e!5948 () Balance!247)

(assert (=> d!8193 (= (foldRight!49 xs!280 (Balance!248 0 0) lambda!2668) e!5948)))

(declare-fun b!10142 () Bool)

(assert (=> b!10142 (= e!5948 (Balance!248 0 0))))

(declare-fun b!10143 () Bool)

(assert (=> b!10143 (= e!5948 (dynLambda!335 lambda!2668 (head!455 xs!280) (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)))))

(assert (= (and d!8193 c!3182) b!10142))

(assert (= (and d!8193 (not c!3182)) b!10143))

(declare-fun b_lambda!5351 () Bool)

(assert (=> (not b_lambda!5351) (not b!10143)))

(assert (=> b!10143 m!13219))

(assert (=> b!10143 m!13219))

(declare-fun m!13257 () Bool)

(assert (=> b!10143 m!13257))

(assert (=> start!2020 d!8193))

(declare-fun d!8195 () Bool)

(declare-fun res!3477 () Bool)

(declare-fun e!5951 () Bool)

(assert (=> d!8195 (=> (not res!3477) (not e!5951))))

(assert (=> d!8195 (= res!3477 (= (dynLambda!333 (x!5732 thiss!672)) (dynLambda!333 (y!607 thiss!672))))))

(assert (=> d!8195 (= (inv!352 thiss!672) e!5951)))

(declare-fun b!10146 () Bool)

(assert (=> b!10146 (= e!5951 (dynLambda!334 (evidence!168 thiss!672)))))

(assert (= (and d!8195 res!3477) b!10146))

(declare-fun b_lambda!5353 () Bool)

(assert (=> (not b_lambda!5353) (not d!8195)))

(declare-fun t!2797 () Bool)

(declare-fun tb!2457 () Bool)

(assert (=> (and b!10106 (= (x!5732 thiss!672) (x!5732 thiss!672)) t!2797) tb!2457))

(declare-fun result!2497 () Bool)

(assert (=> tb!2457 (= result!2497 true)))

(assert (=> d!8195 t!2797))

(declare-fun b_and!4611 () Bool)

(assert (= b_and!4603 (and (=> t!2797 result!2497) b_and!4611)))

(declare-fun t!2799 () Bool)

(declare-fun tb!2459 () Bool)

(assert (=> (and b!10106 (= (y!607 thiss!672) (x!5732 thiss!672)) t!2799) tb!2459))

(declare-fun result!2499 () Bool)

(assert (=> tb!2459 (= result!2499 true)))

(assert (=> d!8195 t!2799))

(declare-fun b_and!4613 () Bool)

(assert (= b_and!4605 (and (=> t!2799 result!2499) b_and!4613)))

(declare-fun t!2801 () Bool)

(declare-fun tb!2461 () Bool)

(assert (=> (and b!10098 (= (x!5732 that!165) (x!5732 thiss!672)) t!2801) tb!2461))

(declare-fun result!2501 () Bool)

(assert (=> tb!2461 (= result!2501 true)))

(assert (=> d!8195 t!2801))

(declare-fun b_and!4615 () Bool)

(assert (= b_and!4607 (and (=> t!2801 result!2501) b_and!4615)))

(declare-fun t!2803 () Bool)

(declare-fun tb!2463 () Bool)

(assert (=> (and b!10098 (= (y!607 that!165) (x!5732 thiss!672)) t!2803) tb!2463))

(declare-fun result!2503 () Bool)

(assert (=> tb!2463 (= result!2503 true)))

(assert (=> d!8195 t!2803))

(declare-fun b_and!4617 () Bool)

(assert (= b_and!4609 (and (=> t!2803 result!2503) b_and!4617)))

(declare-fun b_lambda!5355 () Bool)

(assert (=> (not b_lambda!5355) (not d!8195)))

(assert (=> d!8195 t!2781))

(declare-fun b_and!4619 () Bool)

(assert (= b_and!4611 (and (=> t!2781 result!2481) b_and!4619)))

(assert (=> d!8195 t!2783))

(declare-fun b_and!4621 () Bool)

(assert (= b_and!4613 (and (=> t!2783 result!2483) b_and!4621)))

(assert (=> d!8195 t!2785))

(declare-fun b_and!4623 () Bool)

(assert (= b_and!4615 (and (=> t!2785 result!2485) b_and!4623)))

(assert (=> d!8195 t!2787))

(declare-fun b_and!4625 () Bool)

(assert (= b_and!4617 (and (=> t!2787 result!2487) b_and!4625)))

(declare-fun b_lambda!5357 () Bool)

(assert (=> (not b_lambda!5357) (not b!10146)))

(assert (=> b!10146 t!2777))

(declare-fun b_and!4627 () Bool)

(assert (= b_and!4591 (and (=> t!2777 result!2477) b_and!4627)))

(assert (=> b!10146 t!2779))

(declare-fun b_and!4629 () Bool)

(assert (= b_and!4593 (and (=> t!2779 result!2479) b_and!4629)))

(declare-fun m!13259 () Bool)

(assert (=> d!8195 m!13259))

(assert (=> d!8195 m!13207))

(assert (=> b!10146 m!13203))

(assert (=> start!2020 d!8195))

(declare-fun d!8197 () Bool)

(declare-fun res!3478 () Bool)

(declare-fun e!5952 () Bool)

(assert (=> d!8197 (=> (not res!3478) (not e!5952))))

(assert (=> d!8197 (= res!3478 (= (dynLambda!333 (x!5732 that!165)) (dynLambda!333 (y!607 that!165))))))

(assert (=> d!8197 (= (inv!352 that!165) e!5952)))

(declare-fun b!10147 () Bool)

(assert (=> b!10147 (= e!5952 (dynLambda!334 (evidence!168 that!165)))))

(assert (= (and d!8197 res!3478) b!10147))

(declare-fun b_lambda!5359 () Bool)

(assert (=> (not b_lambda!5359) (not d!8197)))

(assert (=> d!8197 t!2789))

(declare-fun b_and!4631 () Bool)

(assert (= b_and!4619 (and (=> t!2789 result!2489) b_and!4631)))

(assert (=> d!8197 t!2791))

(declare-fun b_and!4633 () Bool)

(assert (= b_and!4621 (and (=> t!2791 result!2491) b_and!4633)))

(assert (=> d!8197 t!2793))

(declare-fun b_and!4635 () Bool)

(assert (= b_and!4623 (and (=> t!2793 result!2493) b_and!4635)))

(assert (=> d!8197 t!2795))

(declare-fun b_and!4637 () Bool)

(assert (= b_and!4625 (and (=> t!2795 result!2495) b_and!4637)))

(declare-fun b_lambda!5361 () Bool)

(assert (=> (not b_lambda!5361) (not d!8197)))

(declare-fun tb!2465 () Bool)

(declare-fun t!2805 () Bool)

(assert (=> (and b!10106 (= (x!5732 thiss!672) (y!607 that!165)) t!2805) tb!2465))

(declare-fun result!2505 () Bool)

(assert (=> tb!2465 (= result!2505 true)))

(assert (=> d!8197 t!2805))

(declare-fun b_and!4639 () Bool)

(assert (= b_and!4631 (and (=> t!2805 result!2505) b_and!4639)))

(declare-fun t!2807 () Bool)

(declare-fun tb!2467 () Bool)

(assert (=> (and b!10106 (= (y!607 thiss!672) (y!607 that!165)) t!2807) tb!2467))

(declare-fun result!2507 () Bool)

(assert (=> tb!2467 (= result!2507 true)))

(assert (=> d!8197 t!2807))

(declare-fun b_and!4641 () Bool)

(assert (= b_and!4633 (and (=> t!2807 result!2507) b_and!4641)))

(declare-fun t!2809 () Bool)

(declare-fun tb!2469 () Bool)

(assert (=> (and b!10098 (= (x!5732 that!165) (y!607 that!165)) t!2809) tb!2469))

(declare-fun result!2509 () Bool)

(assert (=> tb!2469 (= result!2509 true)))

(assert (=> d!8197 t!2809))

(declare-fun b_and!4643 () Bool)

(assert (= b_and!4635 (and (=> t!2809 result!2509) b_and!4643)))

(declare-fun t!2811 () Bool)

(declare-fun tb!2471 () Bool)

(assert (=> (and b!10098 (= (y!607 that!165) (y!607 that!165)) t!2811) tb!2471))

(declare-fun result!2511 () Bool)

(assert (=> tb!2471 (= result!2511 true)))

(assert (=> d!8197 t!2811))

(declare-fun b_and!4645 () Bool)

(assert (= b_and!4637 (and (=> t!2811 result!2511) b_and!4645)))

(declare-fun b_lambda!5363 () Bool)

(assert (=> (not b_lambda!5363) (not b!10147)))

(declare-fun t!2813 () Bool)

(declare-fun tb!2473 () Bool)

(assert (=> (and b!10106 (= (evidence!168 thiss!672) (evidence!168 that!165)) t!2813) tb!2473))

(declare-fun result!2513 () Bool)

(assert (=> tb!2473 (= result!2513 true)))

(assert (=> b!10147 t!2813))

(declare-fun b_and!4647 () Bool)

(assert (= b_and!4627 (and (=> t!2813 result!2513) b_and!4647)))

(declare-fun t!2815 () Bool)

(declare-fun tb!2475 () Bool)

(assert (=> (and b!10098 (= (evidence!168 that!165) (evidence!168 that!165)) t!2815) tb!2475))

(declare-fun result!2515 () Bool)

(assert (=> tb!2475 (= result!2515 true)))

(assert (=> b!10147 t!2815))

(declare-fun b_and!4649 () Bool)

(assert (= b_and!4629 (and (=> t!2815 result!2515) b_and!4649)))

(assert (=> d!8197 m!13209))

(declare-fun m!13261 () Bool)

(assert (=> d!8197 m!13261))

(declare-fun m!13263 () Bool)

(assert (=> b!10147 m!13263))

(assert (=> start!2020 d!8197))

(declare-fun b_lambda!5365 () Bool)

(assert (= b_lambda!5359 (or (and b!10095 (= lambda!2670 (x!5732 that!165))) (and b!10099 (= lambda!2673 (x!5732 that!165))) (and b!10095 (= lambda!2671 (x!5732 that!165))) (and b!10098 b_free!1301 (= (y!607 that!165) (x!5732 that!165))) (and b!10098 b_free!1299) (and b!10106 b_free!1295 (= (y!607 thiss!672) (x!5732 that!165))) (and b!10106 b_free!1293 (= (x!5732 thiss!672) (x!5732 that!165))) b_lambda!5365)))

(assert (=> (and b!10095 (= lambda!2670 (x!5732 that!165)) d!8197) d!8165))

(assert (=> (and b!10099 (= lambda!2673 (x!5732 that!165)) d!8197) d!8167))

(assert (=> (and b!10095 (= lambda!2671 (x!5732 that!165)) d!8197) d!8169))

(declare-fun b_lambda!5367 () Bool)

(assert (= b_lambda!5355 (or (and b!10095 (= lambda!2671 (y!607 thiss!672))) (and b!10099 (= lambda!2673 (y!607 thiss!672))) (and b!10098 b_free!1299 (= (x!5732 that!165) (y!607 thiss!672))) (and b!10106 b_free!1293 (= (x!5732 thiss!672) (y!607 thiss!672))) (and b!10106 b_free!1295) (and b!10095 (= lambda!2670 (y!607 thiss!672))) (and b!10098 b_free!1301 (= (y!607 that!165) (y!607 thiss!672))) b_lambda!5367)))

(assert (=> (and b!10095 (= lambda!2671 (y!607 thiss!672)) d!8195) d!8159))

(assert (=> (and b!10095 (= lambda!2670 (y!607 thiss!672)) d!8195) d!8161))

(assert (=> (and b!10099 (= lambda!2673 (y!607 thiss!672)) d!8195) d!8163))

(declare-fun b_lambda!5369 () Bool)

(assert (= b_lambda!5361 (or (and b!10095 (= lambda!2670 (y!607 that!165))) (and b!10106 b_free!1293 (= (x!5732 thiss!672) (y!607 that!165))) (and b!10106 b_free!1295 (= (y!607 thiss!672) (y!607 that!165))) (and b!10098 b_free!1299 (= (x!5732 that!165) (y!607 that!165))) (and b!10095 (= lambda!2671 (y!607 that!165))) (and b!10098 b_free!1301) (and b!10099 (= lambda!2673 (y!607 that!165))) b_lambda!5369)))

(declare-fun bs!2712 () Bool)

(declare-fun d!8199 () Bool)

(assert (= bs!2712 (and d!8199 b!10095)))

(assert (=> bs!2712 (= (dynLambda!333 lambda!2671) (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))))))

(assert (=> bs!2712 m!13219))

(assert (=> bs!2712 m!13219))

(assert (=> bs!2712 m!13225))

(assert (=> bs!2712 m!13225))

(assert (=> bs!2712 m!13227))

(assert (=> (and b!10095 (= lambda!2671 (y!607 that!165)) d!8197) d!8199))

(declare-fun bs!2713 () Bool)

(declare-fun d!8201 () Bool)

(assert (= bs!2713 (and d!8201 b!10095)))

(assert (=> bs!2713 (= (dynLambda!333 lambda!2670) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10095 (= lambda!2670 (y!607 that!165)) d!8197) d!8201))

(declare-fun bs!2714 () Bool)

(declare-fun d!8203 () Bool)

(assert (= bs!2714 (and d!8203 b!10099)))

(assert (=> bs!2714 (= (dynLambda!333 lambda!2673) (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))))))

(assert (=> bs!2714 m!13219))

(assert (=> bs!2714 m!13219))

(assert (=> bs!2714 m!13229))

(assert (=> bs!2714 m!13229))

(assert (=> bs!2714 m!13231))

(assert (=> (and b!10099 (= lambda!2673 (y!607 that!165)) d!8197) d!8203))

(declare-fun b_lambda!5371 () Bool)

(assert (= b_lambda!5349 (or b!10100 b_lambda!5371)))

(declare-fun bs!2715 () Bool)

(declare-fun d!8205 () Bool)

(assert (= bs!2715 (and d!8205 b!10100)))

(assert (=> bs!2715 (= (dynLambda!336 lambda!2669 (head!455 xs!280) (foldRight!50 (tail!467 xs!280) 0 lambda!2669)) (updateCounter!0 (head!455 xs!280) (foldRight!50 (tail!467 xs!280) 0 lambda!2669)))))

(assert (=> bs!2715 m!13253))

(declare-fun m!13265 () Bool)

(assert (=> bs!2715 m!13265))

(assert (=> b!10141 d!8205))

(declare-fun b_lambda!5373 () Bool)

(assert (= b_lambda!5351 (or start!2020 b_lambda!5373)))

(declare-fun bs!2716 () Bool)

(declare-fun d!8207 () Bool)

(assert (= bs!2716 (and d!8207 start!2020)))

(assert (=> bs!2716 (= (dynLambda!335 lambda!2668 (head!455 xs!280) (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668)) (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280)))))

(assert (=> bs!2716 m!13219))

(assert (=> bs!2716 m!13225))

(assert (=> b!10143 d!8207))

(declare-fun b_lambda!5375 () Bool)

(assert (= b_lambda!5363 (or (and b!10095 (= lambda!2672 (evidence!168 that!165))) (and b!10099 (= lambda!2674 (evidence!168 that!165))) (and b!10106 b_free!1297 (= (evidence!168 thiss!672) (evidence!168 that!165))) (and b!10098 b_free!1303) b_lambda!5375)))

(declare-fun bs!2717 () Bool)

(declare-fun d!8209 () Bool)

(assert (= bs!2717 (and d!8209 b!10095)))

(assert (=> bs!2717 (= (dynLambda!334 lambda!2672) (toCounter_updateCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280)))))

(assert (=> bs!2717 m!13219))

(assert (=> bs!2717 m!13219))

(assert (=> bs!2717 m!13223))

(assert (=> (and b!10095 (= lambda!2672 (evidence!168 that!165)) b!10147) d!8209))

(declare-fun bs!2718 () Bool)

(declare-fun d!8211 () Bool)

(assert (= bs!2718 (and d!8211 b!10099)))

(assert (=> bs!2718 (= (dynLambda!334 lambda!2674) true)))

(assert (=> (and b!10099 (= lambda!2674 (evidence!168 that!165)) b!10147) d!8211))

(declare-fun b_lambda!5377 () Bool)

(assert (= b_lambda!5353 (or (and b!10099 (= lambda!2673 (x!5732 thiss!672))) (and b!10095 (= lambda!2671 (x!5732 thiss!672))) (and b!10106 b_free!1295 (= (y!607 thiss!672) (x!5732 thiss!672))) (and b!10098 b_free!1299 (= (x!5732 that!165) (x!5732 thiss!672))) (and b!10095 (= lambda!2670 (x!5732 thiss!672))) (and b!10098 b_free!1301 (= (y!607 that!165) (x!5732 thiss!672))) (and b!10106 b_free!1293) b_lambda!5377)))

(declare-fun bs!2719 () Bool)

(declare-fun d!8213 () Bool)

(assert (= bs!2719 (and d!8213 b!10095)))

(assert (=> bs!2719 (= (dynLambda!333 lambda!2670) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10095 (= lambda!2670 (x!5732 thiss!672)) d!8195) d!8213))

(declare-fun bs!2720 () Bool)

(declare-fun d!8215 () Bool)

(assert (= bs!2720 (and d!8215 b!10095)))

(assert (=> bs!2720 (= (dynLambda!333 lambda!2671) (balanceToCounter!0 (+$colon!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668) (head!455 xs!280))))))

(assert (=> bs!2720 m!13219))

(assert (=> bs!2720 m!13219))

(assert (=> bs!2720 m!13225))

(assert (=> bs!2720 m!13225))

(assert (=> bs!2720 m!13227))

(assert (=> (and b!10095 (= lambda!2671 (x!5732 thiss!672)) d!8195) d!8215))

(declare-fun bs!2721 () Bool)

(declare-fun d!8217 () Bool)

(assert (= bs!2721 (and d!8217 b!10099)))

(assert (=> bs!2721 (= (dynLambda!333 lambda!2673) (updateCounter!0 (head!455 xs!280) (balanceToCounter!0 (foldRight!49 (tail!467 xs!280) (Balance!248 0 0) lambda!2668))))))

(assert (=> bs!2721 m!13219))

(assert (=> bs!2721 m!13219))

(assert (=> bs!2721 m!13229))

(assert (=> bs!2721 m!13229))

(assert (=> bs!2721 m!13231))

(assert (=> (and b!10099 (= lambda!2673 (x!5732 thiss!672)) d!8195) d!8217))

(declare-fun b_lambda!5379 () Bool)

(assert (= b_lambda!5357 (or (and b!10095 (= lambda!2672 (evidence!168 thiss!672))) (and b!10099 (= lambda!2674 (evidence!168 thiss!672))) (and b!10106 b_free!1297) (and b!10098 b_free!1303 (= (evidence!168 that!165) (evidence!168 thiss!672))) b_lambda!5379)))

(assert (=> (and b!10095 (= lambda!2672 (evidence!168 thiss!672)) b!10146) d!8155))

(assert (=> (and b!10099 (= lambda!2674 (evidence!168 thiss!672)) b!10146) d!8157))

(declare-fun b_lambda!5381 () Bool)

(assert (= b_lambda!5347 (or start!2020 b_lambda!5381)))

(declare-fun bs!2722 () Bool)

(declare-fun d!8219 () Bool)

(assert (= bs!2722 (and d!8219 start!2020)))

(assert (=> bs!2722 (= (dynLambda!335 lambda!2668 (head!455 (tail!467 xs!280)) (foldRight!49 (tail!467 (tail!467 xs!280)) (Balance!248 0 0) lambda!2668)) (+$colon!0 (foldRight!49 (tail!467 (tail!467 xs!280)) (Balance!248 0 0) lambda!2668) (head!455 (tail!467 xs!280))))))

(assert (=> bs!2722 m!13249))

(declare-fun m!13267 () Bool)

(assert (=> bs!2722 m!13267))

(assert (=> b!10134 d!8219))

(push 1)

(assert (not b_next!3207))

(assert (not bs!2712))

(assert (not bs!2720))

(assert (not b_lambda!5365))

(assert (not b_next!3205))

(assert (not bs!2715))

(assert (not b_lambda!5371))

(assert (not d!8181))

(assert (not b!10123))

(assert (not b_next!3201))

(assert (not b_next!3199))

(assert b_and!4639)

(assert b_and!4643)

(assert (not bs!2721))

(assert (not bs!2717))

(assert (not b_lambda!5379))

(assert (not b_lambda!5341))

(assert (not b_lambda!5373))

(assert (not b!10127))

(assert (not bs!2722))

(assert b_and!4647)

(assert (not b!10143))

(assert (not bs!2716))

(assert b_and!4645)

(assert (not b_next!3203))

(assert (not b!10141))

(assert (not b!10125))

(assert (not b_next!3197))

(assert (not b_lambda!5375))

(assert (not d!8171))

(assert (not b_lambda!5343))

(assert (not bs!2714))

(assert (not b_lambda!5345))

(assert (not b_lambda!5377))

(assert (not b!10134))

(assert b_and!4649)

(assert (not b!10124))

(assert (not b_lambda!5381))

(assert (not b_lambda!5369))

(assert b_and!4641)

(assert (not b_lambda!5367))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3207))

(assert (not b_next!3205))

(assert (not b_next!3201))

(assert (not b_next!3199))

(assert b_and!4639)

(assert b_and!4643)

(assert b_and!4647)

(assert b_and!4645)

(assert (not b_next!3203))

(assert (not b_next!3197))

(assert b_and!4649)

(assert b_and!4641)

(check-sat)

(pop 1)

