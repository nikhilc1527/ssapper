; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1894 () Bool)

(assert start!1894)

(declare-fun b!9459 () Bool)

(declare-fun b_free!1139 () Bool)

(declare-fun b_next!2803 () Bool)

(assert (=> b!9459 (= b_free!1139 (not b_next!2803))))

(declare-fun tp!1847 () Bool)

(declare-fun b_and!4169 () Bool)

(assert (=> b!9459 (= tp!1847 b_and!4169)))

(declare-fun b_free!1141 () Bool)

(declare-fun b_next!2805 () Bool)

(assert (=> b!9459 (= b_free!1141 (not b_next!2805))))

(declare-fun tp!1846 () Bool)

(declare-fun b_and!4171 () Bool)

(assert (=> b!9459 (= tp!1846 b_and!4171)))

(declare-fun b_free!1143 () Bool)

(declare-fun b_next!2807 () Bool)

(assert (=> b!9459 (= b_free!1143 (not b_next!2807))))

(declare-fun tp!1844 () Bool)

(declare-fun b_and!4173 () Bool)

(assert (=> b!9459 (= tp!1844 b_and!4173)))

(declare-fun b_free!1145 () Bool)

(declare-fun b_next!2809 () Bool)

(assert (=> start!1894 (= b_free!1145 (not b_next!2809))))

(declare-fun tp!1849 () Bool)

(declare-fun b_and!4175 () Bool)

(assert (=> start!1894 (= tp!1849 b_and!4175)))

(declare-fun b!9460 () Bool)

(declare-fun b_free!1147 () Bool)

(declare-fun b_next!2811 () Bool)

(assert (=> b!9460 (= b_free!1147 (not b_next!2811))))

(declare-fun tp!1845 () Bool)

(declare-fun b_and!4177 () Bool)

(assert (=> b!9460 (= tp!1845 b_and!4177)))

(declare-fun b_free!1149 () Bool)

(declare-fun b_next!2813 () Bool)

(assert (=> b!9460 (= b_free!1149 (not b_next!2813))))

(declare-fun tp!1843 () Bool)

(declare-fun b_and!4179 () Bool)

(assert (=> b!9460 (= tp!1843 b_and!4179)))

(declare-fun b_free!1151 () Bool)

(declare-fun b_next!2815 () Bool)

(assert (=> b!9460 (= b_free!1151 (not b_next!2815))))

(declare-fun tp!1848 () Bool)

(declare-fun b_and!4181 () Bool)

(assert (=> b!9460 (= tp!1848 b_and!4181)))

(declare-fun f!585 () Int)

(declare-fun lambda!2386 () Int)

(declare-fun b_next!2817 () Bool)

(assert (=> start!1894 (= b_next!2809 (or (and start!1894 (= lambda!2386 f!585)) b_next!2817))))

(declare-fun b!9462 () Bool)

(assert (=> b!9462 true))

(declare-fun lambda!2387 () Int)

(declare-fun order!145 () Int)

(declare-fun order!147 () Int)

(declare-fun dynLambda!301 (Int Int) Int)

(declare-fun dynLambda!302 (Int Int) Int)

(assert (=> b!9462 (< (dynLambda!301 order!145 f!585) (dynLambda!302 order!147 lambda!2387))))

(assert (=> b!9462 true))

(declare-fun b_next!2819 () Bool)

(declare-datatypes () ((Balance!215 (Balance!216 (extraOpen!148 Int) (extraClose!148 Int)))))

(declare-datatypes () ((EqEvidence!178 (EqEvidence!179 (x!5349 Int) (y!582 Int) (evidence!156 Int)))))

(declare-fun thiss!853 () EqEvidence!178)

(assert (=> b!9459 (= b_next!2803 (or (and b!9462 (= lambda!2387 (x!5349 thiss!853))) b_next!2819))))

(declare-fun b_next!2821 () Bool)

(assert (=> b!9459 (= b_next!2805 (or (and b!9462 (= lambda!2387 (y!582 thiss!853))) b_next!2821))))

(declare-fun b_next!2823 () Bool)

(declare-fun that!241 () EqEvidence!178)

(assert (=> b!9460 (= b_next!2811 (or (and b!9462 (= lambda!2387 (x!5349 that!241))) b_next!2823))))

(declare-fun b_next!2825 () Bool)

(assert (=> b!9460 (= b_next!2813 (or (and b!9462 (= lambda!2387 (y!582 that!241))) b_next!2825))))

(declare-fun lambda!2388 () Int)

(assert (=> b!9462 (not (= lambda!2388 lambda!2387))))

(assert (=> b!9462 true))

(assert (=> b!9462 (< (dynLambda!301 order!145 f!585) (dynLambda!302 order!147 lambda!2388))))

(assert (=> b!9462 true))

(declare-fun b_next!2827 () Bool)

(assert (=> b!9459 (= b_next!2819 (or (and b!9462 (= lambda!2388 (x!5349 thiss!853))) b_next!2827))))

(declare-fun b_next!2829 () Bool)

(assert (=> b!9459 (= b_next!2821 (or (and b!9462 (= lambda!2388 (y!582 thiss!853))) b_next!2829))))

(declare-fun b_next!2831 () Bool)

(assert (=> b!9460 (= b_next!2823 (or (and b!9462 (= lambda!2388 (x!5349 that!241))) b_next!2831))))

(declare-fun b_next!2833 () Bool)

(assert (=> b!9460 (= b_next!2825 (or (and b!9462 (= lambda!2388 (y!582 that!241))) b_next!2833))))

(assert (=> b!9462 true))

(declare-fun b_next!2835 () Bool)

(declare-fun lambda!2389 () Int)

(assert (=> b!9459 (= b_next!2807 (or (and b!9462 (= lambda!2389 (evidence!156 thiss!853))) b_next!2835))))

(declare-fun b_next!2837 () Bool)

(assert (=> b!9460 (= b_next!2815 (or (and b!9462 (= lambda!2389 (evidence!156 that!241))) b_next!2837))))

(declare-fun bs!2544 () Bool)

(declare-fun b!9463 () Bool)

(assert (= bs!2544 (and b!9463 b!9462)))

(declare-fun lambda!2390 () Int)

(assert (=> bs!2544 (not (= lambda!2390 lambda!2387))))

(assert (=> bs!2544 (not (= lambda!2390 lambda!2388))))

(assert (=> b!9463 true))

(assert (=> b!9463 (< (dynLambda!301 order!145 f!585) (dynLambda!302 order!147 lambda!2390))))

(assert (=> b!9463 true))

(declare-fun b_next!2839 () Bool)

(assert (=> b!9459 (= b_next!2827 (or (and b!9463 (= lambda!2390 (x!5349 thiss!853))) b_next!2839))))

(declare-fun b_next!2841 () Bool)

(assert (=> b!9459 (= b_next!2829 (or (and b!9463 (= lambda!2390 (y!582 thiss!853))) b_next!2841))))

(declare-fun b_next!2843 () Bool)

(assert (=> b!9460 (= b_next!2831 (or (and b!9463 (= lambda!2390 (x!5349 that!241))) b_next!2843))))

(declare-fun b_next!2845 () Bool)

(assert (=> b!9460 (= b_next!2833 (or (and b!9463 (= lambda!2390 (y!582 that!241))) b_next!2845))))

(declare-fun m!12571 () Bool)

(assert (=> b!9463 m!12571))

(declare-fun lambda!2391 () Int)

(assert (=> bs!2544 (not (= lambda!2391 lambda!2389))))

(declare-fun dynLambda!303 (Int) Bool)

(assert (=> (and b!9459 b!9463 (= (dynLambda!303 lambda!2391) (dynLambda!303 (evidence!156 thiss!853)))) (= lambda!2391 (evidence!156 thiss!853))))

(assert (=> (and b!9460 b!9463 (= (dynLambda!303 lambda!2391) (dynLambda!303 (evidence!156 that!241)))) (= lambda!2391 (evidence!156 that!241))))

(declare-fun b_next!2847 () Bool)

(assert (=> b!9459 (= b_next!2835 (or (and b!9463 (= lambda!2391 (evidence!156 thiss!853))) b_next!2847))))

(declare-fun b_next!2849 () Bool)

(assert (=> b!9460 (= b_next!2837 (or (and b!9463 (= lambda!2391 (evidence!156 that!241))) b_next!2849))))

(declare-fun b!9457 () Bool)

(declare-fun e!5602 () Bool)

(declare-fun dynLambda!304 (Int) Balance!215)

(assert (=> b!9457 (= e!5602 (not (= (dynLambda!304 (y!582 thiss!853)) (dynLambda!304 (x!5349 that!241)))))))

(declare-fun b!9458 () Bool)

(declare-fun res!3094 () Bool)

(assert (=> b!9458 (=> (not res!3094) (not e!5602))))

(assert (=> b!9458 (= res!3094 (dynLambda!303 (evidence!156 thiss!853)))))

(declare-fun e!5601 () Bool)

(assert (=> b!9459 (= e!5601 (and tp!1847 tp!1846 tp!1844))))

(declare-fun e!5603 () Bool)

(assert (=> b!9460 (= e!5603 (and tp!1845 tp!1843 tp!1848))))

(declare-fun b!9461 () Bool)

(declare-fun res!3093 () Bool)

(assert (=> b!9461 (=> (not res!3093) (not e!5602))))

(declare-datatypes () ((ProofOps!162 (ProofOps!163 (prop!204 Bool)))))

(declare-fun thiss!829 () ProofOps!162)

(declare-datatypes () ((Tree!70 (Branch!61 (left!447 Tree!70) (right!450 Tree!70)) (Leaf!143 (value!1312 Balance!215)))))

(declare-fun tree!25 () Tree!70)

(declare-fun fold!46 (Tree!70 Int) Balance!215)

(declare-datatypes () ((List!224 (Nil!222) (Cons!221 (head!439 Balance!215) (tail!451 List!224)))))

(declare-fun foldRight1!77 (List!224 Int) Balance!215)

(declare-fun toList!70 (Tree!70) List!224)

(assert (=> b!9461 (= res!3093 (= thiss!829 (ProofOps!163 (= (fold!46 tree!25 f!585) (foldRight1!77 (toList!70 tree!25) f!585)))))))

(declare-fun res!3096 () Bool)

(assert (=> b!9462 (=> (not res!3096) (not e!5602))))

