; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1830 () Bool)

(assert start!1830)

(declare-fun b!9174 () Bool)

(declare-fun b_free!1027 () Bool)

(declare-fun b_next!2421 () Bool)

(assert (=> b!9174 (= b_free!1027 (not b_next!2421))))

(declare-fun tp!1675 () Bool)

(declare-fun b_and!3773 () Bool)

(assert (=> b!9174 (= tp!1675 b_and!3773)))

(declare-fun b_free!1029 () Bool)

(declare-fun b_next!2423 () Bool)

(assert (=> b!9174 (= b_free!1029 (not b_next!2423))))

(declare-fun tp!1679 () Bool)

(declare-fun b_and!3775 () Bool)

(assert (=> b!9174 (= tp!1679 b_and!3775)))

(declare-fun b_free!1031 () Bool)

(declare-fun b_next!2425 () Bool)

(assert (=> b!9174 (= b_free!1031 (not b_next!2425))))

(declare-fun tp!1676 () Bool)

(declare-fun b_and!3777 () Bool)

(assert (=> b!9174 (= tp!1676 b_and!3777)))

(declare-fun b_free!1033 () Bool)

(declare-fun b_next!2427 () Bool)

(assert (=> start!1830 (= b_free!1033 (not b_next!2427))))

(declare-fun tp!1680 () Bool)

(declare-fun b_and!3779 () Bool)

(assert (=> start!1830 (= tp!1680 b_and!3779)))

(declare-fun b!9171 () Bool)

(declare-fun b_free!1035 () Bool)

(declare-fun b_next!2429 () Bool)

(assert (=> b!9171 (= b_free!1035 (not b_next!2429))))

(declare-fun tp!1677 () Bool)

(declare-fun b_and!3781 () Bool)

(assert (=> b!9171 (= tp!1677 b_and!3781)))

(declare-fun b_free!1037 () Bool)

(declare-fun b_next!2431 () Bool)

(assert (=> b!9171 (= b_free!1037 (not b_next!2431))))

(declare-fun tp!1681 () Bool)

(declare-fun b_and!3783 () Bool)

(assert (=> b!9171 (= tp!1681 b_and!3783)))

(declare-fun b_free!1039 () Bool)

(declare-fun b_next!2433 () Bool)

(assert (=> b!9171 (= b_free!1039 (not b_next!2433))))

(declare-fun tp!1678 () Bool)

(declare-fun b_and!3785 () Bool)

(assert (=> b!9171 (= tp!1678 b_and!3785)))

(declare-fun f!585 () Int)

(declare-fun b_next!2435 () Bool)

(declare-fun lambda!2245 () Int)

(assert (=> start!1830 (= b_next!2427 (or (and start!1830 (= lambda!2245 f!585)) b_next!2435))))

(declare-fun b!9175 () Bool)

(assert (=> b!9175 true))

(declare-fun lambda!2246 () Int)

(declare-fun order!131 () Int)

(declare-fun order!129 () Int)

(declare-fun dynLambda!281 (Int Int) Int)

(declare-fun dynLambda!282 (Int Int) Int)

(assert (=> b!9175 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2246))))

(assert (=> b!9175 true))

(declare-datatypes () ((Balance!199 (Balance!200 (extraOpen!140 Int) (extraClose!140 Int)))))

(declare-datatypes () ((EqEvidence!162 (EqEvidence!163 (x!5103 Int) (y!564 Int) (evidence!148 Int)))))

(declare-fun that!223 () EqEvidence!162)

(declare-fun b_next!2437 () Bool)

(assert (=> b!9174 (= b_next!2421 (or (and b!9175 (= lambda!2246 (x!5103 that!223))) b_next!2437))))

(declare-fun b_next!2439 () Bool)

(assert (=> b!9174 (= b_next!2423 (or (and b!9175 (= lambda!2246 (y!564 that!223))) b_next!2439))))

(declare-fun b_next!2441 () Bool)

(declare-fun thiss!855 () EqEvidence!162)

(assert (=> b!9171 (= b_next!2429 (or (and b!9175 (= lambda!2246 (x!5103 thiss!855))) b_next!2441))))

(declare-fun b_next!2443 () Bool)

(assert (=> b!9171 (= b_next!2431 (or (and b!9175 (= lambda!2246 (y!564 thiss!855))) b_next!2443))))

(declare-fun lambda!2247 () Int)

(assert (=> b!9175 (not (= lambda!2247 lambda!2246))))

(assert (=> b!9175 true))

(assert (=> b!9175 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2247))))

(assert (=> b!9175 true))

(declare-fun b_next!2445 () Bool)

(assert (=> b!9174 (= b_next!2437 (or (and b!9175 (= lambda!2247 (x!5103 that!223))) b_next!2445))))

(declare-fun b_next!2447 () Bool)

(assert (=> b!9174 (= b_next!2439 (or (and b!9175 (= lambda!2247 (y!564 that!223))) b_next!2447))))

(declare-fun b_next!2449 () Bool)

(assert (=> b!9171 (= b_next!2441 (or (and b!9175 (= lambda!2247 (x!5103 thiss!855))) b_next!2449))))

(declare-fun b_next!2451 () Bool)

(assert (=> b!9171 (= b_next!2443 (or (and b!9175 (= lambda!2247 (y!564 thiss!855))) b_next!2451))))

(assert (=> b!9175 true))

(declare-fun b_next!2453 () Bool)

(declare-fun lambda!2248 () Int)

(assert (=> b!9174 (= b_next!2425 (or (and b!9175 (= lambda!2248 (evidence!148 that!223))) b_next!2453))))

(declare-fun b_next!2455 () Bool)

(assert (=> b!9171 (= b_next!2433 (or (and b!9175 (= lambda!2248 (evidence!148 thiss!855))) b_next!2455))))

(declare-fun bs!2320 () Bool)

(declare-fun b!9168 () Bool)

(assert (= bs!2320 (and b!9168 b!9175)))

(declare-fun lambda!2249 () Int)

(assert (=> bs!2320 (not (= lambda!2249 lambda!2246))))

(assert (=> bs!2320 (not (= lambda!2249 lambda!2247))))

(assert (=> b!9168 true))

(assert (=> b!9168 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2249))))

(assert (=> b!9168 true))

(declare-fun b_next!2457 () Bool)

(assert (=> b!9174 (= b_next!2445 (or (and b!9168 (= lambda!2249 (x!5103 that!223))) b_next!2457))))

(declare-fun b_next!2459 () Bool)

(assert (=> b!9174 (= b_next!2447 (or (and b!9168 (= lambda!2249 (y!564 that!223))) b_next!2459))))

(declare-fun b_next!2461 () Bool)

(assert (=> b!9171 (= b_next!2449 (or (and b!9168 (= lambda!2249 (x!5103 thiss!855))) b_next!2461))))

(declare-fun b_next!2463 () Bool)

(assert (=> b!9171 (= b_next!2451 (or (and b!9168 (= lambda!2249 (y!564 thiss!855))) b_next!2463))))

(declare-datatypes () ((Tree!62 (Branch!53 (left!427 Tree!62) (right!430 Tree!62)) (Leaf!135 (value!1304 Balance!199)))))

(declare-fun tree!25 () Tree!62)

(declare-fun lambda!2250 () Int)

(assert (=> bs!2320 (= (= (right!430 tree!25) (left!427 tree!25)) (= lambda!2250 lambda!2248))))

(assert (=> b!9168 true))

(declare-fun b_next!2465 () Bool)

(assert (=> b!9174 (= b_next!2453 (or (and b!9168 (= lambda!2250 (evidence!148 that!223))) b_next!2465))))

(declare-fun b_next!2467 () Bool)

(assert (=> b!9171 (= b_next!2455 (or (and b!9168 (= lambda!2250 (evidence!148 thiss!855))) b_next!2467))))

(declare-fun res!2934 () Bool)

(declare-fun e!5393 () Bool)

(assert (=> b!9168 (=> (not res!2934) (not e!5393))))

(assert (=> b!9168 (= res!2934 (= that!223 (EqEvidence!163 lambda!2249 lambda!2249 lambda!2250)))))

(declare-fun b!9169 () Bool)

(declare-fun res!2936 () Bool)

(assert (=> b!9169 (=> (not res!2936) (not e!5393))))

(declare-fun dynLambda!283 (Int) Bool)

(assert (=> b!9169 (= res!2936 (dynLambda!283 (evidence!148 thiss!855)))))

(declare-fun b!9170 () Bool)

(declare-fun dynLambda!284 (Int) Balance!199)

(assert (=> b!9170 (= e!5393 (not (= (dynLambda!284 (y!564 thiss!855)) (dynLambda!284 (x!5103 that!223)))))))

(declare-fun e!5395 () Bool)

(assert (=> b!9171 (= e!5395 (and tp!1677 tp!1681 tp!1678))))

(declare-fun b!9172 () Bool)

(declare-fun res!2933 () Bool)

(assert (=> b!9172 (=> (not res!2933) (not e!5393))))

(assert (=> b!9172 (= res!2933 (not (is-Leaf!135 tree!25)))))

(declare-fun b!9173 () Bool)

(declare-fun res!2937 () Bool)

(assert (=> b!9173 (=> (not res!2937) (not e!5393))))

(declare-datatypes () ((ProofOps!146 (ProofOps!147 (prop!190 Bool)))))

(declare-fun thiss!829 () ProofOps!146)

(declare-fun fold!38 (Tree!62 Int) Balance!199)

(declare-datatypes () ((List!216 (Nil!214) (Cons!213 (head!431 Balance!199) (tail!443 List!216)))))

(declare-fun foldRight1!69 (List!216 Int) Balance!199)

(declare-fun toList!62 (Tree!62) List!216)

(assert (=> b!9173 (= res!2937 (= thiss!829 (ProofOps!147 (= (fold!38 tree!25 f!585) (foldRight1!69 (toList!62 tree!25) f!585)))))))

(declare-fun e!5394 () Bool)

(assert (=> b!9174 (= e!5394 (and tp!1675 tp!1679 tp!1676))))

(declare-fun res!2938 () Bool)

(assert (=> b!9175 (=> (not res!2938) (not e!5393))))

(assert (=> b!9175 (= res!2938 (= thiss!855 (EqEvidence!163 lambda!2246 lambda!2247 lambda!2248)))))

(declare-fun res!2935 () Bool)

(assert (=> start!1830 (=> (not res!2935) (not e!5393))))

(assert (=> start!1830 (= res!2935 (= f!585 lambda!2245))))

(assert (=> start!1830 e!5393))

(assert (=> start!1830 true))

(declare-fun inv!323 (EqEvidence!162) Bool)

(assert (=> start!1830 (and (inv!323 that!223) e!5394)))

(assert (=> start!1830 tp!1680))

(assert (=> start!1830 (and (inv!323 thiss!855) e!5395)))

(assert (= (and start!1830 res!2935) b!9173))

(assert (= (and b!9173 res!2937) b!9172))

(assert (= (and b!9172 res!2933) b!9175))

(assert (= (and b!9175 res!2938) b!9168))

(assert (= (and b!9168 res!2934) b!9169))

(assert (= (and b!9169 res!2936) b!9170))

(assert (= start!1830 b!9174))

(assert (= start!1830 b!9171))

(declare-fun b_lambda!4751 () Bool)

(assert (=> (not b_lambda!4751) (not b!9169)))

(declare-fun t!2383 () Bool)

(declare-fun tb!2043 () Bool)

(assert (=> (and b!9174 (= (evidence!148 that!223) (evidence!148 thiss!855)) t!2383) tb!2043))

(declare-fun result!2083 () Bool)

(assert (=> tb!2043 (= result!2083 true)))

(assert (=> b!9169 t!2383))

(declare-fun b_and!3787 () Bool)

(assert (= b_and!3777 (and (=> t!2383 result!2083) b_and!3787)))

(declare-fun t!2385 () Bool)

(declare-fun tb!2045 () Bool)

(assert (=> (and b!9171 (= (evidence!148 thiss!855) (evidence!148 thiss!855)) t!2385) tb!2045))

(declare-fun result!2085 () Bool)

(assert (=> tb!2045 (= result!2085 true)))

(assert (=> b!9169 t!2385))

(declare-fun b_and!3789 () Bool)

(assert (= b_and!3785 (and (=> t!2385 result!2085) b_and!3789)))

(declare-fun b_lambda!4753 () Bool)

(assert (=> (not b_lambda!4753) (not b!9170)))

(declare-fun t!2387 () Bool)

(declare-fun tb!2047 () Bool)

(assert (=> (and b!9174 (= (x!5103 that!223) (y!564 thiss!855)) t!2387) tb!2047))

(declare-fun result!2087 () Bool)

(assert (=> tb!2047 (= result!2087 true)))

(assert (=> b!9170 t!2387))

(declare-fun b_and!3791 () Bool)

(assert (= b_and!3773 (and (=> t!2387 result!2087) b_and!3791)))

