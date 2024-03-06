; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1912 () Bool)

(assert start!1912)

(declare-fun b!9559 () Bool)

(declare-fun b_free!1177 () Bool)

(declare-fun b_next!2897 () Bool)

(assert (=> b!9559 (= b_free!1177 (not b_next!2897))))

(declare-fun tp!1900 () Bool)

(declare-fun b_and!4285 () Bool)

(assert (=> b!9559 (= tp!1900 b_and!4285)))

(declare-fun b_free!1179 () Bool)

(declare-fun b_next!2899 () Bool)

(assert (=> b!9559 (= b_free!1179 (not b_next!2899))))

(declare-fun tp!1899 () Bool)

(declare-fun b_and!4287 () Bool)

(assert (=> b!9559 (= tp!1899 b_and!4287)))

(declare-fun b_free!1181 () Bool)

(declare-fun b_next!2901 () Bool)

(assert (=> start!1912 (= b_free!1181 (not b_next!2901))))

(declare-fun tp!1898 () Bool)

(declare-fun b_and!4289 () Bool)

(assert (=> start!1912 (= tp!1898 b_and!4289)))

(declare-fun b!9556 () Bool)

(declare-fun b_free!1183 () Bool)

(declare-fun b_next!2903 () Bool)

(assert (=> b!9556 (= b_free!1183 (not b_next!2903))))

(declare-fun tp!1902 () Bool)

(declare-fun b_and!4291 () Bool)

(assert (=> b!9556 (= tp!1902 b_and!4291)))

(declare-fun b_free!1185 () Bool)

(declare-fun b_next!2905 () Bool)

(assert (=> b!9556 (= b_free!1185 (not b_next!2905))))

(declare-fun tp!1901 () Bool)

(declare-fun b_and!4293 () Bool)

(assert (=> b!9556 (= tp!1901 b_and!4293)))

(declare-fun b_free!1187 () Bool)

(declare-fun b_next!2907 () Bool)

(assert (=> b!9556 (= b_free!1187 (not b_next!2907))))

(declare-fun tp!1903 () Bool)

(declare-fun b_and!4295 () Bool)

(assert (=> b!9556 (= tp!1903 b_and!4295)))

(declare-fun b_next!2909 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2419 () Int)

(assert (=> start!1912 (= b_next!2901 (or (and start!1912 (= lambda!2419 f!585)) b_next!2909))))

(declare-fun b!9557 () Bool)

(assert (=> b!9557 true))

(declare-fun order!151 () Int)

(declare-fun order!149 () Int)

(declare-fun lambda!2420 () Int)

(declare-fun dynLambda!306 (Int Int) Int)

(declare-fun dynLambda!307 (Int Int) Int)

(assert (=> b!9557 (< (dynLambda!306 order!149 f!585) (dynLambda!307 order!151 lambda!2420))))

(assert (=> b!9557 true))

(declare-datatypes () ((Balance!221 (Balance!222 (extraOpen!151 Int) (extraClose!151 Int)))))

(declare-datatypes () ((EqProof!84 (EqProof!85 (x!5400 Int) (y!589 Int)))))

(declare-fun that!244 () EqProof!84)

(declare-fun b_next!2911 () Bool)

(assert (=> b!9559 (= b_next!2897 (or (and b!9557 (= lambda!2420 (x!5400 that!244))) b_next!2911))))

(declare-fun b_next!2913 () Bool)

(assert (=> b!9559 (= b_next!2899 (or (and b!9557 (= lambda!2420 (y!589 that!244))) b_next!2913))))

(declare-datatypes () ((EqEvidence!184 (EqEvidence!185 (x!5401 Int) (y!590 Int) (evidence!159 Int)))))

(declare-fun thiss!852 () EqEvidence!184)

(declare-fun b_next!2915 () Bool)

(assert (=> b!9556 (= b_next!2903 (or (and b!9557 (= lambda!2420 (x!5401 thiss!852))) b_next!2915))))

(declare-fun b_next!2917 () Bool)

(assert (=> b!9556 (= b_next!2905 (or (and b!9557 (= lambda!2420 (y!590 thiss!852))) b_next!2917))))

(declare-fun lambda!2421 () Int)

(assert (=> b!9557 (not (= lambda!2421 lambda!2420))))

(assert (=> b!9557 true))

(assert (=> b!9557 (< (dynLambda!306 order!149 f!585) (dynLambda!307 order!151 lambda!2421))))

(assert (=> b!9557 true))

(declare-fun b_next!2919 () Bool)

(assert (=> b!9559 (= b_next!2911 (or (and b!9557 (= lambda!2421 (x!5400 that!244))) b_next!2919))))

(declare-fun b_next!2921 () Bool)

(assert (=> b!9559 (= b_next!2913 (or (and b!9557 (= lambda!2421 (y!589 that!244))) b_next!2921))))

(declare-fun b_next!2923 () Bool)

(assert (=> b!9556 (= b_next!2915 (or (and b!9557 (= lambda!2421 (x!5401 thiss!852))) b_next!2923))))

(declare-fun b_next!2925 () Bool)

(assert (=> b!9556 (= b_next!2917 (or (and b!9557 (= lambda!2421 (y!590 thiss!852))) b_next!2925))))

(declare-fun m!12703 () Bool)

(assert (=> b!9557 m!12703))

(declare-fun lambda!2422 () Int)

(declare-fun dynLambda!308 (Int) Bool)

(assert (=> (and b!9556 b!9557 (= (dynLambda!308 lambda!2422) (dynLambda!308 (evidence!159 thiss!852)))) (= lambda!2422 (evidence!159 thiss!852))))

(declare-fun b_next!2927 () Bool)

(assert (=> b!9556 (= b_next!2907 (or (and b!9557 (= lambda!2422 (evidence!159 thiss!852))) b_next!2927))))

(declare-fun bs!2588 () Bool)

(declare-fun b!9552 () Bool)

(assert (= bs!2588 (and b!9552 b!9557)))

(declare-fun lambda!2423 () Int)

(assert (=> bs!2588 (not (= lambda!2423 lambda!2420))))

(assert (=> bs!2588 (not (= lambda!2423 lambda!2421))))

(assert (=> b!9552 true))

(assert (=> b!9552 (< (dynLambda!306 order!149 f!585) (dynLambda!307 order!151 lambda!2423))))

(assert (=> b!9552 true))

(declare-fun b_next!2929 () Bool)

(assert (=> b!9559 (= b_next!2919 (or (and b!9552 (= lambda!2423 (x!5400 that!244))) b_next!2929))))

(declare-fun b_next!2931 () Bool)

(assert (=> b!9559 (= b_next!2921 (or (and b!9552 (= lambda!2423 (y!589 that!244))) b_next!2931))))

(declare-fun b_next!2933 () Bool)

(assert (=> b!9556 (= b_next!2923 (or (and b!9552 (= lambda!2423 (x!5401 thiss!852))) b_next!2933))))

(declare-fun b_next!2935 () Bool)

(assert (=> b!9556 (= b_next!2925 (or (and b!9552 (= lambda!2423 (y!590 thiss!852))) b_next!2935))))

(declare-fun res!3137 () Bool)

(declare-fun e!5669 () Bool)

(assert (=> b!9552 (=> (not res!3137) (not e!5669))))

(assert (=> b!9552 (= res!3137 (= that!244 (EqProof!85 lambda!2423 lambda!2423)))))

(declare-fun b!9553 () Bool)

(declare-fun res!3140 () Bool)

(assert (=> b!9553 (=> (not res!3140) (not e!5669))))

(declare-datatypes () ((ProofOps!168 (ProofOps!169 (prop!208 Bool)))))

(declare-fun thiss!829 () ProofOps!168)

