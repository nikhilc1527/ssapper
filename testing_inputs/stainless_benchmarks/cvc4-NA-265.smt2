; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2040 () Bool)

(assert start!2040)

(declare-fun b_free!1305 () Bool)

(declare-fun b_next!3209 () Bool)

(assert (=> start!2040 (= b_free!1305 (not b_next!3209))))

(declare-fun tp!2091 () Bool)

(declare-fun b_and!4651 () Bool)

(assert (=> start!2040 (= tp!2091 b_and!4651)))

(declare-fun b!10173 () Bool)

(declare-fun b_free!1307 () Bool)

(declare-fun b_next!3211 () Bool)

(assert (=> b!10173 (= b_free!1307 (not b_next!3211))))

(declare-fun tp!2092 () Bool)

(declare-fun b_and!4653 () Bool)

(assert (=> b!10173 (= tp!2092 b_and!4653)))

(declare-fun b_free!1309 () Bool)

(declare-fun b_next!3213 () Bool)

(assert (=> b!10173 (= b_free!1309 (not b_next!3213))))

(declare-fun tp!2095 () Bool)

(declare-fun b_and!4655 () Bool)

(assert (=> b!10173 (= tp!2095 b_and!4655)))

(declare-fun b_free!1311 () Bool)

(declare-fun b_next!3215 () Bool)

(assert (=> b!10173 (= b_free!1311 (not b_next!3215))))

(declare-fun tp!2094 () Bool)

(declare-fun b_and!4657 () Bool)

(assert (=> b!10173 (= tp!2094 b_and!4657)))

(declare-fun b!10181 () Bool)

(declare-fun b_free!1313 () Bool)

(declare-fun b_next!3217 () Bool)

(assert (=> b!10181 (= b_free!1313 (not b_next!3217))))

(declare-fun tp!2093 () Bool)

(declare-fun b_and!4659 () Bool)

(assert (=> b!10181 (= tp!2093 b_and!4659)))

(declare-fun b_free!1315 () Bool)

(declare-fun b_next!3219 () Bool)

(assert (=> b!10181 (= b_free!1315 (not b_next!3219))))

(declare-fun tp!2090 () Bool)

(declare-fun b_and!4661 () Bool)

(assert (=> b!10181 (= tp!2090 b_and!4661)))

(declare-fun b!10172 () Bool)

(declare-fun m!13269 () Bool)

(assert (=> b!10172 m!13269))

(assert (=> b!10172 true))

(declare-fun lambda!2709 () Int)

(declare-datatypes () ((EqEvidence!204 (EqEvidence!205 (x!5781 Int) (y!608 Int) (evidence!169 Int)))))

(declare-fun thiss!671 () EqEvidence!204)

(declare-fun dynLambda!337 (Int) Int)

(assert (=> (and b!10173 b!10172 (= (dynLambda!337 lambda!2709) (dynLambda!337 (x!5781 thiss!671)))) (= lambda!2709 (x!5781 thiss!671))))

(assert (=> (and b!10173 b!10172 (= (dynLambda!337 lambda!2709) (dynLambda!337 (y!608 thiss!671)))) (= lambda!2709 (y!608 thiss!671))))

(declare-datatypes () ((EqProof!94 (EqProof!95 (x!5782 Int) (y!609 Int)))))

(declare-fun thiss!700 () EqProof!94)

(assert (=> (and b!10181 b!10172 (= (dynLambda!337 lambda!2709) (dynLambda!337 (x!5782 thiss!700)))) (= lambda!2709 (x!5782 thiss!700))))

(assert (=> (and b!10181 b!10172 (= (dynLambda!337 lambda!2709) (dynLambda!337 (y!609 thiss!700)))) (= lambda!2709 (y!609 thiss!700))))

(declare-fun b_next!3221 () Bool)

(assert (=> b!10173 (= b_next!3211 (or (and b!10172 (= lambda!2709 (x!5781 thiss!671))) b_next!3221))))

(declare-fun b_next!3223 () Bool)

(assert (=> b!10173 (= b_next!3213 (or (and b!10172 (= lambda!2709 (y!608 thiss!671))) b_next!3223))))

(declare-fun b_next!3225 () Bool)

(assert (=> b!10181 (= b_next!3217 (or (and b!10172 (= lambda!2709 (x!5782 thiss!700))) b_next!3225))))

(declare-fun b_next!3227 () Bool)

(assert (=> b!10181 (= b_next!3219 (or (and b!10172 (= lambda!2709 (y!609 thiss!700))) b_next!3227))))

(declare-fun lambda!2710 () Int)

(assert (=> b!10172 (not (= lambda!2710 lambda!2709))))

(assert (=> b!10172 true))

(declare-fun b_next!3229 () Bool)

(assert (=> b!10173 (= b_next!3221 (or (and b!10172 (= lambda!2710 (x!5781 thiss!671))) b_next!3229))))

(declare-fun b_next!3231 () Bool)

(assert (=> b!10173 (= b_next!3223 (or (and b!10172 (= lambda!2710 (y!608 thiss!671))) b_next!3231))))

(declare-fun b_next!3233 () Bool)

(assert (=> b!10181 (= b_next!3225 (or (and b!10172 (= lambda!2710 (x!5782 thiss!700))) b_next!3233))))

(declare-fun b_next!3235 () Bool)

(assert (=> b!10181 (= b_next!3227 (or (and b!10172 (= lambda!2710 (y!609 thiss!700))) b_next!3235))))

(declare-fun lambda!2711 () Int)

(declare-fun proof!203 () Int)

(declare-fun dynLambda!338 (Int) Bool)

(assert (=> (and start!2040 b!10172 (= (dynLambda!338 lambda!2711) (dynLambda!338 proof!203))) (= lambda!2711 proof!203)))

(assert (=> (and b!10173 b!10172 (= (dynLambda!338 lambda!2711) (dynLambda!338 (evidence!169 thiss!671)))) (= lambda!2711 (evidence!169 thiss!671))))

(declare-fun b_next!3237 () Bool)

(assert (=> start!2040 (= b_next!3209 (or (and b!10172 (= lambda!2711 proof!203)) b_next!3237))))

(declare-fun b_next!3239 () Bool)

(assert (=> b!10173 (= b_next!3215 (or (and b!10172 (= lambda!2711 (evidence!169 thiss!671))) b_next!3239))))

(declare-fun bs!2724 () Bool)

(declare-fun b!10175 () Bool)