(declare-fun t!2389 () Bool)

(declare-fun tb!2049 () Bool)

(assert (=> (and b!9174 (= (y!564 that!223) (y!564 thiss!855)) t!2389) tb!2049))

(declare-fun result!2089 () Bool)

(assert (=> tb!2049 (= result!2089 true)))

(assert (=> b!9170 t!2389))

(declare-fun b_and!3793 () Bool)

(assert (= b_and!3775 (and (=> t!2389 result!2089) b_and!3793)))

(declare-fun t!2391 () Bool)

(declare-fun tb!2051 () Bool)

(assert (=> (and b!9171 (= (x!5103 thiss!855) (y!564 thiss!855)) t!2391) tb!2051))

(declare-fun result!2091 () Bool)

(assert (=> tb!2051 (= result!2091 true)))

(assert (=> b!9170 t!2391))

(declare-fun b_and!3795 () Bool)

(assert (= b_and!3781 (and (=> t!2391 result!2091) b_and!3795)))

(declare-fun t!2393 () Bool)

(declare-fun tb!2053 () Bool)

(assert (=> (and b!9171 (= (y!564 thiss!855) (y!564 thiss!855)) t!2393) tb!2053))

(declare-fun result!2093 () Bool)

(assert (=> tb!2053 (= result!2093 true)))

(assert (=> b!9170 t!2393))

(declare-fun b_and!3797 () Bool)

(assert (= b_and!3783 (and (=> t!2393 result!2093) b_and!3797)))

(declare-fun b_lambda!4755 () Bool)

(assert (=> (not b_lambda!4755) (not b!9170)))

(declare-fun t!2395 () Bool)

(declare-fun tb!2055 () Bool)

(assert (=> (and b!9174 (= (x!5103 that!223) (x!5103 that!223)) t!2395) tb!2055))

(declare-fun result!2095 () Bool)

(assert (=> tb!2055 (= result!2095 true)))

(assert (=> b!9170 t!2395))

(declare-fun b_and!3799 () Bool)

(assert (= b_and!3791 (and (=> t!2395 result!2095) b_and!3799)))

(declare-fun t!2397 () Bool)

(declare-fun tb!2057 () Bool)

(assert (=> (and b!9174 (= (y!564 that!223) (x!5103 that!223)) t!2397) tb!2057))

(declare-fun result!2097 () Bool)

(assert (=> tb!2057 (= result!2097 true)))

(assert (=> b!9170 t!2397))

(declare-fun b_and!3801 () Bool)

(assert (= b_and!3793 (and (=> t!2397 result!2097) b_and!3801)))

(declare-fun t!2399 () Bool)

(declare-fun tb!2059 () Bool)

(assert (=> (and b!9171 (= (x!5103 thiss!855) (x!5103 that!223)) t!2399) tb!2059))

(declare-fun result!2099 () Bool)

(assert (=> tb!2059 (= result!2099 true)))

(assert (=> b!9170 t!2399))

(declare-fun b_and!3803 () Bool)

(assert (= b_and!3795 (and (=> t!2399 result!2099) b_and!3803)))

(declare-fun t!2401 () Bool)

(declare-fun tb!2061 () Bool)

(assert (=> (and b!9171 (= (y!564 thiss!855) (x!5103 that!223)) t!2401) tb!2061))

(declare-fun result!2101 () Bool)

(assert (=> tb!2061 (= result!2101 true)))

(assert (=> b!9170 t!2401))

(declare-fun b_and!3805 () Bool)

(assert (= b_and!3797 (and (=> t!2401 result!2101) b_and!3805)))

(declare-fun m!12109 () Bool)

(assert (=> b!9169 m!12109))

(declare-fun m!12111 () Bool)

(assert (=> b!9170 m!12111))

(declare-fun m!12113 () Bool)

(assert (=> b!9170 m!12113))

(declare-fun m!12115 () Bool)

(assert (=> b!9173 m!12115))

(declare-fun m!12117 () Bool)

(assert (=> b!9173 m!12117))

(assert (=> b!9173 m!12117))

(declare-fun m!12119 () Bool)

(assert (=> b!9173 m!12119))

(declare-fun m!12121 () Bool)

(assert (=> start!1830 m!12121))

(declare-fun m!12123 () Bool)

(assert (=> start!1830 m!12123))

(push 1)

(assert (not b_next!2467))

(assert b_and!3801)

(assert b_and!3787)

(assert (not b_next!2435))

(assert (not b_lambda!4755))

(assert (not start!1830))

(assert b_and!3799)

(assert b_and!3779)

(assert (not b_next!2465))

(assert b_and!3789)

(assert (not b_next!2459))

(assert b_and!3803)

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert (not b_lambda!4751))

(assert (not b!9173))

(assert b_and!3805)

(assert (not b_lambda!4753))

(assert (not b_next!2463))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2467))

(assert b_and!3801)

(assert b_and!3787)

(assert (not b_next!2435))

(assert b_and!3799)

(assert b_and!3779)

(assert (not b_next!2465))

(assert b_and!3789)

(assert (not b_next!2459))

(assert b_and!3803)

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert b_and!3805)

(assert (not b_next!2463))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4757 () Bool)

(assert (= b_lambda!4755 (or (and b!9174 b_free!1029 (= (y!564 that!223) (x!5103 that!223))) (and b!9174 b_free!1027) (and b!9171 b_free!1037 (= (y!564 thiss!855) (x!5103 that!223))) (and b!9175 (= lambda!2246 (x!5103 that!223))) (and b!9171 b_free!1035 (= (x!5103 thiss!855) (x!5103 that!223))) (and b!9168 (= lambda!2249 (x!5103 that!223))) (and b!9175 (= lambda!2247 (x!5103 that!223))) b_lambda!4757)))

(declare-fun bs!2321 () Bool)

(declare-fun d!7343 () Bool)

(assert (= bs!2321 (and d!7343 b!9175)))

(declare-fun dynLambda!285 (Int Balance!199 Balance!199) Balance!199)

(assert (=> bs!2321 (= (dynLambda!284 lambda!2247) (dynLambda!285 f!585 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4763 () Bool)

(assert (=> (not b_lambda!4763) (not bs!2321)))

(declare-fun t!2403 () Bool)

(declare-fun tb!2063 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2403) tb!2063))

(declare-fun result!2103 () Bool)

(assert (=> tb!2063 (= result!2103 true)))

(assert (=> bs!2321 t!2403))

(declare-fun b_and!3807 () Bool)

(assert (= b_and!3779 (and (=> t!2403 result!2103) b_and!3807)))

(declare-fun m!12125 () Bool)

(assert (=> bs!2321 m!12125))

(declare-fun m!12127 () Bool)

(assert (=> bs!2321 m!12127))

(assert (=> bs!2321 m!12125))

(assert (=> bs!2321 m!12127))

(declare-fun m!12129 () Bool)

(assert (=> bs!2321 m!12129))

(assert (=> (and b!9175 (= lambda!2247 (x!5103 that!223)) b!9170) d!7343))

(declare-fun bs!2322 () Bool)

(declare-fun d!7345 () Bool)

(assert (= bs!2322 (and d!7345 b!9175)))

(assert (=> bs!2322 (= (dynLambda!284 lambda!2246) (fold!38 tree!25 f!585))))

(assert (=> bs!2322 m!12115))

(assert (=> (and b!9175 (= lambda!2246 (x!5103 that!223)) b!9170) d!7345))

(declare-fun bs!2323 () Bool)

(declare-fun d!7347 () Bool)

(assert (= bs!2323 (and d!7347 b!9168)))

(assert (=> bs!2323 (= (dynLambda!284 lambda!2249) (dynLambda!285 f!585 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4765 () Bool)

(assert (=> (not b_lambda!4765) (not bs!2323)))

(declare-fun t!2405 () Bool)

(declare-fun tb!2065 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2405) tb!2065))

(declare-fun result!2105 () Bool)

(assert (=> tb!2065 (= result!2105 true)))

(assert (=> bs!2323 t!2405))

(declare-fun b_and!3809 () Bool)

(assert (= b_and!3807 (and (=> t!2405 result!2105) b_and!3809)))

(assert (=> bs!2323 m!12127))

(declare-fun m!12131 () Bool)

(assert (=> bs!2323 m!12131))

(assert (=> bs!2323 m!12131))

(declare-fun m!12133 () Bool)

(assert (=> bs!2323 m!12133))

(assert (=> bs!2323 m!12133))

(assert (=> bs!2323 m!12127))

(declare-fun m!12135 () Bool)

(assert (=> bs!2323 m!12135))

(assert (=> (and b!9168 (= lambda!2249 (x!5103 that!223)) b!9170) d!7347))

(declare-fun b_lambda!4759 () Bool)

(assert (= b_lambda!4753 (or (and b!9174 b_free!1027 (= (x!5103 that!223) (y!564 thiss!855))) (and b!9175 (= lambda!2247 (y!564 thiss!855))) (and b!9171 b_free!1035 (= (x!5103 thiss!855) (y!564 thiss!855))) (and b!9168 (= lambda!2249 (y!564 thiss!855))) (and b!9171 b_free!1037) (and b!9175 (= lambda!2246 (y!564 thiss!855))) (and b!9174 b_free!1029 (= (y!564 that!223) (y!564 thiss!855))) b_lambda!4759)))

(declare-fun bs!2324 () Bool)

(declare-fun d!7349 () Bool)

(assert (= bs!2324 (and d!7349 b!9175)))

(assert (=> bs!2324 (= (dynLambda!284 lambda!2247) (dynLambda!285 f!585 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4767 () Bool)

(assert (=> (not b_lambda!4767) (not bs!2324)))

(assert (=> bs!2324 t!2403))

(declare-fun b_and!3811 () Bool)

(assert (= b_and!3809 (and (=> t!2403 result!2103) b_and!3811)))

(assert (=> bs!2324 m!12125))

(assert (=> bs!2324 m!12127))

(assert (=> bs!2324 m!12125))

(assert (=> bs!2324 m!12127))

(assert (=> bs!2324 m!12129))

(assert (=> (and b!9175 (= lambda!2247 (y!564 thiss!855)) b!9170) d!7349))

(declare-fun bs!2325 () Bool)

(declare-fun d!7351 () Bool)

(assert (= bs!2325 (and d!7351 b!9168)))

(assert (=> bs!2325 (= (dynLambda!284 lambda!2249) (dynLambda!285 f!585 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4769 () Bool)

(assert (=> (not b_lambda!4769) (not bs!2325)))

(assert (=> bs!2325 t!2405))

(declare-fun b_and!3813 () Bool)

(assert (= b_and!3811 (and (=> t!2405 result!2105) b_and!3813)))

(assert (=> bs!2325 m!12127))

(assert (=> bs!2325 m!12131))

(assert (=> bs!2325 m!12131))

(assert (=> bs!2325 m!12133))

(assert (=> bs!2325 m!12133))

(assert (=> bs!2325 m!12127))

(assert (=> bs!2325 m!12135))

(assert (=> (and b!9168 (= lambda!2249 (y!564 thiss!855)) b!9170) d!7351))

(declare-fun bs!2326 () Bool)

(declare-fun d!7353 () Bool)

(assert (= bs!2326 (and d!7353 b!9175)))

(assert (=> bs!2326 (= (dynLambda!284 lambda!2246) (fold!38 tree!25 f!585))))

(assert (=> bs!2326 m!12115))

(assert (=> (and b!9175 (= lambda!2246 (y!564 thiss!855)) b!9170) d!7353))

(declare-fun b_lambda!4761 () Bool)

(assert (= b_lambda!4751 (or (and b!9175 (= lambda!2248 (evidence!148 thiss!855))) (and b!9168 (= lambda!2250 (evidence!148 thiss!855))) (and b!9174 b_free!1031 (= (evidence!148 that!223) (evidence!148 thiss!855))) (and b!9171 b_free!1039) b_lambda!4761)))

(declare-fun bs!2327 () Bool)

(declare-fun d!7355 () Bool)

(assert (= bs!2327 (and d!7355 b!9175)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!62) Bool)

(assert (=> bs!2327 (= (dynLambda!283 lambda!2248) (fold_foldRight1_equivalence!0 (left!427 tree!25)))))

(declare-fun m!12137 () Bool)

(assert (=> bs!2327 m!12137))

(assert (=> (and b!9175 (= lambda!2248 (evidence!148 thiss!855)) b!9169) d!7355))

(declare-fun bs!2328 () Bool)

(declare-fun d!7357 () Bool)

(assert (= bs!2328 (and d!7357 b!9168)))

(assert (=> bs!2328 (= (dynLambda!283 lambda!2250) (fold_foldRight1_equivalence!0 (right!430 tree!25)))))

(declare-fun m!12139 () Bool)

(assert (=> bs!2328 m!12139))

(assert (=> (and b!9168 (= lambda!2250 (evidence!148 thiss!855)) b!9169) d!7357))

(push 1)

(assert (not b_next!2467))

(assert b_and!3801)

(assert (not bs!2328))

(assert b_and!3813)

(assert (not b_lambda!4761))

(assert b_and!3787)

(assert (not b_next!2435))

(assert (not bs!2324))

(assert (not bs!2321))

(assert (not start!1830))

(assert b_and!3799)

(assert (not b_lambda!4769))

(assert (not b_next!2465))

(assert (not bs!2325))

(assert (not bs!2323))

(assert (not bs!2322))

(assert b_and!3789)

(assert (not b_lambda!4763))

(assert (not b_next!2459))

(assert b_and!3803)

(assert (not bs!2326))

(assert (not b_lambda!4757))

(assert (not bs!2327))

(assert (not b_lambda!4765))

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert (not b_lambda!4759))

(assert (not b!9173))

(assert b_and!3805)

(assert (not b_next!2463))

(assert (not b_lambda!4767))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2467))

(assert b_and!3801)

(assert b_and!3813)

(assert b_and!3787)

(assert (not b_next!2435))

(assert b_and!3799)

(assert (not b_next!2465))

(assert b_and!3789)

(assert (not b_next!2459))

(assert b_and!3803)

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert b_and!3805)

(assert (not b_next!2463))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4771 () Bool)

(assert (= b_lambda!4769 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) b_lambda!4771)))

(declare-fun bs!2329 () Bool)

(declare-fun d!7359 () Bool)

(assert (= bs!2329 (and d!7359 start!1830)))

(declare-fun ++!3 (Balance!199 Balance!199) Balance!199)

(assert (=> bs!2329 (= (dynLambda!285 lambda!2245 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)) (++!3 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)))))

