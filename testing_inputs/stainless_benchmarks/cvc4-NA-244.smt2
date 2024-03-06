; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1862 () Bool)

(assert start!1862)

(declare-fun b!9315 () Bool)

(declare-fun b_free!1083 () Bool)

(declare-fun b_next!2621 () Bool)

(assert (=> b!9315 (= b_free!1083 (not b_next!2621))))

(declare-fun tp!1764 () Bool)

(declare-fun b_and!3975 () Bool)

(assert (=> b!9315 (= tp!1764 b_and!3975)))

(declare-fun b_free!1085 () Bool)

(declare-fun b_next!2623 () Bool)

(assert (=> b!9315 (= b_free!1085 (not b_next!2623))))

(declare-fun tp!1759 () Bool)

(declare-fun b_and!3977 () Bool)

(assert (=> b!9315 (= tp!1759 b_and!3977)))

(declare-fun b_free!1087 () Bool)

(declare-fun b_next!2625 () Bool)

(assert (=> b!9315 (= b_free!1087 (not b_next!2625))))

(declare-fun tp!1765 () Bool)

(declare-fun b_and!3979 () Bool)

(assert (=> b!9315 (= tp!1765 b_and!3979)))

(declare-fun b_free!1089 () Bool)

(declare-fun b_next!2627 () Bool)

(assert (=> start!1862 (= b_free!1089 (not b_next!2627))))

(declare-fun tp!1761 () Bool)

(declare-fun b_and!3981 () Bool)

(assert (=> start!1862 (= tp!1761 b_and!3981)))

(declare-fun b!9310 () Bool)

(declare-fun b_free!1091 () Bool)

(declare-fun b_next!2629 () Bool)

(assert (=> b!9310 (= b_free!1091 (not b_next!2629))))

(declare-fun tp!1762 () Bool)

(declare-fun b_and!3983 () Bool)

(assert (=> b!9310 (= tp!1762 b_and!3983)))

(declare-fun b_free!1093 () Bool)

(declare-fun b_next!2631 () Bool)

(assert (=> b!9310 (= b_free!1093 (not b_next!2631))))

(declare-fun tp!1763 () Bool)

(declare-fun b_and!3985 () Bool)

(assert (=> b!9310 (= tp!1763 b_and!3985)))

(declare-fun b_free!1095 () Bool)

(declare-fun b_next!2633 () Bool)

(assert (=> b!9310 (= b_free!1095 (not b_next!2633))))

(declare-fun tp!1760 () Bool)

(declare-fun b_and!3987 () Bool)

(assert (=> b!9310 (= tp!1760 b_and!3987)))

(declare-fun b_next!2635 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2317 () Int)

(assert (=> start!1862 (= b_next!2627 (or (and start!1862 (= lambda!2317 f!585)) b_next!2635))))

(declare-fun b!9314 () Bool)

(assert (=> b!9314 true))

(declare-fun lambda!2318 () Int)

(declare-fun order!139 () Int)

(declare-fun order!137 () Int)

(declare-fun dynLambda!291 (Int Int) Int)

(declare-fun dynLambda!292 (Int Int) Int)

(assert (=> b!9314 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2318))))

(assert (=> b!9314 true))

(declare-datatypes () ((Balance!207 (Balance!208 (extraOpen!144 Int) (extraClose!144 Int)))))

(declare-datatypes () ((EqEvidence!170 (EqEvidence!171 (x!5230 Int) (y!573 Int) (evidence!152 Int)))))

(declare-fun that!232 () EqEvidence!170)

(declare-fun b_next!2637 () Bool)

(assert (=> b!9315 (= b_next!2621 (or (and b!9314 (= lambda!2318 (x!5230 that!232))) b_next!2637))))

(declare-fun b_next!2639 () Bool)

(assert (=> b!9315 (= b_next!2623 (or (and b!9314 (= lambda!2318 (y!573 that!232))) b_next!2639))))

(declare-fun b_next!2641 () Bool)

(declare-fun thiss!854 () EqEvidence!170)

(assert (=> b!9310 (= b_next!2629 (or (and b!9314 (= lambda!2318 (x!5230 thiss!854))) b_next!2641))))

(declare-fun b_next!2643 () Bool)

(assert (=> b!9310 (= b_next!2631 (or (and b!9314 (= lambda!2318 (y!573 thiss!854))) b_next!2643))))

(declare-fun lambda!2319 () Int)

(assert (=> b!9314 (not (= lambda!2319 lambda!2318))))

(assert (=> b!9314 true))

(assert (=> b!9314 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2319))))

(assert (=> b!9314 true))

(declare-fun b_next!2645 () Bool)

(assert (=> b!9315 (= b_next!2637 (or (and b!9314 (= lambda!2319 (x!5230 that!232))) b_next!2645))))

(declare-fun b_next!2647 () Bool)

(assert (=> b!9315 (= b_next!2639 (or (and b!9314 (= lambda!2319 (y!573 that!232))) b_next!2647))))

(declare-fun b_next!2649 () Bool)

(assert (=> b!9310 (= b_next!2641 (or (and b!9314 (= lambda!2319 (x!5230 thiss!854))) b_next!2649))))

(declare-fun b_next!2651 () Bool)

(assert (=> b!9310 (= b_next!2643 (or (and b!9314 (= lambda!2319 (y!573 thiss!854))) b_next!2651))))

(assert (=> b!9314 true))

(declare-fun b_next!2653 () Bool)

(declare-fun lambda!2320 () Int)

(assert (=> b!9315 (= b_next!2625 (or (and b!9314 (= lambda!2320 (evidence!152 that!232))) b_next!2653))))

(declare-fun b_next!2655 () Bool)

(assert (=> b!9310 (= b_next!2633 (or (and b!9314 (= lambda!2320 (evidence!152 thiss!854))) b_next!2655))))

(declare-fun bs!2442 () Bool)

(declare-fun b!9312 () Bool)

(assert (= bs!2442 (and b!9312 b!9314)))

(declare-fun lambda!2321 () Int)

(assert (=> bs!2442 (not (= lambda!2321 lambda!2318))))

(assert (=> bs!2442 (not (= lambda!2321 lambda!2319))))

(assert (=> b!9312 true))

(assert (=> b!9312 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2321))))

(assert (=> b!9312 true))

(declare-fun b_next!2657 () Bool)

(assert (=> b!9315 (= b_next!2645 (or (and b!9312 (= lambda!2321 (x!5230 that!232))) b_next!2657))))

(declare-fun b_next!2659 () Bool)

(assert (=> b!9315 (= b_next!2647 (or (and b!9312 (= lambda!2321 (y!573 that!232))) b_next!2659))))

(declare-fun b_next!2661 () Bool)

(assert (=> b!9310 (= b_next!2649 (or (and b!9312 (= lambda!2321 (x!5230 thiss!854))) b_next!2661))))

(declare-fun b_next!2663 () Bool)

(assert (=> b!9310 (= b_next!2651 (or (and b!9312 (= lambda!2321 (y!573 thiss!854))) b_next!2663))))

(declare-fun lambda!2322 () Int)

(assert (=> bs!2442 (not (= lambda!2322 lambda!2320))))

(assert (=> b!9312 true))

(declare-fun b_next!2665 () Bool)

(assert (=> b!9315 (= b_next!2653 (or (and b!9312 (= lambda!2322 (evidence!152 that!232))) b_next!2665))))

(declare-fun b_next!2667 () Bool)

(assert (=> b!9310 (= b_next!2655 (or (and b!9312 (= lambda!2322 (evidence!152 thiss!854))) b_next!2667))))

(declare-fun e!5496 () Bool)

(assert (=> b!9310 (= e!5496 (and tp!1762 tp!1763 tp!1760))))

(declare-fun b!9311 () Bool)

(declare-fun res!3011 () Bool)

(declare-fun e!5495 () Bool)

(assert (=> b!9311 (=> (not res!3011) (not e!5495))))

(declare-datatypes () ((Tree!66 (Branch!57 (left!437 Tree!66) (right!440 Tree!66)) (Leaf!139 (value!1308 Balance!207)))))

(declare-fun tree!25 () Tree!66)

(assert (=> b!9311 (= res!3011 (not (is-Leaf!139 tree!25)))))

(declare-fun res!3014 () Bool)

(assert (=> b!9312 (=> (not res!3014) (not e!5495))))

(assert (=> b!9312 (= res!3014 (= that!232 (EqEvidence!171 lambda!2321 lambda!2321 lambda!2322)))))

(declare-fun b!9313 () Bool)

(declare-fun res!3015 () Bool)

(assert (=> b!9313 (=> (not res!3015) (not e!5495))))

(declare-datatypes () ((ProofOps!154 (ProofOps!155 (prop!197 Bool)))))

(declare-fun thiss!829 () ProofOps!154)

(declare-fun fold!42 (Tree!66 Int) Balance!207)

(declare-datatypes () ((List!220 (Nil!218) (Cons!217 (head!435 Balance!207) (tail!447 List!220)))))

(declare-fun foldRight1!73 (List!220 Int) Balance!207)

(declare-fun toList!66 (Tree!66) List!220)

(assert (=> b!9313 (= res!3015 (= thiss!829 (ProofOps!155 (= (fold!42 tree!25 f!585) (foldRight1!73 (toList!66 tree!25) f!585)))))))

(declare-fun res!3012 () Bool)

(assert (=> start!1862 (=> (not res!3012) (not e!5495))))

(assert (=> start!1862 (= res!3012 (= f!585 lambda!2317))))

(assert (=> start!1862 e!5495))

(assert (=> start!1862 true))

(declare-fun e!5497 () Bool)

(declare-fun inv!328 (EqEvidence!170) Bool)

(assert (=> start!1862 (and (inv!328 that!232) e!5497)))

(assert (=> start!1862 tp!1761))

(assert (=> start!1862 (and (inv!328 thiss!854) e!5496)))

(declare-fun res!3013 () Bool)

(assert (=> b!9314 (=> (not res!3013) (not e!5495))))

(assert (=> b!9314 (= res!3013 (= thiss!854 (EqEvidence!171 lambda!2318 lambda!2319 lambda!2320)))))

(assert (=> b!9315 (= e!5497 (and tp!1764 tp!1759 tp!1765))))

(declare-fun b!9316 () Bool)

(declare-fun dynLambda!293 (Int) Balance!207)

(assert (=> b!9316 (= e!5495 (not (= (dynLambda!293 (y!573 thiss!854)) (dynLambda!293 (x!5230 that!232)))))))

(declare-fun b!9317 () Bool)

(declare-fun res!3016 () Bool)

(assert (=> b!9317 (=> (not res!3016) (not e!5495))))

(declare-fun dynLambda!294 (Int) Bool)

(assert (=> b!9317 (= res!3016 (dynLambda!294 (evidence!152 thiss!854)))))

(assert (= (and start!1862 res!3012) b!9313))

(assert (= (and b!9313 res!3015) b!9311))

(assert (= (and b!9311 res!3011) b!9314))

(assert (= (and b!9314 res!3013) b!9312))

(assert (= (and b!9312 res!3014) b!9317))

(assert (= (and b!9317 res!3016) b!9316))

(assert (= start!1862 b!9315))

(assert (= start!1862 b!9310))

(declare-fun b_lambda!4911 () Bool)

(assert (=> (not b_lambda!4911) (not b!9316)))

(declare-fun t!2485 () Bool)

(declare-fun tb!2145 () Bool)

(assert (=> (and b!9315 (= (x!5230 that!232) (y!573 thiss!854)) t!2485) tb!2145))

(declare-fun result!2185 () Bool)

(assert (=> tb!2145 (= result!2185 true)))

(assert (=> b!9316 t!2485))

(declare-fun b_and!3989 () Bool)

(assert (= b_and!3975 (and (=> t!2485 result!2185) b_and!3989)))

(declare-fun tb!2147 () Bool)

(declare-fun t!2487 () Bool)

(assert (=> (and b!9315 (= (y!573 that!232) (y!573 thiss!854)) t!2487) tb!2147))

(declare-fun result!2187 () Bool)

(assert (=> tb!2147 (= result!2187 true)))

(assert (=> b!9316 t!2487))

(declare-fun b_and!3991 () Bool)