(declare-datatypes () ((Tree!73 (Branch!64 (left!453 Tree!73) (right!456 Tree!73)) (Leaf!146 (value!1315 Balance!221)))))

(declare-fun tree!25 () Tree!73)

(declare-fun fold!49 (Tree!73 Int) Balance!221)

(declare-datatypes () ((List!227 (Nil!225) (Cons!224 (head!442 Balance!221) (tail!454 List!227)))))

(declare-fun foldRight1!80 (List!227 Int) Balance!221)

(declare-fun toList!73 (Tree!73) List!227)

(assert (=> b!9553 (= res!3140 (= thiss!829 (ProofOps!169 (= (fold!49 tree!25 f!585) (foldRight1!80 (toList!73 tree!25) f!585)))))))

(declare-fun b!9554 () Bool)

(declare-fun dynLambda!309 (Int) Balance!221)

(assert (=> b!9554 (= e!5669 (not (= (dynLambda!309 (y!590 thiss!852)) (dynLambda!309 (x!5400 that!244)))))))

(declare-fun b!9555 () Bool)

(declare-fun res!3139 () Bool)

(assert (=> b!9555 (=> (not res!3139) (not e!5669))))

(assert (=> b!9555 (= res!3139 (not (is-Leaf!146 tree!25)))))

(declare-fun e!5668 () Bool)

(assert (=> b!9556 (= e!5668 (and tp!1902 tp!1901 tp!1903))))

(declare-fun res!3138 () Bool)

(assert (=> start!1912 (=> (not res!3138) (not e!5669))))

(assert (=> start!1912 (= res!3138 (= f!585 lambda!2419))))

(assert (=> start!1912 e!5669))

(assert (=> start!1912 true))

(declare-fun e!5670 () Bool)

(declare-fun inv!338 (EqProof!84) Bool)

(assert (=> start!1912 (and (inv!338 that!244) e!5670)))

(assert (=> start!1912 tp!1898))

(declare-fun inv!339 (EqEvidence!184) Bool)

(assert (=> start!1912 (and (inv!339 thiss!852) e!5668)))

(declare-fun res!3136 () Bool)

(assert (=> b!9557 (=> (not res!3136) (not e!5669))))

(assert (=> b!9557 (= res!3136 (= thiss!852 (EqEvidence!185 lambda!2420 lambda!2421 lambda!2422)))))

(declare-fun b!9558 () Bool)

(declare-fun res!3141 () Bool)

(assert (=> b!9558 (=> (not res!3141) (not e!5669))))

(assert (=> b!9558 (= res!3141 (dynLambda!308 (evidence!159 thiss!852)))))

(assert (=> b!9559 (= e!5670 (and tp!1900 tp!1899))))

(assert (= (and start!1912 res!3138) b!9553))

(assert (= (and b!9553 res!3140) b!9555))

(assert (= (and b!9555 res!3139) b!9557))

(assert (= (and b!9557 res!3136) b!9552))

(assert (= (and b!9552 res!3137) b!9558))

(assert (= (and b!9558 res!3141) b!9554))

(assert (= start!1912 b!9559))

(assert (= start!1912 b!9556))

(declare-fun b_lambda!5131 () Bool)

(assert (=> (not b_lambda!5131) (not b!9554)))

(declare-fun t!2637 () Bool)

(declare-fun tb!2297 () Bool)

(assert (=> (and b!9559 (= (x!5400 that!244) (y!590 thiss!852)) t!2637) tb!2297))

(declare-fun result!2337 () Bool)

(assert (=> tb!2297 (= result!2337 true)))

(assert (=> b!9554 t!2637))

(declare-fun b_and!4297 () Bool)

(assert (= b_and!4285 (and (=> t!2637 result!2337) b_and!4297)))

(declare-fun t!2639 () Bool)

(declare-fun tb!2299 () Bool)

(assert (=> (and b!9559 (= (y!589 that!244) (y!590 thiss!852)) t!2639) tb!2299))

(declare-fun result!2339 () Bool)

(assert (=> tb!2299 (= result!2339 true)))

(assert (=> b!9554 t!2639))

(declare-fun b_and!4299 () Bool)

(assert (= b_and!4287 (and (=> t!2639 result!2339) b_and!4299)))

(declare-fun t!2641 () Bool)

(declare-fun tb!2301 () Bool)

(assert (=> (and b!9556 (= (x!5401 thiss!852) (y!590 thiss!852)) t!2641) tb!2301))

(declare-fun result!2341 () Bool)

(assert (=> tb!2301 (= result!2341 true)))

(assert (=> b!9554 t!2641))

(declare-fun b_and!4301 () Bool)

(assert (= b_and!4291 (and (=> t!2641 result!2341) b_and!4301)))

(declare-fun t!2643 () Bool)

(declare-fun tb!2303 () Bool)

(assert (=> (and b!9556 (= (y!590 thiss!852) (y!590 thiss!852)) t!2643) tb!2303))

(declare-fun result!2343 () Bool)

(assert (=> tb!2303 (= result!2343 true)))

(assert (=> b!9554 t!2643))

(declare-fun b_and!4303 () Bool)

(assert (= b_and!4293 (and (=> t!2643 result!2343) b_and!4303)))

(declare-fun b_lambda!5133 () Bool)

(assert (=> (not b_lambda!5133) (not b!9554)))

(declare-fun t!2645 () Bool)

(declare-fun tb!2305 () Bool)

(assert (=> (and b!9559 (= (x!5400 that!244) (x!5400 that!244)) t!2645) tb!2305))

(declare-fun result!2345 () Bool)

(assert (=> tb!2305 (= result!2345 true)))

(assert (=> b!9554 t!2645))

(declare-fun b_and!4305 () Bool)

(assert (= b_and!4297 (and (=> t!2645 result!2345) b_and!4305)))

(declare-fun t!2647 () Bool)

(declare-fun tb!2307 () Bool)

(assert (=> (and b!9559 (= (y!589 that!244) (x!5400 that!244)) t!2647) tb!2307))

(declare-fun result!2347 () Bool)

(assert (=> tb!2307 (= result!2347 true)))

(assert (=> b!9554 t!2647))

(declare-fun b_and!4307 () Bool)

(assert (= b_and!4299 (and (=> t!2647 result!2347) b_and!4307)))

(declare-fun t!2649 () Bool)

(declare-fun tb!2309 () Bool)

(assert (=> (and b!9556 (= (x!5401 thiss!852) (x!5400 that!244)) t!2649) tb!2309))

(declare-fun result!2349 () Bool)

(assert (=> tb!2309 (= result!2349 true)))

(assert (=> b!9554 t!2649))

(declare-fun b_and!4309 () Bool)

(assert (= b_and!4301 (and (=> t!2649 result!2349) b_and!4309)))

(declare-fun t!2651 () Bool)

(declare-fun tb!2311 () Bool)

(assert (=> (and b!9556 (= (y!590 thiss!852) (x!5400 that!244)) t!2651) tb!2311))

(declare-fun result!2351 () Bool)

(assert (=> tb!2311 (= result!2351 true)))

(assert (=> b!9554 t!2651))

(declare-fun b_and!4311 () Bool)

(assert (= b_and!4303 (and (=> t!2651 result!2351) b_and!4311)))

(declare-fun b_lambda!5135 () Bool)

(assert (=> (not b_lambda!5135) (not b!9558)))

(declare-fun t!2653 () Bool)

(declare-fun tb!2313 () Bool)

(assert (=> (and b!9556 (= (evidence!159 thiss!852) (evidence!159 thiss!852)) t!2653) tb!2313))

(declare-fun result!2353 () Bool)

(assert (=> tb!2313 (= result!2353 true)))

(assert (=> b!9558 t!2653))

(declare-fun b_and!4313 () Bool)

