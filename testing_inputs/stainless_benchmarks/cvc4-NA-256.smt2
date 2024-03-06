; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1960 () Bool)

(assert start!1960)

(declare-fun b_free!1203 () Bool)

(declare-fun b_next!2989 () Bool)

(assert (=> start!1960 (= b_free!1203 (not b_next!2989))))

(declare-fun tp!1932 () Bool)

(declare-fun b_and!4375 () Bool)

(assert (=> start!1960 (= tp!1932 b_and!4375)))

(declare-fun b!9742 () Bool)

(declare-fun b_free!1205 () Bool)

(declare-fun b_next!2991 () Bool)

(assert (=> b!9742 (= b_free!1205 (not b_next!2991))))

(declare-fun tp!1933 () Bool)

(declare-fun b_and!4377 () Bool)

(assert (=> b!9742 (= tp!1933 b_and!4377)))

(declare-fun b_free!1207 () Bool)

(declare-fun b_next!2993 () Bool)

(assert (=> b!9742 (= b_free!1207 (not b_next!2993))))

(declare-fun tp!1931 () Bool)

(declare-fun b_and!4379 () Bool)

(assert (=> b!9742 (= tp!1931 b_and!4379)))

(declare-fun b!9746 () Bool)

(declare-fun m!12921 () Bool)

(assert (=> b!9746 m!12921))

(assert (=> b!9746 true))

(declare-fun lambda!2499 () Int)

(declare-datatypes () ((EqProof!88 (EqProof!89 (x!5497 Int) (y!597 Int)))))

(declare-fun thiss!674 () EqProof!88)

(declare-fun dynLambda!319 (Int) Int)

(assert (=> (and b!9742 b!9746 (= (dynLambda!319 lambda!2499) (dynLambda!319 (x!5497 thiss!674)))) (= lambda!2499 (x!5497 thiss!674))))

(assert (=> (and b!9742 b!9746 (= (dynLambda!319 lambda!2499) (dynLambda!319 (y!597 thiss!674)))) (= lambda!2499 (y!597 thiss!674))))

(declare-fun b_next!2995 () Bool)

(assert (=> b!9742 (= b_next!2991 (or (and b!9746 (= lambda!2499 (x!5497 thiss!674))) b_next!2995))))

(declare-fun b_next!2997 () Bool)

(assert (=> b!9742 (= b_next!2993 (or (and b!9746 (= lambda!2499 (y!597 thiss!674))) b_next!2997))))

(declare-fun b!9738 () Bool)

(declare-fun m!12923 () Bool)

(assert (=> b!9738 m!12923))

(declare-fun lambda!2500 () Int)

(declare-fun proof!196 () Int)

(declare-fun dynLambda!320 (Int) Bool)

(assert (=> (and start!1960 b!9738 (= (dynLambda!320 lambda!2500) (dynLambda!320 proof!196))) (= lambda!2500 proof!196)))

(declare-fun b_next!2999 () Bool)

(assert (=> start!1960 (= b_next!2989 (or (and b!9738 (= lambda!2500 proof!196)) b_next!2999))))

(declare-fun res!3238 () Bool)

(declare-fun e!5780 () Bool)

(assert (=> b!9738 (=> (not res!3238) (not e!5780))))

(assert (=> b!9738 (= res!3238 (= proof!196 lambda!2500))))

(declare-fun b!9739 () Bool)

(declare-fun res!3234 () Bool)

(assert (=> b!9739 (=> (not res!3234) (not e!5780))))

(declare-datatypes () ((Parenthesis!55 (CloseParenthesis!54) (OpenParenthesis!54))))

(declare-datatypes () ((List!232 (Nil!230) (Cons!229 (head!447 Parenthesis!55) (tail!459 List!232)))))

(declare-fun xs!280 () List!232)

(assert (=> b!9739 (= res!3234 (not (is-Nil!230 xs!280)))))

(declare-fun b!9740 () Bool)

(declare-fun e!5779 () Bool)

(declare-datatypes () ((Balance!231 (Balance!232 (extraOpen!156 Int) (extraClose!156 Int)))))

(declare-fun balance!3 () Balance!231)

(declare-fun nonNegative!0 (Balance!231) Bool)

(assert (=> b!9740 (= e!5779 (nonNegative!0 balance!3))))

(declare-fun res!3239 () Bool)

(assert (=> start!1960 (=> (not res!3239) (not e!5780))))

(declare-fun lambda!2497 () Int)