(assert (= b_and!3977 (and (=> t!2487 result!2187) b_and!3991)))

(declare-fun t!2489 () Bool)

(declare-fun tb!2149 () Bool)

(assert (=> (and b!9310 (= (x!5230 thiss!854) (y!573 thiss!854)) t!2489) tb!2149))

(declare-fun result!2189 () Bool)

(assert (=> tb!2149 (= result!2189 true)))

(assert (=> b!9316 t!2489))

(declare-fun b_and!3993 () Bool)

(assert (= b_and!3983 (and (=> t!2489 result!2189) b_and!3993)))

(declare-fun t!2491 () Bool)

(declare-fun tb!2151 () Bool)

(assert (=> (and b!9310 (= (y!573 thiss!854) (y!573 thiss!854)) t!2491) tb!2151))

(declare-fun result!2191 () Bool)

(assert (=> tb!2151 (= result!2191 true)))

(assert (=> b!9316 t!2491))

(declare-fun b_and!3995 () Bool)

(assert (= b_and!3985 (and (=> t!2491 result!2191) b_and!3995)))

(declare-fun b_lambda!4913 () Bool)

(assert (=> (not b_lambda!4913) (not b!9316)))

(declare-fun t!2493 () Bool)

(declare-fun tb!2153 () Bool)

(assert (=> (and b!9315 (= (x!5230 that!232) (x!5230 that!232)) t!2493) tb!2153))

(declare-fun result!2193 () Bool)

(assert (=> tb!2153 (= result!2193 true)))

(assert (=> b!9316 t!2493))

(declare-fun b_and!3997 () Bool)

(assert (= b_and!3989 (and (=> t!2493 result!2193) b_and!3997)))

(declare-fun t!2495 () Bool)

(declare-fun tb!2155 () Bool)

(assert (=> (and b!9315 (= (y!573 that!232) (x!5230 that!232)) t!2495) tb!2155))

(declare-fun result!2195 () Bool)

(assert (=> tb!2155 (= result!2195 true)))

(assert (=> b!9316 t!2495))

(declare-fun b_and!3999 () Bool)

(assert (= b_and!3991 (and (=> t!2495 result!2195) b_and!3999)))

(declare-fun t!2497 () Bool)

(declare-fun tb!2157 () Bool)

(assert (=> (and b!9310 (= (x!5230 thiss!854) (x!5230 that!232)) t!2497) tb!2157))

(declare-fun result!2197 () Bool)

(assert (=> tb!2157 (= result!2197 true)))

(assert (=> b!9316 t!2497))

(declare-fun b_and!4001 () Bool)

(assert (= b_and!3993 (and (=> t!2497 result!2197) b_and!4001)))

(declare-fun tb!2159 () Bool)

(declare-fun t!2499 () Bool)

(assert (=> (and b!9310 (= (y!573 thiss!854) (x!5230 that!232)) t!2499) tb!2159))

(declare-fun result!2199 () Bool)

(assert (=> tb!2159 (= result!2199 true)))

(assert (=> b!9316 t!2499))

(declare-fun b_and!4003 () Bool)

(assert (= b_and!3995 (and (=> t!2499 result!2199) b_and!4003)))

(declare-fun b_lambda!4915 () Bool)

(assert (=> (not b_lambda!4915) (not b!9317)))

(declare-fun tb!2161 () Bool)

(declare-fun t!2501 () Bool)

(assert (=> (and b!9315 (= (evidence!152 that!232) (evidence!152 thiss!854)) t!2501) tb!2161))

(declare-fun result!2201 () Bool)

(assert (=> tb!2161 (= result!2201 true)))

(assert (=> b!9317 t!2501))

(declare-fun b_and!4005 () Bool)

(assert (= b_and!3979 (and (=> t!2501 result!2201) b_and!4005)))

(declare-fun t!2503 () Bool)

(declare-fun tb!2163 () Bool)

(assert (=> (and b!9310 (= (evidence!152 thiss!854) (evidence!152 thiss!854)) t!2503) tb!2163))

(declare-fun result!2203 () Bool)

(assert (=> tb!2163 (= result!2203 true)))

(assert (=> b!9317 t!2503))

(declare-fun b_and!4007 () Bool)

(assert (= b_and!3987 (and (=> t!2503 result!2203) b_and!4007)))

(declare-fun m!12337 () Bool)

(assert (=> b!9313 m!12337))

(declare-fun m!12339 () Bool)

(assert (=> b!9313 m!12339))

(assert (=> b!9313 m!12339))

(declare-fun m!12341 () Bool)

(assert (=> b!9313 m!12341))

(declare-fun m!12343 () Bool)

(assert (=> start!1862 m!12343))

(declare-fun m!12345 () Bool)

(assert (=> start!1862 m!12345))

(declare-fun m!12347 () Bool)

(assert (=> b!9316 m!12347))

(declare-fun m!12349 () Bool)

(assert (=> b!9316 m!12349))

(declare-fun m!12351 () Bool)

(assert (=> b!9317 m!12351))

(push 1)

(assert b_and!4005)

(assert b_and!4007)

(assert (not b_next!2665))

(assert (not b_lambda!4913))

(assert (not b_next!2661))

(assert b_and!3999)

(assert (not b_next!2657))

(assert (not b_lambda!4911))

(assert b_and!3997)

(assert (not b_next!2659))

(assert (not b_lambda!4915))

(assert b_and!3981)

(assert (not b!9313))

(assert b_and!4003)

(assert (not b_next!2667))

(assert (not start!1862))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_next!2635))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4005)

(assert b_and!4007)

(assert (not b_next!2665))

(assert (not b_next!2661))

(assert b_and!3999)

(assert (not b_next!2657))

(assert b_and!3997)

(assert (not b_next!2659))

(assert b_and!3981)

(assert b_and!4003)

(assert (not b_next!2667))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_next!2635))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4917 () Bool)

(assert (= b_lambda!4913 (or (and b!9312 (= lambda!2321 (x!5230 that!232))) (and b!9310 b_free!1093 (= (y!573 thiss!854) (x!5230 that!232))) (and b!9314 (= lambda!2319 (x!5230 that!232))) (and b!9315 b_free!1083) (and b!9315 b_free!1085 (= (y!573 that!232) (x!5230 that!232))) (and b!9310 b_free!1091 (= (x!5230 thiss!854) (x!5230 that!232))) (and b!9314 (= lambda!2318 (x!5230 that!232))) b_lambda!4917)))

(declare-fun bs!2443 () Bool)

(declare-fun d!7573 () Bool)

(assert (= bs!2443 (and d!7573 b!9314)))

(declare-fun dynLambda!295 (Int Balance!207 Balance!207) Balance!207)

(assert (=> bs!2443 (= (dynLambda!293 lambda!2319) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)))))

(declare-fun b_lambda!4923 () Bool)

(assert (=> (not b_lambda!4923) (not bs!2443)))

(declare-fun t!2505 () Bool)

(declare-fun tb!2165 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2505) tb!2165))

(declare-fun result!2205 () Bool)

(assert (=> tb!2165 (= result!2205 true)))

(assert (=> bs!2443 t!2505))

(declare-fun b_and!4009 () Bool)

(assert (= b_and!3981 (and (=> t!2505 result!2205) b_and!4009)))

(declare-fun m!12353 () Bool)

(assert (=> bs!2443 m!12353))

(declare-fun m!12355 () Bool)

(assert (=> bs!2443 m!12355))

(assert (=> bs!2443 m!12355))

(declare-fun m!12357 () Bool)

(assert (=> bs!2443 m!12357))

(assert (=> bs!2443 m!12357))

(assert (=> bs!2443 m!12353))

(declare-fun m!12359 () Bool)

(assert (=> bs!2443 m!12359))

(assert (=> (and b!9314 (= lambda!2319 (x!5230 that!232)) b!9316) d!7573))

(declare-fun bs!2444 () Bool)

(declare-fun d!7575 () Bool)

(assert (= bs!2444 (and d!7575 b!9312)))

(assert (=> bs!2444 (= (dynLambda!293 lambda!2321) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)))))

(declare-fun b_lambda!4925 () Bool)

(assert (=> (not b_lambda!4925) (not bs!2444)))

(declare-fun t!2507 () Bool)

(declare-fun tb!2167 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2507) tb!2167))

(declare-fun result!2207 () Bool)

(assert (=> tb!2167 (= result!2207 true)))

(assert (=> bs!2444 t!2507))

(declare-fun b_and!4011 () Bool)

(assert (= b_and!4009 (and (=> t!2507 result!2207) b_and!4011)))

(assert (=> bs!2444 m!12355))

(assert (=> bs!2444 m!12357))

(declare-fun m!12361 () Bool)

(assert (=> bs!2444 m!12361))

(declare-fun m!12363 () Bool)

(assert (=> bs!2444 m!12363))

(declare-fun m!12365 () Bool)

(assert (=> bs!2444 m!12365))

(assert (=> bs!2444 m!12355))

(assert (=> bs!2444 m!12357))

(assert (=> bs!2444 m!12365))

(assert (=> bs!2444 m!12361))

(assert (=> (and b!9312 (= lambda!2321 (x!5230 that!232)) b!9316) d!7575))

(declare-fun bs!2445 () Bool)

(declare-fun d!7577 () Bool)

(assert (= bs!2445 (and d!7577 b!9314)))

(assert (=> bs!2445 (= (dynLambda!293 lambda!2318) (fold!42 tree!25 f!585))))

(assert (=> bs!2445 m!12337))

(assert (=> (and b!9314 (= lambda!2318 (x!5230 that!232)) b!9316) d!7577))

(declare-fun b_lambda!4919 () Bool)

(assert (= b_lambda!4911 (or (and b!9310 b_free!1093) (and b!9314 (= lambda!2318 (y!573 thiss!854))) (and b!9315 b_free!1083 (= (x!5230 that!232) (y!573 thiss!854))) (and b!9310 b_free!1091 (= (x!5230 thiss!854) (y!573 thiss!854))) (and b!9312 (= lambda!2321 (y!573 thiss!854))) (and b!9314 (= lambda!2319 (y!573 thiss!854))) (and b!9315 b_free!1085 (= (y!573 that!232) (y!573 thiss!854))) b_lambda!4919)))

(declare-fun bs!2446 () Bool)

(declare-fun d!7579 () Bool)

(assert (= bs!2446 (and d!7579 b!9314)))

(assert (=> bs!2446 (= (dynLambda!293 lambda!2319) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)))))

(declare-fun b_lambda!4927 () Bool)

(assert (=> (not b_lambda!4927) (not bs!2446)))

(assert (=> bs!2446 t!2505))

(declare-fun b_and!4013 () Bool)

(assert (= b_and!4011 (and (=> t!2505 result!2205) b_and!4013)))

(assert (=> bs!2446 m!12353))

(assert (=> bs!2446 m!12355))

(assert (=> bs!2446 m!12355))

(assert (=> bs!2446 m!12357))

(assert (=> bs!2446 m!12357))

(assert (=> bs!2446 m!12353))

(assert (=> bs!2446 m!12359))

(assert (=> (and b!9314 (= lambda!2319 (y!573 thiss!854)) b!9316) d!7579))

(declare-fun bs!2447 () Bool)

(declare-fun d!7581 () Bool)

(assert (= bs!2447 (and d!7581 b!9314)))

(assert (=> bs!2447 (= (dynLambda!293 lambda!2318) (fold!42 tree!25 f!585))))

(assert (=> bs!2447 m!12337))

(assert (=> (and b!9314 (= lambda!2318 (y!573 thiss!854)) b!9316) d!7581))

(declare-fun bs!2448 () Bool)

(declare-fun d!7583 () Bool)

(assert (= bs!2448 (and d!7583 b!9312)))

(assert (=> bs!2448 (= (dynLambda!293 lambda!2321) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)))))

(declare-fun b_lambda!4929 () Bool)

(assert (=> (not b_lambda!4929) (not bs!2448)))

(assert (=> bs!2448 t!2507))

(declare-fun b_and!4015 () Bool)

(assert (= b_and!4013 (and (=> t!2507 result!2207) b_and!4015)))

(assert (=> bs!2448 m!12355))

(assert (=> bs!2448 m!12357))

