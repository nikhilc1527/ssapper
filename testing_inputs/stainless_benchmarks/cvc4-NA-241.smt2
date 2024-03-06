; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1842 () Bool)

(assert start!1842)

(declare-fun b_free!1041 () Bool)

(declare-fun b_next!2521 () Bool)

(assert (=> start!1842 (= b_free!1041 (not b_next!2521))))

(declare-fun tp!1702 () Bool)

(declare-fun b_and!3873 () Bool)

(assert (=> start!1842 (= tp!1702 b_and!3873)))

(declare-fun b_free!1043 () Bool)

(declare-fun b_next!2523 () Bool)

(assert (=> start!1842 (= b_free!1043 (not b_next!2523))))

(declare-fun tp!1699 () Bool)

(declare-fun b_and!3875 () Bool)

(assert (=> start!1842 (= tp!1699 b_and!3875)))

(declare-fun b!9228 () Bool)

(declare-fun b_free!1045 () Bool)

(declare-fun b_next!2525 () Bool)

(assert (=> b!9228 (= b_free!1045 (not b_next!2525))))

(declare-fun tp!1700 () Bool)

(declare-fun b_and!3877 () Bool)

(assert (=> b!9228 (= tp!1700 b_and!3877)))

(declare-fun b_free!1047 () Bool)

(declare-fun b_next!2527 () Bool)

(assert (=> b!9228 (= b_free!1047 (not b_next!2527))))

(declare-fun tp!1696 () Bool)

(declare-fun b_and!3879 () Bool)

(assert (=> b!9228 (= tp!1696 b_and!3879)))

(declare-fun b_free!1049 () Bool)

(declare-fun b_next!2529 () Bool)

(assert (=> b!9228 (= b_free!1049 (not b_next!2529))))

(declare-fun tp!1698 () Bool)

(declare-fun b_and!3881 () Bool)

(assert (=> b!9228 (= tp!1698 b_and!3881)))

(declare-fun b!9229 () Bool)

(declare-fun b_free!1051 () Bool)

(declare-fun b_next!2531 () Bool)

(assert (=> b!9229 (= b_free!1051 (not b_next!2531))))

(declare-fun tp!1697 () Bool)

(declare-fun b_and!3883 () Bool)

(assert (=> b!9229 (= tp!1697 b_and!3883)))

(declare-fun b_free!1053 () Bool)

(declare-fun b_next!2533 () Bool)

(assert (=> b!9229 (= b_free!1053 (not b_next!2533))))

(declare-fun tp!1701 () Bool)

(declare-fun b_and!3885 () Bool)

(assert (=> b!9229 (= tp!1701 b_and!3885)))

(declare-fun f!585 () Int)

(declare-fun b_next!2535 () Bool)

(declare-fun lambda!2279 () Int)

(assert (=> start!1842 (= b_next!2523 (or (and start!1842 (= lambda!2279 f!585)) b_next!2535))))

(declare-fun b!9234 () Bool)

(assert (=> b!9234 true))

(declare-fun order!133 () Int)

(declare-fun lambda!2280 () Int)

(declare-fun order!135 () Int)

(declare-fun dynLambda!286 (Int Int) Int)

(declare-fun dynLambda!287 (Int Int) Int)

(assert (=> b!9234 (< (dynLambda!286 order!133 f!585) (dynLambda!287 order!135 lambda!2280))))

(assert (=> b!9234 true))

(declare-datatypes () ((Balance!201 (Balance!202 (extraOpen!141 Int) (extraClose!141 Int)))))

(declare-datatypes () ((EqEvidence!164 (EqEvidence!165 (x!5154 Int) (y!567 Int) (evidence!149 Int)))))

(declare-fun thiss!854 () EqEvidence!164)

(declare-fun b_next!2537 () Bool)

(assert (=> b!9228 (= b_next!2525 (or (and b!9234 (= lambda!2280 (x!5154 thiss!854))) b_next!2537))))

(declare-fun b_next!2539 () Bool)

(assert (=> b!9228 (= b_next!2527 (or (and b!9234 (= lambda!2280 (y!567 thiss!854))) b_next!2539))))

(declare-datatypes () ((EqProof!76 (EqProof!77 (x!5155 Int) (y!568 Int)))))

(declare-fun thiss!908 () EqProof!76)

(declare-fun b_next!2541 () Bool)

(assert (=> b!9229 (= b_next!2531 (or (and b!9234 (= lambda!2280 (x!5155 thiss!908))) b_next!2541))))

(declare-fun b_next!2543 () Bool)

(assert (=> b!9229 (= b_next!2533 (or (and b!9234 (= lambda!2280 (y!568 thiss!908))) b_next!2543))))

(declare-fun lambda!2281 () Int)

(assert (=> b!9234 (not (= lambda!2281 lambda!2280))))

(assert (=> b!9234 true))

(assert (=> b!9234 (< (dynLambda!286 order!133 f!585) (dynLambda!287 order!135 lambda!2281))))

(assert (=> b!9234 true))

(declare-fun b_next!2545 () Bool)

(assert (=> b!9228 (= b_next!2537 (or (and b!9234 (= lambda!2281 (x!5154 thiss!854))) b_next!2545))))

(declare-fun b_next!2547 () Bool)

(assert (=> b!9228 (= b_next!2539 (or (and b!9234 (= lambda!2281 (y!567 thiss!854))) b_next!2547))))

(declare-fun b_next!2549 () Bool)

(assert (=> b!9229 (= b_next!2541 (or (and b!9234 (= lambda!2281 (x!5155 thiss!908))) b_next!2549))))

(declare-fun b_next!2551 () Bool)

(assert (=> b!9229 (= b_next!2543 (or (and b!9234 (= lambda!2281 (y!568 thiss!908))) b_next!2551))))

(assert (=> b!9234 true))

(declare-fun proof!254 () Int)

(declare-fun b_next!2553 () Bool)

(declare-fun lambda!2282 () Int)

(assert (=> start!1842 (= b_next!2521 (or (and b!9234 (= lambda!2282 proof!254)) b_next!2553))))

(declare-fun b_next!2555 () Bool)

(assert (=> b!9228 (= b_next!2529 (or (and b!9234 (= lambda!2282 (evidence!149 thiss!854))) b_next!2555))))

(declare-fun bs!2399 () Bool)

(declare-fun b!9232 () Bool)

(assert (= bs!2399 (and b!9232 b!9234)))

(declare-fun lambda!2283 () Int)

(assert (=> bs!2399 (not (= lambda!2283 lambda!2280))))

(assert (=> bs!2399 (not (= lambda!2283 lambda!2281))))

(assert (=> b!9232 true))

(assert (=> b!9232 (< (dynLambda!286 order!133 f!585) (dynLambda!287 order!135 lambda!2283))))

(assert (=> b!9232 true))

(declare-fun b_next!2557 () Bool)

(assert (=> b!9228 (= b_next!2545 (or (and b!9232 (= lambda!2283 (x!5154 thiss!854))) b_next!2557))))

(declare-fun b_next!2559 () Bool)

(assert (=> b!9228 (= b_next!2547 (or (and b!9232 (= lambda!2283 (y!567 thiss!854))) b_next!2559))))

(declare-fun b_next!2561 () Bool)

(assert (=> b!9229 (= b_next!2549 (or (and b!9232 (= lambda!2283 (x!5155 thiss!908))) b_next!2561))))

(declare-fun b_next!2563 () Bool)

(assert (=> b!9229 (= b_next!2551 (or (and b!9232 (= lambda!2283 (y!568 thiss!908))) b_next!2563))))

(declare-fun bs!2400 () Bool)

(declare-fun b!9231 () Bool)

(assert (= bs!2400 (and b!9231 b!9234)))

(declare-fun lambda!2284 () Int)

(assert (=> bs!2400 (not (= lambda!2284 lambda!2282))))

(assert (=> b!9231 true))

(declare-fun b_next!2565 () Bool)

(assert (=> start!1842 (= b_next!2553 (or (and b!9231 (= lambda!2284 proof!254)) b_next!2565))))

(declare-fun b_next!2567 () Bool)

(assert (=> b!9228 (= b_next!2555 (or (and b!9231 (= lambda!2284 (evidence!149 thiss!854))) b_next!2567))))

(declare-fun res!2966 () Bool)

(declare-fun e!5435 () Bool)

(assert (=> start!1842 (=> (not res!2966) (not e!5435))))

(assert (=> start!1842 (= res!2966 (= f!585 lambda!2279))))

(assert (=> start!1842 e!5435))

(assert (=> start!1842 true))

(assert (=> start!1842 tp!1702))

(assert (=> start!1842 tp!1699))

(declare-fun e!5436 () Bool)

(declare-fun inv!324 (EqEvidence!164) Bool)