(assert (= bs!2724 (and b!10175 b!10172)))

(declare-fun lambda!2712 () Int)

(assert (=> bs!2724 (not (= lambda!2712 lambda!2709))))

(assert (=> bs!2724 (not (= lambda!2712 lambda!2710))))

(assert (=> b!10175 true))

(declare-fun b_next!3241 () Bool)

(assert (=> b!10173 (= b_next!3229 (or (and b!10175 (= lambda!2712 (x!5781 thiss!671))) b_next!3241))))

(declare-fun b_next!3243 () Bool)

(assert (=> b!10173 (= b_next!3231 (or (and b!10175 (= lambda!2712 (y!608 thiss!671))) b_next!3243))))

(declare-fun b_next!3245 () Bool)

(assert (=> b!10181 (= b_next!3233 (or (and b!10175 (= lambda!2712 (x!5782 thiss!700))) b_next!3245))))

(declare-fun b_next!3247 () Bool)

(assert (=> b!10181 (= b_next!3235 (or (and b!10175 (= lambda!2712 (y!609 thiss!700))) b_next!3247))))

(declare-fun b!10182 () Bool)

(declare-fun m!13271 () Bool)

(assert (=> b!10182 m!13271))

(declare-fun bs!2725 () Bool)

(assert (= bs!2725 (and b!10182 b!10172)))

(declare-fun lambda!2713 () Int)

(declare-fun trivial!1 () Bool)

(assert (=> bs!2725 (= (= trivial!1 true) (= lambda!2713 lambda!2711))))

(assert (=> (and start!2040 b!10182 (= (dynLambda!338 lambda!2713) (dynLambda!338 proof!203))) (= lambda!2713 proof!203)))

(assert (=> (and b!10173 b!10182 (= (dynLambda!338 lambda!2713) (dynLambda!338 (evidence!169 thiss!671)))) (= lambda!2713 (evidence!169 thiss!671))))

(declare-fun b_next!3249 () Bool)

(assert (=> start!2040 (= b_next!3237 (or (and b!10182 (= lambda!2713 proof!203)) b_next!3249))))

(declare-fun b_next!3251 () Bool)

(assert (=> b!10173 (= b_next!3239 (or (and b!10182 (= lambda!2713 (evidence!169 thiss!671))) b_next!3251))))

(declare-fun res!3507 () Bool)

(declare-fun e!5963 () Bool)

(assert (=> b!10172 (=> (not res!3507) (not e!5963))))

(assert (=> b!10172 (= res!3507 (= thiss!671 (EqEvidence!205 lambda!2709 lambda!2710 lambda!2711)))))

(declare-fun res!3499 () Bool)

(assert (=> start!2040 (=> (not res!3499) (not e!5963))))

(declare-datatypes () ((Balance!249 (Balance!250 (extraOpen!165 Int) (extraClose!165 Int)))))

(declare-fun balance!3 () Balance!249)

(declare-datatypes () ((Parenthesis!64 (CloseParenthesis!63) (OpenParenthesis!63))))

(declare-datatypes () ((List!241 (Nil!239) (Cons!238 (head!456 Parenthesis!64) (tail!468 List!241)))))

(declare-fun xs!280 () List!241)

(declare-fun lambda!2707 () Int)

(declare-fun foldRight!51 (List!241 Balance!249 Int) Balance!249)

(assert (=> start!2040 (= res!3499 (= balance!3 (foldRight!51 xs!280 (Balance!250 0 0) lambda!2707)))))

(assert (=> start!2040 e!5963))

(assert (=> start!2040 true))

(assert (=> start!2040 tp!2091))

(declare-fun e!5961 () Bool)

(declare-fun inv!353 (EqEvidence!204) Bool)

(assert (=> start!2040 (and (inv!353 thiss!671) e!5961)))

(declare-fun e!5964 () Bool)

(declare-fun inv!354 (EqProof!94) Bool)

(assert (=> start!2040 (and (inv!354 thiss!700) e!5964)))

(assert (=> b!10173 (= e!5961 (and tp!2092 tp!2095 tp!2094))))

(declare-fun b!10174 () Bool)

(declare-fun res!3504 () Bool)

(assert (=> b!10174 (=> (not res!3504) (not e!5963))))

(declare-datatypes () ((ProofOps!196 (ProofOps!197 (prop!227 Bool)))))

(declare-fun thiss!651 () ProofOps!196)

(declare-fun e!5962 () Bool)

(assert (=> b!10174 (= res!3504 (= thiss!651 (ProofOps!197 e!5962)))))

(declare-fun res!3502 () Bool)

(assert (=> b!10174 (=> (not res!3502) (not e!5962))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!249) Int)