(assert (=> bs!2448 m!12361))

(assert (=> bs!2448 m!12363))

(assert (=> bs!2448 m!12365))

(assert (=> bs!2448 m!12355))

(assert (=> bs!2448 m!12357))

(assert (=> bs!2448 m!12365))

(assert (=> bs!2448 m!12361))

(assert (=> (and b!9312 (= lambda!2321 (y!573 thiss!854)) b!9316) d!7583))

(declare-fun b_lambda!4921 () Bool)

(assert (= b_lambda!4915 (or (and b!9314 (= lambda!2320 (evidence!152 thiss!854))) (and b!9312 (= lambda!2322 (evidence!152 thiss!854))) (and b!9315 b_free!1087 (= (evidence!152 that!232) (evidence!152 thiss!854))) (and b!9310 b_free!1095) b_lambda!4921)))

(declare-fun bs!2449 () Bool)

(declare-fun d!7585 () Bool)

(assert (= bs!2449 (and d!7585 b!9314)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!66) Bool)

(assert (=> bs!2449 (= (dynLambda!294 lambda!2320) (fold_foldRight1_equivalence!0 (right!440 tree!25)))))

(declare-fun m!12367 () Bool)

(assert (=> bs!2449 m!12367))

(assert (=> (and b!9314 (= lambda!2320 (evidence!152 thiss!854)) b!9317) d!7585))

(declare-fun bs!2450 () Bool)

(declare-fun d!7587 () Bool)

(assert (= bs!2450 (and d!7587 b!9312)))

(declare-fun append!24 (List!220 List!220) Bool)

(assert (=> bs!2450 (= (dynLambda!294 lambda!2322) (append!24 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))))))

(assert (=> bs!2450 m!12355))

(assert (=> bs!2450 m!12365))

(assert (=> bs!2450 m!12355))

(assert (=> bs!2450 m!12365))

(declare-fun m!12369 () Bool)

(assert (=> bs!2450 m!12369))

(assert (=> (and b!9312 (= lambda!2322 (evidence!152 thiss!854)) b!9317) d!7587))

(push 1)

(assert (not bs!2449))

(assert (not bs!2445))

(assert (not bs!2446))

(assert b_and!4005)

(assert (not b_lambda!4925))

(assert (not bs!2448))

(assert b_and!4007)

(assert b_and!4015)

(assert (not b_next!2665))

(assert (not bs!2443))

(assert (not b_lambda!4919))

(assert (not b_next!2661))

(assert (not b_lambda!4917))

(assert (not bs!2450))

(assert b_and!3999)

(assert (not b_next!2657))

(assert b_and!3997)

(assert (not b_lambda!4927))

(assert (not b_next!2659))

(assert (not bs!2447))

(assert (not bs!2444))

(assert (not b!9313))

(assert (not b_lambda!4921))

(assert b_and!4003)

(assert (not b_next!2667))

(assert (not start!1862))

(assert (not b_lambda!4923))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_lambda!4929))

(assert (not b_next!2635))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4005)

(assert b_and!4007)

(assert b_and!4015)

(assert (not b_next!2665))

(assert (not b_next!2661))

(assert b_and!3999)

(assert (not b_next!2657))

(assert b_and!3997)

(assert (not b_next!2659))

(assert b_and!4003)

(assert (not b_next!2667))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_next!2635))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4931 () Bool)

(assert (= b_lambda!4925 (or (and start!1862 (= lambda!2317 f!585)) (and start!1862 b_free!1089) b_lambda!4931)))

(declare-fun bs!2451 () Bool)

(declare-fun d!7589 () Bool)

(assert (= bs!2451 (and d!7589 start!1862)))

(declare-fun ++!3 (Balance!207 Balance!207) Balance!207)

(assert (=> bs!2451 (= (dynLambda!295 lambda!2317 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)) (++!3 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)))))

(assert (=> bs!2451 m!12357))

(assert (=> bs!2451 m!12361))

(declare-fun m!12371 () Bool)

(assert (=> bs!2451 m!12371))

(assert (=> (and start!1862 (= lambda!2317 f!585) bs!2444) d!7589))

(declare-fun b_lambda!4933 () Bool)

(assert (= b_lambda!4927 (or (and start!1862 (= lambda!2317 f!585)) (and start!1862 b_free!1089) b_lambda!4933)))

(declare-fun bs!2452 () Bool)

(declare-fun d!7591 () Bool)

(assert (= bs!2452 (and d!7591 start!1862)))

(assert (=> bs!2452 (= (dynLambda!295 lambda!2317 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)) (++!3 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)))))

(assert (=> bs!2452 m!12357))

(assert (=> bs!2452 m!12353))

(declare-fun m!12373 () Bool)

(assert (=> bs!2452 m!12373))

(assert (=> (and start!1862 (= lambda!2317 f!585) bs!2446) d!7591))

(declare-fun b_lambda!4935 () Bool)

(assert (= b_lambda!4929 (or (and start!1862 (= lambda!2317 f!585)) (and start!1862 b_free!1089) b_lambda!4935)))

(assert (=> (and start!1862 (= lambda!2317 f!585) bs!2448) d!7589))

(declare-fun b_lambda!4937 () Bool)

(assert (= b_lambda!4923 (or (and start!1862 (= lambda!2317 f!585)) (and start!1862 b_free!1089) b_lambda!4937)))

(assert (=> (and start!1862 (= lambda!2317 f!585) bs!2443) d!7591))

(push 1)

(assert (not bs!2449))

(assert (not bs!2445))

(assert (not b_lambda!4935))

(assert (not b_lambda!4933))

(assert (not bs!2446))

(assert b_and!4005)

(assert (not b_lambda!4937))

(assert (not bs!2448))

(assert b_and!4007)

(assert b_and!4015)

(assert (not b_next!2665))

(assert (not bs!2443))

(assert (not b_lambda!4931))

(assert (not b_lambda!4919))

(assert (not b_next!2661))

(assert (not b_lambda!4917))

(assert (not bs!2452))

(assert (not bs!2450))

(assert b_and!3999)

(assert (not b_next!2657))

(assert b_and!3997)

(assert (not b_next!2659))

(assert (not bs!2447))

(assert (not bs!2444))

(assert (not b!9313))

(assert (not b_lambda!4921))

(assert b_and!4003)

(assert (not bs!2451))

(assert (not b_next!2667))

(assert (not start!1862))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_next!2635))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4005)

(assert b_and!4007)

(assert b_and!4015)

(assert (not b_next!2665))

(assert (not b_next!2661))

(assert b_and!3999)

(assert (not b_next!2657))

(assert b_and!3997)

(assert (not b_next!2659))

(assert b_and!4003)

(assert (not b_next!2667))

(assert (not b_next!2663))

(assert b_and!4001)

(assert (not b_next!2635))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2453 () Bool)

(declare-fun b!9329 () Bool)

(assert (= bs!2453 (and b!9329 b!9314)))

(declare-fun lambda!2327 () Int)

(assert (=> bs!2453 (= (= (left!437 tree!25) tree!25) (= lambda!2327 lambda!2318))))

(assert (=> bs!2453 (not (= lambda!2327 lambda!2319))))

(declare-fun bs!2454 () Bool)

(assert (= bs!2454 (and b!9329 b!9312)))

(assert (=> bs!2454 (not (= lambda!2327 lambda!2321))))

(assert (=> b!9329 true))

(assert (=> b!9329 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2327))))

(assert (=> b!9329 true))

(declare-fun b_next!2669 () Bool)

(assert (=> b!9315 (= b_next!2657 (or (and b!9329 (= lambda!2327 (x!5230 that!232))) b_next!2669))))

(declare-fun b_next!2671 () Bool)

(assert (=> b!9315 (= b_next!2659 (or (and b!9329 (= lambda!2327 (y!573 that!232))) b_next!2671))))

(declare-fun b_next!2673 () Bool)

(assert (=> b!9310 (= b_next!2661 (or (and b!9329 (= lambda!2327 (x!5230 thiss!854))) b_next!2673))))

(declare-fun b_next!2675 () Bool)

(assert (=> b!9310 (= b_next!2663 (or (and b!9329 (= lambda!2327 (y!573 thiss!854))) b_next!2675))))

(declare-fun lambda!2328 () Int)

(assert (=> bs!2453 (= (= (right!440 tree!25) tree!25) (= lambda!2328 lambda!2318))))

(assert (=> bs!2453 (not (= lambda!2328 lambda!2319))))

(assert (=> bs!2454 (not (= lambda!2328 lambda!2321))))

(assert (=> b!9329 (= (= (right!440 tree!25) (left!437 tree!25)) (= lambda!2328 lambda!2327))))

(assert (=> b!9329 true))

(assert (=> b!9329 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2328))))

(assert (=> b!9329 true))

(declare-fun b_next!2677 () Bool)

(assert (=> b!9315 (= b_next!2669 (or (and b!9329 (= lambda!2328 (x!5230 that!232))) b_next!2677))))

(declare-fun b_next!2679 () Bool)

(assert (=> b!9315 (= b_next!2671 (or (and b!9329 (= lambda!2328 (y!573 that!232))) b_next!2679))))

(declare-fun b_next!2681 () Bool)

(assert (=> b!9310 (= b_next!2673 (or (and b!9329 (= lambda!2328 (x!5230 thiss!854))) b_next!2681))))

(declare-fun b_next!2683 () Bool)

(assert (=> b!9310 (= b_next!2675 (or (and b!9329 (= lambda!2328 (y!573 thiss!854))) b_next!2683))))

(declare-fun e!5516 () Balance!207)

(declare-datatypes () ((tuple2!82 (tuple2!83 (_1!41 Balance!207) (_2!41 Balance!207)))))

(declare-fun lt!1632 () tuple2!82)

(assert (=> b!9329 (= e!5516 (dynLambda!295 f!585 (_1!41 lt!1632) (_2!41 lt!1632)))))

(assert (=> b!9329 (= lt!1632 (tuple2!83 (dynLambda!293 lambda!2327) (dynLambda!293 lambda!2328)))))

(declare-fun d!7593 () Bool)

(declare-fun c!3029 () Bool)

(assert (=> d!7593 (= c!3029 (is-Leaf!139 tree!25))))

(assert (=> d!7593 (= (fold!42 tree!25 f!585) e!5516)))

(declare-fun b!9328 () Bool)

(assert (=> b!9328 (= e!5516 (value!1308 tree!25))))

(assert (= (and d!7593 c!3029) b!9328))

(assert (= (and d!7593 (not c!3029)) b!9329))

(declare-fun b_lambda!4939 () Bool)

(assert (=> (not b_lambda!4939) (not b!9329)))

(declare-fun t!2509 () Bool)

(declare-fun tb!2169 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2509) tb!2169))

(declare-fun result!2209 () Bool)

(assert (=> tb!2169 (= result!2209 true)))

(assert (=> b!9329 t!2509))

(declare-fun b_and!4017 () Bool)

(assert (= b_and!4015 (and (=> t!2509 result!2209) b_and!4017)))

(declare-fun b_lambda!4941 () Bool)

(assert (=> (not b_lambda!4941) (not b!9329)))

(declare-fun b_lambda!4943 () Bool)

(assert (=> (not b_lambda!4943) (not b!9329)))

(declare-fun m!12375 () Bool)

(assert (=> b!9329 m!12375))

(declare-fun m!12377 () Bool)

(assert (=> b!9329 m!12377))

(declare-fun m!12379 () Bool)

(assert (=> b!9329 m!12379))

(assert (=> bs!2447 d!7593))

(declare-fun bs!2455 () Bool)

(declare-fun d!7595 () Bool)

(assert (= bs!2455 (and d!7595 start!1862)))

(declare-fun lambda!2331 () Int)

(assert (=> bs!2455 (= lambda!2331 lambda!2317)))

(declare-fun b_next!2685 () Bool)

(assert (=> start!1862 (= b_next!2635 (or (and d!7595 (= lambda!2331 f!585)) b_next!2685))))

(declare-fun because!2 (ProofOps!154 Bool) Bool)

(assert (=> d!7595 (because!2 (ProofOps!155 (= (fold!42 (right!440 tree!25) lambda!2331) (foldRight1!73 (toList!66 (right!440 tree!25)) lambda!2331))) true)))