(assert (= b_and!4295 (and (=> t!2653 result!2353) b_and!4313)))

(declare-fun m!12705 () Bool)

(assert (=> b!9553 m!12705))

(declare-fun m!12707 () Bool)

(assert (=> b!9553 m!12707))

(assert (=> b!9553 m!12707))

(declare-fun m!12709 () Bool)

(assert (=> b!9553 m!12709))

(declare-fun m!12711 () Bool)

(assert (=> b!9554 m!12711))

(declare-fun m!12713 () Bool)

(assert (=> b!9554 m!12713))

(declare-fun m!12715 () Bool)

(assert (=> start!1912 m!12715))

(declare-fun m!12717 () Bool)

(assert (=> start!1912 m!12717))

(declare-fun m!12719 () Bool)

(assert (=> b!9558 m!12719))

(push 1)

(assert (not b_lambda!5133))

(assert (not b_next!2929))

(assert b_and!4309)

(assert b_and!4311)

(assert (not b!9553))

(assert (not b!9557))

(assert b_and!4313)

(assert b_and!4307)

(assert (not b_lambda!5135))

(assert (not b_next!2927))

(assert (not b_next!2933))

(assert (not b_lambda!5131))

(assert (not start!1912))

(assert (not b_next!2909))

(assert b_and!4305)

(assert (not b_next!2935))

(assert b_and!4289)

(assert (not b_next!2931))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2929))

(assert b_and!4309)

(assert b_and!4311)

(assert b_and!4313)

(assert b_and!4307)

(assert (not b_next!2927))

(assert (not b_next!2933))

(assert (not b_next!2909))

(assert b_and!4305)

(assert (not b_next!2935))

(assert b_and!4289)

(assert (not b_next!2931))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5137 () Bool)

(assert (= b_lambda!5135 (or (and b!9557 (= lambda!2422 (evidence!159 thiss!852))) (and b!9556 b_free!1187) b_lambda!5137)))

(declare-fun bs!2589 () Bool)

(declare-fun d!7881 () Bool)

(assert (= bs!2589 (and d!7881 b!9557)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2589 (= (dynLambda!308 lambda!2422) trivial!1)))

(assert (=> (and b!9557 (= lambda!2422 (evidence!159 thiss!852)) b!9558) d!7881))

(declare-fun b_lambda!5139 () Bool)

(assert (= b_lambda!5131 (or (and b!9557 (= lambda!2420 (y!590 thiss!852))) (and b!9556 b_free!1183 (= (x!5401 thiss!852) (y!590 thiss!852))) (and b!9556 b_free!1185) (and b!9559 b_free!1179 (= (y!589 that!244) (y!590 thiss!852))) (and b!9557 (= lambda!2421 (y!590 thiss!852))) (and b!9559 b_free!1177 (= (x!5400 that!244) (y!590 thiss!852))) (and b!9552 (= lambda!2423 (y!590 thiss!852))) b_lambda!5139)))

(declare-fun bs!2590 () Bool)

(declare-fun d!7883 () Bool)

(assert (= bs!2590 (and d!7883 b!9557)))

(declare-fun append!98 (List!227 List!227) List!227)

(assert (=> bs!2590 (= (dynLambda!309 lambda!2421) (foldRight1!80 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) f!585))))

(declare-fun m!12721 () Bool)

(assert (=> bs!2590 m!12721))

(declare-fun m!12723 () Bool)

(assert (=> bs!2590 m!12723))

(assert (=> bs!2590 m!12721))

(assert (=> bs!2590 m!12723))

(declare-fun m!12725 () Bool)

(assert (=> bs!2590 m!12725))

(assert (=> bs!2590 m!12725))

(declare-fun m!12727 () Bool)

(assert (=> bs!2590 m!12727))

(assert (=> (and b!9557 (= lambda!2421 (y!590 thiss!852)) b!9554) d!7883))

(declare-fun bs!2591 () Bool)

(declare-fun d!7885 () Bool)

(assert (= bs!2591 (and d!7885 b!9552)))

(assert (=> bs!2591 (= (dynLambda!309 lambda!2423) (foldRight1!80 (toList!73 tree!25) f!585))))

(assert (=> bs!2591 m!12707))

(assert (=> bs!2591 m!12707))

(assert (=> bs!2591 m!12709))

(assert (=> (and b!9552 (= lambda!2423 (y!590 thiss!852)) b!9554) d!7885))

(declare-fun bs!2592 () Bool)

(declare-fun d!7887 () Bool)

(assert (= bs!2592 (and d!7887 b!9557)))

(assert (=> bs!2592 (= (dynLambda!309 lambda!2420) (fold!49 tree!25 f!585))))

(assert (=> bs!2592 m!12705))

(assert (=> (and b!9557 (= lambda!2420 (y!590 thiss!852)) b!9554) d!7887))

(declare-fun b_lambda!5141 () Bool)

(assert (= b_lambda!5133 (or (and b!9559 b_free!1179 (= (y!589 that!244) (x!5400 that!244))) (and b!9557 (= lambda!2421 (x!5400 that!244))) (and b!9552 (= lambda!2423 (x!5400 that!244))) (and b!9557 (= lambda!2420 (x!5400 that!244))) (and b!9556 b_free!1183 (= (x!5401 thiss!852) (x!5400 that!244))) (and b!9556 b_free!1185 (= (y!590 thiss!852) (x!5400 that!244))) (and b!9559 b_free!1177) b_lambda!5141)))

(declare-fun bs!2593 () Bool)

(declare-fun d!7889 () Bool)

(assert (= bs!2593 (and d!7889 b!9557)))

(assert (=> bs!2593 (= (dynLambda!309 lambda!2421) (foldRight1!80 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) f!585))))

(assert (=> bs!2593 m!12721))

(assert (=> bs!2593 m!12723))

(assert (=> bs!2593 m!12721))

(assert (=> bs!2593 m!12723))

(assert (=> bs!2593 m!12725))

(assert (=> bs!2593 m!12725))

(assert (=> bs!2593 m!12727))

(assert (=> (and b!9557 (= lambda!2421 (x!5400 that!244)) b!9554) d!7889))

(declare-fun bs!2594 () Bool)

(declare-fun d!7891 () Bool)

(assert (= bs!2594 (and d!7891 b!9557)))

(assert (=> bs!2594 (= (dynLambda!309 lambda!2420) (fold!49 tree!25 f!585))))

(assert (=> bs!2594 m!12705))

(assert (=> (and b!9557 (= lambda!2420 (x!5400 that!244)) b!9554) d!7891))

(declare-fun bs!2595 () Bool)

(declare-fun d!7893 () Bool)

(assert (= bs!2595 (and d!7893 b!9552)))

(assert (=> bs!2595 (= (dynLambda!309 lambda!2423) (foldRight1!80 (toList!73 tree!25) f!585))))

(assert (=> bs!2595 m!12707))

(assert (=> bs!2595 m!12707))

(assert (=> bs!2595 m!12709))

(assert (=> (and b!9552 (= lambda!2423 (x!5400 that!244)) b!9554) d!7893))

(push 1)

(assert (not b_next!2929))

(assert b_and!4309)

(assert (not b_lambda!5137))

(assert b_and!4311)

(assert (not b!9553))

(assert (not bs!2592))

(assert (not bs!2593))

(assert (not b!9557))

(assert b_and!4313)

(assert b_and!4307)

(assert (not b_next!2927))

(assert (not b_lambda!5139))

(assert (not bs!2590))

(assert (not b_next!2933))

(assert (not bs!2594))

(assert (not start!1912))

(assert (not b_next!2909))

(assert (not b_lambda!5141))

(assert b_and!4305)

(assert (not b_next!2935))

(assert b_and!4289)

(assert (not bs!2595))

(assert (not b_next!2931))