(assert (=> b!10174 (= res!3502 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun res!3503 () Bool)

(assert (=> b!10175 (=> (not res!3503) (not e!5963))))

(assert (=> b!10175 (= res!3503 (= thiss!700 (EqProof!95 lambda!2712 lambda!2712)))))

(declare-fun b!10176 () Bool)

(declare-fun res!3501 () Bool)

(assert (=> b!10176 (=> (not res!3501) (not e!5963))))

(declare-fun original_sequential_helper!0 (List!241) Bool)

(assert (=> b!10176 (= res!3501 (original_sequential_helper!0 (tail!468 xs!280)))))

(declare-fun b!10177 () Bool)

(declare-fun res!3500 () Bool)

(assert (=> b!10177 (=> (not res!3500) (not e!5963))))

(declare-fun nonNegative!0 (Balance!249) Bool)

(assert (=> b!10177 (= res!3500 (nonNegative!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)))))

(declare-fun b!10178 () Bool)

(declare-fun res!3506 () Bool)

(assert (=> b!10178 (=> (not res!3506) (not e!5963))))

(assert (=> b!10178 (= res!3506 (not (is-Nil!239 xs!280)))))

(declare-fun b!10179 () Bool)

(declare-fun res!3508 () Bool)

(assert (=> b!10179 (=> (not res!3508) (not e!5963))))

(declare-fun lambda!2708 () Int)

(declare-fun foldRight!52 (List!241 Int Int) Int)

(assert (=> b!10179 (= res!3508 (= counter!4 (foldRight!52 xs!280 0 lambda!2708)))))

(declare-fun b!10180 () Bool)

(assert (=> b!10180 (= e!5963 (not (dynLambda!338 proof!203)))))

(assert (=> b!10181 (= e!5964 (and tp!2093 tp!2090))))

(declare-fun res!3505 () Bool)

(assert (=> b!10182 (=> (not res!3505) (not e!5963))))

(assert (=> b!10182 (= res!3505 (= proof!203 lambda!2713))))

(declare-fun b!10183 () Bool)

(assert (=> b!10183 (= e!5962 (nonNegative!0 balance!3))))

(assert (= (and start!2040 res!3499) b!10179))

(assert (= (and b!10179 res!3508) b!10174))

(assert (= (and b!10174 res!3502) b!10183))

(assert (= (and b!10174 res!3504) b!10178))

(assert (= (and b!10178 res!3506) b!10176))

(assert (= (and b!10176 res!3501) b!10177))

(assert (= (and b!10177 res!3500) b!10172))

(assert (= (and b!10172 res!3507) b!10175))

(assert (= (and b!10175 res!3503) b!10182))

(assert (= (and b!10182 res!3505) b!10180))

(assert (= start!2040 b!10173))

(assert (= start!2040 b!10181))

(declare-fun b_lambda!5383 () Bool)

(assert (=> (not b_lambda!5383) (not b!10180)))

(declare-fun t!2817 () Bool)

(declare-fun tb!2477 () Bool)

(assert (=> (and start!2040 (= proof!203 proof!203) t!2817) tb!2477))

(declare-fun result!2517 () Bool)

(assert (=> tb!2477 (= result!2517 true)))

(assert (=> b!10180 t!2817))

(declare-fun b_and!4663 () Bool)

(assert (= b_and!4651 (and (=> t!2817 result!2517) b_and!4663)))

(declare-fun tb!2479 () Bool)

(declare-fun t!2819 () Bool)

(assert (=> (and b!10173 (= (evidence!169 thiss!671) proof!203) t!2819) tb!2479))

(declare-fun result!2519 () Bool)

(assert (=> tb!2479 (= result!2519 true)))

(assert (=> b!10180 t!2819))

(declare-fun b_and!4665 () Bool)

(assert (= b_and!4657 (and (=> t!2819 result!2519) b_and!4665)))

(assert (=> b!10174 m!13269))

(declare-fun m!13273 () Bool)

(assert (=> b!10183 m!13273))

(declare-fun m!13275 () Bool)

(assert (=> b!10176 m!13275))

(declare-fun m!13277 () Bool)

(assert (=> start!2040 m!13277))

(declare-fun m!13279 () Bool)

(assert (=> start!2040 m!13279))

(declare-fun m!13281 () Bool)

(assert (=> start!2040 m!13281))

(declare-fun m!13283 () Bool)

(assert (=> b!10180 m!13283))

(declare-fun m!13285 () Bool)

(assert (=> b!10179 m!13285))

(declare-fun m!13287 () Bool)

(assert (=> b!10177 m!13287))

(assert (=> b!10177 m!13287))

(declare-fun m!13289 () Bool)

(assert (=> b!10177 m!13289))

(push 1)

(assert (not start!2040))

(assert (not b!10179))

(assert (not b_lambda!5383))

(assert (not b_next!3243))

(assert b_and!4655)

(assert (not b_next!3247))

(assert b_and!4663)

(assert (not b!10172))

(assert b_and!4659)

(assert (not b!10182))

(assert (not b!10174))

(assert (not b!10177))

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert b_and!4653)

(assert (not b_next!3241))

(assert b_and!4665)

(assert (not b!10183))

(assert b_and!4661)

(assert (not b_next!3251))

(assert (not b!10176))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3243))

(assert b_and!4655)

(assert (not b_next!3247))

(assert b_and!4663)

(assert b_and!4659)

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert b_and!4653)

(assert (not b_next!3241))

(assert b_and!4665)

(assert b_and!4661)

(assert (not b_next!3251))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5385 () Bool)

(assert (= b_lambda!5383 (or (and b!10172 (= lambda!2711 proof!203)) (and b!10182 (= lambda!2713 proof!203)) (and start!2040 b_free!1305) (and b!10173 b_free!1311 (= (evidence!169 thiss!671) proof!203)) b_lambda!5385)))

(declare-fun bs!2726 () Bool)

(declare-fun d!8221 () Bool)

(assert (= bs!2726 (and d!8221 b!10172)))

(assert (=> bs!2726 (= (dynLambda!338 lambda!2711) true)))

(assert (=> (and b!10172 (= lambda!2711 proof!203) b!10180) d!8221))

(declare-fun bs!2727 () Bool)

(declare-fun d!8223 () Bool)

(assert (= bs!2727 (and d!8223 b!10182)))

(assert (=> bs!2727 (= (dynLambda!338 lambda!2713) trivial!1)))

(assert (=> (and b!10182 (= lambda!2713 proof!203) b!10180) d!8223))

(push 1)

(assert (not start!2040))

(assert (not b!10179))

(assert (not b_next!3243))

(assert b_and!4655)

(assert (not b_next!3247))

(assert b_and!4663)

(assert (not b!10172))

(assert b_and!4659)

(assert (not b!10182))

(assert (not b!10174))

(assert (not b_lambda!5385))

(assert (not b!10177))

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert b_and!4653)

(assert (not b_next!3241))

(assert b_and!4665)

(assert (not b!10183))

(assert b_and!4661)

(assert (not b_next!3251))

(assert (not b!10176))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3243))

(assert b_and!4655)

(assert (not b_next!3247))

(assert b_and!4663)

(assert b_and!4659)

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert b_and!4653)

(assert (not b_next!3241))

(assert b_and!4665)

(assert b_and!4661)

(assert (not b_next!3251))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8225 () Bool)

(declare-fun c!3193 () Bool)

(assert (=> d!8225 (= c!3193 (is-Nil!239 xs!280))))

(declare-fun e!5967 () Int)

(assert (=> d!8225 (= (foldRight!52 xs!280 0 lambda!2708) e!5967)))

(declare-fun b!10192 () Bool)

(assert (=> b!10192 (= e!5967 0)))

(declare-fun b!10193 () Bool)

(declare-fun dynLambda!339 (Int Parenthesis!64 Int) Int)