(assert (=> bs!2329 m!12133))

(assert (=> bs!2329 m!12127))

(declare-fun m!12141 () Bool)

(assert (=> bs!2329 m!12141))

(assert (=> (and start!1830 (= lambda!2245 f!585) bs!2325) d!7359))

(declare-fun b_lambda!4773 () Bool)

(assert (= b_lambda!4765 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) b_lambda!4773)))

(assert (=> (and start!1830 (= lambda!2245 f!585) bs!2323) d!7359))

(declare-fun b_lambda!4775 () Bool)

(assert (= b_lambda!4763 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) b_lambda!4775)))

(declare-fun bs!2330 () Bool)

(declare-fun d!7361 () Bool)

(assert (= bs!2330 (and d!7361 start!1830)))

(assert (=> bs!2330 (= (dynLambda!285 lambda!2245 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)) (++!3 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)))))

(assert (=> bs!2330 m!12125))

(assert (=> bs!2330 m!12127))

(declare-fun m!12143 () Bool)

(assert (=> bs!2330 m!12143))

(assert (=> (and start!1830 (= lambda!2245 f!585) bs!2321) d!7361))

(declare-fun b_lambda!4777 () Bool)

(assert (= b_lambda!4767 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) b_lambda!4777)))

(assert (=> (and start!1830 (= lambda!2245 f!585) bs!2324) d!7361))

(push 1)

(assert (not b_next!2467))

(assert (not b_lambda!4775))

(assert b_and!3801)

(assert (not bs!2328))

(assert b_and!3813)

(assert (not b_lambda!4761))

(assert b_and!3787)

(assert (not b_next!2435))

(assert (not bs!2324))

(assert (not bs!2321))

(assert (not start!1830))

(assert b_and!3799)

(assert (not b_next!2465))

(assert (not bs!2325))

(assert (not bs!2323))

(assert (not bs!2322))

(assert b_and!3789)

(assert (not bs!2329))

(assert (not b_lambda!4771))

(assert (not b_next!2459))

(assert (not bs!2330))

(assert b_and!3803)

(assert (not b_lambda!4777))

(assert (not bs!2326))

(assert (not b_lambda!4757))

(assert (not bs!2327))

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert (not b_lambda!4759))

(assert (not b!9173))

(assert b_and!3805)

(assert (not b_next!2463))

(assert (not b_lambda!4773))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2467))

(assert b_and!3801)

(assert b_and!3813)

(assert b_and!3787)

(assert (not b_next!2435))

(assert b_and!3799)

(assert (not b_next!2465))

(assert b_and!3789)

(assert (not b_next!2459))

(assert b_and!3803)

(assert (not b_next!2461))

(assert (not b_next!2457))

(assert b_and!3805)

(assert (not b_next!2463))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7363 () Bool)

(declare-fun c!3005 () Bool)

(assert (=> d!7363 (= c!3005 (and (is-Cons!213 (toList!62 (left!427 tree!25))) (is-Nil!214 (tail!443 (toList!62 (left!427 tree!25))))))))

(declare-fun e!5398 () Balance!199)

(assert (=> d!7363 (= (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) e!5398)))

(declare-fun b!9186 () Bool)

(assert (=> b!9186 (= e!5398 (head!431 (toList!62 (left!427 tree!25))))))

(declare-fun b!9187 () Bool)

(assert (=> b!9187 (= e!5398 (dynLambda!285 f!585 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)))))

(assert (= (and d!7363 c!3005) b!9186))

(assert (= (and d!7363 (not c!3005)) b!9187))

(declare-fun b_lambda!4779 () Bool)

(assert (=> (not b_lambda!4779) (not b!9187)))

(declare-fun t!2407 () Bool)

(declare-fun tb!2067 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2407) tb!2067))

(declare-fun result!2107 () Bool)

(assert (=> tb!2067 (= result!2107 true)))

(assert (=> b!9187 t!2407))

(declare-fun b_and!3815 () Bool)

(assert (= b_and!3813 (and (=> t!2407 result!2107) b_and!3815)))

(declare-fun m!12145 () Bool)

(assert (=> b!9187 m!12145))

(assert (=> b!9187 m!12145))

(declare-fun m!12147 () Bool)

(assert (=> b!9187 m!12147))

(assert (=> bs!2325 d!7363))

(declare-fun d!7365 () Bool)

(declare-fun lt!1615 () List!216)

(declare-fun isEmpty!172 (List!216) Bool)

(assert (=> d!7365 (not (isEmpty!172 lt!1615))))

(declare-fun e!5401 () List!216)

(assert (=> d!7365 (= lt!1615 e!5401)))

(declare-fun c!3008 () Bool)

(assert (=> d!7365 (= c!3008 (is-Leaf!135 (left!427 tree!25)))))

(assert (=> d!7365 (= (toList!62 (left!427 tree!25)) lt!1615)))

(declare-fun b!9192 () Bool)

(assert (=> b!9192 (= e!5401 (Cons!213 (value!1304 (left!427 tree!25)) Nil!214))))

(declare-fun b!9193 () Bool)

(declare-fun append!93 (List!216 List!216) List!216)

(assert (=> b!9193 (= e!5401 (append!93 (toList!62 (left!427 (left!427 tree!25))) (toList!62 (right!430 (left!427 tree!25)))))))

(assert (= (and d!7365 c!3008) b!9192))

(assert (= (and d!7365 (not c!3008)) b!9193))

(declare-fun m!12149 () Bool)

(assert (=> d!7365 m!12149))

(declare-fun m!12151 () Bool)

(assert (=> b!9193 m!12151))

(declare-fun m!12153 () Bool)

(assert (=> b!9193 m!12153))

(assert (=> b!9193 m!12151))

(assert (=> b!9193 m!12153))

(declare-fun m!12155 () Bool)

(assert (=> b!9193 m!12155))

(assert (=> bs!2325 d!7365))

(declare-fun bs!2331 () Bool)

(declare-fun b!9199 () Bool)

(assert (= bs!2331 (and b!9199 b!9175)))

(declare-fun lambda!2255 () Int)

(assert (=> bs!2331 (= (= (left!427 (right!430 tree!25)) tree!25) (= lambda!2255 lambda!2246))))

(assert (=> bs!2331 (not (= lambda!2255 lambda!2247))))

(declare-fun bs!2332 () Bool)

(assert (= bs!2332 (and b!9199 b!9168)))

(assert (=> bs!2332 (not (= lambda!2255 lambda!2249))))

(assert (=> b!9199 true))

(assert (=> b!9199 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2255))))

(assert (=> b!9199 true))

(declare-fun b_next!2469 () Bool)

(assert (=> b!9174 (= b_next!2457 (or (and b!9199 (= lambda!2255 (x!5103 that!223))) b_next!2469))))

(declare-fun b_next!2471 () Bool)

(assert (=> b!9174 (= b_next!2459 (or (and b!9199 (= lambda!2255 (y!564 that!223))) b_next!2471))))

(declare-fun b_next!2473 () Bool)

(assert (=> b!9171 (= b_next!2461 (or (and b!9199 (= lambda!2255 (x!5103 thiss!855))) b_next!2473))))

(declare-fun b_next!2475 () Bool)

(assert (=> b!9171 (= b_next!2463 (or (and b!9199 (= lambda!2255 (y!564 thiss!855))) b_next!2475))))

(declare-fun lambda!2256 () Int)

(assert (=> bs!2331 (= (= (right!430 (right!430 tree!25)) tree!25) (= lambda!2256 lambda!2246))))

(assert (=> bs!2331 (not (= lambda!2256 lambda!2247))))

(assert (=> bs!2332 (not (= lambda!2256 lambda!2249))))

(assert (=> b!9199 (= (= (right!430 (right!430 tree!25)) (left!427 (right!430 tree!25))) (= lambda!2256 lambda!2255))))

(assert (=> b!9199 true))

(assert (=> b!9199 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2256))))

(assert (=> b!9199 true))

(declare-fun b_next!2477 () Bool)

(assert (=> b!9174 (= b_next!2469 (or (and b!9199 (= lambda!2256 (x!5103 that!223))) b_next!2477))))

(declare-fun b_next!2479 () Bool)

(assert (=> b!9174 (= b_next!2471 (or (and b!9199 (= lambda!2256 (y!564 that!223))) b_next!2479))))

(declare-fun b_next!2481 () Bool)

(assert (=> b!9171 (= b_next!2473 (or (and b!9199 (= lambda!2256 (x!5103 thiss!855))) b_next!2481))))

(declare-fun b_next!2483 () Bool)

(assert (=> b!9171 (= b_next!2475 (or (and b!9199 (= lambda!2256 (y!564 thiss!855))) b_next!2483))))

(declare-fun e!5420 () Balance!199)

(declare-datatypes () ((tuple2!78 (tuple2!79 (_1!39 Balance!199) (_2!39 Balance!199)))))

(declare-fun lt!1618 () tuple2!78)

(assert (=> b!9199 (= e!5420 (dynLambda!285 f!585 (_1!39 lt!1618) (_2!39 lt!1618)))))

(assert (=> b!9199 (= lt!1618 (tuple2!79 (dynLambda!284 lambda!2255) (dynLambda!284 lambda!2256)))))

(declare-fun d!7367 () Bool)

(declare-fun c!3011 () Bool)

(assert (=> d!7367 (= c!3011 (is-Leaf!135 (right!430 tree!25)))))

(assert (=> d!7367 (= (fold!38 (right!430 tree!25) f!585) e!5420)))

(declare-fun b!9198 () Bool)

(assert (=> b!9198 (= e!5420 (value!1304 (right!430 tree!25)))))

(assert (= (and d!7367 c!3011) b!9198))

(assert (= (and d!7367 (not c!3011)) b!9199))

(declare-fun b_lambda!4781 () Bool)

(assert (=> (not b_lambda!4781) (not b!9199)))

(declare-fun t!2409 () Bool)

(declare-fun tb!2069 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2409) tb!2069))

(declare-fun result!2109 () Bool)

(assert (=> tb!2069 (= result!2109 true)))

(assert (=> b!9199 t!2409))

(declare-fun b_and!3817 () Bool)

(assert (= b_and!3815 (and (=> t!2409 result!2109) b_and!3817)))

(declare-fun b_lambda!4783 () Bool)

(assert (=> (not b_lambda!4783) (not b!9199)))

(declare-fun b_lambda!4785 () Bool)

(assert (=> (not b_lambda!4785) (not b!9199)))

(declare-fun m!12157 () Bool)

(assert (=> b!9199 m!12157))

(declare-fun m!12159 () Bool)

(assert (=> b!9199 m!12159))

(declare-fun m!12161 () Bool)

(assert (=> b!9199 m!12161))

(assert (=> bs!2325 d!7367))

(declare-fun d!7369 () Bool)

(declare-fun res!2942 () Bool)

(declare-fun e!5423 () Bool)

(assert (=> d!7369 (=> (not res!2942) (not e!5423))))

(assert (=> d!7369 (= res!2942 (= (dynLambda!284 (x!5103 that!223)) (dynLambda!284 (y!564 that!223))))))

(assert (=> d!7369 (= (inv!323 that!223) e!5423)))

(declare-fun b!9202 () Bool)