(assert (=> b!9462 (= res!3096 (= thiss!853 (EqEvidence!179 lambda!2387 lambda!2388 lambda!2389)))))

(declare-fun res!3097 () Bool)

(assert (=> b!9463 (=> (not res!3097) (not e!5602))))

(assert (=> b!9463 (= res!3097 (= that!241 (EqEvidence!179 lambda!2390 lambda!2390 lambda!2391)))))

(declare-fun res!3095 () Bool)

(assert (=> start!1894 (=> (not res!3095) (not e!5602))))

(assert (=> start!1894 (= res!3095 (= f!585 lambda!2386))))

(assert (=> start!1894 e!5602))

(assert (=> start!1894 true))

(declare-fun inv!333 (EqEvidence!178) Bool)

(assert (=> start!1894 (and (inv!333 thiss!853) e!5601)))

(assert (=> start!1894 tp!1849))

(assert (=> start!1894 (and (inv!333 that!241) e!5603)))

(declare-fun b!9464 () Bool)

(declare-fun res!3092 () Bool)

(assert (=> b!9464 (=> (not res!3092) (not e!5602))))

(assert (=> b!9464 (= res!3092 (not (is-Leaf!143 tree!25)))))

(assert (= (and start!1894 res!3095) b!9461))

(assert (= (and b!9461 res!3093) b!9464))

(assert (= (and b!9464 res!3092) b!9462))

(assert (= (and b!9462 res!3096) b!9463))

(assert (= (and b!9463 res!3097) b!9458))

(assert (= (and b!9458 res!3094) b!9457))

(assert (= start!1894 b!9459))

(assert (= start!1894 b!9460))

(declare-fun b_lambda!5055 () Bool)

(assert (=> (not b_lambda!5055) (not b!9457)))

(declare-fun t!2585 () Bool)

(declare-fun tb!2245 () Bool)

(assert (=> (and b!9459 (= (x!5349 thiss!853) (y!582 thiss!853)) t!2585) tb!2245))

(declare-fun result!2285 () Bool)

(assert (=> tb!2245 (= result!2285 true)))

(assert (=> b!9457 t!2585))

(declare-fun b_and!4183 () Bool)

(assert (= b_and!4169 (and (=> t!2585 result!2285) b_and!4183)))

(declare-fun t!2587 () Bool)

(declare-fun tb!2247 () Bool)

(assert (=> (and b!9459 (= (y!582 thiss!853) (y!582 thiss!853)) t!2587) tb!2247))

(declare-fun result!2287 () Bool)

(assert (=> tb!2247 (= result!2287 true)))

(assert (=> b!9457 t!2587))

(declare-fun b_and!4185 () Bool)

(assert (= b_and!4171 (and (=> t!2587 result!2287) b_and!4185)))

(declare-fun t!2589 () Bool)

(declare-fun tb!2249 () Bool)

(assert (=> (and b!9460 (= (x!5349 that!241) (y!582 thiss!853)) t!2589) tb!2249))

(declare-fun result!2289 () Bool)

(assert (=> tb!2249 (= result!2289 true)))

(assert (=> b!9457 t!2589))

(declare-fun b_and!4187 () Bool)

(assert (= b_and!4177 (and (=> t!2589 result!2289) b_and!4187)))

(declare-fun t!2591 () Bool)

(declare-fun tb!2251 () Bool)

(assert (=> (and b!9460 (= (y!582 that!241) (y!582 thiss!853)) t!2591) tb!2251))

(declare-fun result!2291 () Bool)

(assert (=> tb!2251 (= result!2291 true)))

(assert (=> b!9457 t!2591))

(declare-fun b_and!4189 () Bool)

(assert (= b_and!4179 (and (=> t!2591 result!2291) b_and!4189)))

(declare-fun b_lambda!5057 () Bool)

(assert (=> (not b_lambda!5057) (not b!9457)))

(declare-fun tb!2253 () Bool)

(declare-fun t!2593 () Bool)

(assert (=> (and b!9459 (= (x!5349 thiss!853) (x!5349 that!241)) t!2593) tb!2253))

(declare-fun result!2293 () Bool)

(assert (=> tb!2253 (= result!2293 true)))

(assert (=> b!9457 t!2593))

(declare-fun b_and!4191 () Bool)

(assert (= b_and!4183 (and (=> t!2593 result!2293) b_and!4191)))

(declare-fun t!2595 () Bool)

(declare-fun tb!2255 () Bool)

(assert (=> (and b!9459 (= (y!582 thiss!853) (x!5349 that!241)) t!2595) tb!2255))

(declare-fun result!2295 () Bool)

(assert (=> tb!2255 (= result!2295 true)))

(assert (=> b!9457 t!2595))

(declare-fun b_and!4193 () Bool)

(assert (= b_and!4185 (and (=> t!2595 result!2295) b_and!4193)))

(declare-fun t!2597 () Bool)

(declare-fun tb!2257 () Bool)

(assert (=> (and b!9460 (= (x!5349 that!241) (x!5349 that!241)) t!2597) tb!2257))

(declare-fun result!2297 () Bool)

(assert (=> tb!2257 (= result!2297 true)))

(assert (=> b!9457 t!2597))

(declare-fun b_and!4195 () Bool)

(assert (= b_and!4187 (and (=> t!2597 result!2297) b_and!4195)))

(declare-fun t!2599 () Bool)

(declare-fun tb!2259 () Bool)

(assert (=> (and b!9460 (= (y!582 that!241) (x!5349 that!241)) t!2599) tb!2259))

(declare-fun result!2299 () Bool)

(assert (=> tb!2259 (= result!2299 true)))

(assert (=> b!9457 t!2599))

(declare-fun b_and!4197 () Bool)

(assert (= b_and!4189 (and (=> t!2599 result!2299) b_and!4197)))

(declare-fun b_lambda!5059 () Bool)

(assert (=> (not b_lambda!5059) (not b!9458)))

(declare-fun t!2601 () Bool)

(declare-fun tb!2261 () Bool)

(assert (=> (and b!9459 (= (evidence!156 thiss!853) (evidence!156 thiss!853)) t!2601) tb!2261))

(declare-fun result!2301 () Bool)

(assert (=> tb!2261 (= result!2301 true)))

(assert (=> b!9458 t!2601))

(declare-fun b_and!4199 () Bool)

(assert (= b_and!4173 (and (=> t!2601 result!2301) b_and!4199)))

(declare-fun t!2603 () Bool)

(declare-fun tb!2263 () Bool)

(assert (=> (and b!9460 (= (evidence!156 that!241) (evidence!156 thiss!853)) t!2603) tb!2263))

(declare-fun result!2303 () Bool)

(assert (=> tb!2263 (= result!2303 true)))

(assert (=> b!9458 t!2603))

(declare-fun b_and!4201 () Bool)

(assert (= b_and!4181 (and (=> t!2603 result!2303) b_and!4201)))

(declare-fun m!12573 () Bool)

(assert (=> b!9457 m!12573))

(declare-fun m!12575 () Bool)

(assert (=> b!9457 m!12575))

(declare-fun m!12577 () Bool)

(assert (=> b!9458 m!12577))

(declare-fun m!12579 () Bool)

(assert (=> b!9461 m!12579))

(declare-fun m!12581 () Bool)

(assert (=> b!9461 m!12581))

(assert (=> b!9461 m!12581))

(declare-fun m!12583 () Bool)

(assert (=> b!9461 m!12583))

(declare-fun m!12585 () Bool)

(assert (=> start!1894 m!12585))

(declare-fun m!12587 () Bool)

(assert (=> start!1894 m!12587))

(push 1)

(assert b_and!4175)

(assert b_and!4193)

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4199)

(assert (not b_lambda!5055))

(assert (not b_lambda!5057))

(assert (not b!9463))

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert (not b_lambda!5059))

(assert b_and!4191)

(assert (not b_next!2817))

(assert b_and!4201)

(assert (not b!9461))

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert b_and!4197)

(assert (not start!1894))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4175)

(assert b_and!4193)

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4199)

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert b_and!4191)

(assert (not b_next!2817))

(assert b_and!4201)

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert b_and!4197)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5061 () Bool)

(assert (= b_lambda!5057 (or (and b!9459 b_free!1141 (= (y!582 thiss!853) (x!5349 that!241))) (and b!9462 (= lambda!2388 (x!5349 that!241))) (and b!9459 b_free!1139 (= (x!5349 thiss!853) (x!5349 that!241))) (and b!9463 (= lambda!2390 (x!5349 that!241))) (and b!9460 b_free!1147) (and b!9460 b_free!1149 (= (y!582 that!241) (x!5349 that!241))) (and b!9462 (= lambda!2387 (x!5349 that!241))) b_lambda!5061)))

(declare-fun bs!2545 () Bool)

(declare-fun d!7781 () Bool)

(assert (= bs!2545 (and d!7781 b!9463)))

(declare-fun append!97 (List!224 List!224) List!224)

(assert (=> bs!2545 (= (dynLambda!304 lambda!2390) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) f!585))))

(declare-fun m!12589 () Bool)

(assert (=> bs!2545 m!12589))

(declare-fun m!12591 () Bool)

(assert (=> bs!2545 m!12591))

(assert (=> bs!2545 m!12589))

(assert (=> bs!2545 m!12591))

(declare-fun m!12593 () Bool)

(assert (=> bs!2545 m!12593))

(assert (=> bs!2545 m!12593))

(declare-fun m!12595 () Bool)

(assert (=> bs!2545 m!12595))

(assert (=> (and b!9463 (= lambda!2390 (x!5349 that!241)) b!9457) d!7781))

(declare-fun bs!2546 () Bool)

(declare-fun d!7783 () Bool)

(assert (= bs!2546 (and d!7783 b!9462)))

(declare-fun dynLambda!305 (Int Balance!215 Balance!215) Balance!215)

(assert (=> bs!2546 (= (dynLambda!304 lambda!2388) (dynLambda!305 f!585 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)))))

(declare-fun b_lambda!5067 () Bool)

(assert (=> (not b_lambda!5067) (not bs!2546)))

(declare-fun t!2605 () Bool)

(declare-fun tb!2265 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2605) tb!2265))

(declare-fun result!2305 () Bool)

(assert (=> tb!2265 (= result!2305 true)))

(assert (=> bs!2546 t!2605))

(declare-fun b_and!4203 () Bool)

(assert (= b_and!4175 (and (=> t!2605 result!2305) b_and!4203)))

(assert (=> bs!2546 m!12589))