(assert (=> b!10193 (= e!5967 (dynLambda!339 lambda!2708 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (= (and d!8225 c!3193) b!10192))

(assert (= (and d!8225 (not c!3193)) b!10193))

(declare-fun b_lambda!5387 () Bool)

(assert (=> (not b_lambda!5387) (not b!10193)))

(declare-fun m!13291 () Bool)

(assert (=> b!10193 m!13291))

(assert (=> b!10193 m!13291))

(declare-fun m!13293 () Bool)

(assert (=> b!10193 m!13293))

(assert (=> b!10179 d!8225))

(declare-fun d!8227 () Bool)

(declare-fun c!3196 () Bool)

(assert (=> d!8227 (= c!3196 (is-Nil!239 xs!280))))

(declare-fun e!5970 () Balance!249)

(assert (=> d!8227 (= (foldRight!51 xs!280 (Balance!250 0 0) lambda!2707) e!5970)))

(declare-fun b!10198 () Bool)

(assert (=> b!10198 (= e!5970 (Balance!250 0 0))))

(declare-fun b!10199 () Bool)

(declare-fun dynLambda!340 (Int Parenthesis!64 Balance!249) Balance!249)

(assert (=> b!10199 (= e!5970 (dynLambda!340 lambda!2707 (head!456 xs!280) (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)))))

(assert (= (and d!8227 c!3196) b!10198))

(assert (= (and d!8227 (not c!3196)) b!10199))

(declare-fun b_lambda!5389 () Bool)

(assert (=> (not b_lambda!5389) (not b!10199)))

(assert (=> b!10199 m!13287))

(assert (=> b!10199 m!13287))

(declare-fun m!13295 () Bool)

(assert (=> b!10199 m!13295))

(assert (=> start!2040 d!8227))

(declare-fun d!8229 () Bool)

(declare-fun res!3511 () Bool)

(declare-fun e!5973 () Bool)

(assert (=> d!8229 (=> (not res!3511) (not e!5973))))

(assert (=> d!8229 (= res!3511 (= (dynLambda!337 (x!5781 thiss!671)) (dynLambda!337 (y!608 thiss!671))))))

(assert (=> d!8229 (= (inv!353 thiss!671) e!5973)))

(declare-fun b!10202 () Bool)

(assert (=> b!10202 (= e!5973 (dynLambda!338 (evidence!169 thiss!671)))))

(assert (= (and d!8229 res!3511) b!10202))

(declare-fun b_lambda!5391 () Bool)

(assert (=> (not b_lambda!5391) (not d!8229)))

(declare-fun t!2821 () Bool)

(declare-fun tb!2481 () Bool)

(assert (=> (and b!10173 (= (x!5781 thiss!671) (x!5781 thiss!671)) t!2821) tb!2481))

(declare-fun result!2521 () Bool)

(assert (=> tb!2481 (= result!2521 true)))

(assert (=> d!8229 t!2821))

(declare-fun b_and!4667 () Bool)

(assert (= b_and!4653 (and (=> t!2821 result!2521) b_and!4667)))

(declare-fun t!2823 () Bool)

(declare-fun tb!2483 () Bool)

(assert (=> (and b!10173 (= (y!608 thiss!671) (x!5781 thiss!671)) t!2823) tb!2483))

(declare-fun result!2523 () Bool)

(assert (=> tb!2483 (= result!2523 true)))

(assert (=> d!8229 t!2823))

(declare-fun b_and!4669 () Bool)

(assert (= b_and!4655 (and (=> t!2823 result!2523) b_and!4669)))

(declare-fun tb!2485 () Bool)

(declare-fun t!2825 () Bool)

(assert (=> (and b!10181 (= (x!5782 thiss!700) (x!5781 thiss!671)) t!2825) tb!2485))

(declare-fun result!2525 () Bool)

(assert (=> tb!2485 (= result!2525 true)))

(assert (=> d!8229 t!2825))

(declare-fun b_and!4671 () Bool)

(assert (= b_and!4659 (and (=> t!2825 result!2525) b_and!4671)))

(declare-fun tb!2487 () Bool)

(declare-fun t!2827 () Bool)

(assert (=> (and b!10181 (= (y!609 thiss!700) (x!5781 thiss!671)) t!2827) tb!2487))

(declare-fun result!2527 () Bool)

(assert (=> tb!2487 (= result!2527 true)))

(assert (=> d!8229 t!2827))

(declare-fun b_and!4673 () Bool)

(assert (= b_and!4661 (and (=> t!2827 result!2527) b_and!4673)))

(declare-fun b_lambda!5393 () Bool)

(assert (=> (not b_lambda!5393) (not d!8229)))

(declare-fun t!2829 () Bool)

(declare-fun tb!2489 () Bool)

(assert (=> (and b!10173 (= (x!5781 thiss!671) (y!608 thiss!671)) t!2829) tb!2489))

(declare-fun result!2529 () Bool)

(assert (=> tb!2489 (= result!2529 true)))

(assert (=> d!8229 t!2829))

(declare-fun b_and!4675 () Bool)

(assert (= b_and!4667 (and (=> t!2829 result!2529) b_and!4675)))

(declare-fun t!2831 () Bool)

(declare-fun tb!2491 () Bool)

(assert (=> (and b!10173 (= (y!608 thiss!671) (y!608 thiss!671)) t!2831) tb!2491))

(declare-fun result!2531 () Bool)

(assert (=> tb!2491 (= result!2531 true)))

(assert (=> d!8229 t!2831))

(declare-fun b_and!4677 () Bool)

(assert (= b_and!4669 (and (=> t!2831 result!2531) b_and!4677)))

(declare-fun t!2833 () Bool)

(declare-fun tb!2493 () Bool)

(assert (=> (and b!10181 (= (x!5782 thiss!700) (y!608 thiss!671)) t!2833) tb!2493))

(declare-fun result!2533 () Bool)

(assert (=> tb!2493 (= result!2533 true)))

(assert (=> d!8229 t!2833))

(declare-fun b_and!4679 () Bool)

(assert (= b_and!4671 (and (=> t!2833 result!2533) b_and!4679)))

(declare-fun tb!2495 () Bool)

(declare-fun t!2835 () Bool)

(assert (=> (and b!10181 (= (y!609 thiss!700) (y!608 thiss!671)) t!2835) tb!2495))

(declare-fun result!2535 () Bool)

(assert (=> tb!2495 (= result!2535 true)))

(assert (=> d!8229 t!2835))

(declare-fun b_and!4681 () Bool)

(assert (= b_and!4673 (and (=> t!2835 result!2535) b_and!4681)))

(declare-fun b_lambda!5395 () Bool)

(assert (=> (not b_lambda!5395) (not b!10202)))

(declare-fun tb!2497 () Bool)

(declare-fun t!2837 () Bool)

(assert (=> (and start!2040 (= proof!203 (evidence!169 thiss!671)) t!2837) tb!2497))

(declare-fun result!2537 () Bool)

(assert (=> tb!2497 (= result!2537 true)))

(assert (=> b!10202 t!2837))

(declare-fun b_and!4683 () Bool)

(assert (= b_and!4663 (and (=> t!2837 result!2537) b_and!4683)))

(declare-fun t!2839 () Bool)

(declare-fun tb!2499 () Bool)

(assert (=> (and b!10173 (= (evidence!169 thiss!671) (evidence!169 thiss!671)) t!2839) tb!2499))

(declare-fun result!2539 () Bool)

(assert (=> tb!2499 (= result!2539 true)))

(assert (=> b!10202 t!2839))

(declare-fun b_and!4685 () Bool)

(assert (= b_and!4665 (and (=> t!2839 result!2539) b_and!4685)))

(declare-fun m!13297 () Bool)

(assert (=> d!8229 m!13297))

(declare-fun m!13299 () Bool)

(assert (=> d!8229 m!13299))

(declare-fun m!13301 () Bool)

(assert (=> b!10202 m!13301))

(assert (=> start!2040 d!8229))

(declare-fun d!8231 () Bool)

(assert (=> d!8231 (= (inv!354 thiss!700) (= (dynLambda!337 (x!5782 thiss!700)) (dynLambda!337 (y!609 thiss!700))))))

(declare-fun b_lambda!5397 () Bool)

(assert (=> (not b_lambda!5397) (not d!8231)))

(declare-fun tb!2501 () Bool)

(declare-fun t!2841 () Bool)

(assert (=> (and b!10173 (= (x!5781 thiss!671) (x!5782 thiss!700)) t!2841) tb!2501))

(declare-fun result!2541 () Bool)

(assert (=> tb!2501 (= result!2541 true)))

(assert (=> d!8231 t!2841))

(declare-fun b_and!4687 () Bool)

(assert (= b_and!4675 (and (=> t!2841 result!2541) b_and!4687)))

(declare-fun t!2843 () Bool)

(declare-fun tb!2503 () Bool)

(assert (=> (and b!10173 (= (y!608 thiss!671) (x!5782 thiss!700)) t!2843) tb!2503))

(declare-fun result!2543 () Bool)

(assert (=> tb!2503 (= result!2543 true)))

(assert (=> d!8231 t!2843))

(declare-fun b_and!4689 () Bool)

(assert (= b_and!4677 (and (=> t!2843 result!2543) b_and!4689)))

(declare-fun t!2845 () Bool)

(declare-fun tb!2505 () Bool)

(assert (=> (and b!10181 (= (x!5782 thiss!700) (x!5782 thiss!700)) t!2845) tb!2505))

(declare-fun result!2545 () Bool)

(assert (=> tb!2505 (= result!2545 true)))

(assert (=> d!8231 t!2845))

(declare-fun b_and!4691 () Bool)

(assert (= b_and!4679 (and (=> t!2845 result!2545) b_and!4691)))

(declare-fun t!2847 () Bool)

(declare-fun tb!2507 () Bool)

(assert (=> (and b!10181 (= (y!609 thiss!700) (x!5782 thiss!700)) t!2847) tb!2507))

(declare-fun result!2547 () Bool)

(assert (=> tb!2507 (= result!2547 true)))

(assert (=> d!8231 t!2847))

(declare-fun b_and!4693 () Bool)

(assert (= b_and!4681 (and (=> t!2847 result!2547) b_and!4693)))

(declare-fun b_lambda!5399 () Bool)

(assert (=> (not b_lambda!5399) (not d!8231)))

(declare-fun t!2849 () Bool)

(declare-fun tb!2509 () Bool)

(assert (=> (and b!10173 (= (x!5781 thiss!671) (y!609 thiss!700)) t!2849) tb!2509))

(declare-fun result!2549 () Bool)

(assert (=> tb!2509 (= result!2549 true)))

(assert (=> d!8231 t!2849))

(declare-fun b_and!4695 () Bool)

(assert (= b_and!4687 (and (=> t!2849 result!2549) b_and!4695)))

(declare-fun tb!2511 () Bool)

(declare-fun t!2851 () Bool)

(assert (=> (and b!10173 (= (y!608 thiss!671) (y!609 thiss!700)) t!2851) tb!2511))

(declare-fun result!2551 () Bool)

(assert (=> tb!2511 (= result!2551 true)))

(assert (=> d!8231 t!2851))

(declare-fun b_and!4697 () Bool)

(assert (= b_and!4689 (and (=> t!2851 result!2551) b_and!4697)))

(declare-fun t!2853 () Bool)

(declare-fun tb!2513 () Bool)

(assert (=> (and b!10181 (= (x!5782 thiss!700) (y!609 thiss!700)) t!2853) tb!2513))

(declare-fun result!2553 () Bool)

(assert (=> tb!2513 (= result!2553 true)))

(assert (=> d!8231 t!2853))

(declare-fun b_and!4699 () Bool)

(assert (= b_and!4691 (and (=> t!2853 result!2553) b_and!4699)))

(declare-fun t!2855 () Bool)

(declare-fun tb!2515 () Bool)

(assert (=> (and b!10181 (= (y!609 thiss!700) (y!609 thiss!700)) t!2855) tb!2515))

(declare-fun result!2555 () Bool)

(assert (=> tb!2515 (= result!2555 true)))

(assert (=> d!8231 t!2855))

(declare-fun b_and!4701 () Bool)

(assert (= b_and!4693 (and (=> t!2855 result!2555) b_and!4701)))

(declare-fun m!13303 () Bool)

(assert (=> d!8231 m!13303))

(declare-fun m!13305 () Bool)

(assert (=> d!8231 m!13305))

(assert (=> start!2040 d!8231))

(declare-fun d!8233 () Bool)

(assert (=> d!8233 (= (nonNegative!0 balance!3) (and (>= (extraOpen!165 balance!3) 0) (>= (extraClose!165 balance!3) 0)))))

(assert (=> b!10183 d!8233))

(declare-fun d!8235 () Bool)

(assert (=> d!8235 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!165 balance!3) 0) (- 1) (ite (and (= (extraOpen!165 balance!3) 0) (= (extraClose!165 balance!3) 0)) 0 (ite (>= (extraClose!165 balance!3) 0) (extraClose!165 balance!3) (- 1)))))))