(assert (not bs!2591))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2929))

(assert b_and!4309)

(assert b_and!4311)

(assert b_and!4313)

(assert b_and!4307)

(assert (not b_next!2927))

(assert (not b_next!2933))

(assert (not b_next!2909))

(assert b_and!4305)

(assert (not b_next!2935))

(assert b_and!4289)

(assert (not b_next!2931))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2596 () Bool)

(declare-fun b!9569 () Bool)

(assert (= bs!2596 (and b!9569 b!9557)))

(declare-fun lambda!2428 () Int)

(assert (=> bs!2596 (= (= (left!453 tree!25) tree!25) (= lambda!2428 lambda!2420))))

(assert (=> bs!2596 (not (= lambda!2428 lambda!2421))))

(declare-fun bs!2597 () Bool)

(assert (= bs!2597 (and b!9569 b!9552)))

(assert (=> bs!2597 (not (= lambda!2428 lambda!2423))))

(assert (=> b!9569 true))

(assert (=> b!9569 (< (dynLambda!306 order!149 f!585) (dynLambda!307 order!151 lambda!2428))))

(assert (=> b!9569 true))

(declare-fun b_next!2937 () Bool)

(assert (=> b!9559 (= b_next!2929 (or (and b!9569 (= lambda!2428 (x!5400 that!244))) b_next!2937))))

(declare-fun b_next!2939 () Bool)

(assert (=> b!9559 (= b_next!2931 (or (and b!9569 (= lambda!2428 (y!589 that!244))) b_next!2939))))

(declare-fun b_next!2941 () Bool)

(assert (=> b!9556 (= b_next!2933 (or (and b!9569 (= lambda!2428 (x!5401 thiss!852))) b_next!2941))))

(declare-fun b_next!2943 () Bool)

(assert (=> b!9556 (= b_next!2935 (or (and b!9569 (= lambda!2428 (y!590 thiss!852))) b_next!2943))))

(declare-fun lambda!2429 () Int)

(assert (=> bs!2596 (= (= (right!456 tree!25) tree!25) (= lambda!2429 lambda!2420))))

(assert (=> bs!2596 (not (= lambda!2429 lambda!2421))))

(assert (=> bs!2597 (not (= lambda!2429 lambda!2423))))

(assert (=> b!9569 (= (= (right!456 tree!25) (left!453 tree!25)) (= lambda!2429 lambda!2428))))

(assert (=> b!9569 true))

(assert (=> b!9569 (< (dynLambda!306 order!149 f!585) (dynLambda!307 order!151 lambda!2429))))

(assert (=> b!9569 true))

(declare-fun b_next!2945 () Bool)

(assert (=> b!9559 (= b_next!2937 (or (and b!9569 (= lambda!2429 (x!5400 that!244))) b_next!2945))))

(declare-fun b_next!2947 () Bool)

(assert (=> b!9559 (= b_next!2939 (or (and b!9569 (= lambda!2429 (y!589 that!244))) b_next!2947))))

(declare-fun b_next!2949 () Bool)

(assert (=> b!9556 (= b_next!2941 (or (and b!9569 (= lambda!2429 (x!5401 thiss!852))) b_next!2949))))

(declare-fun b_next!2951 () Bool)

(assert (=> b!9556 (= b_next!2943 (or (and b!9569 (= lambda!2429 (y!590 thiss!852))) b_next!2951))))

(declare-fun e!5689 () Balance!221)

(declare-datatypes () ((tuple2!88 (tuple2!89 (_1!44 Balance!221) (_2!44 Balance!221)))))

(declare-fun lt!1657 () tuple2!88)

(declare-fun dynLambda!310 (Int Balance!221 Balance!221) Balance!221)

(assert (=> b!9569 (= e!5689 (dynLambda!310 f!585 (_1!44 lt!1657) (_2!44 lt!1657)))))

(assert (=> b!9569 (= lt!1657 (tuple2!89 (dynLambda!309 lambda!2428) (dynLambda!309 lambda!2429)))))

(declare-fun d!7895 () Bool)

(declare-fun c!3071 () Bool)

(assert (=> d!7895 (= c!3071 (is-Leaf!146 tree!25))))

(assert (=> d!7895 (= (fold!49 tree!25 f!585) e!5689)))

(declare-fun b!9568 () Bool)

(assert (=> b!9568 (= e!5689 (value!1315 tree!25))))

(assert (= (and d!7895 c!3071) b!9568))

(assert (= (and d!7895 (not c!3071)) b!9569))

(declare-fun b_lambda!5143 () Bool)

(assert (=> (not b_lambda!5143) (not b!9569)))

(declare-fun t!2655 () Bool)

(declare-fun tb!2315 () Bool)

(assert (=> (and start!1912 (= f!585 f!585) t!2655) tb!2315))

(declare-fun result!2355 () Bool)

(assert (=> tb!2315 (= result!2355 true)))

(assert (=> b!9569 t!2655))

(declare-fun b_and!4315 () Bool)

(assert (= b_and!4289 (and (=> t!2655 result!2355) b_and!4315)))

(declare-fun b_lambda!5145 () Bool)

(assert (=> (not b_lambda!5145) (not b!9569)))

(declare-fun b_lambda!5147 () Bool)

(assert (=> (not b_lambda!5147) (not b!9569)))

(declare-fun m!12729 () Bool)

(assert (=> b!9569 m!12729))

(declare-fun m!12731 () Bool)

(assert (=> b!9569 m!12731))

(declare-fun m!12733 () Bool)

(assert (=> b!9569 m!12733))

(assert (=> bs!2592 d!7895))

(declare-fun d!7897 () Bool)

(declare-fun c!3074 () Bool)

(assert (=> d!7897 (= c!3074 (and (is-Cons!224 (toList!73 tree!25)) (is-Nil!225 (tail!454 (toList!73 tree!25)))))))

(declare-fun e!5692 () Balance!221)

(assert (=> d!7897 (= (foldRight1!80 (toList!73 tree!25) f!585) e!5692)))

(declare-fun b!9574 () Bool)

(assert (=> b!9574 (= e!5692 (head!442 (toList!73 tree!25)))))

(declare-fun b!9575 () Bool)

(assert (=> b!9575 (= e!5692 (dynLambda!310 f!585 (head!442 (toList!73 tree!25)) (foldRight1!80 (tail!454 (toList!73 tree!25)) f!585)))))

(assert (= (and d!7897 c!3074) b!9574))

(assert (= (and d!7897 (not c!3074)) b!9575))

(declare-fun b_lambda!5149 () Bool)

(assert (=> (not b_lambda!5149) (not b!9575)))

(declare-fun t!2657 () Bool)

(declare-fun tb!2317 () Bool)

(assert (=> (and start!1912 (= f!585 f!585) t!2657) tb!2317))

(declare-fun result!2357 () Bool)

(assert (=> tb!2317 (= result!2357 true)))

(assert (=> b!9575 t!2657))

(declare-fun b_and!4317 () Bool)

(assert (= b_and!4315 (and (=> t!2657 result!2357) b_and!4317)))

(declare-fun m!12735 () Bool)

(assert (=> b!9575 m!12735))

(assert (=> b!9575 m!12735))

(declare-fun m!12737 () Bool)

(assert (=> b!9575 m!12737))

(assert (=> bs!2591 d!7897))

(declare-fun d!7899 () Bool)

(declare-fun lt!1660 () List!227)

(declare-fun isEmpty!177 (List!227) Bool)

(assert (=> d!7899 (not (isEmpty!177 lt!1660))))

(declare-fun e!5695 () List!227)

(assert (=> d!7899 (= lt!1660 e!5695)))

(declare-fun c!3077 () Bool)

(assert (=> d!7899 (= c!3077 (is-Leaf!146 tree!25))))