(declare-fun foldRight!33 (List!232 Balance!231 Int) Balance!231)

(assert (=> start!1960 (= res!3239 (= balance!3 (foldRight!33 xs!280 (Balance!232 0 0) lambda!2497)))))

(assert (=> start!1960 e!5780))

(assert (=> start!1960 tp!1932))

(declare-fun e!5781 () Bool)

(declare-fun inv!342 (EqProof!88) Bool)

(assert (=> start!1960 (and (inv!342 thiss!674) e!5781)))

(assert (=> start!1960 true))

(declare-fun b!9741 () Bool)

(declare-fun res!3237 () Bool)

(assert (=> b!9741 (=> (not res!3237) (not e!5780))))

(assert (=> b!9741 (= res!3237 (nonNegative!0 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)))))

(assert (=> b!9742 (= e!5781 (and tp!1933 tp!1931))))

(declare-fun b!9743 () Bool)

(declare-fun res!3231 () Bool)

(assert (=> b!9743 (=> (not res!3231) (not e!5780))))

(declare-fun original_sequential_helper!0 (List!232) Bool)

(assert (=> b!9743 (= res!3231 (original_sequential_helper!0 (tail!459 xs!280)))))

(declare-fun b!9744 () Bool)

(declare-fun res!3236 () Bool)

(assert (=> b!9744 (=> (not res!3236) (not e!5780))))

(declare-datatypes () ((ProofOps!178 (ProofOps!179 (prop!214 Bool)))))

(declare-fun thiss!651 () ProofOps!178)

(assert (=> b!9744 (= res!3236 (= thiss!651 (ProofOps!179 e!5779)))))

(declare-fun res!3235 () Bool)

(assert (=> b!9744 (=> (not res!3235) (not e!5779))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!231) Int)

(assert (=> b!9744 (= res!3235 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!9745 () Bool)

(declare-fun res!3232 () Bool)

(assert (=> b!9745 (=> (not res!3232) (not e!5780))))

(declare-fun lambda!2498 () Int)

(declare-fun foldRight!34 (List!232 Int Int) Int)

(assert (=> b!9745 (= res!3232 (= counter!4 (foldRight!34 xs!280 0 lambda!2498)))))

(declare-fun res!3233 () Bool)

(assert (=> b!9746 (=> (not res!3233) (not e!5780))))

(assert (=> b!9746 (= res!3233 (= thiss!674 (EqProof!89 lambda!2499 lambda!2499)))))

(declare-fun b!9747 () Bool)

(assert (=> b!9747 (= e!5780 (not (dynLambda!320 proof!196)))))

(assert (= (and start!1960 res!3239) b!9745))

(assert (= (and b!9745 res!3232) b!9744))

(assert (= (and b!9744 res!3235) b!9740))

(assert (= (and b!9744 res!3236) b!9739))

(assert (= (and b!9739 res!3234) b!9743))

(assert (= (and b!9743 res!3231) b!9741))

(assert (= (and b!9741 res!3237) b!9746))

(assert (= (and b!9746 res!3233) b!9738))

(assert (= (and b!9738 res!3238) b!9747))

(assert (= start!1960 b!9742))

(declare-fun b_lambda!5223 () Bool)

(assert (=> (not b_lambda!5223) (not b!9747)))

(declare-fun t!2683 () Bool)

(declare-fun tb!2343 () Bool)

(assert (=> (and start!1960 (= proof!196 proof!196) t!2683) tb!2343))

(declare-fun result!2383 () Bool)

(assert (=> tb!2343 (= result!2383 true)))

(assert (=> b!9747 t!2683))

(declare-fun b_and!4381 () Bool)

(assert (= b_and!4375 (and (=> t!2683 result!2383) b_and!4381)))

(declare-fun m!12925 () Bool)

(assert (=> start!1960 m!12925))

(declare-fun m!12927 () Bool)

(assert (=> start!1960 m!12927))

(declare-fun m!12929 () Bool)

(assert (=> b!9745 m!12929))

(declare-fun m!12931 () Bool)

(assert (=> b!9740 m!12931))

(assert (=> b!9744 m!12921))

(declare-fun m!12933 () Bool)

(assert (=> b!9747 m!12933))

(declare-fun m!12935 () Bool)

(assert (=> b!9741 m!12935))

(assert (=> b!9741 m!12935))

(declare-fun m!12937 () Bool)

(assert (=> b!9741 m!12937))

(declare-fun m!12939 () Bool)

(assert (=> b!9743 m!12939))

(push 1)

(assert (not start!1960))

(assert b_and!4381)

(assert (not b_lambda!5223))

(assert (not b!9743))

(assert (not b!9738))

(assert (not b!9744))

(assert (not b!9740))

(assert (not b_next!2995))

(assert (not b!9746))

(assert (not b_next!2997))

(assert b_and!4377)

(assert (not b_next!2999))

(assert b_and!4379)

(assert (not b!9741))

(assert (not b!9745))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4381)

(assert (not b_next!2995))

(assert (not b_next!2997))

(assert b_and!4377)

(assert (not b_next!2999))

(assert b_and!4379)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5225 () Bool)