(assert (=> b!10172 d!8235))

(declare-fun bs!2728 () Bool)

(declare-fun d!8237 () Bool)

(assert (= bs!2728 (and d!8237 start!2040)))

(declare-fun lambda!2720 () Int)

(assert (=> bs!2728 (= lambda!2720 lambda!2707)))

(declare-fun bs!2729 () Bool)

(assert (= bs!2729 (and d!8237 b!10179)))

(declare-fun lambda!2721 () Int)

(assert (=> bs!2729 (= lambda!2721 lambda!2708)))

(declare-fun b!10214 () Bool)

(declare-fun e!5982 () Bool)

(declare-fun e!5981 () Bool)

(assert (=> b!10214 (= e!5982 e!5981)))

(declare-fun res!3520 () Bool)

(assert (=> b!10214 (=> (not res!3520) (not e!5981))))

(assert (=> b!10214 (= res!3520 (original_sequential_helper!0 (tail!468 (tail!468 xs!280))))))

(declare-fun e!5980 () Bool)

(declare-fun because!2 (ProofOps!196 Bool) Bool)

(assert (=> d!8237 (because!2 (ProofOps!197 e!5980) e!5982)))

(declare-fun c!3201 () Bool)

(assert (=> d!8237 (= c!3201 (is-Nil!239 (tail!468 xs!280)))))