(assert (=> d!7899 (= (toList!73 tree!25) lt!1660)))

(declare-fun b!9580 () Bool)

(assert (=> b!9580 (= e!5695 (Cons!224 (value!1315 tree!25) Nil!225))))

(declare-fun b!9581 () Bool)

(assert (=> b!9581 (= e!5695 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))))))

(assert (= (and d!7899 c!3077) b!9580))

(assert (= (and d!7899 (not c!3077)) b!9581))

(declare-fun m!12739 () Bool)

(assert (=> d!7899 m!12739))

(assert (=> b!9581 m!12721))

(assert (=> b!9581 m!12723))

(assert (=> b!9581 m!12721))

(assert (=> b!9581 m!12723))

(assert (=> b!9581 m!12725))

(assert (=> bs!2591 d!7899))

(assert (=> bs!2595 d!7897))

(assert (=> bs!2595 d!7899))

(declare-fun d!7901 () Bool)

(assert (=> d!7901 (= trivial!1 true)))

(assert (=> b!9557 d!7901))

(assert (=> bs!2594 d!7895))

(declare-fun d!7903 () Bool)

(declare-fun c!3078 () Bool)

(assert (=> d!7903 (= c!3078 (and (is-Cons!224 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) (is-Nil!225 (tail!454 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))))))))

(declare-fun e!5696 () Balance!221)

(assert (=> d!7903 (= (foldRight1!80 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) f!585) e!5696)))

(declare-fun b!9582 () Bool)

(assert (=> b!9582 (= e!5696 (head!442 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))))))

(declare-fun b!9583 () Bool)

(assert (=> b!9583 (= e!5696 (dynLambda!310 f!585 (head!442 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) (foldRight1!80 (tail!454 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) f!585)))))

(assert (= (and d!7903 c!3078) b!9582))

(assert (= (and d!7903 (not c!3078)) b!9583))

(declare-fun b_lambda!5151 () Bool)

(assert (=> (not b_lambda!5151) (not b!9583)))

(declare-fun t!2659 () Bool)

(declare-fun tb!2319 () Bool)

(assert (=> (and start!1912 (= f!585 f!585) t!2659) tb!2319))

(declare-fun result!2359 () Bool)

(assert (=> tb!2319 (= result!2359 true)))

(assert (=> b!9583 t!2659))

(declare-fun b_and!4319 () Bool)

(assert (= b_and!4317 (and (=> t!2659 result!2359) b_and!4319)))

(declare-fun m!12741 () Bool)

(assert (=> b!9583 m!12741))

(assert (=> b!9583 m!12741))

(declare-fun m!12743 () Bool)

(assert (=> b!9583 m!12743))

(assert (=> bs!2590 d!7903))

(declare-fun d!7905 () Bool)

(declare-fun c!3081 () Bool)

(assert (=> d!7905 (= c!3081 (is-Nil!225 (toList!73 (left!453 tree!25))))))

(declare-fun e!5699 () List!227)

(assert (=> d!7905 (= (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) e!5699)))

(declare-fun b!9588 () Bool)

(assert (=> b!9588 (= e!5699 (toList!73 (right!456 tree!25)))))

(declare-fun b!9589 () Bool)

(assert (=> b!9589 (= e!5699 (Cons!224 (head!442 (toList!73 (left!453 tree!25))) (append!98 (tail!454 (toList!73 (left!453 tree!25))) (toList!73 (right!456 tree!25)))))))

(assert (= (and d!7905 c!3081) b!9588))

(assert (= (and d!7905 (not c!3081)) b!9589))

(assert (=> b!9589 m!12723))

(declare-fun m!12745 () Bool)

(assert (=> b!9589 m!12745))

(assert (=> bs!2590 d!7905))

(declare-fun d!7907 () Bool)

(declare-fun lt!1661 () List!227)

(assert (=> d!7907 (not (isEmpty!177 lt!1661))))

(declare-fun e!5700 () List!227)

(assert (=> d!7907 (= lt!1661 e!5700)))

(declare-fun c!3082 () Bool)

(assert (=> d!7907 (= c!3082 (is-Leaf!146 (left!453 tree!25)))))

(assert (=> d!7907 (= (toList!73 (left!453 tree!25)) lt!1661)))

(declare-fun b!9590 () Bool)

(assert (=> b!9590 (= e!5700 (Cons!224 (value!1315 (left!453 tree!25)) Nil!225))))

(declare-fun b!9591 () Bool)

(assert (=> b!9591 (= e!5700 (append!98 (toList!73 (left!453 (left!453 tree!25))) (toList!73 (right!456 (left!453 tree!25)))))))

(assert (= (and d!7907 c!3082) b!9590))

(assert (= (and d!7907 (not c!3082)) b!9591))

(declare-fun m!12747 () Bool)

(assert (=> d!7907 m!12747))

(declare-fun m!12749 () Bool)

(assert (=> b!9591 m!12749))

(declare-fun m!12751 () Bool)

(assert (=> b!9591 m!12751))

(assert (=> b!9591 m!12749))

(assert (=> b!9591 m!12751))

(declare-fun m!12753 () Bool)

(assert (=> b!9591 m!12753))

(assert (=> bs!2590 d!7907))

(declare-fun d!7909 () Bool)

(declare-fun lt!1662 () List!227)

(assert (=> d!7909 (not (isEmpty!177 lt!1662))))

(declare-fun e!5701 () List!227)

(assert (=> d!7909 (= lt!1662 e!5701)))

(declare-fun c!3083 () Bool)

(assert (=> d!7909 (= c!3083 (is-Leaf!146 (right!456 tree!25)))))

(assert (=> d!7909 (= (toList!73 (right!456 tree!25)) lt!1662)))

(declare-fun b!9592 () Bool)

(assert (=> b!9592 (= e!5701 (Cons!224 (value!1315 (right!456 tree!25)) Nil!225))))

(declare-fun b!9593 () Bool)

(assert (=> b!9593 (= e!5701 (append!98 (toList!73 (left!453 (right!456 tree!25))) (toList!73 (right!456 (right!456 tree!25)))))))

(assert (= (and d!7909 c!3083) b!9592))

(assert (= (and d!7909 (not c!3083)) b!9593))

(declare-fun m!12755 () Bool)

(assert (=> d!7909 m!12755))

(declare-fun m!12757 () Bool)

(assert (=> b!9593 m!12757))

(declare-fun m!12759 () Bool)

(assert (=> b!9593 m!12759))

(assert (=> b!9593 m!12757))

(assert (=> b!9593 m!12759))

(declare-fun m!12761 () Bool)

(assert (=> b!9593 m!12761))

(assert (=> bs!2590 d!7909))

(declare-fun d!7911 () Bool)

(assert (=> d!7911 (= (inv!338 that!244) (= (dynLambda!309 (x!5400 that!244)) (dynLambda!309 (y!589 that!244))))))

(declare-fun b_lambda!5153 () Bool)

(assert (=> (not b_lambda!5153) (not d!7911)))

(assert (=> d!7911 t!2645))

(declare-fun b_and!4321 () Bool)

(assert (= b_and!4305 (and (=> t!2645 result!2345) b_and!4321)))

(assert (=> d!7911 t!2647))

(declare-fun b_and!4323 () Bool)

(assert (= b_and!4307 (and (=> t!2647 result!2347) b_and!4323)))

(assert (=> d!7911 t!2649))

(declare-fun b_and!4325 () Bool)

(assert (= b_and!4309 (and (=> t!2649 result!2349) b_and!4325)))

(assert (=> d!7911 t!2651))

(declare-fun b_and!4327 () Bool)

(assert (= b_and!4311 (and (=> t!2651 result!2351) b_and!4327)))

(declare-fun b_lambda!5155 () Bool)