(assert (=> d!7595 (= (fold!42 (right!440 tree!25) lambda!2331) (foldRight1!73 (toList!66 (right!440 tree!25)) lambda!2331))))

(assert (=> d!7595 (= (fold_foldRight1_equivalence!0 (right!440 tree!25)) true)))

(declare-fun bs!2456 () Bool)

(assert (= bs!2456 d!7595))

(declare-fun m!12381 () Bool)

(assert (=> bs!2456 m!12381))

(assert (=> bs!2456 m!12365))

(assert (=> bs!2456 m!12365))

(declare-fun m!12383 () Bool)

(assert (=> bs!2456 m!12383))

(declare-fun m!12385 () Bool)

(assert (=> bs!2456 m!12385))

(assert (=> bs!2449 d!7595))

(declare-fun d!7597 () Bool)

(declare-fun c!3032 () Bool)

(assert (=> d!7597 (= c!3032 (and (is-Cons!217 (toList!66 (left!437 tree!25))) (is-Nil!218 (tail!447 (toList!66 (left!437 tree!25))))))))

(declare-fun e!5519 () Balance!207)

(assert (=> d!7597 (= (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) e!5519)))

(declare-fun b!9334 () Bool)

(assert (=> b!9334 (= e!5519 (head!435 (toList!66 (left!437 tree!25))))))

(declare-fun b!9335 () Bool)

(assert (=> b!9335 (= e!5519 (dynLambda!295 f!585 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)))))

(assert (= (and d!7597 c!3032) b!9334))

(assert (= (and d!7597 (not c!3032)) b!9335))

(declare-fun b_lambda!4945 () Bool)

(assert (=> (not b_lambda!4945) (not b!9335)))

(declare-fun t!2511 () Bool)

(declare-fun tb!2171 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2511) tb!2171))

(declare-fun result!2211 () Bool)

(assert (=> tb!2171 (= result!2211 true)))

(assert (=> b!9335 t!2511))

(declare-fun b_and!4019 () Bool)

(assert (= b_and!4017 (and (=> t!2511 result!2211) b_and!4019)))

(declare-fun m!12387 () Bool)

(assert (=> b!9335 m!12387))

(assert (=> b!9335 m!12387))

(declare-fun m!12389 () Bool)

(assert (=> b!9335 m!12389))

(assert (=> bs!2444 d!7597))

(declare-fun d!7599 () Bool)

(declare-fun lt!1635 () List!220)

(declare-fun isEmpty!174 (List!220) Bool)

(assert (=> d!7599 (not (isEmpty!174 lt!1635))))

(declare-fun e!5522 () List!220)

(assert (=> d!7599 (= lt!1635 e!5522)))

(declare-fun c!3035 () Bool)

(assert (=> d!7599 (= c!3035 (is-Leaf!139 (left!437 tree!25)))))

(assert (=> d!7599 (= (toList!66 (left!437 tree!25)) lt!1635)))

(declare-fun b!9340 () Bool)

(assert (=> b!9340 (= e!5522 (Cons!217 (value!1308 (left!437 tree!25)) Nil!218))))

(declare-fun b!9341 () Bool)

(declare-fun append!95 (List!220 List!220) List!220)

(assert (=> b!9341 (= e!5522 (append!95 (toList!66 (left!437 (left!437 tree!25))) (toList!66 (right!440 (left!437 tree!25)))))))

(assert (= (and d!7599 c!3035) b!9340))

(assert (= (and d!7599 (not c!3035)) b!9341))

(declare-fun m!12391 () Bool)

(assert (=> d!7599 m!12391))

(declare-fun m!12393 () Bool)

(assert (=> b!9341 m!12393))

(declare-fun m!12395 () Bool)

(assert (=> b!9341 m!12395))

(assert (=> b!9341 m!12393))

(assert (=> b!9341 m!12395))

(declare-fun m!12397 () Bool)

(assert (=> b!9341 m!12397))

(assert (=> bs!2444 d!7599))

(declare-fun d!7601 () Bool)

(declare-fun c!3036 () Bool)

(assert (=> d!7601 (= c!3036 (and (is-Cons!217 (toList!66 (right!440 tree!25))) (is-Nil!218 (tail!447 (toList!66 (right!440 tree!25))))))))

(declare-fun e!5523 () Balance!207)

(assert (=> d!7601 (= (foldRight1!73 (toList!66 (right!440 tree!25)) f!585) e!5523)))

(declare-fun b!9342 () Bool)

(assert (=> b!9342 (= e!5523 (head!435 (toList!66 (right!440 tree!25))))))

(declare-fun b!9343 () Bool)

(assert (=> b!9343 (= e!5523 (dynLambda!295 f!585 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)))))

(assert (= (and d!7601 c!3036) b!9342))

(assert (= (and d!7601 (not c!3036)) b!9343))

(declare-fun b_lambda!4947 () Bool)

(assert (=> (not b_lambda!4947) (not b!9343)))

(declare-fun t!2513 () Bool)

(declare-fun tb!2173 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2513) tb!2173))

(declare-fun result!2213 () Bool)

(assert (=> tb!2173 (= result!2213 true)))

(assert (=> b!9343 t!2513))

(declare-fun b_and!4021 () Bool)

(assert (= b_and!4019 (and (=> t!2513 result!2213) b_and!4021)))

(declare-fun m!12399 () Bool)

(assert (=> b!9343 m!12399))

(assert (=> b!9343 m!12399))

(declare-fun m!12401 () Bool)

(assert (=> b!9343 m!12401))

(assert (=> bs!2444 d!7601))

(declare-fun d!7603 () Bool)

(declare-fun lt!1636 () List!220)

(assert (=> d!7603 (not (isEmpty!174 lt!1636))))

(declare-fun e!5524 () List!220)

(assert (=> d!7603 (= lt!1636 e!5524)))

(declare-fun c!3037 () Bool)

(assert (=> d!7603 (= c!3037 (is-Leaf!139 (right!440 tree!25)))))

(assert (=> d!7603 (= (toList!66 (right!440 tree!25)) lt!1636)))

(declare-fun b!9344 () Bool)

(assert (=> b!9344 (= e!5524 (Cons!217 (value!1308 (right!440 tree!25)) Nil!218))))

(declare-fun b!9345 () Bool)

(assert (=> b!9345 (= e!5524 (append!95 (toList!66 (left!437 (right!440 tree!25))) (toList!66 (right!440 (right!440 tree!25)))))))

(assert (= (and d!7603 c!3037) b!9344))

(assert (= (and d!7603 (not c!3037)) b!9345))

(declare-fun m!12403 () Bool)

(assert (=> d!7603 m!12403))

(declare-fun m!12405 () Bool)

(assert (=> b!9345 m!12405))

(declare-fun m!12407 () Bool)

(assert (=> b!9345 m!12407))

(assert (=> b!9345 m!12405))

(assert (=> b!9345 m!12407))

(declare-fun m!12409 () Bool)

(assert (=> b!9345 m!12409))

(assert (=> bs!2444 d!7603))

(assert (=> bs!2446 d!7597))

(assert (=> bs!2446 d!7599))

(declare-fun bs!2457 () Bool)

(declare-fun b!9347 () Bool)

(assert (= bs!2457 (and b!9347 b!9329)))

(declare-fun lambda!2332 () Int)

(assert (=> bs!2457 (= (= (left!437 (right!440 tree!25)) (left!437 tree!25)) (= lambda!2332 lambda!2327))))

(declare-fun bs!2458 () Bool)

(assert (= bs!2458 (and b!9347 b!9314)))

(assert (=> bs!2458 (= (= (left!437 (right!440 tree!25)) tree!25) (= lambda!2332 lambda!2318))))

(declare-fun bs!2459 () Bool)

(assert (= bs!2459 (and b!9347 b!9312)))

(assert (=> bs!2459 (not (= lambda!2332 lambda!2321))))

(assert (=> bs!2457 (= (= (left!437 (right!440 tree!25)) (right!440 tree!25)) (= lambda!2332 lambda!2328))))

(assert (=> bs!2458 (not (= lambda!2332 lambda!2319))))

(assert (=> b!9347 true))

(assert (=> b!9347 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2332))))

(assert (=> b!9347 true))

(declare-fun b_next!2687 () Bool)

(assert (=> b!9315 (= b_next!2677 (or (and b!9347 (= lambda!2332 (x!5230 that!232))) b_next!2687))))

(declare-fun b_next!2689 () Bool)

(assert (=> b!9315 (= b_next!2679 (or (and b!9347 (= lambda!2332 (y!573 that!232))) b_next!2689))))

(declare-fun b_next!2691 () Bool)

(assert (=> b!9310 (= b_next!2681 (or (and b!9347 (= lambda!2332 (x!5230 thiss!854))) b_next!2691))))

(declare-fun b_next!2693 () Bool)

(assert (=> b!9310 (= b_next!2683 (or (and b!9347 (= lambda!2332 (y!573 thiss!854))) b_next!2693))))

(declare-fun lambda!2333 () Int)

(assert (=> bs!2457 (= (= (right!440 (right!440 tree!25)) (left!437 tree!25)) (= lambda!2333 lambda!2327))))

(assert (=> bs!2458 (= (= (right!440 (right!440 tree!25)) tree!25) (= lambda!2333 lambda!2318))))

(assert (=> bs!2459 (not (= lambda!2333 lambda!2321))))

(assert (=> b!9347 (= (= (right!440 (right!440 tree!25)) (left!437 (right!440 tree!25))) (= lambda!2333 lambda!2332))))

(assert (=> bs!2457 (= (= (right!440 (right!440 tree!25)) (right!440 tree!25)) (= lambda!2333 lambda!2328))))

(assert (=> bs!2458 (not (= lambda!2333 lambda!2319))))

(assert (=> b!9347 true))

(assert (=> b!9347 (< (dynLambda!291 order!137 f!585) (dynLambda!292 order!139 lambda!2333))))

(assert (=> b!9347 true))

(declare-fun b_next!2695 () Bool)

(assert (=> b!9315 (= b_next!2687 (or (and b!9347 (= lambda!2333 (x!5230 that!232))) b_next!2695))))

(declare-fun b_next!2697 () Bool)

(assert (=> b!9315 (= b_next!2689 (or (and b!9347 (= lambda!2333 (y!573 that!232))) b_next!2697))))

(declare-fun b_next!2699 () Bool)

(assert (=> b!9310 (= b_next!2691 (or (and b!9347 (= lambda!2333 (x!5230 thiss!854))) b_next!2699))))

(declare-fun b_next!2701 () Bool)

(assert (=> b!9310 (= b_next!2693 (or (and b!9347 (= lambda!2333 (y!573 thiss!854))) b_next!2701))))

(declare-fun e!5525 () Balance!207)

(declare-fun lt!1637 () tuple2!82)

(assert (=> b!9347 (= e!5525 (dynLambda!295 f!585 (_1!41 lt!1637) (_2!41 lt!1637)))))

(assert (=> b!9347 (= lt!1637 (tuple2!83 (dynLambda!293 lambda!2332) (dynLambda!293 lambda!2333)))))

(declare-fun d!7605 () Bool)

(declare-fun c!3038 () Bool)

(assert (=> d!7605 (= c!3038 (is-Leaf!139 (right!440 tree!25)))))

(assert (=> d!7605 (= (fold!42 (right!440 tree!25) f!585) e!5525)))

(declare-fun b!9346 () Bool)

(assert (=> b!9346 (= e!5525 (value!1308 (right!440 tree!25)))))

(assert (= (and d!7605 c!3038) b!9346))

(assert (= (and d!7605 (not c!3038)) b!9347))

(declare-fun b_lambda!4949 () Bool)

(assert (=> (not b_lambda!4949) (not b!9347)))

(declare-fun t!2515 () Bool)

(declare-fun tb!2175 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2515) tb!2175))

(declare-fun result!2215 () Bool)

(assert (=> tb!2175 (= result!2215 true)))

(assert (=> b!9347 t!2515))

(declare-fun b_and!4023 () Bool)

(assert (= b_and!4021 (and (=> t!2515 result!2215) b_and!4023)))

(declare-fun b_lambda!4951 () Bool)

(assert (=> (not b_lambda!4951) (not b!9347)))