(declare-fun res!3518 () Bool)

(assert (=> d!8237 (=> (not res!3518) (not e!5980))))

(declare-fun lt!1711 () Balance!249)

(declare-fun lt!1712 () Int)

(assert (=> d!8237 (= res!3518 (= (balanceToCounter!0 lt!1711) lt!1712))))

(assert (=> d!8237 (= lt!1712 (foldRight!52 (tail!468 xs!280) 0 lambda!2721))))

(assert (=> d!8237 (= lt!1711 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2720))))

(assert (=> d!8237 (= (original_sequential_helper!0 (tail!468 xs!280)) true)))

(declare-fun b!10215 () Bool)

(assert (=> b!10215 (= e!5980 (nonNegative!0 lt!1711))))

(declare-fun b!10216 () Bool)

(declare-fun res!3519 () Bool)

(assert (=> b!10216 (=> (not res!3519) (not e!5981))))

(assert (=> b!10216 (= res!3519 (nonNegative!0 (foldRight!51 (tail!468 (tail!468 xs!280)) (Balance!250 0 0) lambda!2720)))))

(declare-fun b!10217 () Bool)

(assert (=> b!10217 (= e!5982 true)))

(declare-fun b!10218 () Bool)

(assert (=> b!10218 (= e!5981 true)))

(assert (=> b!10218 (= (balanceToCounter!0 lt!1711) lt!1712)))

(assert (= (and d!8237 res!3518) b!10215))

(assert (= (and b!10214 res!3520) b!10216))

(assert (= (and b!10216 res!3519) b!10218))

(assert (= (and d!8237 c!3201) b!10217))

(assert (= (and d!8237 (not c!3201)) b!10214))

(declare-fun m!13307 () Bool)

(assert (=> b!10215 m!13307))

(declare-fun m!13309 () Bool)

(assert (=> d!8237 m!13309))

(declare-fun m!13311 () Bool)

(assert (=> d!8237 m!13311))

(declare-fun m!13313 () Bool)

(assert (=> d!8237 m!13313))

(declare-fun m!13315 () Bool)

(assert (=> d!8237 m!13315))

(declare-fun m!13317 () Bool)

(assert (=> b!10214 m!13317))

(declare-fun m!13319 () Bool)

(assert (=> b!10216 m!13319))

(assert (=> b!10216 m!13319))

(declare-fun m!13321 () Bool)

(assert (=> b!10216 m!13321))

(assert (=> b!10218 m!13311))

(assert (=> b!10176 d!8237))

(declare-fun d!8239 () Bool)

(assert (=> d!8239 (= trivial!1 true)))

(assert (=> b!10182 d!8239))

(declare-fun d!8241 () Bool)

(assert (=> d!8241 (= (nonNegative!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)) (and (>= (extraOpen!165 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)) 0) (>= (extraClose!165 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)) 0)))))

(assert (=> b!10177 d!8241))

(declare-fun d!8243 () Bool)

(declare-fun c!3202 () Bool)

(assert (=> d!8243 (= c!3202 (is-Nil!239 (tail!468 xs!280)))))

(declare-fun e!5983 () Balance!249)

(assert (=> d!8243 (= (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707) e!5983)))

(declare-fun b!10219 () Bool)

(assert (=> b!10219 (= e!5983 (Balance!250 0 0))))

(declare-fun b!10220 () Bool)

(assert (=> b!10220 (= e!5983 (dynLambda!340 lambda!2707 (head!456 (tail!468 xs!280)) (foldRight!51 (tail!468 (tail!468 xs!280)) (Balance!250 0 0) lambda!2707)))))

(assert (= (and d!8243 c!3202) b!10219))

(assert (= (and d!8243 (not c!3202)) b!10220))

(declare-fun b_lambda!5401 () Bool)

(assert (=> (not b_lambda!5401) (not b!10220)))

(declare-fun m!13323 () Bool)

(assert (=> b!10220 m!13323))

(assert (=> b!10220 m!13323))

(declare-fun m!13325 () Bool)

(assert (=> b!10220 m!13325))

(assert (=> b!10177 d!8243))

(assert (=> b!10174 d!8235))

(declare-fun b_lambda!5403 () Bool)

(assert (= b_lambda!5395 (or (and b!10172 (= lambda!2711 (evidence!169 thiss!671))) (and b!10182 (= lambda!2713 (evidence!169 thiss!671))) (and start!2040 b_free!1305 (= proof!203 (evidence!169 thiss!671))) (and b!10173 b_free!1311) b_lambda!5403)))

(declare-fun bs!2730 () Bool)

(declare-fun d!8245 () Bool)

(assert (= bs!2730 (and d!8245 b!10172)))

(assert (=> bs!2730 (= (dynLambda!338 lambda!2711) true)))

(assert (=> (and b!10172 (= lambda!2711 (evidence!169 thiss!671)) b!10202) d!8245))

(declare-fun bs!2731 () Bool)

(declare-fun d!8247 () Bool)