(declare-fun m!12597 () Bool)

(assert (=> bs!2546 m!12597))

(declare-fun m!12599 () Bool)

(assert (=> bs!2546 m!12599))

(declare-fun m!12601 () Bool)

(assert (=> bs!2546 m!12601))

(assert (=> bs!2546 m!12591))

(assert (=> bs!2546 m!12589))

(assert (=> bs!2546 m!12597))

(assert (=> bs!2546 m!12591))

(assert (=> bs!2546 m!12599))

(assert (=> (and b!9462 (= lambda!2388 (x!5349 that!241)) b!9457) d!7783))

(declare-fun bs!2547 () Bool)

(declare-fun d!7785 () Bool)

(assert (= bs!2547 (and d!7785 b!9462)))

(assert (=> bs!2547 (= (dynLambda!304 lambda!2387) (fold!46 tree!25 f!585))))

(assert (=> bs!2547 m!12579))

(assert (=> (and b!9462 (= lambda!2387 (x!5349 that!241)) b!9457) d!7785))

(declare-fun b_lambda!5063 () Bool)

(assert (= b_lambda!5055 (or (and b!9459 b_free!1141) (and b!9460 b_free!1149 (= (y!582 that!241) (y!582 thiss!853))) (and b!9459 b_free!1139 (= (x!5349 thiss!853) (y!582 thiss!853))) (and b!9462 (= lambda!2388 (y!582 thiss!853))) (and b!9460 b_free!1147 (= (x!5349 that!241) (y!582 thiss!853))) (and b!9462 (= lambda!2387 (y!582 thiss!853))) (and b!9463 (= lambda!2390 (y!582 thiss!853))) b_lambda!5063)))

(declare-fun bs!2548 () Bool)

(declare-fun d!7787 () Bool)

(assert (= bs!2548 (and d!7787 b!9463)))

(assert (=> bs!2548 (= (dynLambda!304 lambda!2390) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) f!585))))

(assert (=> bs!2548 m!12589))

(assert (=> bs!2548 m!12591))

(assert (=> bs!2548 m!12589))

(assert (=> bs!2548 m!12591))

(assert (=> bs!2548 m!12593))

(assert (=> bs!2548 m!12593))

(assert (=> bs!2548 m!12595))

(assert (=> (and b!9463 (= lambda!2390 (y!582 thiss!853)) b!9457) d!7787))

(declare-fun bs!2549 () Bool)

(declare-fun d!7789 () Bool)

(assert (= bs!2549 (and d!7789 b!9462)))

(assert (=> bs!2549 (= (dynLambda!304 lambda!2387) (fold!46 tree!25 f!585))))

(assert (=> bs!2549 m!12579))

(assert (=> (and b!9462 (= lambda!2387 (y!582 thiss!853)) b!9457) d!7789))

(declare-fun bs!2550 () Bool)

(declare-fun d!7791 () Bool)

(assert (= bs!2550 (and d!7791 b!9462)))

(assert (=> bs!2550 (= (dynLambda!304 lambda!2388) (dynLambda!305 f!585 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)))))

(declare-fun b_lambda!5069 () Bool)

(assert (=> (not b_lambda!5069) (not bs!2550)))

(assert (=> bs!2550 t!2605))

(declare-fun b_and!4205 () Bool)

(assert (= b_and!4203 (and (=> t!2605 result!2305) b_and!4205)))

(assert (=> bs!2550 m!12589))

(assert (=> bs!2550 m!12597))

(assert (=> bs!2550 m!12599))

(assert (=> bs!2550 m!12601))

(assert (=> bs!2550 m!12591))

(assert (=> bs!2550 m!12589))

(assert (=> bs!2550 m!12597))

(assert (=> bs!2550 m!12591))

(assert (=> bs!2550 m!12599))

(assert (=> (and b!9462 (= lambda!2388 (y!582 thiss!853)) b!9457) d!7791))

(declare-fun b_lambda!5065 () Bool)

(assert (= b_lambda!5059 (or (and b!9462 (= lambda!2389 (evidence!156 thiss!853))) (and b!9463 (= lambda!2391 (evidence!156 thiss!853))) (and b!9459 b_free!1143) (and b!9460 b_free!1151 (= (evidence!156 that!241) (evidence!156 thiss!853))) b_lambda!5065)))

(declare-fun bs!2551 () Bool)

(declare-fun d!7793 () Bool)

(assert (= bs!2551 (and d!7793 b!9462)))

(declare-fun append!24 (List!224 List!224) Bool)

(assert (=> bs!2551 (= (dynLambda!303 lambda!2389) (append!24 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))))))

(assert (=> bs!2551 m!12589))

(assert (=> bs!2551 m!12591))

(assert (=> bs!2551 m!12589))

(assert (=> bs!2551 m!12591))

(declare-fun m!12603 () Bool)

(assert (=> bs!2551 m!12603))

(assert (=> (and b!9462 (= lambda!2389 (evidence!156 thiss!853)) b!9458) d!7793))

(declare-fun bs!2552 () Bool)

(declare-fun d!7795 () Bool)

(assert (= bs!2552 (and d!7795 b!9463)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2552 (= (dynLambda!303 lambda!2391) trivial!1)))

(assert (=> (and b!9463 (= lambda!2391 (evidence!156 thiss!853)) b!9458) d!7795))

(push 1)

(assert (not bs!2545))

(assert (not b_lambda!5069))

(assert (not b_lambda!5065))

(assert b_and!4193)

(assert (not bs!2548))

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4205)

(assert b_and!4199)

(assert (not b!9463))

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert b_and!4191)

(assert (not bs!2546))

(assert (not b_next!2817))

(assert (not b_lambda!5061))

(assert (not bs!2547))

(assert (not b_lambda!5067))

(assert b_and!4201)

(assert (not b!9461))

(assert (not b_lambda!5063))

(assert (not bs!2549))

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert (not bs!2551))

(assert (not bs!2550))

(assert b_and!4197)

(assert (not start!1894))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4193)

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4205)

(assert b_and!4199)

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert b_and!4191)

(assert (not b_next!2817))

(assert b_and!4201)

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert b_and!4197)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5071 () Bool)

(assert (= b_lambda!5067 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) b_lambda!5071)))

(declare-fun bs!2553 () Bool)

(declare-fun d!7797 () Bool)

(assert (= bs!2553 (and d!7797 start!1894)))

(declare-fun ++!3 (Balance!215 Balance!215) Balance!215)

(assert (=> bs!2553 (= (dynLambda!305 lambda!2386 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)) (++!3 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)))))

(assert (=> bs!2553 m!12597))

(assert (=> bs!2553 m!12599))

(declare-fun m!12605 () Bool)

(assert (=> bs!2553 m!12605))

(assert (=> (and start!1894 (= lambda!2386 f!585) bs!2546) d!7797))

(declare-fun b_lambda!5073 () Bool)

(assert (= b_lambda!5069 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) b_lambda!5073)))

(assert (=> (and start!1894 (= lambda!2386 f!585) bs!2550) d!7797))

(push 1)

(assert (not bs!2545))

(assert (not b_lambda!5073))

(assert (not b_lambda!5071))

(assert (not b_lambda!5065))

(assert (not bs!2553))

(assert b_and!4193)

(assert (not bs!2548))

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4205)

(assert b_and!4199)

(assert (not b!9463))

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert b_and!4191)

(assert (not bs!2546))

(assert (not b_next!2817))

(assert (not b_lambda!5061))

(assert (not bs!2547))

(assert b_and!4201)

(assert (not b!9461))

(assert (not b_lambda!5063))

(assert (not bs!2549))

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert (not bs!2551))

(assert (not bs!2550))

(assert b_and!4197)

(assert (not start!1894))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4193)

(assert (not b_next!2849))

(assert b_and!4195)

(assert (not b_next!2839))

(assert b_and!4205)

(assert b_and!4199)

(assert (not b_next!2845))

(assert (not b_next!2843))

(assert b_and!4191)

(assert (not b_next!2817))

(assert b_and!4201)

(assert (not b_next!2847))

(assert (not b_next!2841))

(assert b_and!4197)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2554 () Bool)

(declare-fun b!9476 () Bool)

(assert (= bs!2554 (and b!9476 b!9462)))

(declare-fun lambda!2396 () Int)

(assert (=> bs!2554 (= (= (left!447 tree!25) tree!25) (= lambda!2396 lambda!2387))))

(assert (=> bs!2554 (not (= lambda!2396 lambda!2388))))

(declare-fun bs!2555 () Bool)

(assert (= bs!2555 (and b!9476 b!9463)))

(assert (=> bs!2555 (not (= lambda!2396 lambda!2390))))

(assert (=> b!9476 true))

(assert (=> b!9476 (< (dynLambda!301 order!145 f!585) (dynLambda!302 order!147 lambda!2396))))

(assert (=> b!9476 true))

(declare-fun b_next!2851 () Bool)

(assert (=> b!9459 (= b_next!2839 (or (and b!9476 (= lambda!2396 (x!5349 thiss!853))) b_next!2851))))

(declare-fun b_next!2853 () Bool)

(assert (=> b!9459 (= b_next!2841 (or (and b!9476 (= lambda!2396 (y!582 thiss!853))) b_next!2853))))

(declare-fun b_next!2855 () Bool)

(assert (=> b!9460 (= b_next!2843 (or (and b!9476 (= lambda!2396 (x!5349 that!241))) b_next!2855))))

(declare-fun b_next!2857 () Bool)

(assert (=> b!9460 (= b_next!2845 (or (and b!9476 (= lambda!2396 (y!582 that!241))) b_next!2857))))

(declare-fun lambda!2397 () Int)

(assert (=> bs!2554 (= (= (right!450 tree!25) tree!25) (= lambda!2397 lambda!2387))))

(assert (=> bs!2554 (not (= lambda!2397 lambda!2388))))

(assert (=> bs!2555 (not (= lambda!2397 lambda!2390))))

(assert (=> b!9476 (= (= (right!450 tree!25) (left!447 tree!25)) (= lambda!2397 lambda!2396))))

(assert (=> b!9476 true))

(assert (=> b!9476 (< (dynLambda!301 order!145 f!585) (dynLambda!302 order!147 lambda!2397))))

(assert (=> b!9476 true))

(declare-fun b_next!2859 () Bool)

(assert (=> b!9459 (= b_next!2851 (or (and b!9476 (= lambda!2397 (x!5349 thiss!853))) b_next!2859))))