(assert (= b_lambda!5223 (or (and b!9738 (= lambda!2500 proof!196)) (and start!1960 b_free!1203) b_lambda!5225)))

(declare-fun bs!2641 () Bool)

(declare-fun d!8013 () Bool)

(assert (= bs!2641 (and d!8013 b!9738)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2641 (= (dynLambda!320 lambda!2500) trivial!1)))

(assert (=> (and b!9738 (= lambda!2500 proof!196) b!9747) d!8013))

(push 1)

(assert (not start!1960))

(assert b_and!4381)

(assert (not b!9743))

(assert (not b!9738))

(assert (not b!9744))

(assert (not b!9740))

(assert (not b_next!2995))

(assert (not b!9746))

(assert (not b_next!2997))

(assert b_and!4377)

(assert (not b_next!2999))

(assert b_and!4379)

(assert (not b_lambda!5225))

(assert (not b!9741))

(assert (not b!9745))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4381)

(assert (not b_next!2995))

(assert (not b_next!2997))

(assert b_and!4377)

(assert (not b_next!2999))

(assert b_and!4379)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8015 () Bool)

(declare-fun c!3120 () Bool)

(assert (=> d!8015 (= c!3120 (is-Nil!230 xs!280))))

(declare-fun e!5784 () Balance!231)

(assert (=> d!8015 (= (foldRight!33 xs!280 (Balance!232 0 0) lambda!2497) e!5784)))

(declare-fun b!9754 () Bool)

(assert (=> b!9754 (= e!5784 (Balance!232 0 0))))

(declare-fun b!9755 () Bool)

(declare-fun dynLambda!321 (Int Parenthesis!55 Balance!231) Balance!231)

(assert (=> b!9755 (= e!5784 (dynLambda!321 lambda!2497 (head!447 xs!280) (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)))))

(assert (= (and d!8015 c!3120) b!9754))

(assert (= (and d!8015 (not c!3120)) b!9755))

(declare-fun b_lambda!5227 () Bool)

(assert (=> (not b_lambda!5227) (not b!9755)))

(assert (=> b!9755 m!12935))

(assert (=> b!9755 m!12935))

(declare-fun m!12941 () Bool)

(assert (=> b!9755 m!12941))

(assert (=> start!1960 d!8015))

(declare-fun d!8017 () Bool)

(assert (=> d!8017 (= (inv!342 thiss!674) (= (dynLambda!319 (x!5497 thiss!674)) (dynLambda!319 (y!597 thiss!674))))))

(declare-fun b_lambda!5229 () Bool)

(assert (=> (not b_lambda!5229) (not d!8017)))

(declare-fun t!2685 () Bool)

(declare-fun tb!2345 () Bool)

(assert (=> (and b!9742 (= (x!5497 thiss!674) (x!5497 thiss!674)) t!2685) tb!2345))

(declare-fun result!2385 () Bool)

(assert (=> tb!2345 (= result!2385 true)))

(assert (=> d!8017 t!2685))

(declare-fun b_and!4383 () Bool)

(assert (= b_and!4377 (and (=> t!2685 result!2385) b_and!4383)))

(declare-fun t!2687 () Bool)

(declare-fun tb!2347 () Bool)

(assert (=> (and b!9742 (= (y!597 thiss!674) (x!5497 thiss!674)) t!2687) tb!2347))

(declare-fun result!2387 () Bool)

(assert (=> tb!2347 (= result!2387 true)))

(assert (=> d!8017 t!2687))

(declare-fun b_and!4385 () Bool)

(assert (= b_and!4379 (and (=> t!2687 result!2387) b_and!4385)))

(declare-fun b_lambda!5231 () Bool)

(assert (=> (not b_lambda!5231) (not d!8017)))