(assert (=> start!1842 (and (inv!324 thiss!854) e!5436)))

(declare-fun e!5437 () Bool)

(declare-fun inv!325 (EqProof!76) Bool)

(assert (=> start!1842 (and (inv!325 thiss!908) e!5437)))

(assert (=> b!9228 (= e!5436 (and tp!1700 tp!1696 tp!1698))))

(assert (=> b!9229 (= e!5437 (and tp!1697 tp!1701))))

(declare-fun b!9230 () Bool)

(declare-fun res!2967 () Bool)

(assert (=> b!9230 (=> (not res!2967) (not e!5435))))

(declare-datatypes () ((ProofOps!148 (ProofOps!149 (prop!192 Bool)))))

(declare-fun thiss!829 () ProofOps!148)

(declare-datatypes () ((Tree!63 (Branch!54 (left!431 Tree!63) (right!434 Tree!63)) (Leaf!136 (value!1305 Balance!201)))))

(declare-fun tree!25 () Tree!63)

(declare-fun fold!39 (Tree!63 Int) Balance!201)

(declare-datatypes () ((List!217 (Nil!215) (Cons!214 (head!432 Balance!201) (tail!444 List!217)))))

(declare-fun foldRight1!70 (List!217 Int) Balance!201)

(declare-fun toList!63 (Tree!63) List!217)

(assert (=> b!9230 (= res!2967 (= thiss!829 (ProofOps!149 (= (fold!39 tree!25 f!585) (foldRight1!70 (toList!63 tree!25) f!585)))))))

(declare-fun res!2964 () Bool)

(assert (=> b!9231 (=> (not res!2964) (not e!5435))))

(assert (=> b!9231 (= res!2964 (= proof!254 lambda!2284))))

(declare-fun res!2963 () Bool)

(assert (=> b!9232 (=> (not res!2963) (not e!5435))))

(assert (=> b!9232 (= res!2963 (= thiss!908 (EqProof!77 lambda!2283 lambda!2283)))))

(declare-fun b!9233 () Bool)

(declare-fun res!2962 () Bool)

(assert (=> b!9233 (=> (not res!2962) (not e!5435))))

(assert (=> b!9233 (= res!2962 (not (is-Leaf!136 tree!25)))))

(declare-fun res!2965 () Bool)

(assert (=> b!9234 (=> (not res!2965) (not e!5435))))

(assert (=> b!9234 (= res!2965 (= thiss!854 (EqEvidence!165 lambda!2280 lambda!2281 lambda!2282)))))

(declare-fun b!9235 () Bool)

(declare-fun dynLambda!288 (Int) Bool)

(assert (=> b!9235 (= e!5435 (not (dynLambda!288 proof!254)))))

(assert (= (and start!1842 res!2966) b!9230))

(assert (= (and b!9230 res!2967) b!9233))

(assert (= (and b!9233 res!2962) b!9234))

(assert (= (and b!9234 res!2965) b!9232))

(assert (= (and b!9232 res!2963) b!9231))

(assert (= (and b!9231 res!2964) b!9235))

(assert (= start!1842 b!9228))

(assert (= start!1842 b!9229))

(declare-fun b_lambda!4855 () Bool)

(assert (=> (not b_lambda!4855) (not b!9235)))

(declare-fun t!2437 () Bool)

(declare-fun tb!2097 () Bool)

(assert (=> (and start!1842 (= proof!254 proof!254) t!2437) tb!2097))

(declare-fun result!2137 () Bool)

(assert (=> tb!2097 (= result!2137 true)))

(assert (=> b!9235 t!2437))

(declare-fun b_and!3887 () Bool)

(assert (= b_and!3873 (and (=> t!2437 result!2137) b_and!3887)))

(declare-fun tb!2099 () Bool)

(declare-fun t!2439 () Bool)

(assert (=> (and b!9228 (= (evidence!149 thiss!854) proof!254) t!2439) tb!2099))

(declare-fun result!2139 () Bool)

(assert (=> tb!2099 (= result!2139 true)))

(assert (=> b!9235 t!2439))

(declare-fun b_and!3889 () Bool)

(assert (= b_and!3881 (and (=> t!2439 result!2139) b_and!3889)))

(declare-fun m!12221 () Bool)

(assert (=> start!1842 m!12221))

(declare-fun m!12223 () Bool)

(assert (=> start!1842 m!12223))

(declare-fun m!12225 () Bool)

(assert (=> b!9230 m!12225))

(declare-fun m!12227 () Bool)

(assert (=> b!9230 m!12227))

(assert (=> b!9230 m!12227))

(declare-fun m!12229 () Bool)

(assert (=> b!9230 m!12229))

(declare-fun m!12231 () Bool)

(assert (=> b!9235 m!12231))

(push 1)

(assert (not b!9230))

(assert b_and!3883)

(assert b_and!3889)

(assert (not b_lambda!4855))

(assert (not b_next!2563))

(assert (not b_next!2567))

(assert (not b_next!2557))

(assert (not b_next!2559))

(assert b_and!3879)

(assert b_and!3875)

(assert b_and!3885)

(assert (not b_next!2565))

(assert (not b_next!2535))

(assert b_and!3877)

(assert (not start!1842))

(assert (not b_next!2561))

(assert b_and!3887)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3883)

(assert b_and!3889)

(assert (not b_next!2563))

(assert (not b_next!2567))

(assert (not b_next!2557))

(assert (not b_next!2559))

(assert b_and!3879)

(assert b_and!3875)

(assert b_and!3885)

(assert (not b_next!2565))

(assert (not b_next!2535))

(assert b_and!3877)

(assert (not b_next!2561))

(assert b_and!3887)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4857 () Bool)

(assert (= b_lambda!4855 (or (and b!9234 (= lambda!2282 proof!254)) (and b!9231 (= lambda!2284 proof!254)) (and start!1842 b_free!1041) (and b!9228 b_free!1049 (= (evidence!149 thiss!854) proof!254)) b_lambda!4857)))

(declare-fun bs!2401 () Bool)

(declare-fun d!7491 () Bool)

(assert (= bs!2401 (and d!7491 b!9234)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!63) Bool)

(assert (=> bs!2401 (= (dynLambda!288 lambda!2282) (fold_foldRight1_equivalence!0 (right!434 tree!25)))))

(declare-fun m!12233 () Bool)

(assert (=> bs!2401 m!12233))

(assert (=> (and b!9234 (= lambda!2282 proof!254) b!9235) d!7491))

(declare-fun bs!2402 () Bool)

(declare-fun d!7493 () Bool)

(assert (= bs!2402 (and d!7493 b!9231)))

(declare-fun append!24 (List!217 List!217) Bool)

(assert (=> bs!2402 (= (dynLambda!288 lambda!2284) (append!24 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))))))

(declare-fun m!12235 () Bool)

(assert (=> bs!2402 m!12235))

(declare-fun m!12237 () Bool)

(assert (=> bs!2402 m!12237))

(assert (=> bs!2402 m!12235))

(assert (=> bs!2402 m!12237))

(declare-fun m!12239 () Bool)

(assert (=> bs!2402 m!12239))

(assert (=> (and b!9231 (= lambda!2284 proof!254) b!9235) d!7493))

(push 1)

(assert (not bs!2401))

(assert (not b!9230))

(assert b_and!3883)

(assert b_and!3889)

(assert (not b_next!2563))

(assert (not bs!2402))

(assert (not b_lambda!4857))

(assert (not b_next!2567))

(assert (not b_next!2557))

(assert (not b_next!2559))

(assert b_and!3879)

(assert b_and!3875)

(assert b_and!3885)

(assert (not b_next!2565))

(assert (not b_next!2535))

(assert b_and!3877)

(assert (not start!1842))

(assert (not b_next!2561))

(assert b_and!3887)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3883)

(assert b_and!3889)

(assert (not b_next!2563))

(assert (not b_next!2567))

(assert (not b_next!2557))

(assert (not b_next!2559))

(assert b_and!3879)

(assert b_and!3875)

(assert b_and!3885)

(assert (not b_next!2565))

(assert (not b_next!2535))

(assert b_and!3877)

(assert (not b_next!2561))

(assert b_and!3887)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2403 () Bool)

(declare-fun d!7495 () Bool)

(assert (= bs!2403 (and d!7495 start!1842)))

(declare-fun lambda!2287 () Int)

(assert (=> bs!2403 (= lambda!2287 lambda!2279)))

(declare-fun b_next!2569 () Bool)

(assert (=> start!1842 (= b_next!2535 (or (and d!7495 (= lambda!2287 f!585)) b_next!2569))))

(declare-fun because!2 (ProofOps!148 Bool) Bool)

(assert (=> d!7495 (because!2 (ProofOps!149 (= (fold!39 (right!434 tree!25) lambda!2287) (foldRight1!70 (toList!63 (right!434 tree!25)) lambda!2287))) true)))