(declare-fun b_next!2861 () Bool)

(assert (=> b!9459 (= b_next!2853 (or (and b!9476 (= lambda!2397 (y!582 thiss!853))) b_next!2861))))

(declare-fun b_next!2863 () Bool)

(assert (=> b!9460 (= b_next!2855 (or (and b!9476 (= lambda!2397 (x!5349 that!241))) b_next!2863))))

(declare-fun b_next!2865 () Bool)

(assert (=> b!9460 (= b_next!2857 (or (and b!9476 (= lambda!2397 (y!582 that!241))) b_next!2865))))

(declare-fun e!5622 () Balance!215)

(declare-datatypes () ((tuple2!86 (tuple2!87 (_1!43 Balance!215) (_2!43 Balance!215)))))

(declare-fun lt!1649 () tuple2!86)

(assert (=> b!9476 (= e!5622 (dynLambda!305 f!585 (_1!43 lt!1649) (_2!43 lt!1649)))))

(assert (=> b!9476 (= lt!1649 (tuple2!87 (dynLambda!304 lambda!2396) (dynLambda!304 lambda!2397)))))

(declare-fun d!7799 () Bool)

(declare-fun c!3054 () Bool)

(assert (=> d!7799 (= c!3054 (is-Leaf!143 tree!25))))

(assert (=> d!7799 (= (fold!46 tree!25 f!585) e!5622)))

(declare-fun b!9475 () Bool)

(assert (=> b!9475 (= e!5622 (value!1312 tree!25))))

(assert (= (and d!7799 c!3054) b!9475))

(assert (= (and d!7799 (not c!3054)) b!9476))

(declare-fun b_lambda!5075 () Bool)

(assert (=> (not b_lambda!5075) (not b!9476)))

(declare-fun t!2607 () Bool)

(declare-fun tb!2267 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2607) tb!2267))

(declare-fun result!2307 () Bool)

(assert (=> tb!2267 (= result!2307 true)))

(assert (=> b!9476 t!2607))

(declare-fun b_and!4207 () Bool)

(assert (= b_and!4205 (and (=> t!2607 result!2307) b_and!4207)))

(declare-fun b_lambda!5077 () Bool)

(assert (=> (not b_lambda!5077) (not b!9476)))

(declare-fun b_lambda!5079 () Bool)

(assert (=> (not b_lambda!5079) (not b!9476)))

(declare-fun m!12607 () Bool)

(assert (=> b!9476 m!12607))

(declare-fun m!12609 () Bool)

(assert (=> b!9476 m!12609))

(declare-fun m!12611 () Bool)

(assert (=> b!9476 m!12611))

(assert (=> bs!2549 d!7799))

(assert (=> bs!2547 d!7799))

(declare-fun d!7801 () Bool)

(declare-fun c!3057 () Bool)

(assert (=> d!7801 (= c!3057 (and (is-Cons!221 (toList!70 (left!447 tree!25))) (is-Nil!222 (tail!451 (toList!70 (left!447 tree!25))))))))

(declare-fun e!5625 () Balance!215)

(assert (=> d!7801 (= (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) e!5625)))

(declare-fun b!9481 () Bool)

(assert (=> b!9481 (= e!5625 (head!439 (toList!70 (left!447 tree!25))))))

(declare-fun b!9482 () Bool)

(assert (=> b!9482 (= e!5625 (dynLambda!305 f!585 (head!439 (toList!70 (left!447 tree!25))) (foldRight1!77 (tail!451 (toList!70 (left!447 tree!25))) f!585)))))

(assert (= (and d!7801 c!3057) b!9481))

(assert (= (and d!7801 (not c!3057)) b!9482))

(declare-fun b_lambda!5081 () Bool)

(assert (=> (not b_lambda!5081) (not b!9482)))

(declare-fun t!2609 () Bool)

(declare-fun tb!2269 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2609) tb!2269))

(declare-fun result!2309 () Bool)

(assert (=> tb!2269 (= result!2309 true)))

(assert (=> b!9482 t!2609))

(declare-fun b_and!4209 () Bool)

(assert (= b_and!4207 (and (=> t!2609 result!2309) b_and!4209)))

(declare-fun m!12613 () Bool)

(assert (=> b!9482 m!12613))

(assert (=> b!9482 m!12613))

(declare-fun m!12615 () Bool)

(assert (=> b!9482 m!12615))

(assert (=> bs!2550 d!7801))

(declare-fun d!7803 () Bool)

(declare-fun lt!1652 () List!224)

(declare-fun isEmpty!176 (List!224) Bool)

(assert (=> d!7803 (not (isEmpty!176 lt!1652))))

(declare-fun e!5628 () List!224)

(assert (=> d!7803 (= lt!1652 e!5628)))

(declare-fun c!3060 () Bool)

(assert (=> d!7803 (= c!3060 (is-Leaf!143 (left!447 tree!25)))))

(assert (=> d!7803 (= (toList!70 (left!447 tree!25)) lt!1652)))

(declare-fun b!9487 () Bool)

(assert (=> b!9487 (= e!5628 (Cons!221 (value!1312 (left!447 tree!25)) Nil!222))))

(declare-fun b!9488 () Bool)

(assert (=> b!9488 (= e!5628 (append!97 (toList!70 (left!447 (left!447 tree!25))) (toList!70 (right!450 (left!447 tree!25)))))))

(assert (= (and d!7803 c!3060) b!9487))

(assert (= (and d!7803 (not c!3060)) b!9488))

(declare-fun m!12617 () Bool)

(assert (=> d!7803 m!12617))

(declare-fun m!12619 () Bool)

(assert (=> b!9488 m!12619))

(declare-fun m!12621 () Bool)

(assert (=> b!9488 m!12621))

(assert (=> b!9488 m!12619))

(assert (=> b!9488 m!12621))

(declare-fun m!12623 () Bool)

(assert (=> b!9488 m!12623))

(assert (=> bs!2550 d!7803))

(declare-fun d!7805 () Bool)

(declare-fun c!3061 () Bool)

(assert (=> d!7805 (= c!3061 (and (is-Cons!221 (toList!70 (right!450 tree!25))) (is-Nil!222 (tail!451 (toList!70 (right!450 tree!25))))))))

(declare-fun e!5629 () Balance!215)

(assert (=> d!7805 (= (foldRight1!77 (toList!70 (right!450 tree!25)) f!585) e!5629)))

(declare-fun b!9489 () Bool)

(assert (=> b!9489 (= e!5629 (head!439 (toList!70 (right!450 tree!25))))))

(declare-fun b!9490 () Bool)

(assert (=> b!9490 (= e!5629 (dynLambda!305 f!585 (head!439 (toList!70 (right!450 tree!25))) (foldRight1!77 (tail!451 (toList!70 (right!450 tree!25))) f!585)))))

(assert (= (and d!7805 c!3061) b!9489))

(assert (= (and d!7805 (not c!3061)) b!9490))

(declare-fun b_lambda!5083 () Bool)

(assert (=> (not b_lambda!5083) (not b!9490)))

(declare-fun t!2611 () Bool)

(declare-fun tb!2271 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2611) tb!2271))

(declare-fun result!2311 () Bool)

(assert (=> tb!2271 (= result!2311 true)))

(assert (=> b!9490 t!2611))

(declare-fun b_and!4211 () Bool)

(assert (= b_and!4209 (and (=> t!2611 result!2311) b_and!4211)))

(declare-fun m!12625 () Bool)

(assert (=> b!9490 m!12625))

(assert (=> b!9490 m!12625))

(declare-fun m!12627 () Bool)

(assert (=> b!9490 m!12627))

(assert (=> bs!2550 d!7805))

(declare-fun d!7807 () Bool)

(declare-fun lt!1653 () List!224)

(assert (=> d!7807 (not (isEmpty!176 lt!1653))))

(declare-fun e!5630 () List!224)

(assert (=> d!7807 (= lt!1653 e!5630)))

(declare-fun c!3062 () Bool)

(assert (=> d!7807 (= c!3062 (is-Leaf!143 (right!450 tree!25)))))

(assert (=> d!7807 (= (toList!70 (right!450 tree!25)) lt!1653)))

(declare-fun b!9491 () Bool)

(assert (=> b!9491 (= e!5630 (Cons!221 (value!1312 (right!450 tree!25)) Nil!222))))

(declare-fun b!9492 () Bool)

(assert (=> b!9492 (= e!5630 (append!97 (toList!70 (left!447 (right!450 tree!25))) (toList!70 (right!450 (right!450 tree!25)))))))

(assert (= (and d!7807 c!3062) b!9491))

(assert (= (and d!7807 (not c!3062)) b!9492))

(declare-fun m!12629 () Bool)

(assert (=> d!7807 m!12629))

(declare-fun m!12631 () Bool)

(assert (=> b!9492 m!12631))

(declare-fun m!12633 () Bool)

(assert (=> b!9492 m!12633))

(assert (=> b!9492 m!12631))

(assert (=> b!9492 m!12633))

(declare-fun m!12635 () Bool)

(assert (=> b!9492 m!12635))

(assert (=> bs!2550 d!7807))

(assert (=> bs!2546 d!7801))

(assert (=> bs!2546 d!7803))

(assert (=> bs!2546 d!7805))

(assert (=> bs!2546 d!7807))

(declare-fun d!7809 () Bool)

(assert (=> d!7809 (= trivial!1 true)))

(assert (=> b!9463 d!7809))

(declare-fun d!7811 () Bool)

(declare-fun c!3063 () Bool)

(assert (=> d!7811 (= c!3063 (and (is-Cons!221 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (is-Nil!222 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))))))))

(declare-fun e!5631 () Balance!215)

(assert (=> d!7811 (= (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) f!585) e!5631)))

(declare-fun b!9493 () Bool)

(assert (=> b!9493 (= e!5631 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))))))

(declare-fun b!9494 () Bool)

(assert (=> b!9494 (= e!5631 (dynLambda!305 f!585 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (foldRight1!77 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) f!585)))))

(assert (= (and d!7811 c!3063) b!9493))

(assert (= (and d!7811 (not c!3063)) b!9494))

(declare-fun b_lambda!5085 () Bool)

(assert (=> (not b_lambda!5085) (not b!9494)))

(declare-fun t!2613 () Bool)

(declare-fun tb!2273 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2613) tb!2273))

(declare-fun result!2313 () Bool)