(declare-fun t!2689 () Bool)

(declare-fun tb!2349 () Bool)

(assert (=> (and b!9742 (= (x!5497 thiss!674) (y!597 thiss!674)) t!2689) tb!2349))

(declare-fun result!2389 () Bool)

(assert (=> tb!2349 (= result!2389 true)))

(assert (=> d!8017 t!2689))

(declare-fun b_and!4387 () Bool)

(assert (= b_and!4383 (and (=> t!2689 result!2389) b_and!4387)))

(declare-fun t!2691 () Bool)

(declare-fun tb!2351 () Bool)

(assert (=> (and b!9742 (= (y!597 thiss!674) (y!597 thiss!674)) t!2691) tb!2351))

(declare-fun result!2391 () Bool)

(assert (=> tb!2351 (= result!2391 true)))

(assert (=> d!8017 t!2691))

(declare-fun b_and!4389 () Bool)

(assert (= b_and!4385 (and (=> t!2691 result!2391) b_and!4389)))

(declare-fun m!12943 () Bool)

(assert (=> d!8017 m!12943))

(declare-fun m!12945 () Bool)

(assert (=> d!8017 m!12945))

(assert (=> start!1960 d!8017))

(declare-fun d!8019 () Bool)

(assert (=> d!8019 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!156 balance!3) 0) (- 1) (ite (and (= (extraOpen!156 balance!3) 0) (= (extraClose!156 balance!3) 0)) 0 (ite (>= (extraClose!156 balance!3) 0) (extraClose!156 balance!3) (- 1)))))))

(assert (=> b!9746 d!8019))

(declare-fun d!8021 () Bool)

(assert (=> d!8021 (= (nonNegative!0 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)) (and (>= (extraOpen!156 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)) 0) (>= (extraClose!156 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)) 0)))))

(assert (=> b!9741 d!8021))

(declare-fun d!8023 () Bool)

(declare-fun c!3121 () Bool)

(assert (=> d!8023 (= c!3121 (is-Nil!230 (tail!459 xs!280)))))

(declare-fun e!5785 () Balance!231)

(assert (=> d!8023 (= (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497) e!5785)))

(declare-fun b!9757 () Bool)

(assert (=> b!9757 (= e!5785 (Balance!232 0 0))))

(declare-fun b!9758 () Bool)

(assert (=> b!9758 (= e!5785 (dynLambda!321 lambda!2497 (head!447 (tail!459 xs!280)) (foldRight!33 (tail!459 (tail!459 xs!280)) (Balance!232 0 0) lambda!2497)))))

(assert (= (and d!8023 c!3121) b!9757))

(assert (= (and d!8023 (not c!3121)) b!9758))

(declare-fun b_lambda!5233 () Bool)

(assert (=> (not b_lambda!5233) (not b!9758)))

(declare-fun m!12947 () Bool)

(assert (=> b!9758 m!12947))

(assert (=> b!9758 m!12947))

(declare-fun m!12949 () Bool)

(assert (=> b!9758 m!12949))

(assert (=> b!9741 d!8023))

(assert (=> b!9744 d!8019))

(declare-fun d!8025 () Bool)

(assert (=> d!8025 (= trivial!1 true)))

(assert (=> b!9738 d!8025))

(declare-fun d!8027 () Bool)

(declare-fun c!3124 () Bool)

(assert (=> d!8027 (= c!3124 (is-Nil!230 xs!280))))

(declare-fun e!5788 () Int)

(assert (=> d!8027 (= (foldRight!34 xs!280 0 lambda!2498) e!5788)))

(declare-fun b!9763 () Bool)

(assert (=> b!9763 (= e!5788 0)))

(declare-fun b!9764 () Bool)

(declare-fun dynLambda!322 (Int Parenthesis!55 Int) Int)

(assert (=> b!9764 (= e!5788 (dynLambda!322 lambda!2498 (head!447 xs!280) (foldRight!34 (tail!459 xs!280) 0 lambda!2498)))))

(assert (= (and d!8027 c!3124) b!9763))

(assert (= (and d!8027 (not c!3124)) b!9764))

(declare-fun b_lambda!5235 () Bool)

(assert (=> (not b_lambda!5235) (not b!9764)))

(declare-fun m!12951 () Bool)

(assert (=> b!9764 m!12951))

(assert (=> b!9764 m!12951))

(declare-fun m!12953 () Bool)

(assert (=> b!9764 m!12953))

(assert (=> b!9745 d!8027))