(assert (=> d!7495 (= (fold!39 (right!434 tree!25) lambda!2287) (foldRight1!70 (toList!63 (right!434 tree!25)) lambda!2287))))

(assert (=> d!7495 (= (fold_foldRight1_equivalence!0 (right!434 tree!25)) true)))

(declare-fun bs!2404 () Bool)

(assert (= bs!2404 d!7495))

(declare-fun m!12241 () Bool)

(assert (=> bs!2404 m!12241))

(assert (=> bs!2404 m!12237))

(assert (=> bs!2404 m!12237))

(declare-fun m!12243 () Bool)

(assert (=> bs!2404 m!12243))

(declare-fun m!12245 () Bool)

(assert (=> bs!2404 m!12245))

(assert (=> bs!2401 d!7495))

(declare-fun d!7497 () Bool)

(declare-fun res!2976 () Bool)

(declare-fun e!5440 () Bool)

(assert (=> d!7497 (=> (not res!2976) (not e!5440))))

(declare-fun dynLambda!289 (Int) Balance!201)

(assert (=> d!7497 (= res!2976 (= (dynLambda!289 (x!5154 thiss!854)) (dynLambda!289 (y!567 thiss!854))))))

(assert (=> d!7497 (= (inv!324 thiss!854) e!5440)))

(declare-fun b!9244 () Bool)

(assert (=> b!9244 (= e!5440 (dynLambda!288 (evidence!149 thiss!854)))))

(assert (= (and d!7497 res!2976) b!9244))

(declare-fun b_lambda!4859 () Bool)

(assert (=> (not b_lambda!4859) (not d!7497)))

(declare-fun t!2441 () Bool)

(declare-fun tb!2101 () Bool)

(assert (=> (and b!9228 (= (x!5154 thiss!854) (x!5154 thiss!854)) t!2441) tb!2101))

(declare-fun result!2141 () Bool)

(assert (=> tb!2101 (= result!2141 true)))

(assert (=> d!7497 t!2441))

(declare-fun b_and!3891 () Bool)

(assert (= b_and!3877 (and (=> t!2441 result!2141) b_and!3891)))

(declare-fun t!2443 () Bool)

(declare-fun tb!2103 () Bool)

(assert (=> (and b!9228 (= (y!567 thiss!854) (x!5154 thiss!854)) t!2443) tb!2103))

(declare-fun result!2143 () Bool)

(assert (=> tb!2103 (= result!2143 true)))

(assert (=> d!7497 t!2443))

(declare-fun b_and!3893 () Bool)

(assert (= b_and!3879 (and (=> t!2443 result!2143) b_and!3893)))

(declare-fun tb!2105 () Bool)

(declare-fun t!2445 () Bool)

(assert (=> (and b!9229 (= (x!5155 thiss!908) (x!5154 thiss!854)) t!2445) tb!2105))

(declare-fun result!2145 () Bool)

(assert (=> tb!2105 (= result!2145 true)))

(assert (=> d!7497 t!2445))

(declare-fun b_and!3895 () Bool)

(assert (= b_and!3883 (and (=> t!2445 result!2145) b_and!3895)))

(declare-fun t!2447 () Bool)

(declare-fun tb!2107 () Bool)

(assert (=> (and b!9229 (= (y!568 thiss!908) (x!5154 thiss!854)) t!2447) tb!2107))

(declare-fun result!2147 () Bool)

(assert (=> tb!2107 (= result!2147 true)))

(assert (=> d!7497 t!2447))

(declare-fun b_and!3897 () Bool)

(assert (= b_and!3885 (and (=> t!2447 result!2147) b_and!3897)))

(declare-fun b_lambda!4861 () Bool)

(assert (=> (not b_lambda!4861) (not d!7497)))

(declare-fun t!2449 () Bool)

(declare-fun tb!2109 () Bool)

(assert (=> (and b!9228 (= (x!5154 thiss!854) (y!567 thiss!854)) t!2449) tb!2109))

(declare-fun result!2149 () Bool)

(assert (=> tb!2109 (= result!2149 true)))

(assert (=> d!7497 t!2449))

(declare-fun b_and!3899 () Bool)

(assert (= b_and!3891 (and (=> t!2449 result!2149) b_and!3899)))

(declare-fun t!2451 () Bool)

(declare-fun tb!2111 () Bool)

(assert (=> (and b!9228 (= (y!567 thiss!854) (y!567 thiss!854)) t!2451) tb!2111))

(declare-fun result!2151 () Bool)

(assert (=> tb!2111 (= result!2151 true)))

(assert (=> d!7497 t!2451))

(declare-fun b_and!3901 () Bool)

(assert (= b_and!3893 (and (=> t!2451 result!2151) b_and!3901)))

(declare-fun tb!2113 () Bool)

(declare-fun t!2453 () Bool)

(assert (=> (and b!9229 (= (x!5155 thiss!908) (y!567 thiss!854)) t!2453) tb!2113))

(declare-fun result!2153 () Bool)

(assert (=> tb!2113 (= result!2153 true)))

(assert (=> d!7497 t!2453))

(declare-fun b_and!3903 () Bool)

(assert (= b_and!3895 (and (=> t!2453 result!2153) b_and!3903)))

(declare-fun t!2455 () Bool)

(declare-fun tb!2115 () Bool)

(assert (=> (and b!9229 (= (y!568 thiss!908) (y!567 thiss!854)) t!2455) tb!2115))

(declare-fun result!2155 () Bool)

(assert (=> tb!2115 (= result!2155 true)))

(assert (=> d!7497 t!2455))

(declare-fun b_and!3905 () Bool)

(assert (= b_and!3897 (and (=> t!2455 result!2155) b_and!3905)))

(declare-fun b_lambda!4863 () Bool)

(assert (=> (not b_lambda!4863) (not b!9244)))

(declare-fun t!2457 () Bool)

(declare-fun tb!2117 () Bool)

(assert (=> (and start!1842 (= proof!254 (evidence!149 thiss!854)) t!2457) tb!2117))

(declare-fun result!2157 () Bool)

(assert (=> tb!2117 (= result!2157 true)))

(assert (=> b!9244 t!2457))

(declare-fun b_and!3907 () Bool)

(assert (= b_and!3887 (and (=> t!2457 result!2157) b_and!3907)))

(declare-fun t!2459 () Bool)

(declare-fun tb!2119 () Bool)

(assert (=> (and b!9228 (= (evidence!149 thiss!854) (evidence!149 thiss!854)) t!2459) tb!2119))

(declare-fun result!2159 () Bool)

(assert (=> tb!2119 (= result!2159 true)))

(assert (=> b!9244 t!2459))

(declare-fun b_and!3909 () Bool)

(assert (= b_and!3889 (and (=> t!2459 result!2159) b_and!3909)))

(declare-fun m!12247 () Bool)

(assert (=> d!7497 m!12247))

(declare-fun m!12249 () Bool)

(assert (=> d!7497 m!12249))

(declare-fun m!12251 () Bool)

(assert (=> b!9244 m!12251))

(assert (=> start!1842 d!7497))

(declare-fun d!7499 () Bool)

(assert (=> d!7499 (= (inv!325 thiss!908) (= (dynLambda!289 (x!5155 thiss!908)) (dynLambda!289 (y!568 thiss!908))))))

(declare-fun b_lambda!4865 () Bool)

(assert (=> (not b_lambda!4865) (not d!7499)))

(declare-fun t!2461 () Bool)

(declare-fun tb!2121 () Bool)

(assert (=> (and b!9228 (= (x!5154 thiss!854) (x!5155 thiss!908)) t!2461) tb!2121))

(declare-fun result!2161 () Bool)

(assert (=> tb!2121 (= result!2161 true)))

(assert (=> d!7499 t!2461))

(declare-fun b_and!3911 () Bool)

(assert (= b_and!3899 (and (=> t!2461 result!2161) b_and!3911)))

(declare-fun tb!2123 () Bool)

(declare-fun t!2463 () Bool)

(assert (=> (and b!9228 (= (y!567 thiss!854) (x!5155 thiss!908)) t!2463) tb!2123))

(declare-fun result!2163 () Bool)

(assert (=> tb!2123 (= result!2163 true)))

(assert (=> d!7499 t!2463))

(declare-fun b_and!3913 () Bool)

(assert (= b_and!3901 (and (=> t!2463 result!2163) b_and!3913)))

(declare-fun t!2465 () Bool)

(declare-fun tb!2125 () Bool)

(assert (=> (and b!9229 (= (x!5155 thiss!908) (x!5155 thiss!908)) t!2465) tb!2125))

(declare-fun result!2165 () Bool)

(assert (=> tb!2125 (= result!2165 true)))