(assert (=> tb!2273 (= result!2313 true)))

(assert (=> b!9494 t!2613))

(declare-fun b_and!4213 () Bool)

(assert (= b_and!4211 (and (=> t!2613 result!2313) b_and!4213)))

(declare-fun m!12637 () Bool)

(assert (=> b!9494 m!12637))

(assert (=> b!9494 m!12637))

(declare-fun m!12639 () Bool)

(assert (=> b!9494 m!12639))

(assert (=> bs!2548 d!7811))

(declare-fun d!7813 () Bool)

(declare-fun c!3066 () Bool)

(assert (=> d!7813 (= c!3066 (is-Nil!222 (toList!70 (left!447 tree!25))))))

(declare-fun e!5634 () List!224)

(assert (=> d!7813 (= (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) e!5634)))

(declare-fun b!9499 () Bool)

(assert (=> b!9499 (= e!5634 (toList!70 (right!450 tree!25)))))

(declare-fun b!9500 () Bool)

(assert (=> b!9500 (= e!5634 (Cons!221 (head!439 (toList!70 (left!447 tree!25))) (append!97 (tail!451 (toList!70 (left!447 tree!25))) (toList!70 (right!450 tree!25)))))))

(assert (= (and d!7813 c!3066) b!9499))

(assert (= (and d!7813 (not c!3066)) b!9500))

(assert (=> b!9500 m!12591))

(declare-fun m!12641 () Bool)

(assert (=> b!9500 m!12641))

(assert (=> bs!2548 d!7813))

(assert (=> bs!2548 d!7803))

(assert (=> bs!2548 d!7807))

(declare-fun d!7815 () Bool)

(declare-fun res!3101 () Bool)

(declare-fun e!5637 () Bool)

(assert (=> d!7815 (=> (not res!3101) (not e!5637))))

(assert (=> d!7815 (= res!3101 (= (dynLambda!304 (x!5349 thiss!853)) (dynLambda!304 (y!582 thiss!853))))))

(assert (=> d!7815 (= (inv!333 thiss!853) e!5637)))

(declare-fun b!9503 () Bool)

(assert (=> b!9503 (= e!5637 (dynLambda!303 (evidence!156 thiss!853)))))

(assert (= (and d!7815 res!3101) b!9503))

(declare-fun b_lambda!5087 () Bool)

(assert (=> (not b_lambda!5087) (not d!7815)))

(declare-fun t!2615 () Bool)

(declare-fun tb!2275 () Bool)

(assert (=> (and b!9459 (= (x!5349 thiss!853) (x!5349 thiss!853)) t!2615) tb!2275))

(declare-fun result!2315 () Bool)

(assert (=> tb!2275 (= result!2315 true)))

(assert (=> d!7815 t!2615))

(declare-fun b_and!4215 () Bool)

(assert (= b_and!4191 (and (=> t!2615 result!2315) b_and!4215)))

(declare-fun t!2617 () Bool)

(declare-fun tb!2277 () Bool)

(assert (=> (and b!9459 (= (y!582 thiss!853) (x!5349 thiss!853)) t!2617) tb!2277))

(declare-fun result!2317 () Bool)

(assert (=> tb!2277 (= result!2317 true)))

(assert (=> d!7815 t!2617))

(declare-fun b_and!4217 () Bool)

(assert (= b_and!4193 (and (=> t!2617 result!2317) b_and!4217)))

(declare-fun t!2619 () Bool)

(declare-fun tb!2279 () Bool)

(assert (=> (and b!9460 (= (x!5349 that!241) (x!5349 thiss!853)) t!2619) tb!2279))

(declare-fun result!2319 () Bool)

(assert (=> tb!2279 (= result!2319 true)))

(assert (=> d!7815 t!2619))

(declare-fun b_and!4219 () Bool)

(assert (= b_and!4195 (and (=> t!2619 result!2319) b_and!4219)))

(declare-fun tb!2281 () Bool)

(declare-fun t!2621 () Bool)

(assert (=> (and b!9460 (= (y!582 that!241) (x!5349 thiss!853)) t!2621) tb!2281))

(declare-fun result!2321 () Bool)

(assert (=> tb!2281 (= result!2321 true)))

(assert (=> d!7815 t!2621))

(declare-fun b_and!4221 () Bool)

(assert (= b_and!4197 (and (=> t!2621 result!2321) b_and!4221)))

(declare-fun b_lambda!5089 () Bool)

(assert (=> (not b_lambda!5089) (not d!7815)))

(assert (=> d!7815 t!2585))

(declare-fun b_and!4223 () Bool)

(assert (= b_and!4215 (and (=> t!2585 result!2285) b_and!4223)))

(assert (=> d!7815 t!2587))

(declare-fun b_and!4225 () Bool)

(assert (= b_and!4217 (and (=> t!2587 result!2287) b_and!4225)))

(assert (=> d!7815 t!2589))

(declare-fun b_and!4227 () Bool)

(assert (= b_and!4219 (and (=> t!2589 result!2289) b_and!4227)))

(assert (=> d!7815 t!2591))

(declare-fun b_and!4229 () Bool)

(assert (= b_and!4221 (and (=> t!2591 result!2291) b_and!4229)))

(declare-fun b_lambda!5091 () Bool)

(assert (=> (not b_lambda!5091) (not b!9503)))

(assert (=> b!9503 t!2601))

(declare-fun b_and!4231 () Bool)

(assert (= b_and!4199 (and (=> t!2601 result!2301) b_and!4231)))

(assert (=> b!9503 t!2603))

(declare-fun b_and!4233 () Bool)

(assert (= b_and!4201 (and (=> t!2603 result!2303) b_and!4233)))

(declare-fun m!12643 () Bool)

(assert (=> d!7815 m!12643))

(assert (=> d!7815 m!12573))

(assert (=> b!9503 m!12577))

(assert (=> start!1894 d!7815))

(declare-fun d!7817 () Bool)

(declare-fun res!3102 () Bool)

(declare-fun e!5638 () Bool)

(assert (=> d!7817 (=> (not res!3102) (not e!5638))))

(assert (=> d!7817 (= res!3102 (= (dynLambda!304 (x!5349 that!241)) (dynLambda!304 (y!582 that!241))))))

(assert (=> d!7817 (= (inv!333 that!241) e!5638)))

(declare-fun b!9504 () Bool)

(assert (=> b!9504 (= e!5638 (dynLambda!303 (evidence!156 that!241)))))

(assert (= (and d!7817 res!3102) b!9504))

(declare-fun b_lambda!5093 () Bool)

(assert (=> (not b_lambda!5093) (not d!7817)))

(assert (=> d!7817 t!2593))

(declare-fun b_and!4235 () Bool)

(assert (= b_and!4223 (and (=> t!2593 result!2293) b_and!4235)))

(assert (=> d!7817 t!2595))

(declare-fun b_and!4237 () Bool)

(assert (= b_and!4225 (and (=> t!2595 result!2295) b_and!4237)))

(assert (=> d!7817 t!2597))

(declare-fun b_and!4239 () Bool)

(assert (= b_and!4227 (and (=> t!2597 result!2297) b_and!4239)))

(assert (=> d!7817 t!2599))

(declare-fun b_and!4241 () Bool)

(assert (= b_and!4229 (and (=> t!2599 result!2299) b_and!4241)))

(declare-fun b_lambda!5095 () Bool)

(assert (=> (not b_lambda!5095) (not d!7817)))

(declare-fun t!2623 () Bool)

(declare-fun tb!2283 () Bool)

(assert (=> (and b!9459 (= (x!5349 thiss!853) (y!582 that!241)) t!2623) tb!2283))

(declare-fun result!2323 () Bool)

(assert (=> tb!2283 (= result!2323 true)))

(assert (=> d!7817 t!2623))

(declare-fun b_and!4243 () Bool)

(assert (= b_and!4235 (and (=> t!2623 result!2323) b_and!4243)))

(declare-fun t!2625 () Bool)

(declare-fun tb!2285 () Bool)

(assert (=> (and b!9459 (= (y!582 thiss!853) (y!582 that!241)) t!2625) tb!2285))

(declare-fun result!2325 () Bool)

(assert (=> tb!2285 (= result!2325 true)))

(assert (=> d!7817 t!2625))

(declare-fun b_and!4245 () Bool)

(assert (= b_and!4237 (and (=> t!2625 result!2325) b_and!4245)))

(declare-fun t!2627 () Bool)

(declare-fun tb!2287 () Bool)

(assert (=> (and b!9460 (= (x!5349 that!241) (y!582 that!241)) t!2627) tb!2287))

(declare-fun result!2327 () Bool)

(assert (=> tb!2287 (= result!2327 true)))

(assert (=> d!7817 t!2627))

(declare-fun b_and!4247 () Bool)

(assert (= b_and!4239 (and (=> t!2627 result!2327) b_and!4247)))

(declare-fun t!2629 () Bool)

(declare-fun tb!2289 () Bool)

(assert (=> (and b!9460 (= (y!582 that!241) (y!582 that!241)) t!2629) tb!2289))

(declare-fun result!2329 () Bool)

(assert (=> tb!2289 (= result!2329 true)))

(assert (=> d!7817 t!2629))

(declare-fun b_and!4249 () Bool)

(assert (= b_and!4241 (and (=> t!2629 result!2329) b_and!4249)))

(declare-fun b_lambda!5097 () Bool)

(assert (=> (not b_lambda!5097) (not b!9504)))

(declare-fun tb!2291 () Bool)

(declare-fun t!2631 () Bool)

(assert (=> (and b!9459 (= (evidence!156 thiss!853) (evidence!156 that!241)) t!2631) tb!2291))

(declare-fun result!2331 () Bool)

(assert (=> tb!2291 (= result!2331 true)))

(assert (=> b!9504 t!2631))

(declare-fun b_and!4251 () Bool)

(assert (= b_and!4231 (and (=> t!2631 result!2331) b_and!4251)))

(declare-fun t!2633 () Bool)

(declare-fun tb!2293 () Bool)

(assert (=> (and b!9460 (= (evidence!156 that!241) (evidence!156 that!241)) t!2633) tb!2293))

(declare-fun result!2333 () Bool)

(assert (=> tb!2293 (= result!2333 true)))

(assert (=> b!9504 t!2633))

(declare-fun b_and!4253 () Bool)

(assert (= b_and!4233 (and (=> t!2633 result!2333) b_and!4253)))