(declare-fun d!8029 () Bool)

(assert (=> d!8029 (= (nonNegative!0 balance!3) (and (>= (extraOpen!156 balance!3) 0) (>= (extraClose!156 balance!3) 0)))))

(assert (=> b!9740 d!8029))

(declare-fun bs!2642 () Bool)

(declare-fun d!8031 () Bool)

(assert (= bs!2642 (and d!8031 start!1960)))

(declare-fun lambda!2507 () Int)

(assert (=> bs!2642 (= lambda!2507 lambda!2497)))

(declare-fun bs!2643 () Bool)

(assert (= bs!2643 (and d!8031 b!9745)))

(declare-fun lambda!2508 () Int)

(assert (=> bs!2643 (= lambda!2508 lambda!2498)))

(declare-fun b!9775 () Bool)

(declare-fun e!5797 () Bool)

(declare-fun lt!1688 () Balance!231)

(assert (=> b!9775 (= e!5797 (nonNegative!0 lt!1688))))

(declare-fun e!5796 () Bool)

(declare-fun because!2 (ProofOps!178 Bool) Bool)

(assert (=> d!8031 (because!2 (ProofOps!179 e!5797) e!5796)))

(declare-fun c!3129 () Bool)

(assert (=> d!8031 (= c!3129 (is-Nil!230 (tail!459 xs!280)))))

(declare-fun res!3247 () Bool)

(assert (=> d!8031 (=> (not res!3247) (not e!5797))))

(declare-fun lt!1687 () Int)

(assert (=> d!8031 (= res!3247 (= (balanceToCounter!0 lt!1688) lt!1687))))

(assert (=> d!8031 (= lt!1687 (foldRight!34 (tail!459 xs!280) 0 lambda!2508))))

(assert (=> d!8031 (= lt!1688 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2507))))

(assert (=> d!8031 (= (original_sequential_helper!0 (tail!459 xs!280)) true)))

(declare-fun b!9776 () Bool)

(assert (=> b!9776 (= e!5796 true)))

(declare-fun b!9777 () Bool)

(declare-fun res!3248 () Bool)

(declare-fun e!5795 () Bool)

(assert (=> b!9777 (=> (not res!3248) (not e!5795))))

(assert (=> b!9777 (= res!3248 (nonNegative!0 (foldRight!33 (tail!459 (tail!459 xs!280)) (Balance!232 0 0) lambda!2507)))))

(declare-fun b!9778 () Bool)

(assert (=> b!9778 (= e!5796 e!5795)))

(declare-fun res!3246 () Bool)

(assert (=> b!9778 (=> (not res!3246) (not e!5795))))

(assert (=> b!9778 (= res!3246 (original_sequential_helper!0 (tail!459 (tail!459 xs!280))))))

(declare-fun b!9779 () Bool)

(assert (=> b!9779 (= e!5795 true)))

(assert (=> b!9779 (= (balanceToCounter!0 lt!1688) lt!1687)))

(assert (= (and d!8031 res!3247) b!9775))

(assert (= (and b!9778 res!3246) b!9777))

(assert (= (and b!9777 res!3248) b!9779))

(assert (= (and d!8031 c!3129) b!9776))

(assert (= (and d!8031 (not c!3129)) b!9778))

(declare-fun m!12955 () Bool)

(assert (=> d!8031 m!12955))

(declare-fun m!12957 () Bool)

(assert (=> d!8031 m!12957))

(declare-fun m!12959 () Bool)

(assert (=> d!8031 m!12959))

(declare-fun m!12961 () Bool)

(assert (=> d!8031 m!12961))

(declare-fun m!12963 () Bool)

(assert (=> b!9777 m!12963))

(assert (=> b!9777 m!12963))

(declare-fun m!12965 () Bool)

(assert (=> b!9777 m!12965))

(declare-fun m!12967 () Bool)

(assert (=> b!9778 m!12967))

(declare-fun m!12969 () Bool)

(assert (=> b!9775 m!12969))

(assert (=> b!9779 m!12957))

(assert (=> b!9743 d!8031))

(declare-fun b_lambda!5237 () Bool)

(assert (= b_lambda!5227 (or start!1960 b_lambda!5237)))

(declare-fun bs!2644 () Bool)

(declare-fun d!8033 () Bool)

(assert (= bs!2644 (and d!8033 start!1960)))

(declare-fun +$colon!0 (Balance!231 Parenthesis!55) Balance!231)