(assert (= bs!2731 (and d!8247 b!10182)))

(assert (=> bs!2731 (= (dynLambda!338 lambda!2713) trivial!1)))

(assert (=> (and b!10182 (= lambda!2713 (evidence!169 thiss!671)) b!10202) d!8247))

(declare-fun b_lambda!5405 () Bool)

(assert (= b_lambda!5389 (or start!2040 b_lambda!5405)))

(declare-fun bs!2732 () Bool)

(declare-fun d!8249 () Bool)

(assert (= bs!2732 (and d!8249 start!2040)))

(declare-fun +$colon!0 (Balance!249 Parenthesis!64) Balance!249)

(assert (=> bs!2732 (= (dynLambda!340 lambda!2707 (head!456 xs!280) (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707)) (+$colon!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707) (head!456 xs!280)))))

(assert (=> bs!2732 m!13287))

(declare-fun m!13327 () Bool)

(assert (=> bs!2732 m!13327))

(assert (=> b!10199 d!8249))

(declare-fun b_lambda!5407 () Bool)

(assert (= b_lambda!5401 (or start!2040 b_lambda!5407)))

(declare-fun bs!2733 () Bool)

(declare-fun d!8251 () Bool)

(assert (= bs!2733 (and d!8251 start!2040)))

(assert (=> bs!2733 (= (dynLambda!340 lambda!2707 (head!456 (tail!468 xs!280)) (foldRight!51 (tail!468 (tail!468 xs!280)) (Balance!250 0 0) lambda!2707)) (+$colon!0 (foldRight!51 (tail!468 (tail!468 xs!280)) (Balance!250 0 0) lambda!2707) (head!456 (tail!468 xs!280))))))

(assert (=> bs!2733 m!13323))

(declare-fun m!13329 () Bool)

(assert (=> bs!2733 m!13329))

(assert (=> b!10220 d!8251))

(declare-fun b_lambda!5409 () Bool)

(assert (= b_lambda!5397 (or (and b!10181 b_free!1315 (= (y!609 thiss!700) (x!5782 thiss!700))) (and b!10175 (= lambda!2712 (x!5782 thiss!700))) (and b!10173 b_free!1309 (= (y!608 thiss!671) (x!5782 thiss!700))) (and b!10173 b_free!1307 (= (x!5781 thiss!671) (x!5782 thiss!700))) (and b!10172 (= lambda!2709 (x!5782 thiss!700))) (and b!10172 (= lambda!2710 (x!5782 thiss!700))) (and b!10181 b_free!1313) b_lambda!5409)))

(declare-fun bs!2734 () Bool)

(declare-fun d!8253 () Bool)

(assert (= bs!2734 (and d!8253 b!10175)))

(declare-fun updateCounter!0 (Parenthesis!64 Int) Int)