(assert (=> b!9202 (= e!5423 (dynLambda!283 (evidence!148 that!223)))))

(assert (= (and d!7369 res!2942) b!9202))

(declare-fun b_lambda!4787 () Bool)

(assert (=> (not b_lambda!4787) (not d!7369)))

(assert (=> d!7369 t!2395))

(declare-fun b_and!3819 () Bool)

(assert (= b_and!3799 (and (=> t!2395 result!2095) b_and!3819)))

(assert (=> d!7369 t!2397))

(declare-fun b_and!3821 () Bool)

(assert (= b_and!3801 (and (=> t!2397 result!2097) b_and!3821)))

(assert (=> d!7369 t!2399))

(declare-fun b_and!3823 () Bool)

(assert (= b_and!3803 (and (=> t!2399 result!2099) b_and!3823)))

(assert (=> d!7369 t!2401))

(declare-fun b_and!3825 () Bool)

(assert (= b_and!3805 (and (=> t!2401 result!2101) b_and!3825)))

(declare-fun b_lambda!4789 () Bool)

(assert (=> (not b_lambda!4789) (not d!7369)))

(declare-fun t!2411 () Bool)

(declare-fun tb!2071 () Bool)

(assert (=> (and b!9174 (= (x!5103 that!223) (y!564 that!223)) t!2411) tb!2071))

(declare-fun result!2111 () Bool)

(assert (=> tb!2071 (= result!2111 true)))

(assert (=> d!7369 t!2411))

(declare-fun b_and!3827 () Bool)

(assert (= b_and!3819 (and (=> t!2411 result!2111) b_and!3827)))

(declare-fun t!2413 () Bool)

(declare-fun tb!2073 () Bool)

(assert (=> (and b!9174 (= (y!564 that!223) (y!564 that!223)) t!2413) tb!2073))

(declare-fun result!2113 () Bool)

(assert (=> tb!2073 (= result!2113 true)))

(assert (=> d!7369 t!2413))

(declare-fun b_and!3829 () Bool)

(assert (= b_and!3821 (and (=> t!2413 result!2113) b_and!3829)))

(declare-fun t!2415 () Bool)

(declare-fun tb!2075 () Bool)

(assert (=> (and b!9171 (= (x!5103 thiss!855) (y!564 that!223)) t!2415) tb!2075))

(declare-fun result!2115 () Bool)

(assert (=> tb!2075 (= result!2115 true)))

(assert (=> d!7369 t!2415))

(declare-fun b_and!3831 () Bool)

(assert (= b_and!3823 (and (=> t!2415 result!2115) b_and!3831)))

(declare-fun t!2417 () Bool)

(declare-fun tb!2077 () Bool)

(assert (=> (and b!9171 (= (y!564 thiss!855) (y!564 that!223)) t!2417) tb!2077))

(declare-fun result!2117 () Bool)

(assert (=> tb!2077 (= result!2117 true)))

(assert (=> d!7369 t!2417))

(declare-fun b_and!3833 () Bool)

(assert (= b_and!3825 (and (=> t!2417 result!2117) b_and!3833)))

(declare-fun b_lambda!4791 () Bool)

(assert (=> (not b_lambda!4791) (not b!9202)))

(declare-fun t!2419 () Bool)

(declare-fun tb!2079 () Bool)

(assert (=> (and b!9174 (= (evidence!148 that!223) (evidence!148 that!223)) t!2419) tb!2079))

(declare-fun result!2119 () Bool)

(assert (=> tb!2079 (= result!2119 true)))

(assert (=> b!9202 t!2419))

(declare-fun b_and!3835 () Bool)

(assert (= b_and!3787 (and (=> t!2419 result!2119) b_and!3835)))

(declare-fun t!2421 () Bool)

(declare-fun tb!2081 () Bool)

(assert (=> (and b!9171 (= (evidence!148 thiss!855) (evidence!148 that!223)) t!2421) tb!2081))

(declare-fun result!2121 () Bool)

(assert (=> tb!2081 (= result!2121 true)))

(assert (=> b!9202 t!2421))

(declare-fun b_and!3837 () Bool)

(assert (= b_and!3789 (and (=> t!2421 result!2121) b_and!3837)))

(assert (=> d!7369 m!12113))

(declare-fun m!12163 () Bool)

(assert (=> d!7369 m!12163))

(declare-fun m!12165 () Bool)

(assert (=> b!9202 m!12165))

(assert (=> start!1830 d!7369))

(declare-fun d!7371 () Bool)

(declare-fun res!2943 () Bool)

(declare-fun e!5424 () Bool)

(assert (=> d!7371 (=> (not res!2943) (not e!5424))))

(assert (=> d!7371 (= res!2943 (= (dynLambda!284 (x!5103 thiss!855)) (dynLambda!284 (y!564 thiss!855))))))

(assert (=> d!7371 (= (inv!323 thiss!855) e!5424)))

(declare-fun b!9203 () Bool)

(assert (=> b!9203 (= e!5424 (dynLambda!283 (evidence!148 thiss!855)))))

(assert (= (and d!7371 res!2943) b!9203))

(declare-fun b_lambda!4793 () Bool)

(assert (=> (not b_lambda!4793) (not d!7371)))

(declare-fun tb!2083 () Bool)

(declare-fun t!2423 () Bool)

(assert (=> (and b!9174 (= (x!5103 that!223) (x!5103 thiss!855)) t!2423) tb!2083))

(declare-fun result!2123 () Bool)

(assert (=> tb!2083 (= result!2123 true)))

(assert (=> d!7371 t!2423))

(declare-fun b_and!3839 () Bool)

(assert (= b_and!3827 (and (=> t!2423 result!2123) b_and!3839)))

(declare-fun tb!2085 () Bool)

(declare-fun t!2425 () Bool)

(assert (=> (and b!9174 (= (y!564 that!223) (x!5103 thiss!855)) t!2425) tb!2085))

(declare-fun result!2125 () Bool)

(assert (=> tb!2085 (= result!2125 true)))

(assert (=> d!7371 t!2425))

(declare-fun b_and!3841 () Bool)

(assert (= b_and!3829 (and (=> t!2425 result!2125) b_and!3841)))

(declare-fun t!2427 () Bool)

(declare-fun tb!2087 () Bool)

(assert (=> (and b!9171 (= (x!5103 thiss!855) (x!5103 thiss!855)) t!2427) tb!2087))

(declare-fun result!2127 () Bool)

(assert (=> tb!2087 (= result!2127 true)))

(assert (=> d!7371 t!2427))

(declare-fun b_and!3843 () Bool)

(assert (= b_and!3831 (and (=> t!2427 result!2127) b_and!3843)))

(declare-fun t!2429 () Bool)

(declare-fun tb!2089 () Bool)

(assert (=> (and b!9171 (= (y!564 thiss!855) (x!5103 thiss!855)) t!2429) tb!2089))

(declare-fun result!2129 () Bool)

(assert (=> tb!2089 (= result!2129 true)))

(assert (=> d!7371 t!2429))

(declare-fun b_and!3845 () Bool)

(assert (= b_and!3833 (and (=> t!2429 result!2129) b_and!3845)))

(declare-fun b_lambda!4795 () Bool)

(assert (=> (not b_lambda!4795) (not d!7371)))

(assert (=> d!7371 t!2387))

(declare-fun b_and!3847 () Bool)

(assert (= b_and!3839 (and (=> t!2387 result!2087) b_and!3847)))

(assert (=> d!7371 t!2389))

(declare-fun b_and!3849 () Bool)

(assert (= b_and!3841 (and (=> t!2389 result!2089) b_and!3849)))

(assert (=> d!7371 t!2391))

(declare-fun b_and!3851 () Bool)

(assert (= b_and!3843 (and (=> t!2391 result!2091) b_and!3851)))

(assert (=> d!7371 t!2393))

(declare-fun b_and!3853 () Bool)

(assert (= b_and!3845 (and (=> t!2393 result!2093) b_and!3853)))

(declare-fun b_lambda!4797 () Bool)

(assert (=> (not b_lambda!4797) (not b!9203)))

(assert (=> b!9203 t!2383))

(declare-fun b_and!3855 () Bool)

(assert (= b_and!3835 (and (=> t!2383 result!2083) b_and!3855)))

(assert (=> b!9203 t!2385))

(declare-fun b_and!3857 () Bool)

(assert (= b_and!3837 (and (=> t!2385 result!2085) b_and!3857)))

(declare-fun m!12167 () Bool)

(assert (=> d!7371 m!12167))

(assert (=> d!7371 m!12111))

(assert (=> b!9203 m!12109))

(assert (=> start!1830 d!7371))

(declare-fun bs!2333 () Bool)

(declare-fun b!9205 () Bool)

(assert (= bs!2333 (and b!9205 b!9199)))

(declare-fun lambda!2257 () Int)

(assert (=> bs!2333 (= (= (left!427 (left!427 tree!25)) (left!427 (right!430 tree!25))) (= lambda!2257 lambda!2255))))

(declare-fun bs!2334 () Bool)

(assert (= bs!2334 (and b!9205 b!9168)))

(assert (=> bs!2334 (not (= lambda!2257 lambda!2249))))

(assert (=> bs!2333 (= (= (left!427 (left!427 tree!25)) (right!430 (right!430 tree!25))) (= lambda!2257 lambda!2256))))

(declare-fun bs!2335 () Bool)

(assert (= bs!2335 (and b!9205 b!9175)))

(assert (=> bs!2335 (= (= (left!427 (left!427 tree!25)) tree!25) (= lambda!2257 lambda!2246))))

(assert (=> bs!2335 (not (= lambda!2257 lambda!2247))))

(assert (=> b!9205 true))

(assert (=> b!9205 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2257))))

(assert (=> b!9205 true))

(declare-fun b_next!2485 () Bool)

(assert (=> b!9174 (= b_next!2477 (or (and b!9205 (= lambda!2257 (x!5103 that!223))) b_next!2485))))

(declare-fun b_next!2487 () Bool)

(assert (=> b!9174 (= b_next!2479 (or (and b!9205 (= lambda!2257 (y!564 that!223))) b_next!2487))))

(declare-fun b_next!2489 () Bool)

(assert (=> b!9171 (= b_next!2481 (or (and b!9205 (= lambda!2257 (x!5103 thiss!855))) b_next!2489))))

(declare-fun b_next!2491 () Bool)

(assert (=> b!9171 (= b_next!2483 (or (and b!9205 (= lambda!2257 (y!564 thiss!855))) b_next!2491))))

(declare-fun lambda!2258 () Int)

(assert (=> bs!2333 (= (= (right!430 (left!427 tree!25)) (left!427 (right!430 tree!25))) (= lambda!2258 lambda!2255))))

(assert (=> b!9205 (= (= (right!430 (left!427 tree!25)) (left!427 (left!427 tree!25))) (= lambda!2258 lambda!2257))))

(assert (=> bs!2334 (not (= lambda!2258 lambda!2249))))

(assert (=> bs!2333 (= (= (right!430 (left!427 tree!25)) (right!430 (right!430 tree!25))) (= lambda!2258 lambda!2256))))

(assert (=> bs!2335 (= (= (right!430 (left!427 tree!25)) tree!25) (= lambda!2258 lambda!2246))))

(assert (=> bs!2335 (not (= lambda!2258 lambda!2247))))

(assert (=> b!9205 true))

(assert (=> b!9205 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2258))))

(assert (=> b!9205 true))

(declare-fun b_next!2493 () Bool)

(assert (=> b!9174 (= b_next!2485 (or (and b!9205 (= lambda!2258 (x!5103 that!223))) b_next!2493))))

(declare-fun b_next!2495 () Bool)

(assert (=> b!9174 (= b_next!2487 (or (and b!9205 (= lambda!2258 (y!564 that!223))) b_next!2495))))

(declare-fun b_next!2497 () Bool)

(assert (=> b!9171 (= b_next!2489 (or (and b!9205 (= lambda!2258 (x!5103 thiss!855))) b_next!2497))))

(declare-fun b_next!2499 () Bool)

(assert (=> b!9171 (= b_next!2491 (or (and b!9205 (= lambda!2258 (y!564 thiss!855))) b_next!2499))))

(declare-fun e!5425 () Balance!199)

(declare-fun lt!1619 () tuple2!78)

(assert (=> b!9205 (= e!5425 (dynLambda!285 f!585 (_1!39 lt!1619) (_2!39 lt!1619)))))

(assert (=> b!9205 (= lt!1619 (tuple2!79 (dynLambda!284 lambda!2257) (dynLambda!284 lambda!2258)))))

(declare-fun d!7373 () Bool)

(declare-fun c!3012 () Bool)

(assert (=> d!7373 (= c!3012 (is-Leaf!135 (left!427 tree!25)))))

(assert (=> d!7373 (= (fold!38 (left!427 tree!25) f!585) e!5425)))

(declare-fun b!9204 () Bool)