(declare-fun b_lambda!4953 () Bool)

(assert (=> (not b_lambda!4953) (not b!9347)))

(declare-fun m!12411 () Bool)

(assert (=> b!9347 m!12411))

(declare-fun m!12413 () Bool)

(assert (=> b!9347 m!12413))

(declare-fun m!12415 () Bool)

(assert (=> b!9347 m!12415))

(assert (=> bs!2446 d!7605))

(assert (=> bs!2443 d!7597))

(assert (=> bs!2443 d!7599))

(assert (=> bs!2443 d!7605))

(assert (=> bs!2448 d!7597))

(assert (=> bs!2448 d!7599))

(assert (=> bs!2448 d!7601))

(assert (=> bs!2448 d!7603))

(declare-fun d!7607 () Bool)

(declare-fun res!3026 () Bool)

(declare-fun e!5528 () Bool)

(assert (=> d!7607 (=> (not res!3026) (not e!5528))))

(assert (=> d!7607 (= res!3026 (= (dynLambda!293 (x!5230 that!232)) (dynLambda!293 (y!573 that!232))))))

(assert (=> d!7607 (= (inv!328 that!232) e!5528)))

(declare-fun b!9350 () Bool)

(assert (=> b!9350 (= e!5528 (dynLambda!294 (evidence!152 that!232)))))

(assert (= (and d!7607 res!3026) b!9350))

(declare-fun b_lambda!4955 () Bool)

(assert (=> (not b_lambda!4955) (not d!7607)))

(assert (=> d!7607 t!2493))

(declare-fun b_and!4025 () Bool)

(assert (= b_and!3997 (and (=> t!2493 result!2193) b_and!4025)))

(assert (=> d!7607 t!2495))

(declare-fun b_and!4027 () Bool)

(assert (= b_and!3999 (and (=> t!2495 result!2195) b_and!4027)))

(assert (=> d!7607 t!2497))

(declare-fun b_and!4029 () Bool)

(assert (= b_and!4001 (and (=> t!2497 result!2197) b_and!4029)))

(assert (=> d!7607 t!2499))

(declare-fun b_and!4031 () Bool)

(assert (= b_and!4003 (and (=> t!2499 result!2199) b_and!4031)))

(declare-fun b_lambda!4957 () Bool)

(assert (=> (not b_lambda!4957) (not d!7607)))

(declare-fun t!2517 () Bool)

(declare-fun tb!2177 () Bool)

(assert (=> (and b!9315 (= (x!5230 that!232) (y!573 that!232)) t!2517) tb!2177))

(declare-fun result!2217 () Bool)

(assert (=> tb!2177 (= result!2217 true)))

(assert (=> d!7607 t!2517))

(declare-fun b_and!4033 () Bool)

(assert (= b_and!4025 (and (=> t!2517 result!2217) b_and!4033)))

(declare-fun t!2519 () Bool)

(declare-fun tb!2179 () Bool)

(assert (=> (and b!9315 (= (y!573 that!232) (y!573 that!232)) t!2519) tb!2179))

(declare-fun result!2219 () Bool)

(assert (=> tb!2179 (= result!2219 true)))

(assert (=> d!7607 t!2519))

(declare-fun b_and!4035 () Bool)

(assert (= b_and!4027 (and (=> t!2519 result!2219) b_and!4035)))

(declare-fun t!2521 () Bool)

(declare-fun tb!2181 () Bool)

(assert (=> (and b!9310 (= (x!5230 thiss!854) (y!573 that!232)) t!2521) tb!2181))

(declare-fun result!2221 () Bool)

(assert (=> tb!2181 (= result!2221 true)))

(assert (=> d!7607 t!2521))

(declare-fun b_and!4037 () Bool)

(assert (= b_and!4029 (and (=> t!2521 result!2221) b_and!4037)))

(declare-fun t!2523 () Bool)

(declare-fun tb!2183 () Bool)

(assert (=> (and b!9310 (= (y!573 thiss!854) (y!573 that!232)) t!2523) tb!2183))

(declare-fun result!2223 () Bool)

(assert (=> tb!2183 (= result!2223 true)))

(assert (=> d!7607 t!2523))

(declare-fun b_and!4039 () Bool)

(assert (= b_and!4031 (and (=> t!2523 result!2223) b_and!4039)))

(declare-fun b_lambda!4959 () Bool)

(assert (=> (not b_lambda!4959) (not b!9350)))

(declare-fun t!2525 () Bool)

(declare-fun tb!2185 () Bool)

(assert (=> (and b!9315 (= (evidence!152 that!232) (evidence!152 that!232)) t!2525) tb!2185))

(declare-fun result!2225 () Bool)

(assert (=> tb!2185 (= result!2225 true)))

(assert (=> b!9350 t!2525))

(declare-fun b_and!4041 () Bool)

(assert (= b_and!4005 (and (=> t!2525 result!2225) b_and!4041)))

(declare-fun t!2527 () Bool)

(declare-fun tb!2187 () Bool)

(assert (=> (and b!9310 (= (evidence!152 thiss!854) (evidence!152 that!232)) t!2527) tb!2187))

(declare-fun result!2227 () Bool)

(assert (=> tb!2187 (= result!2227 true)))

(assert (=> b!9350 t!2527))

(declare-fun b_and!4043 () Bool)

(assert (= b_and!4007 (and (=> t!2527 result!2227) b_and!4043)))

(assert (=> d!7607 m!12349))

(declare-fun m!12417 () Bool)

(assert (=> d!7607 m!12417))

(declare-fun m!12419 () Bool)

(assert (=> b!9350 m!12419))

(assert (=> start!1862 d!7607))

(declare-fun d!7609 () Bool)

(declare-fun res!3027 () Bool)

(declare-fun e!5529 () Bool)

(assert (=> d!7609 (=> (not res!3027) (not e!5529))))

(assert (=> d!7609 (= res!3027 (= (dynLambda!293 (x!5230 thiss!854)) (dynLambda!293 (y!573 thiss!854))))))

(assert (=> d!7609 (= (inv!328 thiss!854) e!5529)))

(declare-fun b!9351 () Bool)

(assert (=> b!9351 (= e!5529 (dynLambda!294 (evidence!152 thiss!854)))))

(assert (= (and d!7609 res!3027) b!9351))

(declare-fun b_lambda!4961 () Bool)

(assert (=> (not b_lambda!4961) (not d!7609)))

(declare-fun tb!2189 () Bool)

(declare-fun t!2529 () Bool)

(assert (=> (and b!9315 (= (x!5230 that!232) (x!5230 thiss!854)) t!2529) tb!2189))

(declare-fun result!2229 () Bool)

(assert (=> tb!2189 (= result!2229 true)))

(assert (=> d!7609 t!2529))

(declare-fun b_and!4045 () Bool)

(assert (= b_and!4033 (and (=> t!2529 result!2229) b_and!4045)))

(declare-fun tb!2191 () Bool)

(declare-fun t!2531 () Bool)

(assert (=> (and b!9315 (= (y!573 that!232) (x!5230 thiss!854)) t!2531) tb!2191))

(declare-fun result!2231 () Bool)

(assert (=> tb!2191 (= result!2231 true)))

(assert (=> d!7609 t!2531))

(declare-fun b_and!4047 () Bool)

(assert (= b_and!4035 (and (=> t!2531 result!2231) b_and!4047)))

(declare-fun t!2533 () Bool)

(declare-fun tb!2193 () Bool)

(assert (=> (and b!9310 (= (x!5230 thiss!854) (x!5230 thiss!854)) t!2533) tb!2193))

(declare-fun result!2233 () Bool)

(assert (=> tb!2193 (= result!2233 true)))

(assert (=> d!7609 t!2533))

(declare-fun b_and!4049 () Bool)

(assert (= b_and!4037 (and (=> t!2533 result!2233) b_and!4049)))

(declare-fun t!2535 () Bool)

(declare-fun tb!2195 () Bool)

(assert (=> (and b!9310 (= (y!573 thiss!854) (x!5230 thiss!854)) t!2535) tb!2195))

(declare-fun result!2235 () Bool)

(assert (=> tb!2195 (= result!2235 true)))

(assert (=> d!7609 t!2535))

(declare-fun b_and!4051 () Bool)

(assert (= b_and!4039 (and (=> t!2535 result!2235) b_and!4051)))

(declare-fun b_lambda!4963 () Bool)

(assert (=> (not b_lambda!4963) (not d!7609)))

(assert (=> d!7609 t!2485))

(declare-fun b_and!4053 () Bool)

(assert (= b_and!4045 (and (=> t!2485 result!2185) b_and!4053)))

(assert (=> d!7609 t!2487))

(declare-fun b_and!4055 () Bool)

(assert (= b_and!4047 (and (=> t!2487 result!2187) b_and!4055)))

(assert (=> d!7609 t!2489))

(declare-fun b_and!4057 () Bool)

(assert (= b_and!4049 (and (=> t!2489 result!2189) b_and!4057)))

(assert (=> d!7609 t!2491))

(declare-fun b_and!4059 () Bool)

(assert (= b_and!4051 (and (=> t!2491 result!2191) b_and!4059)))

(declare-fun b_lambda!4965 () Bool)

(assert (=> (not b_lambda!4965) (not b!9351)))

(assert (=> b!9351 t!2501))

(declare-fun b_and!4061 () Bool)

(assert (= b_and!4041 (and (=> t!2501 result!2201) b_and!4061)))

(assert (=> b!9351 t!2503))

(declare-fun b_and!4063 () Bool)

(assert (= b_and!4043 (and (=> t!2503 result!2203) b_and!4063)))

(declare-fun m!12421 () Bool)

(assert (=> d!7609 m!12421))

(assert (=> d!7609 m!12347))

(assert (=> b!9351 m!12351))

(assert (=> start!1862 d!7609))

(declare-fun bs!2460 () Bool)

(declare-fun d!7611 () Bool)

(assert (= bs!2460 (and d!7611 start!1862)))

(declare-fun lambda!2336 () Int)

(assert (=> bs!2460 (= lambda!2336 lambda!2317)))

(declare-fun bs!2461 () Bool)

(assert (= bs!2461 (and d!7611 d!7595)))

(assert (=> bs!2461 (= lambda!2336 lambda!2331)))

(declare-fun b_next!2703 () Bool)

(assert (=> start!1862 (= b_next!2685 (or (and d!7611 (= lambda!2336 f!585)) b_next!2703))))

(assert (=> d!7611 (because!2 (ProofOps!155 (= (++!3 (foldRight1!73 (toList!66 (left!437 tree!25)) lambda!2336) (foldRight1!73 (toList!66 (right!440 tree!25)) lambda!2336)) (foldRight1!73 (append!95 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))) lambda!2336))) true)))

(assert (=> d!7611 (= (++!3 (foldRight1!73 (toList!66 (left!437 tree!25)) lambda!2336) (foldRight1!73 (toList!66 (right!440 tree!25)) lambda!2336)) (foldRight1!73 (append!95 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))) lambda!2336))))

(declare-fun e!5532 () Bool)

(assert (=> d!7611 e!5532))

(declare-fun res!3036 () Bool)

(assert (=> d!7611 (=> (not res!3036) (not e!5532))))

(assert (=> d!7611 (= res!3036 (not (isEmpty!174 (toList!66 (left!437 tree!25)))))))

(assert (=> d!7611 (= (append!24 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))) true)))

(declare-fun b!9354 () Bool)

(assert (=> b!9354 (= e!5532 (not (isEmpty!174 (toList!66 (right!440 tree!25)))))))

(assert (= (and d!7611 res!3036) b!9354))

(assert (=> d!7611 m!12355))

(declare-fun m!12423 () Bool)

(assert (=> d!7611 m!12423))

(assert (=> d!7611 m!12365))

(declare-fun m!12425 () Bool)

(assert (=> d!7611 m!12425))

(assert (=> d!7611 m!12355))

(declare-fun m!12427 () Bool)

(assert (=> d!7611 m!12427))

(declare-fun m!12429 () Bool)

(assert (=> d!7611 m!12429))

(declare-fun m!12431 () Bool)

(assert (=> d!7611 m!12431))

(declare-fun m!12433 () Bool)