(assert (=> (not b_lambda!5155) (not d!7911)))

(declare-fun t!2661 () Bool)

(declare-fun tb!2321 () Bool)

(assert (=> (and b!9559 (= (x!5400 that!244) (y!589 that!244)) t!2661) tb!2321))

(declare-fun result!2361 () Bool)

(assert (=> tb!2321 (= result!2361 true)))

(assert (=> d!7911 t!2661))

(declare-fun b_and!4329 () Bool)

(assert (= b_and!4321 (and (=> t!2661 result!2361) b_and!4329)))

(declare-fun t!2663 () Bool)

(declare-fun tb!2323 () Bool)

(assert (=> (and b!9559 (= (y!589 that!244) (y!589 that!244)) t!2663) tb!2323))

(declare-fun result!2363 () Bool)

(assert (=> tb!2323 (= result!2363 true)))

(assert (=> d!7911 t!2663))

(declare-fun b_and!4331 () Bool)

(assert (= b_and!4323 (and (=> t!2663 result!2363) b_and!4331)))

(declare-fun t!2665 () Bool)

(declare-fun tb!2325 () Bool)

(assert (=> (and b!9556 (= (x!5401 thiss!852) (y!589 that!244)) t!2665) tb!2325))

(declare-fun result!2365 () Bool)

(assert (=> tb!2325 (= result!2365 true)))

(assert (=> d!7911 t!2665))

(declare-fun b_and!4333 () Bool)

(assert (= b_and!4325 (and (=> t!2665 result!2365) b_and!4333)))

(declare-fun t!2667 () Bool)

(declare-fun tb!2327 () Bool)

(assert (=> (and b!9556 (= (y!590 thiss!852) (y!589 that!244)) t!2667) tb!2327))

(declare-fun result!2367 () Bool)

(assert (=> tb!2327 (= result!2367 true)))

(assert (=> d!7911 t!2667))

(declare-fun b_and!4335 () Bool)

(assert (= b_and!4327 (and (=> t!2667 result!2367) b_and!4335)))

(assert (=> d!7911 m!12713))

(declare-fun m!12763 () Bool)

(assert (=> d!7911 m!12763))

(assert (=> start!1912 d!7911))

(declare-fun d!7913 () Bool)

(declare-fun res!3145 () Bool)

(declare-fun e!5704 () Bool)

(assert (=> d!7913 (=> (not res!3145) (not e!5704))))

(assert (=> d!7913 (= res!3145 (= (dynLambda!309 (x!5401 thiss!852)) (dynLambda!309 (y!590 thiss!852))))))

(assert (=> d!7913 (= (inv!339 thiss!852) e!5704)))

(declare-fun b!9596 () Bool)

(assert (=> b!9596 (= e!5704 (dynLambda!308 (evidence!159 thiss!852)))))

(assert (= (and d!7913 res!3145) b!9596))

(declare-fun b_lambda!5157 () Bool)

(assert (=> (not b_lambda!5157) (not d!7913)))

(declare-fun tb!2329 () Bool)

(declare-fun t!2669 () Bool)

(assert (=> (and b!9559 (= (x!5400 that!244) (x!5401 thiss!852)) t!2669) tb!2329))

(declare-fun result!2369 () Bool)

(assert (=> tb!2329 (= result!2369 true)))

(assert (=> d!7913 t!2669))

(declare-fun b_and!4337 () Bool)

(assert (= b_and!4329 (and (=> t!2669 result!2369) b_and!4337)))

(declare-fun tb!2331 () Bool)

(declare-fun t!2671 () Bool)

(assert (=> (and b!9559 (= (y!589 that!244) (x!5401 thiss!852)) t!2671) tb!2331))

(declare-fun result!2371 () Bool)

(assert (=> tb!2331 (= result!2371 true)))

(assert (=> d!7913 t!2671))

(declare-fun b_and!4339 () Bool)

(assert (= b_and!4331 (and (=> t!2671 result!2371) b_and!4339)))

(declare-fun t!2673 () Bool)

(declare-fun tb!2333 () Bool)

(assert (=> (and b!9556 (= (x!5401 thiss!852) (x!5401 thiss!852)) t!2673) tb!2333))

(declare-fun result!2373 () Bool)

(assert (=> tb!2333 (= result!2373 true)))

(assert (=> d!7913 t!2673))

(declare-fun b_and!4341 () Bool)

(assert (= b_and!4333 (and (=> t!2673 result!2373) b_and!4341)))

(declare-fun t!2675 () Bool)

(declare-fun tb!2335 () Bool)

(assert (=> (and b!9556 (= (y!590 thiss!852) (x!5401 thiss!852)) t!2675) tb!2335))

(declare-fun result!2375 () Bool)

(assert (=> tb!2335 (= result!2375 true)))

(assert (=> d!7913 t!2675))

(declare-fun b_and!4343 () Bool)

(assert (= b_and!4335 (and (=> t!2675 result!2375) b_and!4343)))

(declare-fun b_lambda!5159 () Bool)

(assert (=> (not b_lambda!5159) (not d!7913)))

(assert (=> d!7913 t!2637))

(declare-fun b_and!4345 () Bool)

(assert (= b_and!4337 (and (=> t!2637 result!2337) b_and!4345)))

(assert (=> d!7913 t!2639))

(declare-fun b_and!4347 () Bool)

(assert (= b_and!4339 (and (=> t!2639 result!2339) b_and!4347)))

(assert (=> d!7913 t!2641))

(declare-fun b_and!4349 () Bool)

(assert (= b_and!4341 (and (=> t!2641 result!2341) b_and!4349)))

(assert (=> d!7913 t!2643))

(declare-fun b_and!4351 () Bool)

(assert (= b_and!4343 (and (=> t!2643 result!2343) b_and!4351)))

(declare-fun b_lambda!5161 () Bool)

(assert (=> (not b_lambda!5161) (not b!9596)))

(assert (=> b!9596 t!2653))

(declare-fun b_and!4353 () Bool)

(assert (= b_and!4313 (and (=> t!2653 result!2353) b_and!4353)))

(declare-fun m!12765 () Bool)

(assert (=> d!7913 m!12765))

(assert (=> d!7913 m!12711))

(assert (=> b!9596 m!12719))

(assert (=> start!1912 d!7913))

(assert (=> b!9553 d!7895))

(assert (=> b!9553 d!7897))

(assert (=> b!9553 d!7899))

(assert (=> bs!2593 d!7903))

(assert (=> bs!2593 d!7905))

(assert (=> bs!2593 d!7907))

(assert (=> bs!2593 d!7909))

(declare-fun b_lambda!5163 () Bool)

(assert (= b_lambda!5155 (or (and b!9569 (= lambda!2429 (y!589 that!244))) (and b!9559 b_free!1179) (and b!9557 (= lambda!2420 (y!589 that!244))) (and b!9559 b_free!1177 (= (x!5400 that!244) (y!589 that!244))) (and b!9556 b_free!1183 (= (x!5401 thiss!852) (y!589 that!244))) (and b!9556 b_free!1185 (= (y!590 thiss!852) (y!589 that!244))) (and b!9552 (= lambda!2423 (y!589 that!244))) (and b!9569 (= lambda!2428 (y!589 that!244))) (and b!9557 (= lambda!2421 (y!589 that!244))) b_lambda!5163)))

(declare-fun bs!2598 () Bool)

(declare-fun d!7915 () Bool)

(assert (= bs!2598 (and d!7915 b!9569)))

(assert (=> bs!2598 (= (dynLambda!309 lambda!2429) (fold!49 (right!456 tree!25) f!585))))

(declare-fun m!12767 () Bool)

(assert (=> bs!2598 m!12767))

(assert (=> (and b!9569 (= lambda!2429 (y!589 that!244)) d!7911) d!7915))