(assert (=> d!7817 m!12575))

(declare-fun m!12645 () Bool)

(assert (=> d!7817 m!12645))

(declare-fun m!12647 () Bool)

(assert (=> b!9504 m!12647))

(assert (=> start!1894 d!7817))

(declare-fun bs!2556 () Bool)

(declare-fun d!7819 () Bool)

(assert (= bs!2556 (and d!7819 start!1894)))

(declare-fun lambda!2400 () Int)

(assert (=> bs!2556 (= lambda!2400 lambda!2386)))

(declare-fun b_next!2867 () Bool)

(assert (=> start!1894 (= b_next!2817 (or (and d!7819 (= lambda!2400 f!585)) b_next!2867))))

(declare-fun because!2 (ProofOps!162 Bool) Bool)

(assert (=> d!7819 (because!2 (ProofOps!163 (= (++!3 (foldRight1!77 (toList!70 (left!447 tree!25)) lambda!2400) (foldRight1!77 (toList!70 (right!450 tree!25)) lambda!2400)) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) lambda!2400))) true)))

(assert (=> d!7819 (= (++!3 (foldRight1!77 (toList!70 (left!447 tree!25)) lambda!2400) (foldRight1!77 (toList!70 (right!450 tree!25)) lambda!2400)) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) lambda!2400))))

(declare-fun e!5641 () Bool)

(assert (=> d!7819 e!5641))

(declare-fun res!3111 () Bool)

(assert (=> d!7819 (=> (not res!3111) (not e!5641))))

(assert (=> d!7819 (= res!3111 (not (isEmpty!176 (toList!70 (left!447 tree!25)))))))

(assert (=> d!7819 (= (append!24 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) true)))

(declare-fun b!9507 () Bool)

(assert (=> b!9507 (= e!5641 (not (isEmpty!176 (toList!70 (right!450 tree!25)))))))

(assert (= (and d!7819 res!3111) b!9507))

(assert (=> d!7819 m!12589))

(declare-fun m!12649 () Bool)

(assert (=> d!7819 m!12649))

(assert (=> d!7819 m!12593))

(declare-fun m!12651 () Bool)

(assert (=> d!7819 m!12651))

(assert (=> d!7819 m!12591))

(declare-fun m!12653 () Bool)

(assert (=> d!7819 m!12653))

(assert (=> d!7819 m!12649))

(assert (=> d!7819 m!12653))

(declare-fun m!12655 () Bool)

(assert (=> d!7819 m!12655))

(assert (=> d!7819 m!12589))

(assert (=> d!7819 m!12591))

(assert (=> d!7819 m!12593))

(declare-fun m!12657 () Bool)

(assert (=> d!7819 m!12657))

(assert (=> d!7819 m!12589))

(declare-fun m!12659 () Bool)

(assert (=> d!7819 m!12659))

(assert (=> b!9507 m!12591))

(declare-fun m!12661 () Bool)

(assert (=> b!9507 m!12661))

(assert (=> bs!2551 d!7819))

(assert (=> bs!2551 d!7803))

(assert (=> bs!2551 d!7807))

(assert (=> bs!2545 d!7811))

(assert (=> bs!2545 d!7813))

(assert (=> bs!2545 d!7803))

(assert (=> bs!2545 d!7807))

(assert (=> b!9461 d!7799))

(declare-fun d!7821 () Bool)

(declare-fun c!3067 () Bool)

(assert (=> d!7821 (= c!3067 (and (is-Cons!221 (toList!70 tree!25)) (is-Nil!222 (tail!451 (toList!70 tree!25)))))))

(declare-fun e!5642 () Balance!215)

(assert (=> d!7821 (= (foldRight1!77 (toList!70 tree!25) f!585) e!5642)))

(declare-fun b!9508 () Bool)

(assert (=> b!9508 (= e!5642 (head!439 (toList!70 tree!25)))))

(declare-fun b!9509 () Bool)

(assert (=> b!9509 (= e!5642 (dynLambda!305 f!585 (head!439 (toList!70 tree!25)) (foldRight1!77 (tail!451 (toList!70 tree!25)) f!585)))))

(assert (= (and d!7821 c!3067) b!9508))

(assert (= (and d!7821 (not c!3067)) b!9509))

(declare-fun b_lambda!5099 () Bool)

(assert (=> (not b_lambda!5099) (not b!9509)))

(declare-fun t!2635 () Bool)

(declare-fun tb!2295 () Bool)

(assert (=> (and start!1894 (= f!585 f!585) t!2635) tb!2295))

(declare-fun result!2335 () Bool)

(assert (=> tb!2295 (= result!2335 true)))

(assert (=> b!9509 t!2635))

(declare-fun b_and!4255 () Bool)

(assert (= b_and!4213 (and (=> t!2635 result!2335) b_and!4255)))

(declare-fun m!12663 () Bool)

(assert (=> b!9509 m!12663))

(assert (=> b!9509 m!12663))

(declare-fun m!12665 () Bool)

(assert (=> b!9509 m!12665))

(assert (=> b!9461 d!7821))

(declare-fun d!7823 () Bool)

(declare-fun lt!1654 () List!224)

(assert (=> d!7823 (not (isEmpty!176 lt!1654))))

(declare-fun e!5643 () List!224)

(assert (=> d!7823 (= lt!1654 e!5643)))

(declare-fun c!3068 () Bool)

(assert (=> d!7823 (= c!3068 (is-Leaf!143 tree!25))))

(assert (=> d!7823 (= (toList!70 tree!25) lt!1654)))

(declare-fun b!9510 () Bool)

(assert (=> b!9510 (= e!5643 (Cons!221 (value!1312 tree!25) Nil!222))))

(declare-fun b!9511 () Bool)

(assert (=> b!9511 (= e!5643 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))))))

(assert (= (and d!7823 c!3068) b!9510))

(assert (= (and d!7823 (not c!3068)) b!9511))

(declare-fun m!12667 () Bool)

(assert (=> d!7823 m!12667))

(assert (=> b!9511 m!12589))

(assert (=> b!9511 m!12591))

(assert (=> b!9511 m!12589))

(assert (=> b!9511 m!12591))

(assert (=> b!9511 m!12593))

(assert (=> b!9461 d!7823))

(declare-fun b_lambda!5101 () Bool)

(assert (= b_lambda!5099 (or (and start!1894 (= lambda!2386 f!585)) (and d!7819 (= lambda!2400 f!585)) (and start!1894 b_free!1145) b_lambda!5101)))

(declare-fun bs!2557 () Bool)

(declare-fun d!7825 () Bool)

(assert (= bs!2557 (and d!7825 start!1894)))

(assert (=> bs!2557 (= (dynLambda!305 lambda!2386 (head!439 (toList!70 tree!25)) (foldRight1!77 (tail!451 (toList!70 tree!25)) f!585)) (++!3 (head!439 (toList!70 tree!25)) (foldRight1!77 (tail!451 (toList!70 tree!25)) f!585)))))

(assert (=> bs!2557 m!12663))

(declare-fun m!12669 () Bool)

(assert (=> bs!2557 m!12669))

(assert (=> (and start!1894 (= lambda!2386 f!585) b!9509) d!7825))

(declare-fun bs!2558 () Bool)

(declare-fun d!7827 () Bool)

(assert (= bs!2558 (and d!7827 d!7819)))

(assert (=> bs!2558 (= (dynLambda!305 lambda!2400 (head!439 (toList!70 tree!25)) (foldRight1!77 (tail!451 (toList!70 tree!25)) f!585)) (++!3 (head!439 (toList!70 tree!25)) (foldRight1!77 (tail!451 (toList!70 tree!25)) f!585)))))

(assert (=> bs!2558 m!12663))

(assert (=> bs!2558 m!12669))

(assert (=> (and d!7819 (= lambda!2400 f!585) b!9509) d!7827))

(declare-fun b_lambda!5103 () Bool)

(assert (= b_lambda!5089 (or (and b!9459 b_free!1141) (and b!9460 b_free!1149 (= (y!582 that!241) (y!582 thiss!853))) (and b!9459 b_free!1139 (= (x!5349 thiss!853) (y!582 thiss!853))) (and b!9462 (= lambda!2388 (y!582 thiss!853))) (and b!9460 b_free!1147 (= (x!5349 that!241) (y!582 thiss!853))) (and b!9476 (= lambda!2396 (y!582 thiss!853))) (and b!9462 (= lambda!2387 (y!582 thiss!853))) (and b!9463 (= lambda!2390 (y!582 thiss!853))) (and b!9476 (= lambda!2397 (y!582 thiss!853))) b_lambda!5103)))

(assert (=> (and b!9463 (= lambda!2390 (y!582 thiss!853)) d!7815) d!7787))

(assert (=> (and b!9462 (= lambda!2387 (y!582 thiss!853)) d!7815) d!7789))

(declare-fun bs!2559 () Bool)

(declare-fun d!7829 () Bool)

(assert (= bs!2559 (and d!7829 b!9476)))

(assert (=> bs!2559 (= (dynLambda!304 lambda!2396) (fold!46 (left!447 tree!25) f!585))))

(declare-fun m!12671 () Bool)

(assert (=> bs!2559 m!12671))

(assert (=> (and b!9476 (= lambda!2396 (y!582 thiss!853)) d!7815) d!7829))

(declare-fun bs!2560 () Bool)

(declare-fun d!7831 () Bool)

(assert (= bs!2560 (and d!7831 b!9476)))

(assert (=> bs!2560 (= (dynLambda!304 lambda!2397) (fold!46 (right!450 tree!25) f!585))))

(declare-fun m!12673 () Bool)

(assert (=> bs!2560 m!12673))

(assert (=> (and b!9476 (= lambda!2397 (y!582 thiss!853)) d!7815) d!7831))

(assert (=> (and b!9462 (= lambda!2388 (y!582 thiss!853)) d!7815) d!7791))

(declare-fun b_lambda!5105 () Bool)

(assert (= b_lambda!5095 (or (and b!9459 b_free!1141 (= (y!582 thiss!853) (y!582 that!241))) (and b!9462 (= lambda!2387 (y!582 that!241))) (and b!9476 (= lambda!2397 (y!582 that!241))) (and b!9462 (= lambda!2388 (y!582 that!241))) (and b!9476 (= lambda!2396 (y!582 that!241))) (and b!9459 b_free!1139 (= (x!5349 thiss!853) (y!582 that!241))) (and b!9463 (= lambda!2390 (y!582 that!241))) (and b!9460 b_free!1147 (= (x!5349 that!241) (y!582 that!241))) (and b!9460 b_free!1149) b_lambda!5105)))