(assert (=> bs!2734 (= (dynLambda!337 lambda!2712) (updateCounter!0 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (=> bs!2734 m!13291))

(assert (=> bs!2734 m!13291))

(declare-fun m!13331 () Bool)

(assert (=> bs!2734 m!13331))

(assert (=> (and b!10175 (= lambda!2712 (x!5782 thiss!700)) d!8231) d!8253))

(declare-fun bs!2735 () Bool)

(declare-fun d!8255 () Bool)

(assert (= bs!2735 (and d!8255 b!10172)))

(assert (=> bs!2735 (= (dynLambda!337 lambda!2709) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10172 (= lambda!2709 (x!5782 thiss!700)) d!8231) d!8255))

(declare-fun bs!2736 () Bool)

(declare-fun d!8257 () Bool)

(assert (= bs!2736 (and d!8257 b!10172)))

(assert (=> bs!2736 (= (dynLambda!337 lambda!2710) (updateCounter!0 (head!456 xs!280) (balanceToCounter!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707))))))

(assert (=> bs!2736 m!13287))

(assert (=> bs!2736 m!13287))

(declare-fun m!13333 () Bool)

(assert (=> bs!2736 m!13333))

(assert (=> bs!2736 m!13333))

(declare-fun m!13335 () Bool)

(assert (=> bs!2736 m!13335))

(assert (=> (and b!10172 (= lambda!2710 (x!5782 thiss!700)) d!8231) d!8257))

(declare-fun b_lambda!5411 () Bool)

(assert (= b_lambda!5391 (or (and b!10172 (= lambda!2709 (x!5781 thiss!671))) (and b!10181 b_free!1315 (= (y!609 thiss!700) (x!5781 thiss!671))) (and b!10173 b_free!1309 (= (y!608 thiss!671) (x!5781 thiss!671))) (and b!10181 b_free!1313 (= (x!5782 thiss!700) (x!5781 thiss!671))) (and b!10172 (= lambda!2710 (x!5781 thiss!671))) (and b!10173 b_free!1307) (and b!10175 (= lambda!2712 (x!5781 thiss!671))) b_lambda!5411)))

(declare-fun bs!2737 () Bool)

(declare-fun d!8259 () Bool)

(assert (= bs!2737 (and d!8259 b!10172)))

(assert (=> bs!2737 (= (dynLambda!337 lambda!2709) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10172 (= lambda!2709 (x!5781 thiss!671)) d!8229) d!8259))

(declare-fun bs!2738 () Bool)

(declare-fun d!8261 () Bool)

(assert (= bs!2738 (and d!8261 b!10172)))

(assert (=> bs!2738 (= (dynLambda!337 lambda!2710) (updateCounter!0 (head!456 xs!280) (balanceToCounter!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707))))))

(assert (=> bs!2738 m!13287))

(assert (=> bs!2738 m!13287))

(assert (=> bs!2738 m!13333))

(assert (=> bs!2738 m!13333))

(assert (=> bs!2738 m!13335))

(assert (=> (and b!10172 (= lambda!2710 (x!5781 thiss!671)) d!8229) d!8261))

(declare-fun bs!2739 () Bool)

(declare-fun d!8263 () Bool)

(assert (= bs!2739 (and d!8263 b!10175)))

(assert (=> bs!2739 (= (dynLambda!337 lambda!2712) (updateCounter!0 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (=> bs!2739 m!13291))

(assert (=> bs!2739 m!13291))

(assert (=> bs!2739 m!13331))

(assert (=> (and b!10175 (= lambda!2712 (x!5781 thiss!671)) d!8229) d!8263))

(declare-fun b_lambda!5413 () Bool)

(assert (= b_lambda!5393 (or (and b!10181 b_free!1313 (= (x!5782 thiss!700) (y!608 thiss!671))) (and b!10173 b_free!1309) (and b!10173 b_free!1307 (= (x!5781 thiss!671) (y!608 thiss!671))) (and b!10175 (= lambda!2712 (y!608 thiss!671))) (and b!10172 (= lambda!2709 (y!608 thiss!671))) (and b!10172 (= lambda!2710 (y!608 thiss!671))) (and b!10181 b_free!1315 (= (y!609 thiss!700) (y!608 thiss!671))) b_lambda!5413)))

(declare-fun bs!2740 () Bool)

(declare-fun d!8265 () Bool)

(assert (= bs!2740 (and d!8265 b!10172)))

(assert (=> bs!2740 (= (dynLambda!337 lambda!2710) (updateCounter!0 (head!456 xs!280) (balanceToCounter!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707))))))

(assert (=> bs!2740 m!13287))

(assert (=> bs!2740 m!13287))

(assert (=> bs!2740 m!13333))

(assert (=> bs!2740 m!13333))

(assert (=> bs!2740 m!13335))

(assert (=> (and b!10172 (= lambda!2710 (y!608 thiss!671)) d!8229) d!8265))

(declare-fun bs!2741 () Bool)

(declare-fun d!8267 () Bool)

(assert (= bs!2741 (and d!8267 b!10175)))

(assert (=> bs!2741 (= (dynLambda!337 lambda!2712) (updateCounter!0 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (=> bs!2741 m!13291))

(assert (=> bs!2741 m!13291))

(assert (=> bs!2741 m!13331))

(assert (=> (and b!10175 (= lambda!2712 (y!608 thiss!671)) d!8229) d!8267))

(declare-fun bs!2742 () Bool)

(declare-fun d!8269 () Bool)

(assert (= bs!2742 (and d!8269 b!10172)))

(assert (=> bs!2742 (= (dynLambda!337 lambda!2709) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10172 (= lambda!2709 (y!608 thiss!671)) d!8229) d!8269))

(declare-fun b_lambda!5415 () Bool)

(assert (= b_lambda!5399 (or (and b!10172 (= lambda!2710 (y!609 thiss!700))) (and b!10175 (= lambda!2712 (y!609 thiss!700))) (and b!10181 b_free!1313 (= (x!5782 thiss!700) (y!609 thiss!700))) (and b!10173 b_free!1309 (= (y!608 thiss!671) (y!609 thiss!700))) (and b!10181 b_free!1315) (and b!10172 (= lambda!2709 (y!609 thiss!700))) (and b!10173 b_free!1307 (= (x!5781 thiss!671) (y!609 thiss!700))) b_lambda!5415)))

(declare-fun bs!2743 () Bool)

(declare-fun d!8271 () Bool)

(assert (= bs!2743 (and d!8271 b!10172)))

(assert (=> bs!2743 (= (dynLambda!337 lambda!2709) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10172 (= lambda!2709 (y!609 thiss!700)) d!8231) d!8271))

(declare-fun bs!2744 () Bool)

(declare-fun d!8273 () Bool)

(assert (= bs!2744 (and d!8273 b!10172)))

(assert (=> bs!2744 (= (dynLambda!337 lambda!2710) (updateCounter!0 (head!456 xs!280) (balanceToCounter!0 (foldRight!51 (tail!468 xs!280) (Balance!250 0 0) lambda!2707))))))

(assert (=> bs!2744 m!13287))

(assert (=> bs!2744 m!13287))

(assert (=> bs!2744 m!13333))

(assert (=> bs!2744 m!13333))

(assert (=> bs!2744 m!13335))

(assert (=> (and b!10172 (= lambda!2710 (y!609 thiss!700)) d!8231) d!8273))

(declare-fun bs!2745 () Bool)

(declare-fun d!8275 () Bool)

(assert (= bs!2745 (and d!8275 b!10175)))

(assert (=> bs!2745 (= (dynLambda!337 lambda!2712) (updateCounter!0 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (=> bs!2745 m!13291))

(assert (=> bs!2745 m!13291))

(assert (=> bs!2745 m!13331))

(assert (=> (and b!10175 (= lambda!2712 (y!609 thiss!700)) d!8231) d!8275))

(declare-fun b_lambda!5417 () Bool)

(assert (= b_lambda!5387 (or b!10179 b_lambda!5417)))

(declare-fun bs!2746 () Bool)

(declare-fun d!8277 () Bool)

(assert (= bs!2746 (and d!8277 b!10179)))

(assert (=> bs!2746 (= (dynLambda!339 lambda!2708 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)) (updateCounter!0 (head!456 xs!280) (foldRight!52 (tail!468 xs!280) 0 lambda!2708)))))

(assert (=> bs!2746 m!13291))

(assert (=> bs!2746 m!13331))

(assert (=> b!10193 d!8277))

(push 1)

(assert (not bs!2738))

(assert (not b_lambda!5417))

(assert (not b_lambda!5407))

(assert b_and!4685)

(assert (not bs!2734))

(assert (not b!10216))

(assert b_and!4697)

(assert (not bs!2741))

(assert (not b_next!3243))

(assert (not b!10199))

(assert (not b!10215))

(assert (not b_lambda!5415))

(assert (not d!8237))

(assert b_and!4699)

(assert b_and!4701)

(assert (not b!10214))

(assert (not bs!2745))

(assert (not b!10218))

(assert (not b_next!3247))

(assert (not b_lambda!5403))

(assert (not bs!2739))

(assert (not b_lambda!5409))

(assert b_and!4695)

(assert (not bs!2740))

(assert (not b_lambda!5385))

(assert (not bs!2732))

(assert (not b_lambda!5413))

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert (not b_next!3241))

(assert b_and!4683)

(assert (not b_lambda!5405))

(assert (not b_lambda!5411))

(assert (not bs!2746))

(assert (not b!10220))

(assert (not b_next!3251))

(assert (not bs!2744))

(assert (not bs!2733))

(assert (not b!10193))

(assert (not bs!2736))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4685)

(assert b_and!4697)

(assert (not b_next!3243))

(assert b_and!4699)

(assert b_and!4701)

(assert (not b_next!3247))

(assert b_and!4695)

(assert (not b_next!3249))

(assert (not b_next!3245))

(assert (not b_next!3241))

(assert b_and!4683)

(assert (not b_next!3251))

(check-sat)

(pop 1)