(assert (=> d!7499 t!2465))

(declare-fun b_and!3915 () Bool)

(assert (= b_and!3903 (and (=> t!2465 result!2165) b_and!3915)))

(declare-fun t!2467 () Bool)

(declare-fun tb!2127 () Bool)

(assert (=> (and b!9229 (= (y!568 thiss!908) (x!5155 thiss!908)) t!2467) tb!2127))

(declare-fun result!2167 () Bool)

(assert (=> tb!2127 (= result!2167 true)))

(assert (=> d!7499 t!2467))

(declare-fun b_and!3917 () Bool)

(assert (= b_and!3905 (and (=> t!2467 result!2167) b_and!3917)))

(declare-fun b_lambda!4867 () Bool)

(assert (=> (not b_lambda!4867) (not d!7499)))

(declare-fun t!2469 () Bool)

(declare-fun tb!2129 () Bool)

(assert (=> (and b!9228 (= (x!5154 thiss!854) (y!568 thiss!908)) t!2469) tb!2129))

(declare-fun result!2169 () Bool)

(assert (=> tb!2129 (= result!2169 true)))

(assert (=> d!7499 t!2469))

(declare-fun b_and!3919 () Bool)

(assert (= b_and!3911 (and (=> t!2469 result!2169) b_and!3919)))

(declare-fun t!2471 () Bool)

(declare-fun tb!2131 () Bool)

(assert (=> (and b!9228 (= (y!567 thiss!854) (y!568 thiss!908)) t!2471) tb!2131))

(declare-fun result!2171 () Bool)

(assert (=> tb!2131 (= result!2171 true)))

(assert (=> d!7499 t!2471))

(declare-fun b_and!3921 () Bool)

(assert (= b_and!3913 (and (=> t!2471 result!2171) b_and!3921)))

(declare-fun t!2473 () Bool)

(declare-fun tb!2133 () Bool)

(assert (=> (and b!9229 (= (x!5155 thiss!908) (y!568 thiss!908)) t!2473) tb!2133))

(declare-fun result!2173 () Bool)

(assert (=> tb!2133 (= result!2173 true)))

(assert (=> d!7499 t!2473))

(declare-fun b_and!3923 () Bool)

(assert (= b_and!3915 (and (=> t!2473 result!2173) b_and!3923)))

(declare-fun t!2475 () Bool)

(declare-fun tb!2135 () Bool)

(assert (=> (and b!9229 (= (y!568 thiss!908) (y!568 thiss!908)) t!2475) tb!2135))

(declare-fun result!2175 () Bool)

(assert (=> tb!2135 (= result!2175 true)))

(assert (=> d!7499 t!2475))

(declare-fun b_and!3925 () Bool)

(assert (= b_and!3917 (and (=> t!2475 result!2175) b_and!3925)))

(declare-fun m!12253 () Bool)

(assert (=> d!7499 m!12253))

(declare-fun m!12255 () Bool)

(assert (=> d!7499 m!12255))

(assert (=> start!1842 d!7499))

(declare-fun bs!2405 () Bool)

(declare-fun d!7501 () Bool)

(assert (= bs!2405 (and d!7501 start!1842)))

(declare-fun lambda!2290 () Int)

(assert (=> bs!2405 (= lambda!2290 lambda!2279)))

(declare-fun bs!2406 () Bool)

(assert (= bs!2406 (and d!7501 d!7495)))

(assert (=> bs!2406 (= lambda!2290 lambda!2287)))

(declare-fun b_next!2571 () Bool)

(assert (=> start!1842 (= b_next!2569 (or (and d!7501 (= lambda!2290 f!585)) b_next!2571))))

(declare-fun ++!3 (Balance!201 Balance!201) Balance!201)

(declare-fun append!94 (List!217 List!217) List!217)

(assert (=> d!7501 (because!2 (ProofOps!149 (= (++!3 (foldRight1!70 (toList!63 (left!431 tree!25)) lambda!2290) (foldRight1!70 (toList!63 (right!434 tree!25)) lambda!2290)) (foldRight1!70 (append!94 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))) lambda!2290))) true)))

(assert (=> d!7501 (= (++!3 (foldRight1!70 (toList!63 (left!431 tree!25)) lambda!2290) (foldRight1!70 (toList!63 (right!434 tree!25)) lambda!2290)) (foldRight1!70 (append!94 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))) lambda!2290))))

(declare-fun e!5443 () Bool)

(assert (=> d!7501 e!5443))

(declare-fun res!2985 () Bool)

(assert (=> d!7501 (=> (not res!2985) (not e!5443))))

(declare-fun isEmpty!173 (List!217) Bool)

(assert (=> d!7501 (= res!2985 (not (isEmpty!173 (toList!63 (left!431 tree!25)))))))

(assert (=> d!7501 (= (append!24 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))) true)))

(declare-fun b!9247 () Bool)

(assert (=> b!9247 (= e!5443 (not (isEmpty!173 (toList!63 (right!434 tree!25)))))))

(assert (= (and d!7501 res!2985) b!9247))

(declare-fun m!12257 () Bool)

(assert (=> d!7501 m!12257))

(declare-fun m!12259 () Bool)

(assert (=> d!7501 m!12259))

(declare-fun m!12261 () Bool)

(assert (=> d!7501 m!12261))

(assert (=> d!7501 m!12235))

(assert (=> d!7501 m!12257))

(declare-fun m!12263 () Bool)

(assert (=> d!7501 m!12263))

(declare-fun m!12265 () Bool)

(assert (=> d!7501 m!12265))

(assert (=> d!7501 m!12235))

(declare-fun m!12267 () Bool)

(assert (=> d!7501 m!12267))

(declare-fun m!12269 () Bool)

(assert (=> d!7501 m!12269))

(assert (=> d!7501 m!12235))

(assert (=> d!7501 m!12237))

(assert (=> d!7501 m!12263))

(assert (=> d!7501 m!12237))

(assert (=> d!7501 m!12259))

(assert (=> b!9247 m!12237))

(declare-fun m!12271 () Bool)

(assert (=> b!9247 m!12271))

(assert (=> bs!2402 d!7501))

(declare-fun d!7503 () Bool)

(declare-fun lt!1624 () List!217)

(assert (=> d!7503 (not (isEmpty!173 lt!1624))))

(declare-fun e!5446 () List!217)

(assert (=> d!7503 (= lt!1624 e!5446)))

(declare-fun c!3018 () Bool)

(assert (=> d!7503 (= c!3018 (is-Leaf!136 (left!431 tree!25)))))

(assert (=> d!7503 (= (toList!63 (left!431 tree!25)) lt!1624)))

(declare-fun b!9252 () Bool)

(assert (=> b!9252 (= e!5446 (Cons!214 (value!1305 (left!431 tree!25)) Nil!215))))

(declare-fun b!9253 () Bool)

(assert (=> b!9253 (= e!5446 (append!94 (toList!63 (left!431 (left!431 tree!25))) (toList!63 (right!434 (left!431 tree!25)))))))

(assert (= (and d!7503 c!3018) b!9252))

(assert (= (and d!7503 (not c!3018)) b!9253))

(declare-fun m!12273 () Bool)

(assert (=> d!7503 m!12273))

(declare-fun m!12275 () Bool)

(assert (=> b!9253 m!12275))

(declare-fun m!12277 () Bool)

(assert (=> b!9253 m!12277))

(assert (=> b!9253 m!12275))

(assert (=> b!9253 m!12277))

(declare-fun m!12279 () Bool)

(assert (=> b!9253 m!12279))

(assert (=> bs!2402 d!7503))

(declare-fun d!7505 () Bool)

(declare-fun lt!1625 () List!217)

(assert (=> d!7505 (not (isEmpty!173 lt!1625))))

(declare-fun e!5447 () List!217)

(assert (=> d!7505 (= lt!1625 e!5447)))

(declare-fun c!3019 () Bool)

(assert (=> d!7505 (= c!3019 (is-Leaf!136 (right!434 tree!25)))))

(assert (=> d!7505 (= (toList!63 (right!434 tree!25)) lt!1625)))

(declare-fun b!9254 () Bool)

(assert (=> b!9254 (= e!5447 (Cons!214 (value!1305 (right!434 tree!25)) Nil!215))))

(declare-fun b!9255 () Bool)

(assert (=> b!9255 (= e!5447 (append!94 (toList!63 (left!431 (right!434 tree!25))) (toList!63 (right!434 (right!434 tree!25)))))))

(assert (= (and d!7505 c!3019) b!9254))

(assert (= (and d!7505 (not c!3019)) b!9255))

(declare-fun m!12281 () Bool)

(assert (=> d!7505 m!12281))

(declare-fun m!12283 () Bool)

(assert (=> b!9255 m!12283))