(assert (=> bs!2644 (= (dynLambda!321 lambda!2497 (head!447 xs!280) (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497)) (+$colon!0 (foldRight!33 (tail!459 xs!280) (Balance!232 0 0) lambda!2497) (head!447 xs!280)))))

(assert (=> bs!2644 m!12935))

(declare-fun m!12971 () Bool)

(assert (=> bs!2644 m!12971))

(assert (=> b!9755 d!8033))

(declare-fun b_lambda!5239 () Bool)

(assert (= b_lambda!5235 (or b!9745 b_lambda!5239)))

(declare-fun bs!2645 () Bool)

(declare-fun d!8035 () Bool)

(assert (= bs!2645 (and d!8035 b!9745)))

(declare-fun updateCounter!0 (Parenthesis!55 Int) Int)

(assert (=> bs!2645 (= (dynLambda!322 lambda!2498 (head!447 xs!280) (foldRight!34 (tail!459 xs!280) 0 lambda!2498)) (updateCounter!0 (head!447 xs!280) (foldRight!34 (tail!459 xs!280) 0 lambda!2498)))))

(assert (=> bs!2645 m!12951))

(declare-fun m!12973 () Bool)

(assert (=> bs!2645 m!12973))

(assert (=> b!9764 d!8035))

(declare-fun b_lambda!5241 () Bool)

(assert (= b_lambda!5233 (or start!1960 b_lambda!5241)))

(declare-fun bs!2646 () Bool)

(declare-fun d!8037 () Bool)

(assert (= bs!2646 (and d!8037 start!1960)))

(assert (=> bs!2646 (= (dynLambda!321 lambda!2497 (head!447 (tail!459 xs!280)) (foldRight!33 (tail!459 (tail!459 xs!280)) (Balance!232 0 0) lambda!2497)) (+$colon!0 (foldRight!33 (tail!459 (tail!459 xs!280)) (Balance!232 0 0) lambda!2497) (head!447 (tail!459 xs!280))))))

(assert (=> bs!2646 m!12947))

(declare-fun m!12975 () Bool)

(assert (=> bs!2646 m!12975))

(assert (=> b!9758 d!8037))

(declare-fun b_lambda!5243 () Bool)

(assert (= b_lambda!5231 (or (and b!9746 (= lambda!2499 (y!597 thiss!674))) (and b!9742 b_free!1205 (= (x!5497 thiss!674) (y!597 thiss!674))) (and b!9742 b_free!1207) b_lambda!5243)))

(declare-fun bs!2647 () Bool)

(declare-fun d!8039 () Bool)

(assert (= bs!2647 (and d!8039 b!9746)))

(assert (=> bs!2647 (= (dynLambda!319 lambda!2499) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9746 (= lambda!2499 (y!597 thiss!674)) d!8017) d!8039))

(declare-fun b_lambda!5245 () Bool)

(assert (= b_lambda!5229 (or (and b!9746 (= lambda!2499 (x!5497 thiss!674))) (and b!9742 b_free!1205) (and b!9742 b_free!1207 (= (y!597 thiss!674) (x!5497 thiss!674))) b_lambda!5245)))

(declare-fun bs!2648 () Bool)

(declare-fun d!8041 () Bool)

(assert (= bs!2648 (and d!8041 b!9746)))

(assert (=> bs!2648 (= (dynLambda!319 lambda!2499) (balanceToCounter!0 balance!3))))

(assert (=> (and b!9746 (= lambda!2499 (x!5497 thiss!674)) d!8017) d!8041))

(push 1)

(assert (not b!9777))

(assert b_and!4381)

(assert (not b_lambda!5241))

(assert (not bs!2644))

(assert (not b!9755))

(assert (not b_lambda!5243))

(assert (not bs!2645))

(assert (not b_lambda!5239))

(assert (not b!9778))

(assert (not b!9758))

(assert (not b_next!2995))

(assert (not b_next!2997))

(assert (not b!9775))

(assert (not b!9779))

(assert (not b!9764))

(assert (not b_lambda!5245))

(assert b_and!4389)

(assert b_and!4387)

(assert (not bs!2646))

(assert (not b_next!2999))

(assert (not b_lambda!5225))

(assert (not d!8031))

(assert (not b_lambda!5237))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4381)

(assert (not b_next!2995))

(assert (not b_next!2997))

(assert b_and!4389)

(assert b_and!4387)

(assert (not b_next!2999))

(check-sat)

(pop 1)