(assert (=> d!7611 m!12433))

(assert (=> d!7611 m!12423))

(assert (=> d!7611 m!12425))

(declare-fun m!12435 () Bool)

(assert (=> d!7611 m!12435))

(assert (=> d!7611 m!12355))

(assert (=> d!7611 m!12365))

(assert (=> d!7611 m!12429))

(assert (=> b!9354 m!12365))

(declare-fun m!12437 () Bool)

(assert (=> b!9354 m!12437))

(assert (=> bs!2450 d!7611))

(assert (=> bs!2450 d!7599))

(assert (=> bs!2450 d!7603))

(assert (=> bs!2445 d!7593))

(assert (=> b!9313 d!7593))

(declare-fun d!7613 () Bool)

(declare-fun c!3039 () Bool)

(assert (=> d!7613 (= c!3039 (and (is-Cons!217 (toList!66 tree!25)) (is-Nil!218 (tail!447 (toList!66 tree!25)))))))

(declare-fun e!5533 () Balance!207)

(assert (=> d!7613 (= (foldRight1!73 (toList!66 tree!25) f!585) e!5533)))

(declare-fun b!9355 () Bool)

(assert (=> b!9355 (= e!5533 (head!435 (toList!66 tree!25)))))

(declare-fun b!9356 () Bool)

(assert (=> b!9356 (= e!5533 (dynLambda!295 f!585 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)))))

(assert (= (and d!7613 c!3039) b!9355))

(assert (= (and d!7613 (not c!3039)) b!9356))

(declare-fun b_lambda!4967 () Bool)

(assert (=> (not b_lambda!4967) (not b!9356)))

(declare-fun t!2537 () Bool)

(declare-fun tb!2197 () Bool)

(assert (=> (and start!1862 (= f!585 f!585) t!2537) tb!2197))

(declare-fun result!2237 () Bool)

(assert (=> tb!2197 (= result!2237 true)))

(assert (=> b!9356 t!2537))

(declare-fun b_and!4065 () Bool)

(assert (= b_and!4023 (and (=> t!2537 result!2237) b_and!4065)))

(declare-fun m!12439 () Bool)

(assert (=> b!9356 m!12439))

(assert (=> b!9356 m!12439))

(declare-fun m!12441 () Bool)

(assert (=> b!9356 m!12441))

(assert (=> b!9313 d!7613))

(declare-fun d!7615 () Bool)

(declare-fun lt!1638 () List!220)

(assert (=> d!7615 (not (isEmpty!174 lt!1638))))

(declare-fun e!5534 () List!220)

(assert (=> d!7615 (= lt!1638 e!5534)))

(declare-fun c!3040 () Bool)

(assert (=> d!7615 (= c!3040 (is-Leaf!139 tree!25))))

(assert (=> d!7615 (= (toList!66 tree!25) lt!1638)))

(declare-fun b!9357 () Bool)

(assert (=> b!9357 (= e!5534 (Cons!217 (value!1308 tree!25) Nil!218))))

(declare-fun b!9358 () Bool)

(assert (=> b!9358 (= e!5534 (append!95 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))))))

(assert (= (and d!7615 c!3040) b!9357))

(assert (= (and d!7615 (not c!3040)) b!9358))

(declare-fun m!12443 () Bool)

(assert (=> d!7615 m!12443))

(assert (=> b!9358 m!12355))

(assert (=> b!9358 m!12365))

(assert (=> b!9358 m!12355))

(assert (=> b!9358 m!12365))

(assert (=> b!9358 m!12429))

(assert (=> b!9313 d!7615))

(declare-fun b_lambda!4969 () Bool)

(assert (= b_lambda!4957 (or (and b!9310 b_free!1091 (= (x!5230 thiss!854) (y!573 that!232))) (and b!9329 (= lambda!2328 (y!573 that!232))) (and b!9347 (= lambda!2333 (y!573 that!232))) (and b!9347 (= lambda!2332 (y!573 that!232))) (and b!9310 b_free!1093 (= (y!573 thiss!854) (y!573 that!232))) (and b!9314 (= lambda!2319 (y!573 that!232))) (and b!9314 (= lambda!2318 (y!573 that!232))) (and b!9312 (= lambda!2321 (y!573 that!232))) (and b!9315 b_free!1083 (= (x!5230 that!232) (y!573 that!232))) (and b!9329 (= lambda!2327 (y!573 that!232))) (and b!9315 b_free!1085) b_lambda!4969)))

(declare-fun bs!2462 () Bool)

(declare-fun d!7617 () Bool)

(assert (= bs!2462 (and d!7617 b!9314)))

(assert (=> bs!2462 (= (dynLambda!293 lambda!2318) (fold!42 tree!25 f!585))))

(assert (=> bs!2462 m!12337))

(assert (=> (and b!9314 (= lambda!2318 (y!573 that!232)) d!7607) d!7617))

(declare-fun bs!2463 () Bool)

(declare-fun d!7619 () Bool)

(assert (= bs!2463 (and d!7619 b!9329)))

(assert (=> bs!2463 (= (dynLambda!293 lambda!2327) (fold!42 (left!437 tree!25) f!585))))

(declare-fun m!12445 () Bool)

(assert (=> bs!2463 m!12445))

(assert (=> (and b!9329 (= lambda!2327 (y!573 that!232)) d!7607) d!7619))

(declare-fun bs!2464 () Bool)

(declare-fun d!7621 () Bool)

(assert (= bs!2464 (and d!7621 b!9347)))

(assert (=> bs!2464 (= (dynLambda!293 lambda!2332) (fold!42 (left!437 (right!440 tree!25)) f!585))))

(declare-fun m!12447 () Bool)

(assert (=> bs!2464 m!12447))

(assert (=> (and b!9347 (= lambda!2332 (y!573 that!232)) d!7607) d!7621))

(declare-fun bs!2465 () Bool)

(declare-fun d!7623 () Bool)

(assert (= bs!2465 (and d!7623 b!9314)))

(assert (=> bs!2465 (= (dynLambda!293 lambda!2319) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)))))

(declare-fun b_lambda!4999 () Bool)

(assert (=> (not b_lambda!4999) (not bs!2465)))

(assert (=> bs!2465 t!2505))

(declare-fun b_and!4067 () Bool)

(assert (= b_and!4065 (and (=> t!2505 result!2205) b_and!4067)))

(assert (=> bs!2465 m!12353))

(assert (=> bs!2465 m!12355))

(assert (=> bs!2465 m!12355))

(assert (=> bs!2465 m!12357))

(assert (=> bs!2465 m!12357))

(assert (=> bs!2465 m!12353))

(assert (=> bs!2465 m!12359))

(assert (=> (and b!9314 (= lambda!2319 (y!573 that!232)) d!7607) d!7623))

(declare-fun bs!2466 () Bool)

(declare-fun d!7625 () Bool)

(assert (= bs!2466 (and d!7625 b!9312)))

(assert (=> bs!2466 (= (dynLambda!293 lambda!2321) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)))))

(declare-fun b_lambda!5001 () Bool)

(assert (=> (not b_lambda!5001) (not bs!2466)))

(assert (=> bs!2466 t!2507))

(declare-fun b_and!4069 () Bool)

(assert (= b_and!4067 (and (=> t!2507 result!2207) b_and!4069)))

(assert (=> bs!2466 m!12355))

(assert (=> bs!2466 m!12357))

(assert (=> bs!2466 m!12361))

(assert (=> bs!2466 m!12363))

(assert (=> bs!2466 m!12365))

(assert (=> bs!2466 m!12355))

(assert (=> bs!2466 m!12357))

(assert (=> bs!2466 m!12365))

(assert (=> bs!2466 m!12361))

(assert (=> (and b!9312 (= lambda!2321 (y!573 that!232)) d!7607) d!7625))

(declare-fun bs!2467 () Bool)

(declare-fun d!7627 () Bool)

(assert (= bs!2467 (and d!7627 b!9347)))

(assert (=> bs!2467 (= (dynLambda!293 lambda!2333) (fold!42 (right!440 (right!440 tree!25)) f!585))))

(declare-fun m!12449 () Bool)

(assert (=> bs!2467 m!12449))

(assert (=> (and b!9347 (= lambda!2333 (y!573 that!232)) d!7607) d!7627))

(declare-fun bs!2468 () Bool)

(declare-fun d!7629 () Bool)

(assert (= bs!2468 (and d!7629 b!9329)))

(assert (=> bs!2468 (= (dynLambda!293 lambda!2328) (fold!42 (right!440 tree!25) f!585))))

(assert (=> bs!2468 m!12353))

(assert (=> (and b!9329 (= lambda!2328 (y!573 that!232)) d!7607) d!7629))

(declare-fun b_lambda!4971 () Bool)

(assert (= b_lambda!4955 (or (and b!9312 (= lambda!2321 (x!5230 that!232))) (and b!9347 (= lambda!2332 (x!5230 that!232))) (and b!9310 b_free!1093 (= (y!573 thiss!854) (x!5230 that!232))) (and b!9314 (= lambda!2319 (x!5230 that!232))) (and b!9315 b_free!1083) (and b!9347 (= lambda!2333 (x!5230 that!232))) (and b!9315 b_free!1085 (= (y!573 that!232) (x!5230 that!232))) (and b!9310 b_free!1091 (= (x!5230 thiss!854) (x!5230 that!232))) (and b!9329 (= lambda!2328 (x!5230 that!232))) (and b!9329 (= lambda!2327 (x!5230 that!232))) (and b!9314 (= lambda!2318 (x!5230 that!232))) b_lambda!4971)))

(declare-fun bs!2469 () Bool)

(declare-fun d!7631 () Bool)

(assert (= bs!2469 (and d!7631 b!9329)))

(assert (=> bs!2469 (= (dynLambda!293 lambda!2327) (fold!42 (left!437 tree!25) f!585))))

(assert (=> bs!2469 m!12445))

(assert (=> (and b!9329 (= lambda!2327 (x!5230 that!232)) d!7607) d!7631))

(declare-fun bs!2470 () Bool)

(declare-fun d!7633 () Bool)

(assert (= bs!2470 (and d!7633 b!9347)))

(assert (=> bs!2470 (= (dynLambda!293 lambda!2332) (fold!42 (left!437 (right!440 tree!25)) f!585))))

(assert (=> bs!2470 m!12447))

(assert (=> (and b!9347 (= lambda!2332 (x!5230 that!232)) d!7607) d!7633))

(declare-fun bs!2471 () Bool)

(declare-fun d!7635 () Bool)

(assert (= bs!2471 (and d!7635 b!9347)))

(assert (=> bs!2471 (= (dynLambda!293 lambda!2333) (fold!42 (right!440 (right!440 tree!25)) f!585))))

(assert (=> bs!2471 m!12449))

(assert (=> (and b!9347 (= lambda!2333 (x!5230 that!232)) d!7607) d!7635))

(assert (=> (and b!9314 (= lambda!2319 (x!5230 that!232)) d!7607) d!7573))

(declare-fun bs!2472 () Bool)

(declare-fun d!7637 () Bool)

(assert (= bs!2472 (and d!7637 b!9329)))

(assert (=> bs!2472 (= (dynLambda!293 lambda!2328) (fold!42 (right!440 tree!25) f!585))))

(assert (=> bs!2472 m!12353))

(assert (=> (and b!9329 (= lambda!2328 (x!5230 that!232)) d!7607) d!7637))

(assert (=> (and b!9312 (= lambda!2321 (x!5230 that!232)) d!7607) d!7575))

(assert (=> (and b!9314 (= lambda!2318 (x!5230 that!232)) d!7607) d!7577))

(declare-fun b_lambda!4973 () Bool)

(assert (= b_lambda!4941 (or b!9329 b_lambda!4973)))

(declare-fun bs!2473 () Bool)

(declare-fun d!7639 () Bool)

(assert (= bs!2473 (and d!7639 b!9329)))

(assert (=> bs!2473 (= (dynLambda!293 lambda!2327) (fold!42 (left!437 tree!25) f!585))))

(assert (=> bs!2473 m!12445))

(assert (=> b!9329 d!7639))

(declare-fun b_lambda!4975 () Bool)

(assert (= b_lambda!4951 (or b!9347 b_lambda!4975)))