(declare-fun m!12285 () Bool)

(assert (=> b!9255 m!12285))

(assert (=> b!9255 m!12283))

(assert (=> b!9255 m!12285))

(declare-fun m!12287 () Bool)

(assert (=> b!9255 m!12287))

(assert (=> bs!2402 d!7505))

(declare-fun bs!2407 () Bool)

(declare-fun b!9261 () Bool)

(assert (= bs!2407 (and b!9261 b!9234)))

(declare-fun lambda!2295 () Int)

(assert (=> bs!2407 (= (= (left!431 tree!25) tree!25) (= lambda!2295 lambda!2280))))

(assert (=> bs!2407 (not (= lambda!2295 lambda!2281))))

(declare-fun bs!2408 () Bool)

(assert (= bs!2408 (and b!9261 b!9232)))

(assert (=> bs!2408 (not (= lambda!2295 lambda!2283))))

(assert (=> b!9261 true))

(assert (=> b!9261 (< (dynLambda!286 order!133 f!585) (dynLambda!287 order!135 lambda!2295))))

(assert (=> b!9261 true))

(declare-fun b_next!2573 () Bool)

(assert (=> b!9228 (= b_next!2557 (or (and b!9261 (= lambda!2295 (x!5154 thiss!854))) b_next!2573))))

(declare-fun b_next!2575 () Bool)

(assert (=> b!9228 (= b_next!2559 (or (and b!9261 (= lambda!2295 (y!567 thiss!854))) b_next!2575))))

(declare-fun b_next!2577 () Bool)

(assert (=> b!9229 (= b_next!2561 (or (and b!9261 (= lambda!2295 (x!5155 thiss!908))) b_next!2577))))

(declare-fun b_next!2579 () Bool)

(assert (=> b!9229 (= b_next!2563 (or (and b!9261 (= lambda!2295 (y!568 thiss!908))) b_next!2579))))

(declare-fun lambda!2296 () Int)

(assert (=> bs!2407 (= (= (right!434 tree!25) tree!25) (= lambda!2296 lambda!2280))))

(assert (=> bs!2407 (not (= lambda!2296 lambda!2281))))

(assert (=> bs!2408 (not (= lambda!2296 lambda!2283))))

(assert (=> b!9261 (= (= (right!434 tree!25) (left!431 tree!25)) (= lambda!2296 lambda!2295))))

(assert (=> b!9261 true))

(assert (=> b!9261 (< (dynLambda!286 order!133 f!585) (dynLambda!287 order!135 lambda!2296))))

(assert (=> b!9261 true))

(declare-fun b_next!2581 () Bool)

(assert (=> b!9228 (= b_next!2573 (or (and b!9261 (= lambda!2296 (x!5154 thiss!854))) b_next!2581))))

(declare-fun b_next!2583 () Bool)

(assert (=> b!9228 (= b_next!2575 (or (and b!9261 (= lambda!2296 (y!567 thiss!854))) b_next!2583))))

(declare-fun b_next!2585 () Bool)

(assert (=> b!9229 (= b_next!2577 (or (and b!9261 (= lambda!2296 (x!5155 thiss!908))) b_next!2585))))

(declare-fun b_next!2587 () Bool)

(assert (=> b!9229 (= b_next!2579 (or (and b!9261 (= lambda!2296 (y!568 thiss!908))) b_next!2587))))

(declare-fun e!5466 () Balance!201)

(declare-datatypes () ((tuple2!80 (tuple2!81 (_1!40 Balance!201) (_2!40 Balance!201)))))

(declare-fun lt!1628 () tuple2!80)

(declare-fun dynLambda!290 (Int Balance!201 Balance!201) Balance!201)

(assert (=> b!9261 (= e!5466 (dynLambda!290 f!585 (_1!40 lt!1628) (_2!40 lt!1628)))))

(assert (=> b!9261 (= lt!1628 (tuple2!81 (dynLambda!289 lambda!2295) (dynLambda!289 lambda!2296)))))

(declare-fun d!7507 () Bool)

(declare-fun c!3022 () Bool)

(assert (=> d!7507 (= c!3022 (is-Leaf!136 tree!25))))

(assert (=> d!7507 (= (fold!39 tree!25 f!585) e!5466)))

(declare-fun b!9260 () Bool)

(assert (=> b!9260 (= e!5466 (value!1305 tree!25))))

(assert (= (and d!7507 c!3022) b!9260))

(assert (= (and d!7507 (not c!3022)) b!9261))

(declare-fun b_lambda!4869 () Bool)

(assert (=> (not b_lambda!4869) (not b!9261)))

(declare-fun t!2477 () Bool)

(declare-fun tb!2137 () Bool)

(assert (=> (and start!1842 (= f!585 f!585) t!2477) tb!2137))

(declare-fun result!2177 () Bool)

(assert (=> tb!2137 (= result!2177 true)))

(assert (=> b!9261 t!2477))

(declare-fun b_and!3927 () Bool)

(assert (= b_and!3875 (and (=> t!2477 result!2177) b_and!3927)))

(declare-fun b_lambda!4871 () Bool)

(assert (=> (not b_lambda!4871) (not b!9261)))

(declare-fun b_lambda!4873 () Bool)

(assert (=> (not b_lambda!4873) (not b!9261)))

(declare-fun m!12289 () Bool)

(assert (=> b!9261 m!12289))

(declare-fun m!12291 () Bool)

(assert (=> b!9261 m!12291))

(declare-fun m!12293 () Bool)

(assert (=> b!9261 m!12293))

(assert (=> b!9230 d!7507))

(declare-fun d!7509 () Bool)

(declare-fun c!3025 () Bool)

(assert (=> d!7509 (= c!3025 (and (is-Cons!214 (toList!63 tree!25)) (is-Nil!215 (tail!444 (toList!63 tree!25)))))))

(declare-fun e!5469 () Balance!201)

(assert (=> d!7509 (= (foldRight1!70 (toList!63 tree!25) f!585) e!5469)))

(declare-fun b!9266 () Bool)

(assert (=> b!9266 (= e!5469 (head!432 (toList!63 tree!25)))))

(declare-fun b!9267 () Bool)

(assert (=> b!9267 (= e!5469 (dynLambda!290 f!585 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)))))

(assert (= (and d!7509 c!3025) b!9266))

(assert (= (and d!7509 (not c!3025)) b!9267))

(declare-fun b_lambda!4875 () Bool)

(assert (=> (not b_lambda!4875) (not b!9267)))

(declare-fun t!2479 () Bool)

(declare-fun tb!2139 () Bool)

(assert (=> (and start!1842 (= f!585 f!585) t!2479) tb!2139))

(declare-fun result!2179 () Bool)

(assert (=> tb!2139 (= result!2179 true)))

(assert (=> b!9267 t!2479))

(declare-fun b_and!3929 () Bool)

(assert (= b_and!3927 (and (=> t!2479 result!2179) b_and!3929)))

(declare-fun m!12295 () Bool)

(assert (=> b!9267 m!12295))

(assert (=> b!9267 m!12295))

(declare-fun m!12297 () Bool)

(assert (=> b!9267 m!12297))

(assert (=> b!9230 d!7509))

(declare-fun d!7511 () Bool)

(declare-fun lt!1629 () List!217)

(assert (=> d!7511 (not (isEmpty!173 lt!1629))))

(declare-fun e!5470 () List!217)

(assert (=> d!7511 (= lt!1629 e!5470)))

(declare-fun c!3026 () Bool)

(assert (=> d!7511 (= c!3026 (is-Leaf!136 tree!25))))

(assert (=> d!7511 (= (toList!63 tree!25) lt!1629)))

(declare-fun b!9268 () Bool)

(assert (=> b!9268 (= e!5470 (Cons!214 (value!1305 tree!25) Nil!215))))

(declare-fun b!9269 () Bool)

(assert (=> b!9269 (= e!5470 (append!94 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))))))

(assert (= (and d!7511 c!3026) b!9268))

(assert (= (and d!7511 (not c!3026)) b!9269))

(declare-fun m!12299 () Bool)

(assert (=> d!7511 m!12299))

(assert (=> b!9269 m!12235))

(assert (=> b!9269 m!12237))

(assert (=> b!9269 m!12235))

(assert (=> b!9269 m!12237))

(assert (=> b!9269 m!12263))

(assert (=> b!9230 d!7511))

(declare-fun b_lambda!4877 () Bool)

(assert (= b_lambda!4869 (or (and start!1842 (= lambda!2279 f!585)) (and d!7495 (= lambda!2287 f!585)) (and d!7501 (= lambda!2290 f!585)) (and start!1842 b_free!1043) b_lambda!4877)))

(declare-fun bs!2409 () Bool)

(declare-fun d!7513 () Bool)