(declare-fun bs!2599 () Bool)

(declare-fun d!7917 () Bool)

(assert (= bs!2599 (and d!7917 b!9569)))

(assert (=> bs!2599 (= (dynLambda!309 lambda!2428) (fold!49 (left!453 tree!25) f!585))))

(declare-fun m!12769 () Bool)

(assert (=> bs!2599 m!12769))

(assert (=> (and b!9569 (= lambda!2428 (y!589 that!244)) d!7911) d!7917))

(declare-fun bs!2600 () Bool)

(declare-fun d!7919 () Bool)

(assert (= bs!2600 (and d!7919 b!9557)))

(assert (=> bs!2600 (= (dynLambda!309 lambda!2421) (foldRight1!80 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) f!585))))

(assert (=> bs!2600 m!12721))

(assert (=> bs!2600 m!12723))

(assert (=> bs!2600 m!12721))

(assert (=> bs!2600 m!12723))

(assert (=> bs!2600 m!12725))

(assert (=> bs!2600 m!12725))

(assert (=> bs!2600 m!12727))

(assert (=> (and b!9557 (= lambda!2421 (y!589 that!244)) d!7911) d!7919))

(declare-fun bs!2601 () Bool)

(declare-fun d!7921 () Bool)

(assert (= bs!2601 (and d!7921 b!9557)))

(assert (=> bs!2601 (= (dynLambda!309 lambda!2420) (fold!49 tree!25 f!585))))

(assert (=> bs!2601 m!12705))

(assert (=> (and b!9557 (= lambda!2420 (y!589 that!244)) d!7911) d!7921))

(declare-fun bs!2602 () Bool)

(declare-fun d!7923 () Bool)

(assert (= bs!2602 (and d!7923 b!9552)))

(assert (=> bs!2602 (= (dynLambda!309 lambda!2423) (foldRight1!80 (toList!73 tree!25) f!585))))

(assert (=> bs!2602 m!12707))

(assert (=> bs!2602 m!12707))

(assert (=> bs!2602 m!12709))

(assert (=> (and b!9552 (= lambda!2423 (y!589 that!244)) d!7911) d!7923))

(declare-fun b_lambda!5165 () Bool)

(assert (= b_lambda!5161 (or (and b!9557 (= lambda!2422 (evidence!159 thiss!852))) (and b!9556 b_free!1187) b_lambda!5165)))

(assert (=> (and b!9557 (= lambda!2422 (evidence!159 thiss!852)) b!9596) d!7881))

(declare-fun b_lambda!5167 () Bool)

(assert (= b_lambda!5145 (or b!9569 b_lambda!5167)))

(declare-fun bs!2603 () Bool)

(declare-fun d!7925 () Bool)

(assert (= bs!2603 (and d!7925 b!9569)))

(assert (=> bs!2603 (= (dynLambda!309 lambda!2428) (fold!49 (left!453 tree!25) f!585))))

(assert (=> bs!2603 m!12769))

(assert (=> b!9569 d!7925))

(declare-fun b_lambda!5169 () Bool)

(assert (= b_lambda!5159 (or (and b!9557 (= lambda!2420 (y!590 thiss!852))) (and b!9556 b_free!1183 (= (x!5401 thiss!852) (y!590 thiss!852))) (and b!9556 b_free!1185) (and b!9569 (= lambda!2428 (y!590 thiss!852))) (and b!9559 b_free!1179 (= (y!589 that!244) (y!590 thiss!852))) (and b!9557 (= lambda!2421 (y!590 thiss!852))) (and b!9559 b_free!1177 (= (x!5400 that!244) (y!590 thiss!852))) (and b!9552 (= lambda!2423 (y!590 thiss!852))) (and b!9569 (= lambda!2429 (y!590 thiss!852))) b_lambda!5169)))

(declare-fun bs!2604 () Bool)

(declare-fun d!7927 () Bool)

(assert (= bs!2604 (and d!7927 b!9569)))

(assert (=> bs!2604 (= (dynLambda!309 lambda!2429) (fold!49 (right!456 tree!25) f!585))))

(assert (=> bs!2604 m!12767))

(assert (=> (and b!9569 (= lambda!2429 (y!590 thiss!852)) d!7913) d!7927))

(declare-fun bs!2605 () Bool)

(declare-fun d!7929 () Bool)

(assert (= bs!2605 (and d!7929 b!9569)))

(assert (=> bs!2605 (= (dynLambda!309 lambda!2428) (fold!49 (left!453 tree!25) f!585))))

(assert (=> bs!2605 m!12769))

(assert (=> (and b!9569 (= lambda!2428 (y!590 thiss!852)) d!7913) d!7929))

(assert (=> (and b!9557 (= lambda!2421 (y!590 thiss!852)) d!7913) d!7883))

(assert (=> (and b!9552 (= lambda!2423 (y!590 thiss!852)) d!7913) d!7885))

(assert (=> (and b!9557 (= lambda!2420 (y!590 thiss!852)) d!7913) d!7887))

(declare-fun b_lambda!5171 () Bool)

(assert (= b_lambda!5153 (or (and b!9569 (= lambda!2428 (x!5400 that!244))) (and b!9559 b_free!1179 (= (y!589 that!244) (x!5400 that!244))) (and b!9557 (= lambda!2421 (x!5400 that!244))) (and b!9552 (= lambda!2423 (x!5400 that!244))) (and b!9557 (= lambda!2420 (x!5400 that!244))) (and b!9569 (= lambda!2429 (x!5400 that!244))) (and b!9556 b_free!1183 (= (x!5401 thiss!852) (x!5400 that!244))) (and b!9556 b_free!1185 (= (y!590 thiss!852) (x!5400 that!244))) (and b!9559 b_free!1177) b_lambda!5171)))

(assert (=> (and b!9557 (= lambda!2421 (x!5400 that!244)) d!7911) d!7889))

(assert (=> (and b!9557 (= lambda!2420 (x!5400 that!244)) d!7911) d!7891))

(assert (=> (and b!9552 (= lambda!2423 (x!5400 that!244)) d!7911) d!7893))

(declare-fun bs!2606 () Bool)

(declare-fun d!7931 () Bool)

(assert (= bs!2606 (and d!7931 b!9569)))

(assert (=> bs!2606 (= (dynLambda!309 lambda!2429) (fold!49 (right!456 tree!25) f!585))))

(assert (=> bs!2606 m!12767))

(assert (=> (and b!9569 (= lambda!2429 (x!5400 that!244)) d!7911) d!7931))

(declare-fun bs!2607 () Bool)

(declare-fun d!7933 () Bool)

(assert (= bs!2607 (and d!7933 b!9569)))

(assert (=> bs!2607 (= (dynLambda!309 lambda!2428) (fold!49 (left!453 tree!25) f!585))))

(assert (=> bs!2607 m!12769))

(assert (=> (and b!9569 (= lambda!2428 (x!5400 that!244)) d!7911) d!7933))

(declare-fun b_lambda!5173 () Bool)

(assert (= b_lambda!5151 (or (and start!1912 (= lambda!2419 f!585)) (and start!1912 b_free!1181) b_lambda!5173)))

(declare-fun bs!2608 () Bool)

(declare-fun d!7935 () Bool)

(assert (= bs!2608 (and d!7935 start!1912)))

(declare-fun ++!3 (Balance!221 Balance!221) Balance!221)

(assert (=> bs!2608 (= (dynLambda!310 lambda!2419 (head!442 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) (foldRight1!80 (tail!454 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) f!585)) (++!3 (head!442 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) (foldRight1!80 (tail!454 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25)))) f!585)))))

(assert (=> bs!2608 m!12741))

(declare-fun m!12771 () Bool)

(assert (=> bs!2608 m!12771))