(declare-fun bs!2474 () Bool)

(declare-fun d!7641 () Bool)

(assert (= bs!2474 (and d!7641 b!9347)))

(assert (=> bs!2474 (= (dynLambda!293 lambda!2332) (fold!42 (left!437 (right!440 tree!25)) f!585))))

(assert (=> bs!2474 m!12447))

(assert (=> b!9347 d!7641))

(declare-fun b_lambda!4977 () Bool)

(assert (= b_lambda!4965 (or (and b!9314 (= lambda!2320 (evidence!152 thiss!854))) (and b!9312 (= lambda!2322 (evidence!152 thiss!854))) (and b!9315 b_free!1087 (= (evidence!152 that!232) (evidence!152 thiss!854))) (and b!9310 b_free!1095) b_lambda!4977)))

(assert (=> (and b!9314 (= lambda!2320 (evidence!152 thiss!854)) b!9351) d!7585))

(assert (=> (and b!9312 (= lambda!2322 (evidence!152 thiss!854)) b!9351) d!7587))

(declare-fun b_lambda!4979 () Bool)

(assert (= b_lambda!4961 (or (and b!9347 (= lambda!2333 (x!5230 thiss!854))) (and b!9310 b_free!1091) (and b!9329 (= lambda!2328 (x!5230 thiss!854))) (and b!9315 b_free!1085 (= (y!573 that!232) (x!5230 thiss!854))) (and b!9314 (= lambda!2319 (x!5230 thiss!854))) (and b!9315 b_free!1083 (= (x!5230 that!232) (x!5230 thiss!854))) (and b!9310 b_free!1093 (= (y!573 thiss!854) (x!5230 thiss!854))) (and b!9314 (= lambda!2318 (x!5230 thiss!854))) (and b!9312 (= lambda!2321 (x!5230 thiss!854))) (and b!9329 (= lambda!2327 (x!5230 thiss!854))) (and b!9347 (= lambda!2332 (x!5230 thiss!854))) b_lambda!4979)))

(declare-fun bs!2475 () Bool)

(declare-fun d!7643 () Bool)

(assert (= bs!2475 (and d!7643 b!9314)))

(assert (=> bs!2475 (= (dynLambda!293 lambda!2319) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (fold!42 (right!440 tree!25) f!585)))))

(declare-fun b_lambda!5003 () Bool)

(assert (=> (not b_lambda!5003) (not bs!2475)))

(assert (=> bs!2475 t!2505))

(declare-fun b_and!4071 () Bool)

(assert (= b_and!4069 (and (=> t!2505 result!2205) b_and!4071)))

(assert (=> bs!2475 m!12353))

(assert (=> bs!2475 m!12355))

(assert (=> bs!2475 m!12355))

(assert (=> bs!2475 m!12357))

(assert (=> bs!2475 m!12357))

(assert (=> bs!2475 m!12353))

(assert (=> bs!2475 m!12359))

(assert (=> (and b!9314 (= lambda!2319 (x!5230 thiss!854)) d!7609) d!7643))

(declare-fun bs!2476 () Bool)

(declare-fun d!7645 () Bool)

(assert (= bs!2476 (and d!7645 b!9314)))

(assert (=> bs!2476 (= (dynLambda!293 lambda!2318) (fold!42 tree!25 f!585))))

(assert (=> bs!2476 m!12337))

(assert (=> (and b!9314 (= lambda!2318 (x!5230 thiss!854)) d!7609) d!7645))

(declare-fun bs!2477 () Bool)

(declare-fun d!7647 () Bool)

(assert (= bs!2477 (and d!7647 b!9329)))

(assert (=> bs!2477 (= (dynLambda!293 lambda!2328) (fold!42 (right!440 tree!25) f!585))))

(assert (=> bs!2477 m!12353))

(assert (=> (and b!9329 (= lambda!2328 (x!5230 thiss!854)) d!7609) d!7647))

(declare-fun bs!2478 () Bool)

(declare-fun d!7649 () Bool)

(assert (= bs!2478 (and d!7649 b!9347)))

(assert (=> bs!2478 (= (dynLambda!293 lambda!2333) (fold!42 (right!440 (right!440 tree!25)) f!585))))

(assert (=> bs!2478 m!12449))

(assert (=> (and b!9347 (= lambda!2333 (x!5230 thiss!854)) d!7609) d!7649))

(declare-fun bs!2479 () Bool)

(declare-fun d!7651 () Bool)

(assert (= bs!2479 (and d!7651 b!9347)))

(assert (=> bs!2479 (= (dynLambda!293 lambda!2332) (fold!42 (left!437 (right!440 tree!25)) f!585))))

(assert (=> bs!2479 m!12447))

(assert (=> (and b!9347 (= lambda!2332 (x!5230 thiss!854)) d!7609) d!7651))

(declare-fun bs!2480 () Bool)

(declare-fun d!7653 () Bool)

(assert (= bs!2480 (and d!7653 b!9312)))

(assert (=> bs!2480 (= (dynLambda!293 lambda!2321) (dynLambda!295 f!585 (foldRight1!73 (toList!66 (left!437 tree!25)) f!585) (foldRight1!73 (toList!66 (right!440 tree!25)) f!585)))))

(declare-fun b_lambda!5005 () Bool)

(assert (=> (not b_lambda!5005) (not bs!2480)))

(assert (=> bs!2480 t!2507))

(declare-fun b_and!4073 () Bool)

(assert (= b_and!4071 (and (=> t!2507 result!2207) b_and!4073)))

(assert (=> bs!2480 m!12355))

(assert (=> bs!2480 m!12357))

(assert (=> bs!2480 m!12361))

(assert (=> bs!2480 m!12363))

(assert (=> bs!2480 m!12365))

(assert (=> bs!2480 m!12355))

(assert (=> bs!2480 m!12357))

(assert (=> bs!2480 m!12365))

(assert (=> bs!2480 m!12361))

(assert (=> (and b!9312 (= lambda!2321 (x!5230 thiss!854)) d!7609) d!7653))

(declare-fun bs!2481 () Bool)

(declare-fun d!7655 () Bool)

(assert (= bs!2481 (and d!7655 b!9329)))

(assert (=> bs!2481 (= (dynLambda!293 lambda!2327) (fold!42 (left!437 tree!25) f!585))))

(assert (=> bs!2481 m!12445))

(assert (=> (and b!9329 (= lambda!2327 (x!5230 thiss!854)) d!7609) d!7655))

(declare-fun b_lambda!4981 () Bool)

(assert (= b_lambda!4947 (or (and start!1862 (= lambda!2317 f!585)) (and d!7595 (= lambda!2331 f!585)) (and start!1862 b_free!1089) (and d!7611 (= lambda!2336 f!585)) b_lambda!4981)))

(declare-fun bs!2482 () Bool)

(declare-fun d!7657 () Bool)

(assert (= bs!2482 (and d!7657 start!1862)))

(assert (=> bs!2482 (= (dynLambda!295 lambda!2317 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)) (++!3 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)))))

(assert (=> bs!2482 m!12399))

(declare-fun m!12451 () Bool)

(assert (=> bs!2482 m!12451))

(assert (=> (and start!1862 (= lambda!2317 f!585) b!9343) d!7657))

(declare-fun bs!2483 () Bool)

(declare-fun d!7659 () Bool)

(assert (= bs!2483 (and d!7659 d!7595)))

(assert (=> bs!2483 (= (dynLambda!295 lambda!2331 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)) (++!3 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)))))

(assert (=> bs!2483 m!12399))

(assert (=> bs!2483 m!12451))

(assert (=> (and d!7595 (= lambda!2331 f!585) b!9343) d!7659))

(declare-fun bs!2484 () Bool)

(declare-fun d!7661 () Bool)

(assert (= bs!2484 (and d!7661 d!7611)))

(assert (=> bs!2484 (= (dynLambda!295 lambda!2336 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)) (++!3 (head!435 (toList!66 (right!440 tree!25))) (foldRight1!73 (tail!447 (toList!66 (right!440 tree!25))) f!585)))))

(assert (=> bs!2484 m!12399))

(assert (=> bs!2484 m!12451))

(assert (=> (and d!7611 (= lambda!2336 f!585) b!9343) d!7661))

(declare-fun b_lambda!4983 () Bool)

(assert (= b_lambda!4967 (or (and start!1862 (= lambda!2317 f!585)) (and d!7595 (= lambda!2331 f!585)) (and d!7611 (= lambda!2336 f!585)) (and start!1862 b_free!1089) b_lambda!4983)))

(declare-fun bs!2485 () Bool)

(declare-fun d!7663 () Bool)

(assert (= bs!2485 (and d!7663 start!1862)))

(assert (=> bs!2485 (= (dynLambda!295 lambda!2317 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)) (++!3 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)))))

(assert (=> bs!2485 m!12439))

(declare-fun m!12453 () Bool)

(assert (=> bs!2485 m!12453))

(assert (=> (and start!1862 (= lambda!2317 f!585) b!9356) d!7663))

(declare-fun bs!2486 () Bool)

(declare-fun d!7665 () Bool)

(assert (= bs!2486 (and d!7665 d!7595)))

(assert (=> bs!2486 (= (dynLambda!295 lambda!2331 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)) (++!3 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)))))

(assert (=> bs!2486 m!12439))

(assert (=> bs!2486 m!12453))

(assert (=> (and d!7595 (= lambda!2331 f!585) b!9356) d!7665))

(declare-fun bs!2487 () Bool)

(declare-fun d!7667 () Bool)

(assert (= bs!2487 (and d!7667 d!7611)))

(assert (=> bs!2487 (= (dynLambda!295 lambda!2336 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)) (++!3 (head!435 (toList!66 tree!25)) (foldRight1!73 (tail!447 (toList!66 tree!25)) f!585)))))

(assert (=> bs!2487 m!12439))

(assert (=> bs!2487 m!12453))

(assert (=> (and d!7611 (= lambda!2336 f!585) b!9356) d!7667))

(declare-fun b_lambda!4985 () Bool)

(assert (= b_lambda!4943 (or b!9329 b_lambda!4985)))

(declare-fun bs!2488 () Bool)

(declare-fun d!7669 () Bool)

(assert (= bs!2488 (and d!7669 b!9329)))

(assert (=> bs!2488 (= (dynLambda!293 lambda!2328) (fold!42 (right!440 tree!25) f!585))))

(assert (=> bs!2488 m!12353))

(assert (=> b!9329 d!7669))

(declare-fun b_lambda!4987 () Bool)

(assert (= b_lambda!4945 (or (and start!1862 (= lambda!2317 f!585)) (and d!7595 (= lambda!2331 f!585)) (and start!1862 b_free!1089) (and d!7611 (= lambda!2336 f!585)) b_lambda!4987)))

(declare-fun bs!2489 () Bool)

(declare-fun d!7671 () Bool)

(assert (= bs!2489 (and d!7671 start!1862)))

(assert (=> bs!2489 (= (dynLambda!295 lambda!2317 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)) (++!3 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)))))

(assert (=> bs!2489 m!12387))

(declare-fun m!12455 () Bool)

(assert (=> bs!2489 m!12455))

(assert (=> (and start!1862 (= lambda!2317 f!585) b!9335) d!7671))

(declare-fun bs!2490 () Bool)

(declare-fun d!7673 () Bool)

(assert (= bs!2490 (and d!7673 d!7595)))

(assert (=> bs!2490 (= (dynLambda!295 lambda!2331 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)) (++!3 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)))))

(assert (=> bs!2490 m!12387))

(assert (=> bs!2490 m!12455))

(assert (=> (and d!7595 (= lambda!2331 f!585) b!9335) d!7673))

(declare-fun bs!2491 () Bool)

(declare-fun d!7675 () Bool)

(assert (= bs!2491 (and d!7675 d!7611)))

(assert (=> bs!2491 (= (dynLambda!295 lambda!2336 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)) (++!3 (head!435 (toList!66 (left!437 tree!25))) (foldRight1!73 (tail!447 (toList!66 (left!437 tree!25))) f!585)))))

(assert (=> bs!2491 m!12387))

(assert (=> bs!2491 m!12455))

(assert (=> (and d!7611 (= lambda!2336 f!585) b!9335) d!7675))