(assert (= bs!2409 (and d!7513 start!1842)))

(assert (=> bs!2409 (= (dynLambda!290 lambda!2279 (_1!40 lt!1628) (_2!40 lt!1628)) (++!3 (_1!40 lt!1628) (_2!40 lt!1628)))))

(declare-fun m!12301 () Bool)

(assert (=> bs!2409 m!12301))

(assert (=> (and start!1842 (= lambda!2279 f!585) b!9261) d!7513))

(declare-fun bs!2410 () Bool)

(declare-fun d!7515 () Bool)

(assert (= bs!2410 (and d!7515 d!7495)))

(assert (=> bs!2410 (= (dynLambda!290 lambda!2287 (_1!40 lt!1628) (_2!40 lt!1628)) (++!3 (_1!40 lt!1628) (_2!40 lt!1628)))))

(assert (=> bs!2410 m!12301))

(assert (=> (and d!7495 (= lambda!2287 f!585) b!9261) d!7515))

(declare-fun bs!2411 () Bool)

(declare-fun d!7517 () Bool)

(assert (= bs!2411 (and d!7517 d!7501)))

(assert (=> bs!2411 (= (dynLambda!290 lambda!2290 (_1!40 lt!1628) (_2!40 lt!1628)) (++!3 (_1!40 lt!1628) (_2!40 lt!1628)))))

(assert (=> bs!2411 m!12301))

(assert (=> (and d!7501 (= lambda!2290 f!585) b!9261) d!7517))

(declare-fun b_lambda!4879 () Bool)

(assert (= b_lambda!4863 (or (and b!9234 (= lambda!2282 (evidence!149 thiss!854))) (and b!9231 (= lambda!2284 (evidence!149 thiss!854))) (and start!1842 b_free!1041 (= proof!254 (evidence!149 thiss!854))) (and b!9228 b_free!1049) b_lambda!4879)))

(declare-fun bs!2412 () Bool)

(declare-fun d!7519 () Bool)

(assert (= bs!2412 (and d!7519 b!9234)))

(assert (=> bs!2412 (= (dynLambda!288 lambda!2282) (fold_foldRight1_equivalence!0 (right!434 tree!25)))))

(assert (=> bs!2412 m!12233))

(assert (=> (and b!9234 (= lambda!2282 (evidence!149 thiss!854)) b!9244) d!7519))

(declare-fun bs!2413 () Bool)

(declare-fun d!7521 () Bool)

(assert (= bs!2413 (and d!7521 b!9231)))

(assert (=> bs!2413 (= (dynLambda!288 lambda!2284) (append!24 (toList!63 (left!431 tree!25)) (toList!63 (right!434 tree!25))))))

(assert (=> bs!2413 m!12235))

(assert (=> bs!2413 m!12237))

(assert (=> bs!2413 m!12235))

(assert (=> bs!2413 m!12237))

(assert (=> bs!2413 m!12239))

(assert (=> (and b!9231 (= lambda!2284 (evidence!149 thiss!854)) b!9244) d!7521))

(declare-fun b_lambda!4881 () Bool)

(assert (= b_lambda!4873 (or b!9261 b_lambda!4881)))

(declare-fun bs!2414 () Bool)

(declare-fun d!7523 () Bool)

(assert (= bs!2414 (and d!7523 b!9261)))

(assert (=> bs!2414 (= (dynLambda!289 lambda!2296) (fold!39 (right!434 tree!25) f!585))))

(declare-fun m!12303 () Bool)

(assert (=> bs!2414 m!12303))

(assert (=> b!9261 d!7523))

(declare-fun b_lambda!4883 () Bool)

(assert (= b_lambda!4867 (or (and b!9234 (= lambda!2280 (y!568 thiss!908))) (and b!9228 b_free!1045 (= (x!5154 thiss!854) (y!568 thiss!908))) (and b!9228 b_free!1047 (= (y!567 thiss!854) (y!568 thiss!908))) (and b!9229 b_free!1051 (= (x!5155 thiss!908) (y!568 thiss!908))) (and b!9234 (= lambda!2281 (y!568 thiss!908))) (and b!9232 (= lambda!2283 (y!568 thiss!908))) (and b!9261 (= lambda!2296 (y!568 thiss!908))) (and b!9261 (= lambda!2295 (y!568 thiss!908))) (and b!9229 b_free!1053) b_lambda!4883)))

(declare-fun bs!2415 () Bool)

(declare-fun d!7525 () Bool)

(assert (= bs!2415 (and d!7525 b!9234)))

(assert (=> bs!2415 (= (dynLambda!289 lambda!2280) (fold!39 tree!25 f!585))))

(assert (=> bs!2415 m!12225))

(assert (=> (and b!9234 (= lambda!2280 (y!568 thiss!908)) d!7499) d!7525))

(declare-fun bs!2416 () Bool)

(declare-fun d!7527 () Bool)

(assert (= bs!2416 (and d!7527 b!9232)))

(assert (=> bs!2416 (= (dynLambda!289 lambda!2283) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (foldRight1!70 (toList!63 (right!434 tree!25)) f!585)))))

(declare-fun b_lambda!4895 () Bool)

(assert (=> (not b_lambda!4895) (not bs!2416)))

(declare-fun t!2481 () Bool)

(declare-fun tb!2141 () Bool)

(assert (=> (and start!1842 (= f!585 f!585) t!2481) tb!2141))

(declare-fun result!2181 () Bool)

(assert (=> tb!2141 (= result!2181 true)))

(assert (=> bs!2416 t!2481))

(declare-fun b_and!3931 () Bool)

(assert (= b_and!3929 (and (=> t!2481 result!2181) b_and!3931)))

(assert (=> bs!2416 m!12235))

(declare-fun m!12305 () Bool)

(assert (=> bs!2416 m!12305))

(declare-fun m!12307 () Bool)

(assert (=> bs!2416 m!12307))

(declare-fun m!12309 () Bool)

(assert (=> bs!2416 m!12309))

(assert (=> bs!2416 m!12237))

(assert (=> bs!2416 m!12235))

(assert (=> bs!2416 m!12305))

(assert (=> bs!2416 m!12237))

(assert (=> bs!2416 m!12307))

(assert (=> (and b!9232 (= lambda!2283 (y!568 thiss!908)) d!7499) d!7527))

(declare-fun bs!2417 () Bool)

(declare-fun d!7529 () Bool)

(assert (= bs!2417 (and d!7529 b!9234)))

(assert (=> bs!2417 (= (dynLambda!289 lambda!2281) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (fold!39 (right!434 tree!25) f!585)))))

(declare-fun b_lambda!4897 () Bool)

(assert (=> (not b_lambda!4897) (not bs!2417)))

(declare-fun t!2483 () Bool)

(declare-fun tb!2143 () Bool)

(assert (=> (and start!1842 (= f!585 f!585) t!2483) tb!2143))

(declare-fun result!2183 () Bool)

(assert (=> tb!2143 (= result!2183 true)))

(assert (=> bs!2417 t!2483))

(declare-fun b_and!3933 () Bool)

(assert (= b_and!3931 (and (=> t!2483 result!2183) b_and!3933)))

(assert (=> bs!2417 m!12303))

(assert (=> bs!2417 m!12235))

(assert (=> bs!2417 m!12235))

(assert (=> bs!2417 m!12305))

(assert (=> bs!2417 m!12305))

(assert (=> bs!2417 m!12303))

(declare-fun m!12311 () Bool)

(assert (=> bs!2417 m!12311))

(assert (=> (and b!9234 (= lambda!2281 (y!568 thiss!908)) d!7499) d!7529))

(declare-fun bs!2418 () Bool)

(declare-fun d!7531 () Bool)

(assert (= bs!2418 (and d!7531 b!9261)))

(assert (=> bs!2418 (= (dynLambda!289 lambda!2295) (fold!39 (left!431 tree!25) f!585))))

(declare-fun m!12313 () Bool)

(assert (=> bs!2418 m!12313))

(assert (=> (and b!9261 (= lambda!2295 (y!568 thiss!908)) d!7499) d!7531))

(declare-fun bs!2419 () Bool)

(declare-fun d!7533 () Bool)

(assert (= bs!2419 (and d!7533 b!9261)))

(assert (=> bs!2419 (= (dynLambda!289 lambda!2296) (fold!39 (right!434 tree!25) f!585))))

(assert (=> bs!2419 m!12303))

(assert (=> (and b!9261 (= lambda!2296 (y!568 thiss!908)) d!7499) d!7533))

(declare-fun b_lambda!4885 () Bool)

(assert (= b_lambda!4875 (or (and start!1842 (= lambda!2279 f!585)) (and d!7495 (= lambda!2287 f!585)) (and d!7501 (= lambda!2290 f!585)) (and start!1842 b_free!1043) b_lambda!4885)))