(declare-fun bs!2561 () Bool)

(declare-fun d!7833 () Bool)

(assert (= bs!2561 (and d!7833 b!9462)))

(assert (=> bs!2561 (= (dynLambda!304 lambda!2388) (dynLambda!305 f!585 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)))))

(declare-fun b_lambda!5127 () Bool)

(assert (=> (not b_lambda!5127) (not bs!2561)))

(assert (=> bs!2561 t!2605))

(declare-fun b_and!4257 () Bool)

(assert (= b_and!4255 (and (=> t!2605 result!2305) b_and!4257)))

(assert (=> bs!2561 m!12589))

(assert (=> bs!2561 m!12597))

(assert (=> bs!2561 m!12599))

(assert (=> bs!2561 m!12601))

(assert (=> bs!2561 m!12591))

(assert (=> bs!2561 m!12589))

(assert (=> bs!2561 m!12597))

(assert (=> bs!2561 m!12591))

(assert (=> bs!2561 m!12599))

(assert (=> (and b!9462 (= lambda!2388 (y!582 that!241)) d!7817) d!7833))

(declare-fun bs!2562 () Bool)

(declare-fun d!7835 () Bool)

(assert (= bs!2562 (and d!7835 b!9476)))

(assert (=> bs!2562 (= (dynLambda!304 lambda!2397) (fold!46 (right!450 tree!25) f!585))))

(assert (=> bs!2562 m!12673))

(assert (=> (and b!9476 (= lambda!2397 (y!582 that!241)) d!7817) d!7835))

(declare-fun bs!2563 () Bool)

(declare-fun d!7837 () Bool)

(assert (= bs!2563 (and d!7837 b!9463)))

(assert (=> bs!2563 (= (dynLambda!304 lambda!2390) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) f!585))))

(assert (=> bs!2563 m!12589))

(assert (=> bs!2563 m!12591))

(assert (=> bs!2563 m!12589))

(assert (=> bs!2563 m!12591))

(assert (=> bs!2563 m!12593))

(assert (=> bs!2563 m!12593))

(assert (=> bs!2563 m!12595))

(assert (=> (and b!9463 (= lambda!2390 (y!582 that!241)) d!7817) d!7837))

(declare-fun bs!2564 () Bool)

(declare-fun d!7839 () Bool)

(assert (= bs!2564 (and d!7839 b!9462)))

(assert (=> bs!2564 (= (dynLambda!304 lambda!2387) (fold!46 tree!25 f!585))))

(assert (=> bs!2564 m!12579))

(assert (=> (and b!9462 (= lambda!2387 (y!582 that!241)) d!7817) d!7839))

(declare-fun bs!2565 () Bool)

(declare-fun d!7841 () Bool)

(assert (= bs!2565 (and d!7841 b!9476)))

(assert (=> bs!2565 (= (dynLambda!304 lambda!2396) (fold!46 (left!447 tree!25) f!585))))

(assert (=> bs!2565 m!12671))

(assert (=> (and b!9476 (= lambda!2396 (y!582 that!241)) d!7817) d!7841))

(declare-fun b_lambda!5107 () Bool)

(assert (= b_lambda!5075 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) (and d!7819 (= lambda!2400 f!585)) b_lambda!5107)))

(declare-fun bs!2566 () Bool)

(declare-fun d!7843 () Bool)

(assert (= bs!2566 (and d!7843 start!1894)))

(assert (=> bs!2566 (= (dynLambda!305 lambda!2386 (_1!43 lt!1649) (_2!43 lt!1649)) (++!3 (_1!43 lt!1649) (_2!43 lt!1649)))))

(declare-fun m!12675 () Bool)

(assert (=> bs!2566 m!12675))

(assert (=> (and start!1894 (= lambda!2386 f!585) b!9476) d!7843))

(declare-fun bs!2567 () Bool)

(declare-fun d!7845 () Bool)

(assert (= bs!2567 (and d!7845 d!7819)))

(assert (=> bs!2567 (= (dynLambda!305 lambda!2400 (_1!43 lt!1649) (_2!43 lt!1649)) (++!3 (_1!43 lt!1649) (_2!43 lt!1649)))))

(assert (=> bs!2567 m!12675))

(assert (=> (and d!7819 (= lambda!2400 f!585) b!9476) d!7845))

(declare-fun b_lambda!5109 () Bool)

(assert (= b_lambda!5097 (or (and b!9462 (= lambda!2389 (evidence!156 that!241))) (and b!9463 (= lambda!2391 (evidence!156 that!241))) (and b!9459 b_free!1143 (= (evidence!156 thiss!853) (evidence!156 that!241))) (and b!9460 b_free!1151) b_lambda!5109)))

(declare-fun bs!2568 () Bool)

(declare-fun d!7847 () Bool)

(assert (= bs!2568 (and d!7847 b!9462)))

(assert (=> bs!2568 (= (dynLambda!303 lambda!2389) (append!24 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))))))

(assert (=> bs!2568 m!12589))

(assert (=> bs!2568 m!12591))

(assert (=> bs!2568 m!12589))

(assert (=> bs!2568 m!12591))

(assert (=> bs!2568 m!12603))

(assert (=> (and b!9462 (= lambda!2389 (evidence!156 that!241)) b!9504) d!7847))

(declare-fun bs!2569 () Bool)

(declare-fun d!7849 () Bool)

(assert (= bs!2569 (and d!7849 b!9463)))

(assert (=> bs!2569 (= (dynLambda!303 lambda!2391) trivial!1)))

(assert (=> (and b!9463 (= lambda!2391 (evidence!156 that!241)) b!9504) d!7849))

(declare-fun b_lambda!5111 () Bool)

(assert (= b_lambda!5083 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) (and d!7819 (= lambda!2400 f!585)) b_lambda!5111)))

(declare-fun bs!2570 () Bool)

(declare-fun d!7851 () Bool)

(assert (= bs!2570 (and d!7851 start!1894)))

(assert (=> bs!2570 (= (dynLambda!305 lambda!2386 (head!439 (toList!70 (right!450 tree!25))) (foldRight1!77 (tail!451 (toList!70 (right!450 tree!25))) f!585)) (++!3 (head!439 (toList!70 (right!450 tree!25))) (foldRight1!77 (tail!451 (toList!70 (right!450 tree!25))) f!585)))))

(assert (=> bs!2570 m!12625))

(declare-fun m!12677 () Bool)

(assert (=> bs!2570 m!12677))

(assert (=> (and start!1894 (= lambda!2386 f!585) b!9490) d!7851))

(declare-fun bs!2571 () Bool)

(declare-fun d!7853 () Bool)

(assert (= bs!2571 (and d!7853 d!7819)))

(assert (=> bs!2571 (= (dynLambda!305 lambda!2400 (head!439 (toList!70 (right!450 tree!25))) (foldRight1!77 (tail!451 (toList!70 (right!450 tree!25))) f!585)) (++!3 (head!439 (toList!70 (right!450 tree!25))) (foldRight1!77 (tail!451 (toList!70 (right!450 tree!25))) f!585)))))

(assert (=> bs!2571 m!12625))

(assert (=> bs!2571 m!12677))

(assert (=> (and d!7819 (= lambda!2400 f!585) b!9490) d!7853))

(declare-fun b_lambda!5113 () Bool)

(assert (= b_lambda!5087 (or (and b!9460 b_free!1147 (= (x!5349 that!241) (x!5349 thiss!853))) (and b!9462 (= lambda!2387 (x!5349 thiss!853))) (and b!9463 (= lambda!2390 (x!5349 thiss!853))) (and b!9459 b_free!1139) (and b!9476 (= lambda!2396 (x!5349 thiss!853))) (and b!9476 (= lambda!2397 (x!5349 thiss!853))) (and b!9459 b_free!1141 (= (y!582 thiss!853) (x!5349 thiss!853))) (and b!9462 (= lambda!2388 (x!5349 thiss!853))) (and b!9460 b_free!1149 (= (y!582 that!241) (x!5349 thiss!853))) b_lambda!5113)))

(declare-fun bs!2572 () Bool)

(declare-fun d!7855 () Bool)

(assert (= bs!2572 (and d!7855 b!9462)))

(assert (=> bs!2572 (= (dynLambda!304 lambda!2387) (fold!46 tree!25 f!585))))

(assert (=> bs!2572 m!12579))

(assert (=> (and b!9462 (= lambda!2387 (x!5349 thiss!853)) d!7815) d!7855))

(declare-fun bs!2573 () Bool)

(declare-fun d!7857 () Bool)

(assert (= bs!2573 (and d!7857 b!9462)))

(assert (=> bs!2573 (= (dynLambda!304 lambda!2388) (dynLambda!305 f!585 (foldRight1!77 (toList!70 (left!447 tree!25)) f!585) (foldRight1!77 (toList!70 (right!450 tree!25)) f!585)))))

(declare-fun b_lambda!5129 () Bool)

(assert (=> (not b_lambda!5129) (not bs!2573)))

(assert (=> bs!2573 t!2605))

(declare-fun b_and!4259 () Bool)

(assert (= b_and!4257 (and (=> t!2605 result!2305) b_and!4259)))

(assert (=> bs!2573 m!12589))

(assert (=> bs!2573 m!12597))

(assert (=> bs!2573 m!12599))

(assert (=> bs!2573 m!12601))

(assert (=> bs!2573 m!12591))

(assert (=> bs!2573 m!12589))

(assert (=> bs!2573 m!12597))

(assert (=> bs!2573 m!12591))

(assert (=> bs!2573 m!12599))

(assert (=> (and b!9462 (= lambda!2388 (x!5349 thiss!853)) d!7815) d!7857))

(declare-fun bs!2574 () Bool)

(declare-fun d!7859 () Bool)

(assert (= bs!2574 (and d!7859 b!9476)))

(assert (=> bs!2574 (= (dynLambda!304 lambda!2396) (fold!46 (left!447 tree!25) f!585))))

(assert (=> bs!2574 m!12671))

(assert (=> (and b!9476 (= lambda!2396 (x!5349 thiss!853)) d!7815) d!7859))

(declare-fun bs!2575 () Bool)

(declare-fun d!7861 () Bool)

(assert (= bs!2575 (and d!7861 b!9476)))