(assert (=> b!9204 (= e!5425 (value!1304 (left!427 tree!25)))))

(assert (= (and d!7373 c!3012) b!9204))

(assert (= (and d!7373 (not c!3012)) b!9205))

(declare-fun b_lambda!4799 () Bool)

(assert (=> (not b_lambda!4799) (not b!9205)))

(declare-fun t!2431 () Bool)

(declare-fun tb!2091 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2431) tb!2091))

(declare-fun result!2131 () Bool)

(assert (=> tb!2091 (= result!2131 true)))

(assert (=> b!9205 t!2431))

(declare-fun b_and!3859 () Bool)

(assert (= b_and!3817 (and (=> t!2431 result!2131) b_and!3859)))

(declare-fun b_lambda!4801 () Bool)

(assert (=> (not b_lambda!4801) (not b!9205)))

(declare-fun b_lambda!4803 () Bool)

(assert (=> (not b_lambda!4803) (not b!9205)))

(declare-fun m!12169 () Bool)

(assert (=> b!9205 m!12169))

(declare-fun m!12171 () Bool)

(assert (=> b!9205 m!12171))

(declare-fun m!12173 () Bool)

(assert (=> b!9205 m!12173))

(assert (=> bs!2321 d!7373))

(assert (=> bs!2321 d!7367))

(declare-fun bs!2336 () Bool)

(declare-fun d!7375 () Bool)

(assert (= bs!2336 (and d!7375 start!1830)))

(declare-fun lambda!2261 () Int)

(assert (=> bs!2336 (= lambda!2261 lambda!2245)))

(declare-fun b_next!2501 () Bool)

(assert (=> start!1830 (= b_next!2435 (or (and d!7375 (= lambda!2261 f!585)) b_next!2501))))

(declare-fun because!2 (ProofOps!146 Bool) Bool)

(assert (=> d!7375 (because!2 (ProofOps!147 (= (fold!38 (left!427 tree!25) lambda!2261) (foldRight1!69 (toList!62 (left!427 tree!25)) lambda!2261))) true)))

(assert (=> d!7375 (= (fold!38 (left!427 tree!25) lambda!2261) (foldRight1!69 (toList!62 (left!427 tree!25)) lambda!2261))))

(assert (=> d!7375 (= (fold_foldRight1_equivalence!0 (left!427 tree!25)) true)))

(declare-fun bs!2337 () Bool)

(assert (= bs!2337 d!7375))

(declare-fun m!12175 () Bool)

(assert (=> bs!2337 m!12175))

(assert (=> bs!2337 m!12131))

(assert (=> bs!2337 m!12131))

(declare-fun m!12177 () Bool)

(assert (=> bs!2337 m!12177))

(declare-fun m!12179 () Bool)

(assert (=> bs!2337 m!12179))

(assert (=> bs!2327 d!7375))

(declare-fun bs!2338 () Bool)

(declare-fun d!7377 () Bool)

(assert (= bs!2338 (and d!7377 start!1830)))

(declare-fun lambda!2262 () Int)

(assert (=> bs!2338 (= lambda!2262 lambda!2245)))

(declare-fun bs!2339 () Bool)

(assert (= bs!2339 (and d!7377 d!7375)))

(assert (=> bs!2339 (= lambda!2262 lambda!2261)))

(declare-fun b_next!2503 () Bool)

(assert (=> start!1830 (= b_next!2501 (or (and d!7377 (= lambda!2262 f!585)) b_next!2503))))

(assert (=> d!7377 (because!2 (ProofOps!147 (= (fold!38 (right!430 tree!25) lambda!2262) (foldRight1!69 (toList!62 (right!430 tree!25)) lambda!2262))) true)))

(assert (=> d!7377 (= (fold!38 (right!430 tree!25) lambda!2262) (foldRight1!69 (toList!62 (right!430 tree!25)) lambda!2262))))

(assert (=> d!7377 (= (fold_foldRight1_equivalence!0 (right!430 tree!25)) true)))

(declare-fun bs!2340 () Bool)

(assert (= bs!2340 d!7377))

(declare-fun m!12181 () Bool)

(assert (=> bs!2340 m!12181))

(declare-fun m!12183 () Bool)

(assert (=> bs!2340 m!12183))

(assert (=> bs!2340 m!12183))

(declare-fun m!12185 () Bool)

(assert (=> bs!2340 m!12185))

(declare-fun m!12187 () Bool)

(assert (=> bs!2340 m!12187))

(assert (=> bs!2328 d!7377))

(assert (=> bs!2324 d!7373))

(assert (=> bs!2324 d!7367))

(declare-fun bs!2341 () Bool)

(declare-fun b!9207 () Bool)

(assert (= bs!2341 (and b!9207 b!9205)))

(declare-fun lambda!2263 () Int)

(assert (=> bs!2341 (= (= (left!427 tree!25) (right!430 (left!427 tree!25))) (= lambda!2263 lambda!2258))))

(declare-fun bs!2342 () Bool)

(assert (= bs!2342 (and b!9207 b!9199)))

(assert (=> bs!2342 (= (= (left!427 tree!25) (left!427 (right!430 tree!25))) (= lambda!2263 lambda!2255))))

(assert (=> bs!2341 (= (= (left!427 tree!25) (left!427 (left!427 tree!25))) (= lambda!2263 lambda!2257))))

(declare-fun bs!2343 () Bool)

(assert (= bs!2343 (and b!9207 b!9168)))

(assert (=> bs!2343 (not (= lambda!2263 lambda!2249))))

(assert (=> bs!2342 (= (= (left!427 tree!25) (right!430 (right!430 tree!25))) (= lambda!2263 lambda!2256))))

(declare-fun bs!2344 () Bool)

(assert (= bs!2344 (and b!9207 b!9175)))

(assert (=> bs!2344 (= (= (left!427 tree!25) tree!25) (= lambda!2263 lambda!2246))))

(assert (=> bs!2344 (not (= lambda!2263 lambda!2247))))

(assert (=> b!9207 true))

(assert (=> b!9207 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2263))))

(assert (=> b!9207 true))

(declare-fun b_next!2505 () Bool)

(assert (=> b!9174 (= b_next!2493 (or (and b!9207 (= lambda!2263 (x!5103 that!223))) b_next!2505))))

(declare-fun b_next!2507 () Bool)

(assert (=> b!9174 (= b_next!2495 (or (and b!9207 (= lambda!2263 (y!564 that!223))) b_next!2507))))

(declare-fun b_next!2509 () Bool)

(assert (=> b!9171 (= b_next!2497 (or (and b!9207 (= lambda!2263 (x!5103 thiss!855))) b_next!2509))))

(declare-fun b_next!2511 () Bool)

(assert (=> b!9171 (= b_next!2499 (or (and b!9207 (= lambda!2263 (y!564 thiss!855))) b_next!2511))))

(declare-fun lambda!2264 () Int)

(assert (=> b!9207 (= (= (right!430 tree!25) (left!427 tree!25)) (= lambda!2264 lambda!2263))))

(assert (=> bs!2341 (= (= (right!430 tree!25) (right!430 (left!427 tree!25))) (= lambda!2264 lambda!2258))))

(assert (=> bs!2342 (= (= (right!430 tree!25) (left!427 (right!430 tree!25))) (= lambda!2264 lambda!2255))))

(assert (=> bs!2341 (= (= (right!430 tree!25) (left!427 (left!427 tree!25))) (= lambda!2264 lambda!2257))))

(assert (=> bs!2343 (not (= lambda!2264 lambda!2249))))

(assert (=> bs!2342 (= (= (right!430 tree!25) (right!430 (right!430 tree!25))) (= lambda!2264 lambda!2256))))

(assert (=> bs!2344 (= (= (right!430 tree!25) tree!25) (= lambda!2264 lambda!2246))))

(assert (=> bs!2344 (not (= lambda!2264 lambda!2247))))

(assert (=> b!9207 true))

(assert (=> b!9207 (< (dynLambda!281 order!129 f!585) (dynLambda!282 order!131 lambda!2264))))

(assert (=> b!9207 true))

(declare-fun b_next!2513 () Bool)

(assert (=> b!9174 (= b_next!2505 (or (and b!9207 (= lambda!2264 (x!5103 that!223))) b_next!2513))))

(declare-fun b_next!2515 () Bool)

(assert (=> b!9174 (= b_next!2507 (or (and b!9207 (= lambda!2264 (y!564 that!223))) b_next!2515))))

(declare-fun b_next!2517 () Bool)

(assert (=> b!9171 (= b_next!2509 (or (and b!9207 (= lambda!2264 (x!5103 thiss!855))) b_next!2517))))

(declare-fun b_next!2519 () Bool)

(assert (=> b!9171 (= b_next!2511 (or (and b!9207 (= lambda!2264 (y!564 thiss!855))) b_next!2519))))

(declare-fun e!5426 () Balance!199)

(declare-fun lt!1620 () tuple2!78)

(assert (=> b!9207 (= e!5426 (dynLambda!285 f!585 (_1!39 lt!1620) (_2!39 lt!1620)))))

(assert (=> b!9207 (= lt!1620 (tuple2!79 (dynLambda!284 lambda!2263) (dynLambda!284 lambda!2264)))))

(declare-fun d!7379 () Bool)

(declare-fun c!3013 () Bool)

(assert (=> d!7379 (= c!3013 (is-Leaf!135 tree!25))))

(assert (=> d!7379 (= (fold!38 tree!25 f!585) e!5426)))

(declare-fun b!9206 () Bool)

(assert (=> b!9206 (= e!5426 (value!1304 tree!25))))

(assert (= (and d!7379 c!3013) b!9206))

(assert (= (and d!7379 (not c!3013)) b!9207))

(declare-fun b_lambda!4805 () Bool)

(assert (=> (not b_lambda!4805) (not b!9207)))

(declare-fun t!2433 () Bool)

(declare-fun tb!2093 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2433) tb!2093))

(declare-fun result!2133 () Bool)

(assert (=> tb!2093 (= result!2133 true)))

(assert (=> b!9207 t!2433))

(declare-fun b_and!3861 () Bool)

(assert (= b_and!3859 (and (=> t!2433 result!2133) b_and!3861)))

(declare-fun b_lambda!4807 () Bool)

(assert (=> (not b_lambda!4807) (not b!9207)))

(declare-fun b_lambda!4809 () Bool)

(assert (=> (not b_lambda!4809) (not b!9207)))

(declare-fun m!12189 () Bool)

(assert (=> b!9207 m!12189))

(declare-fun m!12191 () Bool)

(assert (=> b!9207 m!12191))

(declare-fun m!12193 () Bool)

(assert (=> b!9207 m!12193))

(assert (=> bs!2322 d!7379))

(assert (=> bs!2323 d!7363))

(assert (=> bs!2323 d!7365))

(assert (=> bs!2323 d!7367))

(assert (=> b!9173 d!7379))

(declare-fun d!7381 () Bool)

(declare-fun c!3014 () Bool)

(assert (=> d!7381 (= c!3014 (and (is-Cons!213 (toList!62 tree!25)) (is-Nil!214 (tail!443 (toList!62 tree!25)))))))

(declare-fun e!5427 () Balance!199)

(assert (=> d!7381 (= (foldRight1!69 (toList!62 tree!25) f!585) e!5427)))

(declare-fun b!9208 () Bool)

(assert (=> b!9208 (= e!5427 (head!431 (toList!62 tree!25)))))

(declare-fun b!9209 () Bool)

(assert (=> b!9209 (= e!5427 (dynLambda!285 f!585 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)))))

(assert (= (and d!7381 c!3014) b!9208))

(assert (= (and d!7381 (not c!3014)) b!9209))

(declare-fun b_lambda!4811 () Bool)

(assert (=> (not b_lambda!4811) (not b!9209)))

(declare-fun t!2435 () Bool)

(declare-fun tb!2095 () Bool)

(assert (=> (and start!1830 (= f!585 f!585) t!2435) tb!2095))

(declare-fun result!2135 () Bool)

(assert (=> tb!2095 (= result!2135 true)))

(assert (=> b!9209 t!2435))

(declare-fun b_and!3863 () Bool)

(assert (= b_and!3861 (and (=> t!2435 result!2135) b_and!3863)))

(declare-fun m!12195 () Bool)

(assert (=> b!9209 m!12195))

(assert (=> b!9209 m!12195))

(declare-fun m!12197 () Bool)

(assert (=> b!9209 m!12197))

(assert (=> b!9173 d!7381))

(declare-fun d!7383 () Bool)

(declare-fun lt!1621 () List!216)

(assert (=> d!7383 (not (isEmpty!172 lt!1621))))

(declare-fun e!5428 () List!216)

(assert (=> d!7383 (= lt!1621 e!5428)))

(declare-fun c!3015 () Bool)

(assert (=> d!7383 (= c!3015 (is-Leaf!135 tree!25))))

(assert (=> d!7383 (= (toList!62 tree!25) lt!1621)))