(declare-fun bs!2420 () Bool)

(declare-fun d!7535 () Bool)

(assert (= bs!2420 (and d!7535 start!1842)))

(assert (=> bs!2420 (= (dynLambda!290 lambda!2279 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)) (++!3 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)))))

(assert (=> bs!2420 m!12295))

(declare-fun m!12315 () Bool)

(assert (=> bs!2420 m!12315))

(assert (=> (and start!1842 (= lambda!2279 f!585) b!9267) d!7535))

(declare-fun bs!2421 () Bool)

(declare-fun d!7537 () Bool)

(assert (= bs!2421 (and d!7537 d!7495)))

(assert (=> bs!2421 (= (dynLambda!290 lambda!2287 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)) (++!3 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)))))

(assert (=> bs!2421 m!12295))

(assert (=> bs!2421 m!12315))

(assert (=> (and d!7495 (= lambda!2287 f!585) b!9267) d!7537))

(declare-fun bs!2422 () Bool)

(declare-fun d!7539 () Bool)

(assert (= bs!2422 (and d!7539 d!7501)))

(assert (=> bs!2422 (= (dynLambda!290 lambda!2290 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)) (++!3 (head!432 (toList!63 tree!25)) (foldRight1!70 (tail!444 (toList!63 tree!25)) f!585)))))

(assert (=> bs!2422 m!12295))

(assert (=> bs!2422 m!12315))

(assert (=> (and d!7501 (= lambda!2290 f!585) b!9267) d!7539))

(declare-fun b_lambda!4887 () Bool)

(assert (= b_lambda!4865 (or (and b!9228 b_free!1045 (= (x!5154 thiss!854) (x!5155 thiss!908))) (and b!9228 b_free!1047 (= (y!567 thiss!854) (x!5155 thiss!908))) (and b!9261 (= lambda!2295 (x!5155 thiss!908))) (and b!9234 (= lambda!2281 (x!5155 thiss!908))) (and b!9229 b_free!1053 (= (y!568 thiss!908) (x!5155 thiss!908))) (and b!9234 (= lambda!2280 (x!5155 thiss!908))) (and b!9261 (= lambda!2296 (x!5155 thiss!908))) (and b!9232 (= lambda!2283 (x!5155 thiss!908))) (and b!9229 b_free!1051) b_lambda!4887)))

(declare-fun bs!2423 () Bool)

(declare-fun d!7541 () Bool)

(assert (= bs!2423 (and d!7541 b!9232)))

(assert (=> bs!2423 (= (dynLambda!289 lambda!2283) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (foldRight1!70 (toList!63 (right!434 tree!25)) f!585)))))

(declare-fun b_lambda!4899 () Bool)

(assert (=> (not b_lambda!4899) (not bs!2423)))

(assert (=> bs!2423 t!2481))

(declare-fun b_and!3935 () Bool)

(assert (= b_and!3933 (and (=> t!2481 result!2181) b_and!3935)))

(assert (=> bs!2423 m!12235))

(assert (=> bs!2423 m!12305))

(assert (=> bs!2423 m!12307))

(assert (=> bs!2423 m!12309))

(assert (=> bs!2423 m!12237))

(assert (=> bs!2423 m!12235))

(assert (=> bs!2423 m!12305))

(assert (=> bs!2423 m!12237))

(assert (=> bs!2423 m!12307))

(assert (=> (and b!9232 (= lambda!2283 (x!5155 thiss!908)) d!7499) d!7541))

(declare-fun bs!2424 () Bool)

(declare-fun d!7543 () Bool)

(assert (= bs!2424 (and d!7543 b!9234)))

(assert (=> bs!2424 (= (dynLambda!289 lambda!2280) (fold!39 tree!25 f!585))))

(assert (=> bs!2424 m!12225))

(assert (=> (and b!9234 (= lambda!2280 (x!5155 thiss!908)) d!7499) d!7543))

(declare-fun bs!2425 () Bool)

(declare-fun d!7545 () Bool)

(assert (= bs!2425 (and d!7545 b!9261)))

(assert (=> bs!2425 (= (dynLambda!289 lambda!2295) (fold!39 (left!431 tree!25) f!585))))

(assert (=> bs!2425 m!12313))

(assert (=> (and b!9261 (= lambda!2295 (x!5155 thiss!908)) d!7499) d!7545))

(declare-fun bs!2426 () Bool)

(declare-fun d!7547 () Bool)

(assert (= bs!2426 (and d!7547 b!9234)))

(assert (=> bs!2426 (= (dynLambda!289 lambda!2281) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (fold!39 (right!434 tree!25) f!585)))))

(declare-fun b_lambda!4901 () Bool)

(assert (=> (not b_lambda!4901) (not bs!2426)))

(assert (=> bs!2426 t!2483))

(declare-fun b_and!3937 () Bool)

(assert (= b_and!3935 (and (=> t!2483 result!2183) b_and!3937)))

(assert (=> bs!2426 m!12303))

(assert (=> bs!2426 m!12235))

(assert (=> bs!2426 m!12235))

(assert (=> bs!2426 m!12305))

(assert (=> bs!2426 m!12305))

(assert (=> bs!2426 m!12303))

(assert (=> bs!2426 m!12311))

(assert (=> (and b!9234 (= lambda!2281 (x!5155 thiss!908)) d!7499) d!7547))

(declare-fun bs!2427 () Bool)

(declare-fun d!7549 () Bool)

(assert (= bs!2427 (and d!7549 b!9261)))

(assert (=> bs!2427 (= (dynLambda!289 lambda!2296) (fold!39 (right!434 tree!25) f!585))))

(assert (=> bs!2427 m!12303))

(assert (=> (and b!9261 (= lambda!2296 (x!5155 thiss!908)) d!7499) d!7549))

(declare-fun b_lambda!4889 () Bool)

(assert (= b_lambda!4861 (or (and b!9234 (= lambda!2281 (y!567 thiss!854))) (and b!9228 b_free!1047) (and b!9229 b_free!1051 (= (x!5155 thiss!908) (y!567 thiss!854))) (and b!9234 (= lambda!2280 (y!567 thiss!854))) (and b!9261 (= lambda!2296 (y!567 thiss!854))) (and b!9228 b_free!1045 (= (x!5154 thiss!854) (y!567 thiss!854))) (and b!9229 b_free!1053 (= (y!568 thiss!908) (y!567 thiss!854))) (and b!9261 (= lambda!2295 (y!567 thiss!854))) (and b!9232 (= lambda!2283 (y!567 thiss!854))) b_lambda!4889)))

(declare-fun bs!2428 () Bool)

(declare-fun d!7551 () Bool)

(assert (= bs!2428 (and d!7551 b!9261)))

(assert (=> bs!2428 (= (dynLambda!289 lambda!2295) (fold!39 (left!431 tree!25) f!585))))

(assert (=> bs!2428 m!12313))

(assert (=> (and b!9261 (= lambda!2295 (y!567 thiss!854)) d!7497) d!7551))

(declare-fun bs!2429 () Bool)

(declare-fun d!7553 () Bool)

(assert (= bs!2429 (and d!7553 b!9234)))

(assert (=> bs!2429 (= (dynLambda!289 lambda!2281) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (fold!39 (right!434 tree!25) f!585)))))

(declare-fun b_lambda!4903 () Bool)

(assert (=> (not b_lambda!4903) (not bs!2429)))

(assert (=> bs!2429 t!2483))

(declare-fun b_and!3939 () Bool)

(assert (= b_and!3937 (and (=> t!2483 result!2183) b_and!3939)))

(assert (=> bs!2429 m!12303))

(assert (=> bs!2429 m!12235))

(assert (=> bs!2429 m!12235))

(assert (=> bs!2429 m!12305))

(assert (=> bs!2429 m!12305))

(assert (=> bs!2429 m!12303))

(assert (=> bs!2429 m!12311))

(assert (=> (and b!9234 (= lambda!2281 (y!567 thiss!854)) d!7497) d!7553))

(declare-fun bs!2430 () Bool)

(declare-fun d!7555 () Bool)

(assert (= bs!2430 (and d!7555 b!9234)))

(assert (=> bs!2430 (= (dynLambda!289 lambda!2280) (fold!39 tree!25 f!585))))

(assert (=> bs!2430 m!12225))

(assert (=> (and b!9234 (= lambda!2280 (y!567 thiss!854)) d!7497) d!7555))

(declare-fun bs!2431 () Bool)

(declare-fun d!7557 () Bool)

(assert (= bs!2431 (and d!7557 b!9261)))

(assert (=> bs!2431 (= (dynLambda!289 lambda!2296) (fold!39 (right!434 tree!25) f!585))))

(assert (=> bs!2431 m!12303))