(assert (=> (and start!1912 (= lambda!2419 f!585) b!9583) d!7935))

(declare-fun b_lambda!5175 () Bool)

(assert (= b_lambda!5143 (or (and start!1912 (= lambda!2419 f!585)) (and start!1912 b_free!1181) b_lambda!5175)))

(declare-fun bs!2609 () Bool)

(declare-fun d!7937 () Bool)

(assert (= bs!2609 (and d!7937 start!1912)))

(assert (=> bs!2609 (= (dynLambda!310 lambda!2419 (_1!44 lt!1657) (_2!44 lt!1657)) (++!3 (_1!44 lt!1657) (_2!44 lt!1657)))))

(declare-fun m!12773 () Bool)

(assert (=> bs!2609 m!12773))

(assert (=> (and start!1912 (= lambda!2419 f!585) b!9569) d!7937))

(declare-fun b_lambda!5177 () Bool)

(assert (= b_lambda!5157 (or (and b!9559 b_free!1179 (= (y!589 that!244) (x!5401 thiss!852))) (and b!9559 b_free!1177 (= (x!5400 that!244) (x!5401 thiss!852))) (and b!9556 b_free!1183) (and b!9569 (= lambda!2428 (x!5401 thiss!852))) (and b!9552 (= lambda!2423 (x!5401 thiss!852))) (and b!9569 (= lambda!2429 (x!5401 thiss!852))) (and b!9556 b_free!1185 (= (y!590 thiss!852) (x!5401 thiss!852))) (and b!9557 (= lambda!2420 (x!5401 thiss!852))) (and b!9557 (= lambda!2421 (x!5401 thiss!852))) b_lambda!5177)))

(declare-fun bs!2610 () Bool)

(declare-fun d!7939 () Bool)

(assert (= bs!2610 (and d!7939 b!9552)))

(assert (=> bs!2610 (= (dynLambda!309 lambda!2423) (foldRight1!80 (toList!73 tree!25) f!585))))

(assert (=> bs!2610 m!12707))

(assert (=> bs!2610 m!12707))

(assert (=> bs!2610 m!12709))

(assert (=> (and b!9552 (= lambda!2423 (x!5401 thiss!852)) d!7913) d!7939))

(declare-fun bs!2611 () Bool)

(declare-fun d!7941 () Bool)

(assert (= bs!2611 (and d!7941 b!9569)))

(assert (=> bs!2611 (= (dynLambda!309 lambda!2429) (fold!49 (right!456 tree!25) f!585))))

(assert (=> bs!2611 m!12767))

(assert (=> (and b!9569 (= lambda!2429 (x!5401 thiss!852)) d!7913) d!7941))

(declare-fun bs!2612 () Bool)

(declare-fun d!7943 () Bool)

(assert (= bs!2612 (and d!7943 b!9569)))

(assert (=> bs!2612 (= (dynLambda!309 lambda!2428) (fold!49 (left!453 tree!25) f!585))))

(assert (=> bs!2612 m!12769))

(assert (=> (and b!9569 (= lambda!2428 (x!5401 thiss!852)) d!7913) d!7943))

(declare-fun bs!2613 () Bool)

(declare-fun d!7945 () Bool)

(assert (= bs!2613 (and d!7945 b!9557)))

(assert (=> bs!2613 (= (dynLambda!309 lambda!2420) (fold!49 tree!25 f!585))))

(assert (=> bs!2613 m!12705))

(assert (=> (and b!9557 (= lambda!2420 (x!5401 thiss!852)) d!7913) d!7945))

(declare-fun bs!2614 () Bool)

(declare-fun d!7947 () Bool)

(assert (= bs!2614 (and d!7947 b!9557)))

(assert (=> bs!2614 (= (dynLambda!309 lambda!2421) (foldRight1!80 (append!98 (toList!73 (left!453 tree!25)) (toList!73 (right!456 tree!25))) f!585))))

(assert (=> bs!2614 m!12721))

(assert (=> bs!2614 m!12723))

(assert (=> bs!2614 m!12721))

(assert (=> bs!2614 m!12723))

(assert (=> bs!2614 m!12725))

(assert (=> bs!2614 m!12725))

(assert (=> bs!2614 m!12727))

(assert (=> (and b!9557 (= lambda!2421 (x!5401 thiss!852)) d!7913) d!7947))

(declare-fun b_lambda!5179 () Bool)

(assert (= b_lambda!5149 (or (and start!1912 (= lambda!2419 f!585)) (and start!1912 b_free!1181) b_lambda!5179)))

(declare-fun bs!2615 () Bool)

(declare-fun d!7949 () Bool)

(assert (= bs!2615 (and d!7949 start!1912)))

(assert (=> bs!2615 (= (dynLambda!310 lambda!2419 (head!442 (toList!73 tree!25)) (foldRight1!80 (tail!454 (toList!73 tree!25)) f!585)) (++!3 (head!442 (toList!73 tree!25)) (foldRight1!80 (tail!454 (toList!73 tree!25)) f!585)))))

(assert (=> bs!2615 m!12735))

(declare-fun m!12775 () Bool)

(assert (=> bs!2615 m!12775))

(assert (=> (and start!1912 (= lambda!2419 f!585) b!9575) d!7949))

(declare-fun b_lambda!5181 () Bool)

(assert (= b_lambda!5147 (or b!9569 b_lambda!5181)))

(declare-fun bs!2616 () Bool)

(declare-fun d!7951 () Bool)

(assert (= bs!2616 (and d!7951 b!9569)))

(assert (=> bs!2616 (= (dynLambda!309 lambda!2429) (fold!49 (right!456 tree!25) f!585))))

(assert (=> bs!2616 m!12767))

(assert (=> b!9569 d!7951))

(push 1)

(assert (not b_lambda!5175))

(assert (not bs!2615))

(assert (not b_lambda!5137))

(assert b_and!4319)

(assert (not bs!2612))

(assert (not bs!2611))

(assert (not b!9575))

(assert (not b_lambda!5167))

(assert (not bs!2606))

(assert (not b!9589))

(assert (not b_next!2927))

(assert (not d!7907))

(assert (not bs!2605))

(assert (not bs!2598))

(assert (not b_lambda!5139))

(assert (not b_next!2951))

(assert (not b_next!2949))

(assert (not bs!2608))

(assert (not b_next!2945))

(assert b_and!4347)

(assert (not bs!2613))

(assert b_and!4353)

(assert (not b_lambda!5171))

(assert (not b!9581))

(assert (not b_lambda!5181))

(assert (not b!9593))

(assert (not d!7909))

(assert (not b_lambda!5165))

(assert (not bs!2614))

(assert (not b_lambda!5169))

(assert (not b_lambda!5179))

(assert (not bs!2602))

(assert (not b_next!2947))

(assert (not b!9583))

(assert (not bs!2600))

(assert (not b!9591))

(assert (not bs!2604))

(assert (not b_lambda!5173))

(assert (not bs!2607))

(assert b_and!4345)

(assert (not b_next!2909))

(assert (not bs!2599))

(assert (not b_lambda!5141))

(assert b_and!4349)

(assert (not bs!2603))

(assert (not b_lambda!5163))

(assert b_and!4351)

(assert (not bs!2601))

(assert (not bs!2609))

(assert (not bs!2610))

(assert (not b_lambda!5177))

(assert (not d!7899))

(assert (not bs!2616))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4319)

(assert (not b_next!2927))

(assert (not b_next!2951))

(assert (not b_next!2949))

(assert (not b_next!2945))

(assert b_and!4347)

(assert b_and!4353)

(assert (not b_next!2947))

(assert b_and!4345)

(assert (not b_next!2909))

(assert b_and!4349)

(assert b_and!4351)

(check-sat)

(pop 1)