(assert (=> bs!2575 (= (dynLambda!304 lambda!2397) (fold!46 (right!450 tree!25) f!585))))

(assert (=> bs!2575 m!12673))

(assert (=> (and b!9476 (= lambda!2397 (x!5349 thiss!853)) d!7815) d!7861))

(declare-fun bs!2576 () Bool)

(declare-fun d!7863 () Bool)

(assert (= bs!2576 (and d!7863 b!9463)))

(assert (=> bs!2576 (= (dynLambda!304 lambda!2390) (foldRight1!77 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25))) f!585))))

(assert (=> bs!2576 m!12589))

(assert (=> bs!2576 m!12591))

(assert (=> bs!2576 m!12589))

(assert (=> bs!2576 m!12591))

(assert (=> bs!2576 m!12593))

(assert (=> bs!2576 m!12593))

(assert (=> bs!2576 m!12595))

(assert (=> (and b!9463 (= lambda!2390 (x!5349 thiss!853)) d!7815) d!7863))

(declare-fun b_lambda!5115 () Bool)

(assert (= b_lambda!5081 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) (and d!7819 (= lambda!2400 f!585)) b_lambda!5115)))

(declare-fun bs!2577 () Bool)

(declare-fun d!7865 () Bool)

(assert (= bs!2577 (and d!7865 start!1894)))

(assert (=> bs!2577 (= (dynLambda!305 lambda!2386 (head!439 (toList!70 (left!447 tree!25))) (foldRight1!77 (tail!451 (toList!70 (left!447 tree!25))) f!585)) (++!3 (head!439 (toList!70 (left!447 tree!25))) (foldRight1!77 (tail!451 (toList!70 (left!447 tree!25))) f!585)))))

(assert (=> bs!2577 m!12613))

(declare-fun m!12679 () Bool)

(assert (=> bs!2577 m!12679))

(assert (=> (and start!1894 (= lambda!2386 f!585) b!9482) d!7865))

(declare-fun bs!2578 () Bool)

(declare-fun d!7867 () Bool)

(assert (= bs!2578 (and d!7867 d!7819)))

(assert (=> bs!2578 (= (dynLambda!305 lambda!2400 (head!439 (toList!70 (left!447 tree!25))) (foldRight1!77 (tail!451 (toList!70 (left!447 tree!25))) f!585)) (++!3 (head!439 (toList!70 (left!447 tree!25))) (foldRight1!77 (tail!451 (toList!70 (left!447 tree!25))) f!585)))))

(assert (=> bs!2578 m!12613))

(assert (=> bs!2578 m!12679))

(assert (=> (and d!7819 (= lambda!2400 f!585) b!9482) d!7867))

(declare-fun b_lambda!5117 () Bool)

(assert (= b_lambda!5079 (or b!9476 b_lambda!5117)))

(declare-fun bs!2579 () Bool)

(declare-fun d!7869 () Bool)

(assert (= bs!2579 (and d!7869 b!9476)))

(assert (=> bs!2579 (= (dynLambda!304 lambda!2397) (fold!46 (right!450 tree!25) f!585))))

(assert (=> bs!2579 m!12673))

(assert (=> b!9476 d!7869))

(declare-fun b_lambda!5119 () Bool)

(assert (= b_lambda!5091 (or (and b!9462 (= lambda!2389 (evidence!156 thiss!853))) (and b!9463 (= lambda!2391 (evidence!156 thiss!853))) (and b!9459 b_free!1143) (and b!9460 b_free!1151 (= (evidence!156 that!241) (evidence!156 thiss!853))) b_lambda!5119)))

(assert (=> (and b!9462 (= lambda!2389 (evidence!156 thiss!853)) b!9503) d!7793))

(assert (=> (and b!9463 (= lambda!2391 (evidence!156 thiss!853)) b!9503) d!7795))

(declare-fun b_lambda!5121 () Bool)

(assert (= b_lambda!5093 (or (and b!9459 b_free!1141 (= (y!582 thiss!853) (x!5349 that!241))) (and b!9462 (= lambda!2388 (x!5349 that!241))) (and b!9459 b_free!1139 (= (x!5349 thiss!853) (x!5349 that!241))) (and b!9463 (= lambda!2390 (x!5349 that!241))) (and b!9476 (= lambda!2396 (x!5349 that!241))) (and b!9460 b_free!1147) (and b!9460 b_free!1149 (= (y!582 that!241) (x!5349 that!241))) (and b!9462 (= lambda!2387 (x!5349 that!241))) (and b!9476 (= lambda!2397 (x!5349 that!241))) b_lambda!5121)))

(assert (=> (and b!9463 (= lambda!2390 (x!5349 that!241)) d!7817) d!7781))

(assert (=> (and b!9462 (= lambda!2388 (x!5349 that!241)) d!7817) d!7783))

(assert (=> (and b!9462 (= lambda!2387 (x!5349 that!241)) d!7817) d!7785))

(declare-fun bs!2580 () Bool)

(declare-fun d!7871 () Bool)

(assert (= bs!2580 (and d!7871 b!9476)))

(assert (=> bs!2580 (= (dynLambda!304 lambda!2397) (fold!46 (right!450 tree!25) f!585))))

(assert (=> bs!2580 m!12673))

(assert (=> (and b!9476 (= lambda!2397 (x!5349 that!241)) d!7817) d!7871))

(declare-fun bs!2581 () Bool)

(declare-fun d!7873 () Bool)

(assert (= bs!2581 (and d!7873 b!9476)))

(assert (=> bs!2581 (= (dynLambda!304 lambda!2396) (fold!46 (left!447 tree!25) f!585))))

(assert (=> bs!2581 m!12671))

(assert (=> (and b!9476 (= lambda!2396 (x!5349 that!241)) d!7817) d!7873))

(declare-fun b_lambda!5123 () Bool)

(assert (= b_lambda!5085 (or (and start!1894 (= lambda!2386 f!585)) (and start!1894 b_free!1145) (and d!7819 (= lambda!2400 f!585)) b_lambda!5123)))

(declare-fun bs!2582 () Bool)

(declare-fun d!7875 () Bool)

(assert (= bs!2582 (and d!7875 start!1894)))

(assert (=> bs!2582 (= (dynLambda!305 lambda!2386 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (foldRight1!77 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) f!585)) (++!3 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (foldRight1!77 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) f!585)))))

(assert (=> bs!2582 m!12637))

(declare-fun m!12681 () Bool)

(assert (=> bs!2582 m!12681))

(assert (=> (and start!1894 (= lambda!2386 f!585) b!9494) d!7875))

(declare-fun bs!2583 () Bool)

(declare-fun d!7877 () Bool)

(assert (= bs!2583 (and d!7877 d!7819)))

(assert (=> bs!2583 (= (dynLambda!305 lambda!2400 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (foldRight1!77 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) f!585)) (++!3 (head!439 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) (foldRight1!77 (tail!451 (append!97 (toList!70 (left!447 tree!25)) (toList!70 (right!450 tree!25)))) f!585)))))

(assert (=> bs!2583 m!12637))

(assert (=> bs!2583 m!12681))

(assert (=> (and d!7819 (= lambda!2400 f!585) b!9494) d!7877))

(declare-fun b_lambda!5125 () Bool)

(assert (= b_lambda!5077 (or b!9476 b_lambda!5125)))

(declare-fun bs!2584 () Bool)

(declare-fun d!7879 () Bool)

(assert (= bs!2584 (and d!7879 b!9476)))

(assert (=> bs!2584 (= (dynLambda!304 lambda!2396) (fold!46 (left!447 tree!25) f!585))))

(assert (=> bs!2584 m!12671))

(assert (=> b!9476 d!7879))

(push 1)

(assert (not b_next!2867))

(assert (not b_lambda!5119))

(assert (not b!9482))

(assert (not b_lambda!5073))

(assert (not b!9507))

(assert (not b_lambda!5105))

(assert (not d!7807))

(assert (not b_lambda!5071))

(assert b_and!4243)

(assert (not b!9500))

(assert b_and!4245)

(assert (not b_lambda!5111))

(assert (not b_lambda!5065))

(assert (not b_lambda!5101))

(assert (not bs!2579))

(assert (not bs!2573))

(assert (not b_lambda!5127))

(assert b_and!4259)

(assert (not bs!2553))

(assert (not b_lambda!5113))

(assert (not b_next!2849))

(assert (not bs!2558))

(assert (not b!9488))

(assert (not bs!2568))

(assert (not b_lambda!5103))

(assert (not b!9492))

(assert (not b!9490))

(assert (not b_next!2863))

(assert (not bs!2560))

(assert (not bs!2566))

(assert (not b_lambda!5117))

(assert (not bs!2559))

(assert (not b!9494))

(assert b_and!4247)

(assert (not bs!2561))

(assert (not bs!2562))

(assert (not bs!2580))

(assert (not b_lambda!5107))

(assert (not d!7823))

(assert (not bs!2557))

(assert (not bs!2581))

(assert (not bs!2565))

(assert (not bs!2578))

(assert (not bs!2564))

(assert (not b_lambda!5121))

(assert (not b_lambda!5129))

(assert (not b_next!2865))

(assert (not d!7803))

(assert (not bs!2574))

(assert (not b_lambda!5061))

(assert (not bs!2563))

(assert (not b!9509))

(assert (not b_next!2861))

(assert (not b_lambda!5115))

(assert b_and!4249)

(assert (not b_lambda!5063))

(assert (not bs!2575))

(assert (not bs!2583))

(assert (not b_lambda!5123))

(assert (not bs!2572))

(assert b_and!4253)

(assert (not d!7819))

(assert (not bs!2576))

(assert (not b_next!2847))

(assert b_and!4251)

(assert (not bs!2567))

(assert (not b!9511))

(assert (not bs!2577))

(assert (not b_next!2859))

(assert (not bs!2570))

(assert (not bs!2582))

(assert (not bs!2571))

(assert (not b_lambda!5125))

(assert (not bs!2584))

(assert (not b_lambda!5109))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2867))

(assert b_and!4243)

(assert b_and!4245)

(assert b_and!4259)

(assert (not b_next!2849))

(assert (not b_next!2863))

(assert b_and!4247)

(assert (not b_next!2865))

(assert (not b_next!2861))

(assert b_and!4249)

(assert b_and!4253)

(assert (not b_next!2847))

(assert b_and!4251)

(assert (not b_next!2859))

(check-sat)

(pop 1)