(assert (=> (and b!9261 (= lambda!2296 (y!567 thiss!854)) d!7497) d!7557))

(declare-fun bs!2432 () Bool)

(declare-fun d!7559 () Bool)

(assert (= bs!2432 (and d!7559 b!9232)))

(assert (=> bs!2432 (= (dynLambda!289 lambda!2283) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (foldRight1!70 (toList!63 (right!434 tree!25)) f!585)))))

(declare-fun b_lambda!4905 () Bool)

(assert (=> (not b_lambda!4905) (not bs!2432)))

(assert (=> bs!2432 t!2481))

(declare-fun b_and!3941 () Bool)

(assert (= b_and!3939 (and (=> t!2481 result!2181) b_and!3941)))

(assert (=> bs!2432 m!12235))

(assert (=> bs!2432 m!12305))

(assert (=> bs!2432 m!12307))

(assert (=> bs!2432 m!12309))

(assert (=> bs!2432 m!12237))

(assert (=> bs!2432 m!12235))

(assert (=> bs!2432 m!12305))

(assert (=> bs!2432 m!12237))

(assert (=> bs!2432 m!12307))

(assert (=> (and b!9232 (= lambda!2283 (y!567 thiss!854)) d!7497) d!7559))

(declare-fun b_lambda!4891 () Bool)

(assert (= b_lambda!4859 (or (and b!9234 (= lambda!2281 (x!5154 thiss!854))) (and b!9228 b_free!1045) (and b!9232 (= lambda!2283 (x!5154 thiss!854))) (and b!9261 (= lambda!2296 (x!5154 thiss!854))) (and b!9229 b_free!1051 (= (x!5155 thiss!908) (x!5154 thiss!854))) (and b!9229 b_free!1053 (= (y!568 thiss!908) (x!5154 thiss!854))) (and b!9228 b_free!1047 (= (y!567 thiss!854) (x!5154 thiss!854))) (and b!9234 (= lambda!2280 (x!5154 thiss!854))) (and b!9261 (= lambda!2295 (x!5154 thiss!854))) b_lambda!4891)))

(declare-fun bs!2433 () Bool)

(declare-fun d!7561 () Bool)

(assert (= bs!2433 (and d!7561 b!9261)))

(assert (=> bs!2433 (= (dynLambda!289 lambda!2296) (fold!39 (right!434 tree!25) f!585))))

(assert (=> bs!2433 m!12303))

(assert (=> (and b!9261 (= lambda!2296 (x!5154 thiss!854)) d!7497) d!7561))

(declare-fun bs!2434 () Bool)

(declare-fun d!7563 () Bool)

(assert (= bs!2434 (and d!7563 b!9234)))

(assert (=> bs!2434 (= (dynLambda!289 lambda!2281) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (fold!39 (right!434 tree!25) f!585)))))

(declare-fun b_lambda!4907 () Bool)

(assert (=> (not b_lambda!4907) (not bs!2434)))

(assert (=> bs!2434 t!2483))

(declare-fun b_and!3943 () Bool)

(assert (= b_and!3941 (and (=> t!2483 result!2183) b_and!3943)))

(assert (=> bs!2434 m!12303))

(assert (=> bs!2434 m!12235))

(assert (=> bs!2434 m!12235))

(assert (=> bs!2434 m!12305))

(assert (=> bs!2434 m!12305))

(assert (=> bs!2434 m!12303))

(assert (=> bs!2434 m!12311))

(assert (=> (and b!9234 (= lambda!2281 (x!5154 thiss!854)) d!7497) d!7563))

(declare-fun bs!2435 () Bool)

(declare-fun d!7565 () Bool)

(assert (= bs!2435 (and d!7565 b!9234)))

(assert (=> bs!2435 (= (dynLambda!289 lambda!2280) (fold!39 tree!25 f!585))))

(assert (=> bs!2435 m!12225))

(assert (=> (and b!9234 (= lambda!2280 (x!5154 thiss!854)) d!7497) d!7565))

(declare-fun bs!2436 () Bool)

(declare-fun d!7567 () Bool)

(assert (= bs!2436 (and d!7567 b!9232)))

(assert (=> bs!2436 (= (dynLambda!289 lambda!2283) (dynLambda!290 f!585 (foldRight1!70 (toList!63 (left!431 tree!25)) f!585) (foldRight1!70 (toList!63 (right!434 tree!25)) f!585)))))

(declare-fun b_lambda!4909 () Bool)

(assert (=> (not b_lambda!4909) (not bs!2436)))

(assert (=> bs!2436 t!2481))

(declare-fun b_and!3945 () Bool)

(assert (= b_and!3943 (and (=> t!2481 result!2181) b_and!3945)))

(assert (=> bs!2436 m!12235))

(assert (=> bs!2436 m!12305))

(assert (=> bs!2436 m!12307))

(assert (=> bs!2436 m!12309))

(assert (=> bs!2436 m!12237))

(assert (=> bs!2436 m!12235))

(assert (=> bs!2436 m!12305))

(assert (=> bs!2436 m!12237))

(assert (=> bs!2436 m!12307))

(assert (=> (and b!9232 (= lambda!2283 (x!5154 thiss!854)) d!7497) d!7567))

(declare-fun bs!2437 () Bool)

(declare-fun d!7569 () Bool)

(assert (= bs!2437 (and d!7569 b!9261)))

(assert (=> bs!2437 (= (dynLambda!289 lambda!2295) (fold!39 (left!431 tree!25) f!585))))

(assert (=> bs!2437 m!12313))

(assert (=> (and b!9261 (= lambda!2295 (x!5154 thiss!854)) d!7497) d!7569))

(declare-fun b_lambda!4893 () Bool)

(assert (= b_lambda!4871 (or b!9261 b_lambda!4893)))

(declare-fun bs!2438 () Bool)

(declare-fun d!7571 () Bool)

(assert (= bs!2438 (and d!7571 b!9261)))

(assert (=> bs!2438 (= (dynLambda!289 lambda!2295) (fold!39 (left!431 tree!25) f!585))))

(assert (=> bs!2438 m!12313))

(assert (=> b!9261 d!7571))

(push 1)

(assert (not bs!2433))

(assert (not bs!2412))

(assert (not b_next!2587))

(assert (not b_next!2585))

(assert (not b_lambda!4901))

(assert (not b_next!2583))

(assert (not b!9253))

(assert b_and!3919)

(assert (not b_lambda!4887))

(assert (not bs!2423))

(assert (not bs!2409))

(assert (not b_lambda!4891))

(assert (not d!7495))

(assert (not b_lambda!4907))

(assert (not d!7501))

(assert (not b!9255))

(assert (not b_lambda!4879))

(assert (not bs!2438))

(assert (not bs!2431))

(assert (not bs!2424))

(assert (not bs!2428))

(assert (not bs!2430))

(assert (not bs!2410))

(assert b_and!3909)

(assert (not b!9269))

(assert (not bs!2416))

(assert (not b_lambda!4857))

(assert b_and!3923)

(assert (not b_next!2567))

(assert b_and!3925)

(assert (not b_lambda!4877))

(assert (not bs!2426))

(assert (not b_lambda!4885))

(assert (not d!7505))

(assert (not bs!2418))

(assert b_and!3945)

(assert (not b_lambda!4889))

(assert (not b_lambda!4905))

(assert (not bs!2427))

(assert (not bs!2436))

(assert (not d!7503))

(assert (not bs!2413))

(assert (not b_lambda!4909))

(assert (not d!7511))

(assert (not bs!2411))

(assert (not bs!2419))

(assert (not b!9267))

(assert (not b_next!2565))

(assert (not bs!2421))

(assert (not b_lambda!4899))

(assert (not bs!2417))

(assert b_and!3907)

(assert (not bs!2435))

(assert (not bs!2415))

(assert (not bs!2422))

(assert (not bs!2429))

(assert (not b_lambda!4897))

(assert (not b_lambda!4893))

(assert (not b_lambda!4883))

(assert (not bs!2425))

(assert (not bs!2434))

(assert (not bs!2437))

(assert (not bs!2432))

(assert (not b_lambda!4881))

(assert (not b!9247))

(assert (not b_next!2571))

(assert (not b_next!2581))

(assert (not bs!2420))

(assert (not b_lambda!4903))

(assert b_and!3921)

(assert (not b_lambda!4895))

(assert (not bs!2414))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2587))

(assert (not b_next!2585))

(assert (not b_next!2583))

(assert b_and!3919)

(assert b_and!3909)

(assert b_and!3923)

(assert (not b_next!2567))

(assert b_and!3925)

(assert b_and!3945)

(assert (not b_next!2565))

(assert b_and!3907)

(assert (not b_next!2571))

(assert (not b_next!2581))

(assert b_and!3921)

(check-sat)

(pop 1)