(declare-fun b_lambda!4989 () Bool)

(assert (= b_lambda!4949 (or (and start!1862 (= lambda!2317 f!585)) (and d!7595 (= lambda!2331 f!585)) (and start!1862 b_free!1089) (and d!7611 (= lambda!2336 f!585)) b_lambda!4989)))

(declare-fun bs!2492 () Bool)

(declare-fun d!7677 () Bool)

(assert (= bs!2492 (and d!7677 start!1862)))

(assert (=> bs!2492 (= (dynLambda!295 lambda!2317 (_1!41 lt!1637) (_2!41 lt!1637)) (++!3 (_1!41 lt!1637) (_2!41 lt!1637)))))

(declare-fun m!12457 () Bool)

(assert (=> bs!2492 m!12457))

(assert (=> (and start!1862 (= lambda!2317 f!585) b!9347) d!7677))

(declare-fun bs!2493 () Bool)

(declare-fun d!7679 () Bool)

(assert (= bs!2493 (and d!7679 d!7595)))

(assert (=> bs!2493 (= (dynLambda!295 lambda!2331 (_1!41 lt!1637) (_2!41 lt!1637)) (++!3 (_1!41 lt!1637) (_2!41 lt!1637)))))

(assert (=> bs!2493 m!12457))

(assert (=> (and d!7595 (= lambda!2331 f!585) b!9347) d!7679))

(declare-fun bs!2494 () Bool)

(declare-fun d!7681 () Bool)

(assert (= bs!2494 (and d!7681 d!7611)))

(assert (=> bs!2494 (= (dynLambda!295 lambda!2336 (_1!41 lt!1637) (_2!41 lt!1637)) (++!3 (_1!41 lt!1637) (_2!41 lt!1637)))))

(assert (=> bs!2494 m!12457))

(assert (=> (and d!7611 (= lambda!2336 f!585) b!9347) d!7681))

(declare-fun b_lambda!4991 () Bool)

(assert (= b_lambda!4963 (or (and b!9310 b_free!1093) (and b!9347 (= lambda!2332 (y!573 thiss!854))) (and b!9314 (= lambda!2318 (y!573 thiss!854))) (and b!9315 b_free!1083 (= (x!5230 that!232) (y!573 thiss!854))) (and b!9329 (= lambda!2327 (y!573 thiss!854))) (and b!9347 (= lambda!2333 (y!573 thiss!854))) (and b!9329 (= lambda!2328 (y!573 thiss!854))) (and b!9310 b_free!1091 (= (x!5230 thiss!854) (y!573 thiss!854))) (and b!9312 (= lambda!2321 (y!573 thiss!854))) (and b!9314 (= lambda!2319 (y!573 thiss!854))) (and b!9315 b_free!1085 (= (y!573 that!232) (y!573 thiss!854))) b_lambda!4991)))

(declare-fun bs!2495 () Bool)

(declare-fun d!7683 () Bool)

(assert (= bs!2495 (and d!7683 b!9347)))

(assert (=> bs!2495 (= (dynLambda!293 lambda!2332) (fold!42 (left!437 (right!440 tree!25)) f!585))))

(assert (=> bs!2495 m!12447))

(assert (=> (and b!9347 (= lambda!2332 (y!573 thiss!854)) d!7609) d!7683))

(assert (=> (and b!9314 (= lambda!2319 (y!573 thiss!854)) d!7609) d!7579))

(declare-fun bs!2496 () Bool)

(declare-fun d!7685 () Bool)

(assert (= bs!2496 (and d!7685 b!9329)))

(assert (=> bs!2496 (= (dynLambda!293 lambda!2328) (fold!42 (right!440 tree!25) f!585))))

(assert (=> bs!2496 m!12353))

(assert (=> (and b!9329 (= lambda!2328 (y!573 thiss!854)) d!7609) d!7685))

(assert (=> (and b!9314 (= lambda!2318 (y!573 thiss!854)) d!7609) d!7581))

(declare-fun bs!2497 () Bool)

(declare-fun d!7687 () Bool)

(assert (= bs!2497 (and d!7687 b!9329)))

(assert (=> bs!2497 (= (dynLambda!293 lambda!2327) (fold!42 (left!437 tree!25) f!585))))

(assert (=> bs!2497 m!12445))

(assert (=> (and b!9329 (= lambda!2327 (y!573 thiss!854)) d!7609) d!7687))

(assert (=> (and b!9312 (= lambda!2321 (y!573 thiss!854)) d!7609) d!7583))

(declare-fun bs!2498 () Bool)

(declare-fun d!7689 () Bool)

(assert (= bs!2498 (and d!7689 b!9347)))

(assert (=> bs!2498 (= (dynLambda!293 lambda!2333) (fold!42 (right!440 (right!440 tree!25)) f!585))))

(assert (=> bs!2498 m!12449))

(assert (=> (and b!9347 (= lambda!2333 (y!573 thiss!854)) d!7609) d!7689))

(declare-fun b_lambda!4993 () Bool)

(assert (= b_lambda!4959 (or (and b!9314 (= lambda!2320 (evidence!152 that!232))) (and b!9312 (= lambda!2322 (evidence!152 that!232))) (and b!9315 b_free!1087) (and b!9310 b_free!1095 (= (evidence!152 thiss!854) (evidence!152 that!232))) b_lambda!4993)))

(declare-fun bs!2499 () Bool)

(declare-fun d!7691 () Bool)

(assert (= bs!2499 (and d!7691 b!9314)))

(assert (=> bs!2499 (= (dynLambda!294 lambda!2320) (fold_foldRight1_equivalence!0 (right!440 tree!25)))))

(assert (=> bs!2499 m!12367))

(assert (=> (and b!9314 (= lambda!2320 (evidence!152 that!232)) b!9350) d!7691))

(declare-fun bs!2500 () Bool)

(declare-fun d!7693 () Bool)

(assert (= bs!2500 (and d!7693 b!9312)))

(assert (=> bs!2500 (= (dynLambda!294 lambda!2322) (append!24 (toList!66 (left!437 tree!25)) (toList!66 (right!440 tree!25))))))

(assert (=> bs!2500 m!12355))

(assert (=> bs!2500 m!12365))

(assert (=> bs!2500 m!12355))

(assert (=> bs!2500 m!12365))

(assert (=> bs!2500 m!12369))

(assert (=> (and b!9312 (= lambda!2322 (evidence!152 that!232)) b!9350) d!7693))

(declare-fun b_lambda!4995 () Bool)

(assert (= b_lambda!4939 (or (and start!1862 (= lambda!2317 f!585)) (and start!1862 b_free!1089) (and d!7595 (= lambda!2331 f!585)) (and d!7611 (= lambda!2336 f!585)) b_lambda!4995)))

(declare-fun bs!2501 () Bool)

(declare-fun d!7695 () Bool)

(assert (= bs!2501 (and d!7695 start!1862)))

(assert (=> bs!2501 (= (dynLambda!295 lambda!2317 (_1!41 lt!1632) (_2!41 lt!1632)) (++!3 (_1!41 lt!1632) (_2!41 lt!1632)))))

(declare-fun m!12459 () Bool)

(assert (=> bs!2501 m!12459))

(assert (=> (and start!1862 (= lambda!2317 f!585) b!9329) d!7695))

(declare-fun bs!2502 () Bool)

(declare-fun d!7697 () Bool)

(assert (= bs!2502 (and d!7697 d!7595)))

(assert (=> bs!2502 (= (dynLambda!295 lambda!2331 (_1!41 lt!1632) (_2!41 lt!1632)) (++!3 (_1!41 lt!1632) (_2!41 lt!1632)))))

(assert (=> bs!2502 m!12459))

(assert (=> (and d!7595 (= lambda!2331 f!585) b!9329) d!7697))

(declare-fun bs!2503 () Bool)

(declare-fun d!7699 () Bool)

(assert (= bs!2503 (and d!7699 d!7611)))

(assert (=> bs!2503 (= (dynLambda!295 lambda!2336 (_1!41 lt!1632) (_2!41 lt!1632)) (++!3 (_1!41 lt!1632) (_2!41 lt!1632)))))

(assert (=> bs!2503 m!12459))

(assert (=> (and d!7611 (= lambda!2336 f!585) b!9329) d!7699))

(declare-fun b_lambda!4997 () Bool)

(assert (= b_lambda!4953 (or b!9347 b_lambda!4997)))

(declare-fun bs!2504 () Bool)

(declare-fun d!7701 () Bool)

(assert (= bs!2504 (and d!7701 b!9347)))

(assert (=> bs!2504 (= (dynLambda!293 lambda!2333) (fold!42 (right!440 (right!440 tree!25)) f!585))))

(assert (=> bs!2504 m!12449))

(assert (=> b!9347 d!7701))

(push 1)

(assert (not bs!2499))

(assert (not b!9343))

(assert b_and!4053)

(assert (not b_lambda!4997))

(assert b_and!4057)

(assert (not b_lambda!4935))

(assert (not b_lambda!5005))

(assert (not b_lambda!4933))

(assert (not b_lambda!5003))

(assert (not b_lambda!4995))

(assert (not bs!2467))

(assert (not b_lambda!4937))

(assert (not bs!2495))

(assert (not bs!2501))

(assert (not bs!2483))

(assert (not b!9356))

(assert (not d!7615))

(assert (not bs!2468))

(assert (not bs!2473))

(assert (not bs!2475))

(assert (not bs!2472))

(assert (not b_lambda!4987))

(assert (not bs!2496))

(assert (not bs!2481))

(assert (not bs!2487))

(assert (not b_next!2703))

(assert (not bs!2470))

(assert (not b_lambda!4979))

(assert (not b_next!2665))

(assert (not bs!2480))

(assert (not bs!2462))

(assert (not b!9341))

(assert (not bs!2479))

(assert (not b_lambda!4989))

(assert (not d!7603))

(assert (not bs!2498))

(assert (not b_next!2699))

(assert (not b_lambda!4999))

(assert (not b_lambda!4931))

(assert (not b_lambda!4919))

(assert (not bs!2494))

(assert (not b_lambda!4917))

(assert (not b_lambda!5001))

(assert (not bs!2500))

(assert (not b_lambda!4985))

(assert b_and!4059)

(assert (not b_lambda!4983))

(assert (not bs!2488))

(assert (not bs!2485))

(assert (not bs!2476))

(assert (not bs!2452))

(assert (not d!7599))

(assert b_and!4061)

(assert (not bs!2486))

(assert (not b_lambda!4981))

(assert (not b_lambda!4975))

(assert (not d!7595))

(assert (not b!9345))

(assert (not bs!2490))

(assert (not bs!2489))

(assert (not b_lambda!4977))

(assert (not bs!2463))

(assert (not bs!2492))

(assert (not b_lambda!4993))

(assert b_and!4073)

(assert (not bs!2491))

(assert (not bs!2464))

(assert (not bs!2484))

(assert (not b_next!2701))

(assert (not b_lambda!4973))

(assert (not bs!2497))

(assert (not b_lambda!4921))

(assert (not bs!2503))

(assert (not bs!2451))

(assert (not b!9358))

(assert (not bs!2474))

(assert (not b!9354))

(assert (not bs!2466))

(assert (not bs!2504))

(assert (not bs!2469))

(assert (not bs!2478))

(assert (not b_lambda!4969))

(assert (not b_next!2667))

(assert b_and!4063)

(assert (not bs!2482))

(assert (not bs!2477))

(assert (not bs!2471))

(assert (not b_lambda!4971))

(assert (not b_next!2695))

(assert (not bs!2502))

(assert b_and!4055)

(assert (not d!7611))

(assert (not b!9335))

(assert (not bs!2493))

(assert (not bs!2465))

(assert (not b_lambda!4991))

(assert (not b_next!2697))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4053)

(assert b_and!4057)

(assert (not b_next!2703))

(assert (not b_next!2665))

(assert (not b_next!2699))

(assert b_and!4059)

(assert b_and!4061)

(assert b_and!4073)

(assert (not b_next!2701))

(assert (not b_next!2667))

(assert b_and!4063)

(assert (not b_next!2695))

(assert b_and!4055)

(assert (not b_next!2697))

(check-sat)

(pop 1)