(declare-fun b!9210 () Bool)

(assert (=> b!9210 (= e!5428 (Cons!213 (value!1304 tree!25) Nil!214))))

(declare-fun b!9211 () Bool)

(assert (=> b!9211 (= e!5428 (append!93 (toList!62 (left!427 tree!25)) (toList!62 (right!430 tree!25))))))

(assert (= (and d!7383 c!3015) b!9210))

(assert (= (and d!7383 (not c!3015)) b!9211))

(declare-fun m!12199 () Bool)

(assert (=> d!7383 m!12199))

(assert (=> b!9211 m!12131))

(assert (=> b!9211 m!12183))

(assert (=> b!9211 m!12131))

(assert (=> b!9211 m!12183))

(declare-fun m!12201 () Bool)

(assert (=> b!9211 m!12201))

(assert (=> b!9173 d!7383))

(assert (=> bs!2326 d!7379))

(declare-fun b_lambda!4813 () Bool)

(assert (= b_lambda!4779 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) (and d!7375 (= lambda!2261 f!585)) (and d!7377 (= lambda!2262 f!585)) b_lambda!4813)))

(declare-fun bs!2345 () Bool)

(declare-fun d!7385 () Bool)

(assert (= bs!2345 (and d!7385 start!1830)))

(assert (=> bs!2345 (= (dynLambda!285 lambda!2245 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)) (++!3 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)))))

(assert (=> bs!2345 m!12145))

(declare-fun m!12203 () Bool)

(assert (=> bs!2345 m!12203))

(assert (=> (and start!1830 (= lambda!2245 f!585) b!9187) d!7385))

(declare-fun bs!2346 () Bool)

(declare-fun d!7387 () Bool)

(assert (= bs!2346 (and d!7387 d!7375)))

(assert (=> bs!2346 (= (dynLambda!285 lambda!2261 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)) (++!3 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)))))

(assert (=> bs!2346 m!12145))

(assert (=> bs!2346 m!12203))

(assert (=> (and d!7375 (= lambda!2261 f!585) b!9187) d!7387))

(declare-fun bs!2347 () Bool)

(declare-fun d!7389 () Bool)

(assert (= bs!2347 (and d!7389 d!7377)))

(assert (=> bs!2347 (= (dynLambda!285 lambda!2262 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)) (++!3 (head!431 (toList!62 (left!427 tree!25))) (foldRight1!69 (tail!443 (toList!62 (left!427 tree!25))) f!585)))))

(assert (=> bs!2347 m!12145))

(assert (=> bs!2347 m!12203))

(assert (=> (and d!7377 (= lambda!2262 f!585) b!9187) d!7389))

(declare-fun b_lambda!4815 () Bool)

(assert (= b_lambda!4787 (or (and b!9199 (= lambda!2256 (x!5103 that!223))) (and b!9174 b_free!1029 (= (y!564 that!223) (x!5103 that!223))) (and b!9174 b_free!1027) (and b!9171 b_free!1037 (= (y!564 thiss!855) (x!5103 that!223))) (and b!9175 (= lambda!2246 (x!5103 that!223))) (and b!9199 (= lambda!2255 (x!5103 that!223))) (and b!9171 b_free!1035 (= (x!5103 thiss!855) (x!5103 that!223))) (and b!9207 (= lambda!2264 (x!5103 that!223))) (and b!9207 (= lambda!2263 (x!5103 that!223))) (and b!9205 (= lambda!2258 (x!5103 that!223))) (and b!9205 (= lambda!2257 (x!5103 that!223))) (and b!9168 (= lambda!2249 (x!5103 that!223))) (and b!9175 (= lambda!2247 (x!5103 that!223))) b_lambda!4815)))

(declare-fun bs!2348 () Bool)

(declare-fun d!7391 () Bool)

(assert (= bs!2348 (and d!7391 b!9207)))

(assert (=> bs!2348 (= (dynLambda!284 lambda!2263) (fold!38 (left!427 tree!25) f!585))))

(assert (=> bs!2348 m!12125))

(assert (=> (and b!9207 (= lambda!2263 (x!5103 that!223)) d!7369) d!7391))

(assert (=> (and b!9175 (= lambda!2247 (x!5103 that!223)) d!7369) d!7343))

(declare-fun bs!2349 () Bool)

(declare-fun d!7393 () Bool)

(assert (= bs!2349 (and d!7393 b!9199)))

(assert (=> bs!2349 (= (dynLambda!284 lambda!2255) (fold!38 (left!427 (right!430 tree!25)) f!585))))

(declare-fun m!12205 () Bool)

(assert (=> bs!2349 m!12205))

(assert (=> (and b!9199 (= lambda!2255 (x!5103 that!223)) d!7369) d!7393))

(assert (=> (and b!9175 (= lambda!2246 (x!5103 that!223)) d!7369) d!7345))

(declare-fun bs!2350 () Bool)

(declare-fun d!7395 () Bool)

(assert (= bs!2350 (and d!7395 b!9205)))

(assert (=> bs!2350 (= (dynLambda!284 lambda!2257) (fold!38 (left!427 (left!427 tree!25)) f!585))))

(declare-fun m!12207 () Bool)

(assert (=> bs!2350 m!12207))

(assert (=> (and b!9205 (= lambda!2257 (x!5103 that!223)) d!7369) d!7395))

(declare-fun bs!2351 () Bool)

(declare-fun d!7397 () Bool)

(assert (= bs!2351 (and d!7397 b!9207)))

(assert (=> bs!2351 (= (dynLambda!284 lambda!2264) (fold!38 (right!430 tree!25) f!585))))

(assert (=> bs!2351 m!12127))

(assert (=> (and b!9207 (= lambda!2264 (x!5103 that!223)) d!7369) d!7397))

(declare-fun bs!2352 () Bool)

(declare-fun d!7399 () Bool)

(assert (= bs!2352 (and d!7399 b!9205)))

(assert (=> bs!2352 (= (dynLambda!284 lambda!2258) (fold!38 (right!430 (left!427 tree!25)) f!585))))

(declare-fun m!12209 () Bool)

(assert (=> bs!2352 m!12209))

(assert (=> (and b!9205 (= lambda!2258 (x!5103 that!223)) d!7369) d!7399))

(declare-fun bs!2353 () Bool)

(declare-fun d!7401 () Bool)

(assert (= bs!2353 (and d!7401 b!9199)))

(assert (=> bs!2353 (= (dynLambda!284 lambda!2256) (fold!38 (right!430 (right!430 tree!25)) f!585))))

(declare-fun m!12211 () Bool)

(assert (=> bs!2353 m!12211))

(assert (=> (and b!9199 (= lambda!2256 (x!5103 that!223)) d!7369) d!7401))

(assert (=> (and b!9168 (= lambda!2249 (x!5103 that!223)) d!7369) d!7347))

(declare-fun b_lambda!4817 () Bool)

(assert (= b_lambda!4801 (or b!9205 b_lambda!4817)))

(declare-fun bs!2354 () Bool)

(declare-fun d!7403 () Bool)

(assert (= bs!2354 (and d!7403 b!9205)))

(assert (=> bs!2354 (= (dynLambda!284 lambda!2257) (fold!38 (left!427 (left!427 tree!25)) f!585))))

(assert (=> bs!2354 m!12207))

(assert (=> b!9205 d!7403))

(declare-fun b_lambda!4819 () Bool)

(assert (= b_lambda!4811 (or (and start!1830 (= lambda!2245 f!585)) (and d!7375 (= lambda!2261 f!585)) (and d!7377 (= lambda!2262 f!585)) (and start!1830 b_free!1033) b_lambda!4819)))

(declare-fun bs!2355 () Bool)

(declare-fun d!7405 () Bool)

(assert (= bs!2355 (and d!7405 start!1830)))

(assert (=> bs!2355 (= (dynLambda!285 lambda!2245 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)) (++!3 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)))))

(assert (=> bs!2355 m!12195))

(declare-fun m!12213 () Bool)

(assert (=> bs!2355 m!12213))

(assert (=> (and start!1830 (= lambda!2245 f!585) b!9209) d!7405))

(declare-fun bs!2356 () Bool)

(declare-fun d!7407 () Bool)

(assert (= bs!2356 (and d!7407 d!7375)))

(assert (=> bs!2356 (= (dynLambda!285 lambda!2261 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)) (++!3 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)))))

(assert (=> bs!2356 m!12195))

(assert (=> bs!2356 m!12213))

(assert (=> (and d!7375 (= lambda!2261 f!585) b!9209) d!7407))

(declare-fun bs!2357 () Bool)

(declare-fun d!7409 () Bool)

(assert (= bs!2357 (and d!7409 d!7377)))

(assert (=> bs!2357 (= (dynLambda!285 lambda!2262 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)) (++!3 (head!431 (toList!62 tree!25)) (foldRight1!69 (tail!443 (toList!62 tree!25)) f!585)))))

(assert (=> bs!2357 m!12195))

(assert (=> bs!2357 m!12213))

(assert (=> (and d!7377 (= lambda!2262 f!585) b!9209) d!7409))

(declare-fun b_lambda!4821 () Bool)

(assert (= b_lambda!4783 (or b!9199 b_lambda!4821)))

(declare-fun bs!2358 () Bool)

(declare-fun d!7411 () Bool)

(assert (= bs!2358 (and d!7411 b!9199)))

(assert (=> bs!2358 (= (dynLambda!284 lambda!2255) (fold!38 (left!427 (right!430 tree!25)) f!585))))

(assert (=> bs!2358 m!12205))

(assert (=> b!9199 d!7411))

(declare-fun b_lambda!4823 () Bool)

(assert (= b_lambda!4781 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) (and d!7375 (= lambda!2261 f!585)) (and d!7377 (= lambda!2262 f!585)) b_lambda!4823)))

(declare-fun bs!2359 () Bool)

(declare-fun d!7413 () Bool)

(assert (= bs!2359 (and d!7413 start!1830)))

(assert (=> bs!2359 (= (dynLambda!285 lambda!2245 (_1!39 lt!1618) (_2!39 lt!1618)) (++!3 (_1!39 lt!1618) (_2!39 lt!1618)))))

(declare-fun m!12215 () Bool)

(assert (=> bs!2359 m!12215))

(assert (=> (and start!1830 (= lambda!2245 f!585) b!9199) d!7413))

(declare-fun bs!2360 () Bool)

(declare-fun d!7415 () Bool)

(assert (= bs!2360 (and d!7415 d!7375)))

(assert (=> bs!2360 (= (dynLambda!285 lambda!2261 (_1!39 lt!1618) (_2!39 lt!1618)) (++!3 (_1!39 lt!1618) (_2!39 lt!1618)))))

(assert (=> bs!2360 m!12215))

(assert (=> (and d!7375 (= lambda!2261 f!585) b!9199) d!7415))

(declare-fun bs!2361 () Bool)

(declare-fun d!7417 () Bool)

(assert (= bs!2361 (and d!7417 d!7377)))

(assert (=> bs!2361 (= (dynLambda!285 lambda!2262 (_1!39 lt!1618) (_2!39 lt!1618)) (++!3 (_1!39 lt!1618) (_2!39 lt!1618)))))

(assert (=> bs!2361 m!12215))

(assert (=> (and d!7377 (= lambda!2262 f!585) b!9199) d!7417))

(declare-fun b_lambda!4825 () Bool)

(assert (= b_lambda!4789 (or (and b!9199 (= lambda!2255 (y!564 that!223))) (and b!9171 b_free!1037 (= (y!564 thiss!855) (y!564 that!223))) (and b!9205 (= lambda!2257 (y!564 that!223))) (and b!9207 (= lambda!2264 (y!564 that!223))) (and b!9171 b_free!1035 (= (x!5103 thiss!855) (y!564 that!223))) (and b!9205 (= lambda!2258 (y!564 that!223))) (and b!9168 (= lambda!2249 (y!564 that!223))) (and b!9175 (= lambda!2247 (y!564 that!223))) (and b!9175 (= lambda!2246 (y!564 that!223))) (and b!9174 b_free!1027 (= (x!5103 that!223) (y!564 that!223))) (and b!9207 (= lambda!2263 (y!564 that!223))) (and b!9199 (= lambda!2256 (y!564 that!223))) (and b!9174 b_free!1029) b_lambda!4825)))

(declare-fun bs!2362 () Bool)

(declare-fun d!7419 () Bool)

(assert (= bs!2362 (and d!7419 b!9207)))

(assert (=> bs!2362 (= (dynLambda!284 lambda!2264) (fold!38 (right!430 tree!25) f!585))))

(assert (=> bs!2362 m!12127))

(assert (=> (and b!9207 (= lambda!2264 (y!564 that!223)) d!7369) d!7419))

(declare-fun bs!2363 () Bool)

(declare-fun d!7421 () Bool)

(assert (= bs!2363 (and d!7421 b!9168)))

(assert (=> bs!2363 (= (dynLambda!284 lambda!2249) (dynLambda!285 f!585 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4847 () Bool)

(assert (=> (not b_lambda!4847) (not bs!2363)))

(assert (=> bs!2363 t!2405))

(declare-fun b_and!3865 () Bool)

(assert (= b_and!3863 (and (=> t!2405 result!2105) b_and!3865)))

(assert (=> bs!2363 m!12127))

(assert (=> bs!2363 m!12131))

(assert (=> bs!2363 m!12131))

(assert (=> bs!2363 m!12133))

(assert (=> bs!2363 m!12133))

(assert (=> bs!2363 m!12127))

(assert (=> bs!2363 m!12135))

(assert (=> (and b!9168 (= lambda!2249 (y!564 that!223)) d!7369) d!7421))

(declare-fun bs!2364 () Bool)

(declare-fun d!7423 () Bool)

(assert (= bs!2364 (and d!7423 b!9175)))

(assert (=> bs!2364 (= (dynLambda!284 lambda!2246) (fold!38 tree!25 f!585))))

(assert (=> bs!2364 m!12115))

(assert (=> (and b!9175 (= lambda!2246 (y!564 that!223)) d!7369) d!7423))

(declare-fun bs!2365 () Bool)

(declare-fun d!7425 () Bool)

(assert (= bs!2365 (and d!7425 b!9199)))

(assert (=> bs!2365 (= (dynLambda!284 lambda!2255) (fold!38 (left!427 (right!430 tree!25)) f!585))))

(assert (=> bs!2365 m!12205))

(assert (=> (and b!9199 (= lambda!2255 (y!564 that!223)) d!7369) d!7425))

(declare-fun bs!2366 () Bool)

(declare-fun d!7427 () Bool)

(assert (= bs!2366 (and d!7427 b!9205)))

(assert (=> bs!2366 (= (dynLambda!284 lambda!2257) (fold!38 (left!427 (left!427 tree!25)) f!585))))

(assert (=> bs!2366 m!12207))

(assert (=> (and b!9205 (= lambda!2257 (y!564 that!223)) d!7369) d!7427))

(declare-fun bs!2367 () Bool)

(declare-fun d!7429 () Bool)

(assert (= bs!2367 (and d!7429 b!9175)))

(assert (=> bs!2367 (= (dynLambda!284 lambda!2247) (dynLambda!285 f!585 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4849 () Bool)

(assert (=> (not b_lambda!4849) (not bs!2367)))

(assert (=> bs!2367 t!2403))

(declare-fun b_and!3867 () Bool)

(assert (= b_and!3865 (and (=> t!2403 result!2103) b_and!3867)))

(assert (=> bs!2367 m!12125))

(assert (=> bs!2367 m!12127))

(assert (=> bs!2367 m!12125))

(assert (=> bs!2367 m!12127))

(assert (=> bs!2367 m!12129))

(assert (=> (and b!9175 (= lambda!2247 (y!564 that!223)) d!7369) d!7429))

(declare-fun bs!2368 () Bool)

(declare-fun d!7431 () Bool)

(assert (= bs!2368 (and d!7431 b!9205)))

(assert (=> bs!2368 (= (dynLambda!284 lambda!2258) (fold!38 (right!430 (left!427 tree!25)) f!585))))

(assert (=> bs!2368 m!12209))

(assert (=> (and b!9205 (= lambda!2258 (y!564 that!223)) d!7369) d!7431))

(declare-fun bs!2369 () Bool)

(declare-fun d!7433 () Bool)

(assert (= bs!2369 (and d!7433 b!9207)))

(assert (=> bs!2369 (= (dynLambda!284 lambda!2263) (fold!38 (left!427 tree!25) f!585))))

(assert (=> bs!2369 m!12125))

(assert (=> (and b!9207 (= lambda!2263 (y!564 that!223)) d!7369) d!7433))

(declare-fun bs!2370 () Bool)

(declare-fun d!7435 () Bool)

(assert (= bs!2370 (and d!7435 b!9199)))

(assert (=> bs!2370 (= (dynLambda!284 lambda!2256) (fold!38 (right!430 (right!430 tree!25)) f!585))))

(assert (=> bs!2370 m!12211))

(assert (=> (and b!9199 (= lambda!2256 (y!564 that!223)) d!7369) d!7435))

(declare-fun b_lambda!4827 () Bool)

(assert (= b_lambda!4791 (or (and b!9175 (= lambda!2248 (evidence!148 that!223))) (and b!9168 (= lambda!2250 (evidence!148 that!223))) (and b!9174 b_free!1031) (and b!9171 b_free!1039 (= (evidence!148 thiss!855) (evidence!148 that!223))) b_lambda!4827)))

(declare-fun bs!2371 () Bool)

(declare-fun d!7437 () Bool)

(assert (= bs!2371 (and d!7437 b!9175)))

(assert (=> bs!2371 (= (dynLambda!283 lambda!2248) (fold_foldRight1_equivalence!0 (left!427 tree!25)))))

(assert (=> bs!2371 m!12137))

(assert (=> (and b!9175 (= lambda!2248 (evidence!148 that!223)) b!9202) d!7437))

(declare-fun bs!2372 () Bool)

(declare-fun d!7439 () Bool)

(assert (= bs!2372 (and d!7439 b!9168)))

(assert (=> bs!2372 (= (dynLambda!283 lambda!2250) (fold_foldRight1_equivalence!0 (right!430 tree!25)))))

(assert (=> bs!2372 m!12139))

(assert (=> (and b!9168 (= lambda!2250 (evidence!148 that!223)) b!9202) d!7439))

(declare-fun b_lambda!4829 () Bool)

(assert (= b_lambda!4793 (or (and b!9199 (= lambda!2256 (x!5103 thiss!855))) (and b!9175 (= lambda!2246 (x!5103 thiss!855))) (and b!9207 (= lambda!2264 (x!5103 thiss!855))) (and b!9171 b_free!1035) (and b!9174 b_free!1029 (= (y!564 that!223) (x!5103 thiss!855))) (and b!9199 (= lambda!2255 (x!5103 thiss!855))) (and b!9207 (= lambda!2263 (x!5103 thiss!855))) (and b!9205 (= lambda!2258 (x!5103 thiss!855))) (and b!9171 b_free!1037 (= (y!564 thiss!855) (x!5103 thiss!855))) (and b!9168 (= lambda!2249 (x!5103 thiss!855))) (and b!9175 (= lambda!2247 (x!5103 thiss!855))) (and b!9174 b_free!1027 (= (x!5103 that!223) (x!5103 thiss!855))) (and b!9205 (= lambda!2257 (x!5103 thiss!855))) b_lambda!4829)))

(declare-fun bs!2373 () Bool)

(declare-fun d!7441 () Bool)

(assert (= bs!2373 (and d!7441 b!9199)))

(assert (=> bs!2373 (= (dynLambda!284 lambda!2256) (fold!38 (right!430 (right!430 tree!25)) f!585))))

(assert (=> bs!2373 m!12211))

(assert (=> (and b!9199 (= lambda!2256 (x!5103 thiss!855)) d!7371) d!7441))

(declare-fun bs!2374 () Bool)

(declare-fun d!7443 () Bool)

(assert (= bs!2374 (and d!7443 b!9207)))

(assert (=> bs!2374 (= (dynLambda!284 lambda!2264) (fold!38 (right!430 tree!25) f!585))))

(assert (=> bs!2374 m!12127))

(assert (=> (and b!9207 (= lambda!2264 (x!5103 thiss!855)) d!7371) d!7443))

(declare-fun bs!2375 () Bool)

(declare-fun d!7445 () Bool)

(assert (= bs!2375 (and d!7445 b!9199)))

(assert (=> bs!2375 (= (dynLambda!284 lambda!2255) (fold!38 (left!427 (right!430 tree!25)) f!585))))

(assert (=> bs!2375 m!12205))

(assert (=> (and b!9199 (= lambda!2255 (x!5103 thiss!855)) d!7371) d!7445))

(declare-fun bs!2376 () Bool)

(declare-fun d!7447 () Bool)

(assert (= bs!2376 (and d!7447 b!9168)))

(assert (=> bs!2376 (= (dynLambda!284 lambda!2249) (dynLambda!285 f!585 (foldRight1!69 (toList!62 (left!427 tree!25)) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4851 () Bool)

(assert (=> (not b_lambda!4851) (not bs!2376)))

(assert (=> bs!2376 t!2405))

(declare-fun b_and!3869 () Bool)

(assert (= b_and!3867 (and (=> t!2405 result!2105) b_and!3869)))

(assert (=> bs!2376 m!12127))

(assert (=> bs!2376 m!12131))

(assert (=> bs!2376 m!12131))

(assert (=> bs!2376 m!12133))

(assert (=> bs!2376 m!12133))

(assert (=> bs!2376 m!12127))

(assert (=> bs!2376 m!12135))

(assert (=> (and b!9168 (= lambda!2249 (x!5103 thiss!855)) d!7371) d!7447))

(declare-fun bs!2377 () Bool)

(declare-fun d!7449 () Bool)

(assert (= bs!2377 (and d!7449 b!9175)))

(assert (=> bs!2377 (= (dynLambda!284 lambda!2246) (fold!38 tree!25 f!585))))

(assert (=> bs!2377 m!12115))

(assert (=> (and b!9175 (= lambda!2246 (x!5103 thiss!855)) d!7371) d!7449))

(declare-fun bs!2378 () Bool)

(declare-fun d!7451 () Bool)

(assert (= bs!2378 (and d!7451 b!9207)))

(assert (=> bs!2378 (= (dynLambda!284 lambda!2263) (fold!38 (left!427 tree!25) f!585))))

(assert (=> bs!2378 m!12125))

(assert (=> (and b!9207 (= lambda!2263 (x!5103 thiss!855)) d!7371) d!7451))

(declare-fun bs!2379 () Bool)

(declare-fun d!7453 () Bool)

(assert (= bs!2379 (and d!7453 b!9205)))

(assert (=> bs!2379 (= (dynLambda!284 lambda!2258) (fold!38 (right!430 (left!427 tree!25)) f!585))))

(assert (=> bs!2379 m!12209))

(assert (=> (and b!9205 (= lambda!2258 (x!5103 thiss!855)) d!7371) d!7453))

(declare-fun bs!2380 () Bool)

(declare-fun d!7455 () Bool)

(assert (= bs!2380 (and d!7455 b!9205)))

(assert (=> bs!2380 (= (dynLambda!284 lambda!2257) (fold!38 (left!427 (left!427 tree!25)) f!585))))

(assert (=> bs!2380 m!12207))

(assert (=> (and b!9205 (= lambda!2257 (x!5103 thiss!855)) d!7371) d!7455))

(declare-fun bs!2381 () Bool)

(declare-fun d!7457 () Bool)

(assert (= bs!2381 (and d!7457 b!9175)))

(assert (=> bs!2381 (= (dynLambda!284 lambda!2247) (dynLambda!285 f!585 (fold!38 (left!427 tree!25) f!585) (fold!38 (right!430 tree!25) f!585)))))

(declare-fun b_lambda!4853 () Bool)

(assert (=> (not b_lambda!4853) (not bs!2381)))

(assert (=> bs!2381 t!2403))

(declare-fun b_and!3871 () Bool)

(assert (= b_and!3869 (and (=> t!2403 result!2103) b_and!3871)))

(assert (=> bs!2381 m!12125))

(assert (=> bs!2381 m!12127))

(assert (=> bs!2381 m!12125))

(assert (=> bs!2381 m!12127))

(assert (=> bs!2381 m!12129))

(assert (=> (and b!9175 (= lambda!2247 (x!5103 thiss!855)) d!7371) d!7457))

(declare-fun b_lambda!4831 () Bool)

(assert (= b_lambda!4795 (or (and b!9174 b_free!1027 (= (x!5103 that!223) (y!564 thiss!855))) (and b!9199 (= lambda!2255 (y!564 thiss!855))) (and b!9175 (= lambda!2247 (y!564 thiss!855))) (and b!9199 (= lambda!2256 (y!564 thiss!855))) (and b!9207 (= lambda!2263 (y!564 thiss!855))) (and b!9205 (= lambda!2258 (y!564 thiss!855))) (and b!9171 b_free!1035 (= (x!5103 thiss!855) (y!564 thiss!855))) (and b!9168 (= lambda!2249 (y!564 thiss!855))) (and b!9171 b_free!1037) (and b!9207 (= lambda!2264 (y!564 thiss!855))) (and b!9175 (= lambda!2246 (y!564 thiss!855))) (and b!9174 b_free!1029 (= (y!564 that!223) (y!564 thiss!855))) (and b!9205 (= lambda!2257 (y!564 thiss!855))) b_lambda!4831)))

(declare-fun bs!2382 () Bool)

(declare-fun d!7459 () Bool)

(assert (= bs!2382 (and d!7459 b!9199)))

(assert (=> bs!2382 (= (dynLambda!284 lambda!2256) (fold!38 (right!430 (right!430 tree!25)) f!585))))

(assert (=> bs!2382 m!12211))

(assert (=> (and b!9199 (= lambda!2256 (y!564 thiss!855)) d!7371) d!7459))

(declare-fun bs!2383 () Bool)

(declare-fun d!7461 () Bool)

(assert (= bs!2383 (and d!7461 b!9205)))

(assert (=> bs!2383 (= (dynLambda!284 lambda!2257) (fold!38 (left!427 (left!427 tree!25)) f!585))))

(assert (=> bs!2383 m!12207))

(assert (=> (and b!9205 (= lambda!2257 (y!564 thiss!855)) d!7371) d!7461))

(assert (=> (and b!9175 (= lambda!2247 (y!564 thiss!855)) d!7371) d!7349))

(declare-fun bs!2384 () Bool)

(declare-fun d!7463 () Bool)

(assert (= bs!2384 (and d!7463 b!9205)))

(assert (=> bs!2384 (= (dynLambda!284 lambda!2258) (fold!38 (right!430 (left!427 tree!25)) f!585))))

(assert (=> bs!2384 m!12209))

(assert (=> (and b!9205 (= lambda!2258 (y!564 thiss!855)) d!7371) d!7463))

(assert (=> (and b!9168 (= lambda!2249 (y!564 thiss!855)) d!7371) d!7351))

(declare-fun bs!2385 () Bool)

(declare-fun d!7465 () Bool)

(assert (= bs!2385 (and d!7465 b!9199)))

(assert (=> bs!2385 (= (dynLambda!284 lambda!2255) (fold!38 (left!427 (right!430 tree!25)) f!585))))

(assert (=> bs!2385 m!12205))

(assert (=> (and b!9199 (= lambda!2255 (y!564 thiss!855)) d!7371) d!7465))

(declare-fun bs!2386 () Bool)

(declare-fun d!7467 () Bool)

(assert (= bs!2386 (and d!7467 b!9207)))

(assert (=> bs!2386 (= (dynLambda!284 lambda!2264) (fold!38 (right!430 tree!25) f!585))))

(assert (=> bs!2386 m!12127))

(assert (=> (and b!9207 (= lambda!2264 (y!564 thiss!855)) d!7371) d!7467))

(declare-fun bs!2387 () Bool)

(declare-fun d!7469 () Bool)

(assert (= bs!2387 (and d!7469 b!9207)))

(assert (=> bs!2387 (= (dynLambda!284 lambda!2263) (fold!38 (left!427 tree!25) f!585))))

(assert (=> bs!2387 m!12125))

(assert (=> (and b!9207 (= lambda!2263 (y!564 thiss!855)) d!7371) d!7469))

(assert (=> (and b!9175 (= lambda!2246 (y!564 thiss!855)) d!7371) d!7353))

(declare-fun b_lambda!4833 () Bool)

(assert (= b_lambda!4803 (or b!9205 b_lambda!4833)))

(declare-fun bs!2388 () Bool)

(declare-fun d!7471 () Bool)

(assert (= bs!2388 (and d!7471 b!9205)))

(assert (=> bs!2388 (= (dynLambda!284 lambda!2258) (fold!38 (right!430 (left!427 tree!25)) f!585))))

(assert (=> bs!2388 m!12209))

(assert (=> b!9205 d!7471))

(declare-fun b_lambda!4835 () Bool)

(assert (= b_lambda!4797 (or (and b!9175 (= lambda!2248 (evidence!148 thiss!855))) (and b!9168 (= lambda!2250 (evidence!148 thiss!855))) (and b!9174 b_free!1031 (= (evidence!148 that!223) (evidence!148 thiss!855))) (and b!9171 b_free!1039) b_lambda!4835)))

(assert (=> (and b!9175 (= lambda!2248 (evidence!148 thiss!855)) b!9203) d!7355))

(assert (=> (and b!9168 (= lambda!2250 (evidence!148 thiss!855)) b!9203) d!7357))

(declare-fun b_lambda!4837 () Bool)

(assert (= b_lambda!4809 (or b!9207 b_lambda!4837)))

(declare-fun bs!2389 () Bool)

(declare-fun d!7473 () Bool)

(assert (= bs!2389 (and d!7473 b!9207)))

(assert (=> bs!2389 (= (dynLambda!284 lambda!2264) (fold!38 (right!430 tree!25) f!585))))

(assert (=> bs!2389 m!12127))

(assert (=> b!9207 d!7473))

(declare-fun b_lambda!4839 () Bool)

(assert (= b_lambda!4799 (or (and start!1830 (= lambda!2245 f!585)) (and start!1830 b_free!1033) (and d!7375 (= lambda!2261 f!585)) (and d!7377 (= lambda!2262 f!585)) b_lambda!4839)))

(declare-fun bs!2390 () Bool)

(declare-fun d!7475 () Bool)

(assert (= bs!2390 (and d!7475 start!1830)))

(assert (=> bs!2390 (= (dynLambda!285 lambda!2245 (_1!39 lt!1619) (_2!39 lt!1619)) (++!3 (_1!39 lt!1619) (_2!39 lt!1619)))))

(declare-fun m!12217 () Bool)

(assert (=> bs!2390 m!12217))

(assert (=> (and start!1830 (= lambda!2245 f!585) b!9205) d!7475))

(declare-fun bs!2391 () Bool)

(declare-fun d!7477 () Bool)

(assert (= bs!2391 (and d!7477 d!7375)))

(assert (=> bs!2391 (= (dynLambda!285 lambda!2261 (_1!39 lt!1619) (_2!39 lt!1619)) (++!3 (_1!39 lt!1619) (_2!39 lt!1619)))))

(assert (=> bs!2391 m!12217))

(assert (=> (and d!7375 (= lambda!2261 f!585) b!9205) d!7477))

(declare-fun bs!2392 () Bool)

(declare-fun d!7479 () Bool)

(assert (= bs!2392 (and d!7479 d!7377)))

(assert (=> bs!2392 (= (dynLambda!285 lambda!2262 (_1!39 lt!1619) (_2!39 lt!1619)) (++!3 (_1!39 lt!1619) (_2!39 lt!1619)))))

(assert (=> bs!2392 m!12217))

(assert (=> (and d!7377 (= lambda!2262 f!585) b!9205) d!7479))

(declare-fun b_lambda!4841 () Bool)

(assert (= b_lambda!4807 (or b!9207 b_lambda!4841)))

(declare-fun bs!2393 () Bool)

(declare-fun d!7481 () Bool)

(assert (= bs!2393 (and d!7481 b!9207)))

(assert (=> bs!2393 (= (dynLambda!284 lambda!2263) (fold!38 (left!427 tree!25) f!585))))

(assert (=> bs!2393 m!12125))

(assert (=> b!9207 d!7481))

(declare-fun b_lambda!4843 () Bool)

(assert (= b_lambda!4805 (or (and start!1830 (= lambda!2245 f!585)) (and d!7375 (= lambda!2261 f!585)) (and d!7377 (= lambda!2262 f!585)) (and start!1830 b_free!1033) b_lambda!4843)))

(declare-fun bs!2394 () Bool)

(declare-fun d!7483 () Bool)

(assert (= bs!2394 (and d!7483 start!1830)))

(assert (=> bs!2394 (= (dynLambda!285 lambda!2245 (_1!39 lt!1620) (_2!39 lt!1620)) (++!3 (_1!39 lt!1620) (_2!39 lt!1620)))))

(declare-fun m!12219 () Bool)

(assert (=> bs!2394 m!12219))

(assert (=> (and start!1830 (= lambda!2245 f!585) b!9207) d!7483))

(declare-fun bs!2395 () Bool)

(declare-fun d!7485 () Bool)

(assert (= bs!2395 (and d!7485 d!7375)))

(assert (=> bs!2395 (= (dynLambda!285 lambda!2261 (_1!39 lt!1620) (_2!39 lt!1620)) (++!3 (_1!39 lt!1620) (_2!39 lt!1620)))))

(assert (=> bs!2395 m!12219))

(assert (=> (and d!7375 (= lambda!2261 f!585) b!9207) d!7485))

(declare-fun bs!2396 () Bool)

(declare-fun d!7487 () Bool)

(assert (= bs!2396 (and d!7487 d!7377)))

(assert (=> bs!2396 (= (dynLambda!285 lambda!2262 (_1!39 lt!1620) (_2!39 lt!1620)) (++!3 (_1!39 lt!1620) (_2!39 lt!1620)))))

(assert (=> bs!2396 m!12219))

(assert (=> (and d!7377 (= lambda!2262 f!585) b!9207) d!7487))

(declare-fun b_lambda!4845 () Bool)

(assert (= b_lambda!4785 (or b!9199 b_lambda!4845)))

(declare-fun bs!2397 () Bool)

(declare-fun d!7489 () Bool)

(assert (= bs!2397 (and d!7489 b!9199)))

(assert (=> bs!2397 (= (dynLambda!284 lambda!2256) (fold!38 (right!430 (right!430 tree!25)) f!585))))

(assert (=> bs!2397 m!12211))

(assert (=> b!9199 d!7489))

(push 1)

(assert (not bs!2351))

(assert (not bs!2357))

(assert (not bs!2385))

(assert (not bs!2348))

(assert (not bs!2392))

(assert (not b_next!2467))

(assert (not b_lambda!4837))

(assert (not bs!2367))

(assert (not b_lambda!4775))

(assert (not b_lambda!4833))

(assert (not b_lambda!4817))

(assert (not bs!2350))

(assert (not b_lambda!4819))

(assert (not bs!2346))

(assert b_and!3871)

(assert (not bs!2359))

(assert (not b_lambda!4813))

(assert (not bs!2356))

(assert (not bs!2386))

(assert (not b_lambda!4761))

(assert (not b_next!2515))

(assert (not bs!2360))

(assert (not b!9211))

(assert (not bs!2381))

(assert (not b_lambda!4829))

(assert (not b_lambda!4851))

(assert (not bs!2380))

(assert (not bs!2372))

(assert b_and!3855)

(assert (not bs!2375))

(assert (not bs!2345))

(assert (not b_lambda!4831))

(assert (not bs!2370))

(assert (not b_lambda!4815))

(assert (not bs!2364))

(assert (not b_lambda!4823))

(assert (not b_lambda!4843))

(assert (not bs!2349))

(assert (not b_lambda!4845))

(assert (not bs!2363))

(assert (not b_lambda!4835))

(assert (not b_next!2517))

(assert (not bs!2347))

(assert (not bs!2391))

(assert (not bs!2355))

(assert (not bs!2377))

(assert (not d!7365))

(assert (not d!7383))

(assert (not bs!2387))

(assert (not bs!2389))

(assert (not bs!2388))

(assert (not bs!2395))

(assert (not b_next!2465))

(assert (not bs!2396))

(assert (not bs!2379))

(assert (not bs!2393))

(assert b_and!3847)

(assert (not bs!2368))

(assert (not b_lambda!4827))

(assert b_and!3857)

(assert (not b_lambda!4849))

(assert (not d!7375))

(assert (not bs!2369))

(assert b_and!3851)

(assert (not b!9209))

(assert (not b_lambda!4821))

(assert (not bs!2362))

(assert (not bs!2329))

(assert (not b_lambda!4825))

(assert (not b_lambda!4853))

(assert (not b_lambda!4771))

(assert (not b!9193))

(assert (not bs!2354))

(assert (not d!7377))

(assert (not bs!2383))

(assert (not b_next!2513))

(assert (not bs!2330))

(assert b_and!3853)

(assert (not bs!2353))

(assert (not b_lambda!4777))

(assert (not b_lambda!4839))

(assert (not bs!2376))

(assert (not b_lambda!4757))

(assert (not bs!2352))

(assert (not bs!2390))

(assert (not b_next!2519))

(assert (not bs!2382))

(assert (not bs!2384))

(assert (not bs!2365))

(assert (not b_next!2503))

(assert (not b_lambda!4759))

(assert (not b_lambda!4847))

(assert (not bs!2366))

(assert b_and!3849)

(assert (not b!9187))

(assert (not bs!2371))

(assert (not bs!2361))

(assert (not bs!2394))

(assert (not b_lambda!4773))

(assert (not bs!2373))

(assert (not bs!2358))

(assert (not bs!2374))

(assert (not bs!2378))

(assert (not bs!2397))

(assert (not b_lambda!4841))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2467))

(assert b_and!3871)

(assert (not b_next!2515))

(assert b_and!3855)

(assert (not b_next!2517))

(assert (not b_next!2465))

(assert b_and!3847)

(assert b_and!3857)

(assert b_and!3851)

(assert (not b_next!2513))

(assert b_and!3853)

(assert (not b_next!2519))

(assert (not b_next!2503))

(assert b_and!3849)

(check-sat)

(pop 1)

