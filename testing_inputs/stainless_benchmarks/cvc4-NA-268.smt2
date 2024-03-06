; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2060 () Bool)

(assert start!2060)

(declare-fun b!10296 () Bool)

(declare-fun b_free!1341 () Bool)

(declare-fun b_next!3277 () Bool)

(assert (=> b!10296 (= b_free!1341 (not b_next!3277))))

(declare-fun tp!2149 () Bool)

(declare-fun b_and!4727 () Bool)

(assert (=> b!10296 (= tp!2149 b_and!4727)))

(declare-fun b_free!1343 () Bool)

(declare-fun b_next!3279 () Bool)

(assert (=> b!10296 (= b_free!1343 (not b_next!3279))))

(declare-fun tp!2148 () Bool)

(declare-fun b_and!4729 () Bool)

(assert (=> b!10296 (= tp!2148 b_and!4729)))

(declare-fun b_free!1345 () Bool)

(declare-fun b_next!3281 () Bool)

(assert (=> b!10296 (= b_free!1345 (not b_next!3281))))

(declare-fun tp!2146 () Bool)

(declare-fun b_and!4731 () Bool)

(assert (=> b!10296 (= tp!2146 b_and!4731)))

(declare-fun b!10302 () Bool)

(declare-fun b_free!1347 () Bool)

(declare-fun b_next!3283 () Bool)

(assert (=> b!10302 (= b_free!1347 (not b_next!3283))))

(declare-fun tp!2144 () Bool)

(declare-fun b_and!4733 () Bool)

(assert (=> b!10302 (= tp!2144 b_and!4733)))

(declare-fun b_free!1349 () Bool)

(declare-fun b_next!3285 () Bool)

(assert (=> b!10302 (= b_free!1349 (not b_next!3285))))

(declare-fun tp!2147 () Bool)

(declare-fun b_and!4735 () Bool)

(assert (=> b!10302 (= tp!2147 b_and!4735)))

(declare-fun b_free!1351 () Bool)

(declare-fun b_next!3287 () Bool)

(assert (=> b!10302 (= b_free!1351 (not b_next!3287))))

(declare-fun tp!2145 () Bool)

(declare-fun b_and!4737 () Bool)

(assert (=> b!10302 (= tp!2145 b_and!4737)))

(declare-fun b!10303 () Bool)

(declare-fun m!13365 () Bool)

(assert (=> b!10303 m!13365))

(assert (=> b!10303 true))

(declare-fun lambda!2760 () Int)

(declare-datatypes () ((EqEvidence!210 (EqEvidence!211 (x!5849 Int) (y!612 Int) (evidence!172 Int)))))

(declare-fun thiss!671 () EqEvidence!210)

(declare-fun dynLambda!341 (Int) Int)

(assert (=> (and b!10296 b!10303 (= (dynLambda!341 lambda!2760) (dynLambda!341 (x!5849 thiss!671)))) (= lambda!2760 (x!5849 thiss!671))))

(assert (=> (and b!10296 b!10303 (= (dynLambda!341 lambda!2760) (dynLambda!341 (y!612 thiss!671)))) (= lambda!2760 (y!612 thiss!671))))

(declare-fun that!170 () EqEvidence!210)

(assert (=> (and b!10302 b!10303 (= (dynLambda!341 lambda!2760) (dynLambda!341 (x!5849 that!170)))) (= lambda!2760 (x!5849 that!170))))

(assert (=> (and b!10302 b!10303 (= (dynLambda!341 lambda!2760) (dynLambda!341 (y!612 that!170)))) (= lambda!2760 (y!612 that!170))))

(declare-fun b_next!3289 () Bool)

(assert (=> b!10296 (= b_next!3277 (or (and b!10303 (= lambda!2760 (x!5849 thiss!671))) b_next!3289))))

(declare-fun b_next!3291 () Bool)

(assert (=> b!10296 (= b_next!3279 (or (and b!10303 (= lambda!2760 (y!612 thiss!671))) b_next!3291))))

(declare-fun b_next!3293 () Bool)

(assert (=> b!10302 (= b_next!3283 (or (and b!10303 (= lambda!2760 (x!5849 that!170))) b_next!3293))))

(declare-fun b_next!3295 () Bool)

(assert (=> b!10302 (= b_next!3285 (or (and b!10303 (= lambda!2760 (y!612 that!170))) b_next!3295))))

(declare-fun lambda!2761 () Int)

(assert (=> b!10303 (not (= lambda!2761 lambda!2760))))

(assert (=> b!10303 true))

(declare-fun b_next!3297 () Bool)

(assert (=> b!10296 (= b_next!3289 (or (and b!10303 (= lambda!2761 (x!5849 thiss!671))) b_next!3297))))

(declare-fun b_next!3299 () Bool)

(assert (=> b!10296 (= b_next!3291 (or (and b!10303 (= lambda!2761 (y!612 thiss!671))) b_next!3299))))

(declare-fun b_next!3301 () Bool)

(assert (=> b!10302 (= b_next!3293 (or (and b!10303 (= lambda!2761 (x!5849 that!170))) b_next!3301))))

(declare-fun b_next!3303 () Bool)

(assert (=> b!10302 (= b_next!3295 (or (and b!10303 (= lambda!2761 (y!612 that!170))) b_next!3303))))

(declare-fun lambda!2762 () Int)

(declare-fun dynLambda!342 (Int) Bool)

(assert (=> (and b!10296 b!10303 (= (dynLambda!342 lambda!2762) (dynLambda!342 (evidence!172 thiss!671)))) (= lambda!2762 (evidence!172 thiss!671))))

(assert (=> (and b!10302 b!10303 (= (dynLambda!342 lambda!2762) (dynLambda!342 (evidence!172 that!170)))) (= lambda!2762 (evidence!172 that!170))))

(declare-fun b_next!3305 () Bool)

(assert (=> b!10296 (= b_next!3281 (or (and b!10303 (= lambda!2762 (evidence!172 thiss!671))) b_next!3305))))

(declare-fun b_next!3307 () Bool)

(assert (=> b!10302 (= b_next!3287 (or (and b!10303 (= lambda!2762 (evidence!172 that!170))) b_next!3307))))

(declare-fun bs!2750 () Bool)

(declare-fun b!10293 () Bool)

(assert (= bs!2750 (and b!10293 b!10303)))

(declare-fun lambda!2763 () Int)

(assert (=> bs!2750 (not (= lambda!2763 lambda!2760))))

(assert (=> bs!2750 (not (= lambda!2763 lambda!2761))))

(assert (=> b!10293 true))

(declare-fun b_next!3309 () Bool)

(assert (=> b!10296 (= b_next!3297 (or (and b!10293 (= lambda!2763 (x!5849 thiss!671))) b_next!3309))))

(declare-fun b_next!3311 () Bool)

(assert (=> b!10296 (= b_next!3299 (or (and b!10293 (= lambda!2763 (y!612 thiss!671))) b_next!3311))))

(declare-fun b_next!3313 () Bool)

(assert (=> b!10302 (= b_next!3301 (or (and b!10293 (= lambda!2763 (x!5849 that!170))) b_next!3313))))

(declare-fun b_next!3315 () Bool)

(assert (=> b!10302 (= b_next!3303 (or (and b!10293 (= lambda!2763 (y!612 that!170))) b_next!3315))))

(declare-fun m!13367 () Bool)

(assert (=> b!10293 m!13367))

(declare-fun lambda!2764 () Int)

(declare-fun trivial!1 () Bool)

(assert (=> bs!2750 (= (= trivial!1 true) (= lambda!2764 lambda!2762))))

(assert (=> (and b!10296 b!10293 (= (dynLambda!342 lambda!2764) (dynLambda!342 (evidence!172 thiss!671)))) (= lambda!2764 (evidence!172 thiss!671))))

(assert (=> (and b!10302 b!10293 (= (dynLambda!342 lambda!2764) (dynLambda!342 (evidence!172 that!170)))) (= lambda!2764 (evidence!172 that!170))))

(declare-fun b_next!3317 () Bool)

(assert (=> b!10296 (= b_next!3305 (or (and b!10293 (= lambda!2764 (evidence!172 thiss!671))) b_next!3317))))

(declare-fun b_next!3319 () Bool)

(assert (=> b!10302 (= b_next!3307 (or (and b!10293 (= lambda!2764 (evidence!172 that!170))) b_next!3319))))

(declare-fun res!3580 () Bool)

(declare-fun e!6016 () Bool)

(assert (=> b!10293 (=> (not res!3580) (not e!6016))))

(assert (=> b!10293 (= res!3580 (= that!170 (EqEvidence!211 lambda!2763 lambda!2763 lambda!2764)))))

(declare-fun b!10294 () Bool)

(declare-fun res!3577 () Bool)

(assert (=> b!10294 (=> (not res!3577) (not e!6016))))

(declare-datatypes () ((Parenthesis!67 (CloseParenthesis!66) (OpenParenthesis!66))))

(declare-datatypes () ((List!244 (Nil!242) (Cons!241 (head!459 Parenthesis!67) (tail!471 List!244)))))

(declare-fun xs!280 () List!244)

(declare-fun lambda!2758 () Int)

(declare-datatypes () ((Balance!255 (Balance!256 (extraOpen!168 Int) (extraClose!168 Int)))))

(declare-fun nonNegative!0 (Balance!255) Bool)

(declare-fun foldRight!57 (List!244 Balance!255 Int) Balance!255)

(assert (=> b!10294 (= res!3577 (nonNegative!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)))))

(declare-fun b!10295 () Bool)

(declare-fun res!3582 () Bool)

(assert (=> b!10295 (=> (not res!3582) (not e!6016))))

(declare-fun original_sequential_helper!0 (List!244) Bool)

(assert (=> b!10295 (= res!3582 (original_sequential_helper!0 (tail!471 xs!280)))))

(declare-fun e!6019 () Bool)

(assert (=> b!10296 (= e!6019 (and tp!2149 tp!2148 tp!2146))))

(declare-fun b!10297 () Bool)

(declare-fun res!3583 () Bool)

(assert (=> b!10297 (=> (not res!3583) (not e!6016))))

(declare-datatypes () ((ProofOps!202 (ProofOps!203 (prop!231 Bool)))))

(declare-fun thiss!651 () ProofOps!202)

(declare-fun e!6017 () Bool)

(assert (=> b!10297 (= res!3583 (= thiss!651 (ProofOps!203 e!6017)))))

(declare-fun res!3578 () Bool)

(assert (=> b!10297 (=> (not res!3578) (not e!6017))))

(declare-fun balance!3 () Balance!255)

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!255) Int)

(assert (=> b!10297 (= res!3578 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10298 () Bool)

(declare-fun res!3584 () Bool)

(assert (=> b!10298 (=> (not res!3584) (not e!6016))))

(assert (=> b!10298 (= res!3584 (dynLambda!342 (evidence!172 thiss!671)))))

(declare-fun b!10299 () Bool)

(assert (=> b!10299 (= e!6016 (not (= (dynLambda!341 (y!612 thiss!671)) (dynLambda!341 (x!5849 that!170)))))))

(declare-fun b!10300 () Bool)

(declare-fun res!3581 () Bool)

(assert (=> b!10300 (=> (not res!3581) (not e!6016))))

(declare-fun lambda!2759 () Int)

(declare-fun foldRight!58 (List!244 Int Int) Int)

(assert (=> b!10300 (= res!3581 (= counter!4 (foldRight!58 xs!280 0 lambda!2759)))))

(declare-fun b!10301 () Bool)

(declare-fun res!3579 () Bool)

(assert (=> b!10301 (=> (not res!3579) (not e!6016))))

(assert (=> b!10301 (= res!3579 (not (is-Nil!242 xs!280)))))

(declare-fun e!6018 () Bool)

(assert (=> b!10302 (= e!6018 (and tp!2144 tp!2147 tp!2145))))

(declare-fun res!3586 () Bool)

(assert (=> b!10303 (=> (not res!3586) (not e!6016))))

(assert (=> b!10303 (= res!3586 (= thiss!671 (EqEvidence!211 lambda!2760 lambda!2761 lambda!2762)))))

(declare-fun b!10304 () Bool)

(assert (=> b!10304 (= e!6017 (nonNegative!0 balance!3))))

(declare-fun res!3585 () Bool)

(assert (=> start!2060 (=> (not res!3585) (not e!6016))))

(assert (=> start!2060 (= res!3585 (= balance!3 (foldRight!57 xs!280 (Balance!256 0 0) lambda!2758)))))

(assert (=> start!2060 e!6016))

(assert (=> start!2060 true))

(declare-fun inv!357 (EqEvidence!210) Bool)

(assert (=> start!2060 (and (inv!357 thiss!671) e!6019)))

(assert (=> start!2060 (and (inv!357 that!170) e!6018)))

(assert (= (and start!2060 res!3585) b!10300))

(assert (= (and b!10300 res!3581) b!10297))

(assert (= (and b!10297 res!3578) b!10304))

(assert (= (and b!10297 res!3583) b!10301))

(assert (= (and b!10301 res!3579) b!10295))

(assert (= (and b!10295 res!3582) b!10294))

(assert (= (and b!10294 res!3577) b!10303))

(assert (= (and b!10303 res!3586) b!10293))

(assert (= (and b!10293 res!3580) b!10298))

(assert (= (and b!10298 res!3584) b!10299))

(assert (= start!2060 b!10296))

(assert (= start!2060 b!10302))

(declare-fun b_lambda!5419 () Bool)

(assert (=> (not b_lambda!5419) (not b!10298)))

(declare-fun t!2857 () Bool)

(declare-fun tb!2517 () Bool)

(assert (=> (and b!10296 (= (evidence!172 thiss!671) (evidence!172 thiss!671)) t!2857) tb!2517))

(declare-fun result!2557 () Bool)

(assert (=> tb!2517 (= result!2557 true)))

(assert (=> b!10298 t!2857))

(declare-fun b_and!4739 () Bool)

(assert (= b_and!4731 (and (=> t!2857 result!2557) b_and!4739)))

(declare-fun t!2859 () Bool)

(declare-fun tb!2519 () Bool)

(assert (=> (and b!10302 (= (evidence!172 that!170) (evidence!172 thiss!671)) t!2859) tb!2519))

(declare-fun result!2559 () Bool)

(assert (=> tb!2519 (= result!2559 true)))

(assert (=> b!10298 t!2859))

(declare-fun b_and!4741 () Bool)

(assert (= b_and!4737 (and (=> t!2859 result!2559) b_and!4741)))

(declare-fun b_lambda!5421 () Bool)

(assert (=> (not b_lambda!5421) (not b!10299)))

(declare-fun t!2861 () Bool)

(declare-fun tb!2521 () Bool)

(assert (=> (and b!10296 (= (x!5849 thiss!671) (y!612 thiss!671)) t!2861) tb!2521))

(declare-fun result!2561 () Bool)

(assert (=> tb!2521 (= result!2561 true)))

(assert (=> b!10299 t!2861))

(declare-fun b_and!4743 () Bool)

(assert (= b_and!4727 (and (=> t!2861 result!2561) b_and!4743)))

(declare-fun t!2863 () Bool)

(declare-fun tb!2523 () Bool)

(assert (=> (and b!10296 (= (y!612 thiss!671) (y!612 thiss!671)) t!2863) tb!2523))

(declare-fun result!2563 () Bool)

(assert (=> tb!2523 (= result!2563 true)))

(assert (=> b!10299 t!2863))

(declare-fun b_and!4745 () Bool)

(assert (= b_and!4729 (and (=> t!2863 result!2563) b_and!4745)))

(declare-fun t!2865 () Bool)

(declare-fun tb!2525 () Bool)

(assert (=> (and b!10302 (= (x!5849 that!170) (y!612 thiss!671)) t!2865) tb!2525))

(declare-fun result!2565 () Bool)

(assert (=> tb!2525 (= result!2565 true)))

(assert (=> b!10299 t!2865))

(declare-fun b_and!4747 () Bool)

(assert (= b_and!4733 (and (=> t!2865 result!2565) b_and!4747)))

(declare-fun t!2867 () Bool)

(declare-fun tb!2527 () Bool)

(assert (=> (and b!10302 (= (y!612 that!170) (y!612 thiss!671)) t!2867) tb!2527))

(declare-fun result!2567 () Bool)

(assert (=> tb!2527 (= result!2567 true)))

(assert (=> b!10299 t!2867))

(declare-fun b_and!4749 () Bool)

(assert (= b_and!4735 (and (=> t!2867 result!2567) b_and!4749)))

(declare-fun b_lambda!5423 () Bool)

(assert (=> (not b_lambda!5423) (not b!10299)))

(declare-fun tb!2529 () Bool)

(declare-fun t!2869 () Bool)

(assert (=> (and b!10296 (= (x!5849 thiss!671) (x!5849 that!170)) t!2869) tb!2529))

(declare-fun result!2569 () Bool)

(assert (=> tb!2529 (= result!2569 true)))

(assert (=> b!10299 t!2869))

(declare-fun b_and!4751 () Bool)

(assert (= b_and!4743 (and (=> t!2869 result!2569) b_and!4751)))

(declare-fun tb!2531 () Bool)

(declare-fun t!2871 () Bool)

(assert (=> (and b!10296 (= (y!612 thiss!671) (x!5849 that!170)) t!2871) tb!2531))

(declare-fun result!2571 () Bool)

(assert (=> tb!2531 (= result!2571 true)))

(assert (=> b!10299 t!2871))

(declare-fun b_and!4753 () Bool)

(assert (= b_and!4745 (and (=> t!2871 result!2571) b_and!4753)))

(declare-fun t!2873 () Bool)

(declare-fun tb!2533 () Bool)

(assert (=> (and b!10302 (= (x!5849 that!170) (x!5849 that!170)) t!2873) tb!2533))

(declare-fun result!2573 () Bool)

(assert (=> tb!2533 (= result!2573 true)))

(assert (=> b!10299 t!2873))

(declare-fun b_and!4755 () Bool)

(assert (= b_and!4747 (and (=> t!2873 result!2573) b_and!4755)))

(declare-fun t!2875 () Bool)

(declare-fun tb!2535 () Bool)

(assert (=> (and b!10302 (= (y!612 that!170) (x!5849 that!170)) t!2875) tb!2535))

(declare-fun result!2575 () Bool)

(assert (=> tb!2535 (= result!2575 true)))

(assert (=> b!10299 t!2875))

(declare-fun b_and!4757 () Bool)

(assert (= b_and!4749 (and (=> t!2875 result!2575) b_and!4757)))

(declare-fun m!13369 () Bool)

(assert (=> b!10295 m!13369))

(declare-fun m!13371 () Bool)

(assert (=> b!10294 m!13371))

(assert (=> b!10294 m!13371))

(declare-fun m!13373 () Bool)

(assert (=> b!10294 m!13373))

(declare-fun m!13375 () Bool)

(assert (=> b!10300 m!13375))

(declare-fun m!13377 () Bool)

(assert (=> b!10298 m!13377))

(declare-fun m!13379 () Bool)

(assert (=> b!10299 m!13379))

(declare-fun m!13381 () Bool)

(assert (=> b!10299 m!13381))

(assert (=> b!10297 m!13365))

(declare-fun m!13383 () Bool)

(assert (=> b!10304 m!13383))

(declare-fun m!13385 () Bool)

(assert (=> start!2060 m!13385))

(declare-fun m!13387 () Bool)

(assert (=> start!2060 m!13387))

(declare-fun m!13389 () Bool)

(assert (=> start!2060 m!13389))

(push 1)

(assert (not b!10294))

(assert (not b_lambda!5423))

(assert (not b!10303))

(assert b_and!4741)

(assert (not b_lambda!5419))

(assert (not b_next!3309))

(assert b_and!4755)

(assert b_and!4751)

(assert (not b_next!3311))

(assert (not b!10300))

(assert (not b!10295))

(assert (not b_next!3317))

(assert (not b!10293))

(assert b_and!4739)

(assert b_and!4757)

(assert (not b!10304))

(assert (not b_lambda!5421))

(assert (not b_next!3319))

(assert (not b_next!3315))

(assert (not b_next!3313))

(assert b_and!4753)

(assert (not b!10297))

(assert (not start!2060))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4741)

(assert (not b_next!3309))

(assert b_and!4755)

(assert b_and!4751)

(assert (not b_next!3311))

(assert (not b_next!3317))

(assert b_and!4739)

(assert b_and!4757)

(assert (not b_next!3319))

(assert (not b_next!3315))

(assert (not b_next!3313))

(assert b_and!4753)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5425 () Bool)

(assert (= b_lambda!5421 (or (and b!10303 (= lambda!2760 (y!612 thiss!671))) (and b!10302 b_free!1349 (= (y!612 that!170) (y!612 thiss!671))) (and b!10296 b_free!1341 (= (x!5849 thiss!671) (y!612 thiss!671))) (and b!10302 b_free!1347 (= (x!5849 that!170) (y!612 thiss!671))) (and b!10296 b_free!1343) (and b!10293 (= lambda!2763 (y!612 thiss!671))) (and b!10303 (= lambda!2761 (y!612 thiss!671))) b_lambda!5425)))

(declare-fun bs!2751 () Bool)

(declare-fun d!8279 () Bool)

(assert (= bs!2751 (and d!8279 b!10303)))

(assert (=> bs!2751 (= (dynLambda!341 lambda!2760) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10303 (= lambda!2760 (y!612 thiss!671)) b!10299) d!8279))

(declare-fun bs!2752 () Bool)

(declare-fun d!8281 () Bool)

(assert (= bs!2752 (and d!8281 b!10303)))

(declare-fun updateCounter!0 (Parenthesis!67 Int) Int)

(assert (=> bs!2752 (= (dynLambda!341 lambda!2761) (updateCounter!0 (head!459 xs!280) (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758))))))

(assert (=> bs!2752 m!13371))

(assert (=> bs!2752 m!13371))

(declare-fun m!13391 () Bool)

(assert (=> bs!2752 m!13391))

(assert (=> bs!2752 m!13391))

(declare-fun m!13393 () Bool)

(assert (=> bs!2752 m!13393))

(assert (=> (and b!10303 (= lambda!2761 (y!612 thiss!671)) b!10299) d!8281))

(declare-fun bs!2753 () Bool)

(declare-fun d!8283 () Bool)

(assert (= bs!2753 (and d!8283 b!10293)))

(assert (=> bs!2753 (= (dynLambda!341 lambda!2763) (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(declare-fun m!13395 () Bool)

(assert (=> bs!2753 m!13395))

(assert (=> bs!2753 m!13395))

(declare-fun m!13397 () Bool)

(assert (=> bs!2753 m!13397))

(assert (=> (and b!10293 (= lambda!2763 (y!612 thiss!671)) b!10299) d!8283))

(declare-fun b_lambda!5427 () Bool)

(assert (= b_lambda!5419 (or (and b!10303 (= lambda!2762 (evidence!172 thiss!671))) (and b!10293 (= lambda!2764 (evidence!172 thiss!671))) (and b!10296 b_free!1345) (and b!10302 b_free!1351 (= (evidence!172 that!170) (evidence!172 thiss!671))) b_lambda!5427)))

(declare-fun bs!2754 () Bool)

(declare-fun d!8285 () Bool)

(assert (= bs!2754 (and d!8285 b!10303)))

(assert (=> bs!2754 (= (dynLambda!342 lambda!2762) true)))

(assert (=> (and b!10303 (= lambda!2762 (evidence!172 thiss!671)) b!10298) d!8285))

(declare-fun bs!2755 () Bool)

(declare-fun d!8287 () Bool)

(assert (= bs!2755 (and d!8287 b!10293)))

(assert (=> bs!2755 (= (dynLambda!342 lambda!2764) trivial!1)))

(assert (=> (and b!10293 (= lambda!2764 (evidence!172 thiss!671)) b!10298) d!8287))

(declare-fun b_lambda!5429 () Bool)

(assert (= b_lambda!5423 (or (and b!10303 (= lambda!2761 (x!5849 that!170))) (and b!10293 (= lambda!2763 (x!5849 that!170))) (and b!10303 (= lambda!2760 (x!5849 that!170))) (and b!10302 b_free!1349 (= (y!612 that!170) (x!5849 that!170))) (and b!10296 b_free!1341 (= (x!5849 thiss!671) (x!5849 that!170))) (and b!10302 b_free!1347) (and b!10296 b_free!1343 (= (y!612 thiss!671) (x!5849 that!170))) b_lambda!5429)))

(declare-fun bs!2756 () Bool)

(declare-fun d!8289 () Bool)

(assert (= bs!2756 (and d!8289 b!10303)))

(assert (=> bs!2756 (= (dynLambda!341 lambda!2760) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10303 (= lambda!2760 (x!5849 that!170)) b!10299) d!8289))

(declare-fun bs!2757 () Bool)

(declare-fun d!8291 () Bool)

(assert (= bs!2757 (and d!8291 b!10303)))

(assert (=> bs!2757 (= (dynLambda!341 lambda!2761) (updateCounter!0 (head!459 xs!280) (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758))))))

(assert (=> bs!2757 m!13371))

(assert (=> bs!2757 m!13371))

(assert (=> bs!2757 m!13391))

(assert (=> bs!2757 m!13391))

(assert (=> bs!2757 m!13393))

(assert (=> (and b!10303 (= lambda!2761 (x!5849 that!170)) b!10299) d!8291))

(declare-fun bs!2758 () Bool)

(declare-fun d!8293 () Bool)

(assert (= bs!2758 (and d!8293 b!10293)))

(assert (=> bs!2758 (= (dynLambda!341 lambda!2763) (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(assert (=> bs!2758 m!13395))

(assert (=> bs!2758 m!13395))

(assert (=> bs!2758 m!13397))

(assert (=> (and b!10293 (= lambda!2763 (x!5849 that!170)) b!10299) d!8293))

(push 1)

(assert (not b!10294))

(assert (not b!10303))

(assert b_and!4741)

(assert (not b_next!3309))

(assert b_and!4755)

(assert b_and!4751)

(assert (not b_next!3311))

(assert (not b!10300))

(assert (not b!10295))

(assert (not b_next!3317))

(assert (not bs!2758))

(assert (not b!10293))

(assert b_and!4739)

(assert (not bs!2757))

(assert b_and!4757)

(assert (not b_lambda!5425))

(assert (not b!10304))

(assert (not b_next!3319))

(assert (not b_lambda!5429))

(assert (not bs!2753))

(assert (not b_next!3315))

(assert (not b_next!3313))

(assert b_and!4753)

(assert (not b!10297))

(assert (not bs!2752))

(assert (not b_lambda!5427))

(assert (not start!2060))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4741)

(assert (not b_next!3309))

(assert b_and!4755)

(assert b_and!4751)

(assert (not b_next!3311))

(assert (not b_next!3317))

(assert b_and!4739)

(assert b_and!4757)

(assert (not b_next!3319))

(assert (not b_next!3315))

(assert (not b_next!3313))

(assert b_and!4753)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8295 () Bool)

(assert (=> d!8295 (= (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)) (ite (< (foldRight!58 (tail!471 xs!280) 0 lambda!2759) 0) (- 1) (ite (is-OpenParenthesis!66 (head!459 xs!280)) (- (foldRight!58 (tail!471 xs!280) 0 lambda!2759) 1) (+ (foldRight!58 (tail!471 xs!280) 0 lambda!2759) 1))))))

(assert (=> bs!2753 d!8295))

(declare-fun d!8297 () Bool)

(declare-fun c!3218 () Bool)

(assert (=> d!8297 (= c!3218 (is-Nil!242 (tail!471 xs!280)))))

(declare-fun e!6022 () Int)

(assert (=> d!8297 (= (foldRight!58 (tail!471 xs!280) 0 lambda!2759) e!6022)))

(declare-fun b!10313 () Bool)

(assert (=> b!10313 (= e!6022 0)))

(declare-fun b!10314 () Bool)

(declare-fun dynLambda!343 (Int Parenthesis!67 Int) Int)

(assert (=> b!10314 (= e!6022 (dynLambda!343 lambda!2759 (head!459 (tail!471 xs!280)) (foldRight!58 (tail!471 (tail!471 xs!280)) 0 lambda!2759)))))

(assert (= (and d!8297 c!3218) b!10313))

(assert (= (and d!8297 (not c!3218)) b!10314))

(declare-fun b_lambda!5431 () Bool)

(assert (=> (not b_lambda!5431) (not b!10314)))

(declare-fun m!13399 () Bool)

(assert (=> b!10314 m!13399))

(assert (=> b!10314 m!13399))

(declare-fun m!13401 () Bool)

(assert (=> b!10314 m!13401))

(assert (=> bs!2753 d!8297))

(declare-fun bs!2759 () Bool)

(declare-fun d!8299 () Bool)

(assert (= bs!2759 (and d!8299 start!2060)))

(declare-fun lambda!2771 () Int)

(assert (=> bs!2759 (= lambda!2771 lambda!2758)))

(declare-fun bs!2760 () Bool)

(assert (= bs!2760 (and d!8299 b!10300)))

(declare-fun lambda!2772 () Int)

(assert (=> bs!2760 (= lambda!2772 lambda!2759)))

(declare-fun b!10325 () Bool)

(declare-fun e!6030 () Bool)

(declare-fun e!6029 () Bool)

(assert (=> b!10325 (= e!6030 e!6029)))

(declare-fun res!3594 () Bool)

(assert (=> b!10325 (=> (not res!3594) (not e!6029))))

(assert (=> b!10325 (= res!3594 (original_sequential_helper!0 (tail!471 (tail!471 xs!280))))))

(declare-fun b!10326 () Bool)

(assert (=> b!10326 (= e!6029 true)))

(declare-fun lt!1717 () Balance!255)

(declare-fun lt!1718 () Int)

(assert (=> b!10326 (= (balanceToCounter!0 lt!1717) lt!1718)))

(declare-fun e!6031 () Bool)

(declare-fun because!2 (ProofOps!202 Bool) Bool)

(assert (=> d!8299 (because!2 (ProofOps!203 e!6031) e!6030)))

(declare-fun c!3223 () Bool)

(assert (=> d!8299 (= c!3223 (is-Nil!242 (tail!471 xs!280)))))

(declare-fun res!3593 () Bool)

(assert (=> d!8299 (=> (not res!3593) (not e!6031))))

(assert (=> d!8299 (= res!3593 (= (balanceToCounter!0 lt!1717) lt!1718))))

(assert (=> d!8299 (= lt!1718 (foldRight!58 (tail!471 xs!280) 0 lambda!2772))))

(assert (=> d!8299 (= lt!1717 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2771))))

(assert (=> d!8299 (= (original_sequential_helper!0 (tail!471 xs!280)) true)))

(declare-fun b!10327 () Bool)

(declare-fun res!3595 () Bool)

(assert (=> b!10327 (=> (not res!3595) (not e!6029))))

(assert (=> b!10327 (= res!3595 (nonNegative!0 (foldRight!57 (tail!471 (tail!471 xs!280)) (Balance!256 0 0) lambda!2771)))))

(declare-fun b!10328 () Bool)

(assert (=> b!10328 (= e!6031 (nonNegative!0 lt!1717))))

(declare-fun b!10329 () Bool)

(assert (=> b!10329 (= e!6030 true)))

(assert (= (and d!8299 res!3593) b!10328))

(assert (= (and b!10325 res!3594) b!10327))

(assert (= (and b!10327 res!3595) b!10326))

(assert (= (and d!8299 c!3223) b!10329))

(assert (= (and d!8299 (not c!3223)) b!10325))

(declare-fun m!13403 () Bool)

(assert (=> b!10325 m!13403))

(declare-fun m!13405 () Bool)

(assert (=> d!8299 m!13405))

(declare-fun m!13407 () Bool)

(assert (=> d!8299 m!13407))

(declare-fun m!13409 () Bool)

(assert (=> d!8299 m!13409))

(declare-fun m!13411 () Bool)

(assert (=> d!8299 m!13411))

(declare-fun m!13413 () Bool)

(assert (=> b!10327 m!13413))

(assert (=> b!10327 m!13413))

(declare-fun m!13415 () Bool)

(assert (=> b!10327 m!13415))

(declare-fun m!13417 () Bool)

(assert (=> b!10328 m!13417))

(assert (=> b!10326 m!13407))

(assert (=> b!10295 d!8299))

(declare-fun d!8301 () Bool)

(assert (=> d!8301 (= (nonNegative!0 balance!3) (and (>= (extraOpen!168 balance!3) 0) (>= (extraClose!168 balance!3) 0)))))

(assert (=> b!10304 d!8301))

(declare-fun d!8303 () Bool)

(assert (=> d!8303 (= trivial!1 true)))

(assert (=> b!10293 d!8303))

(declare-fun d!8305 () Bool)

(assert (=> d!8305 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!168 balance!3) 0) (- 1) (ite (and (= (extraOpen!168 balance!3) 0) (= (extraClose!168 balance!3) 0)) 0 (ite (>= (extraClose!168 balance!3) 0) (extraClose!168 balance!3) (- 1)))))))

(assert (=> b!10297 d!8305))

(assert (=> b!10303 d!8305))

(declare-fun d!8307 () Bool)

(assert (=> d!8307 (= (updateCounter!0 (head!459 xs!280) (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758))) (ite (< (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0) (- 1) (ite (is-OpenParenthesis!66 (head!459 xs!280)) (- (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 1) (+ (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 1))))))

(assert (=> bs!2752 d!8307))

(declare-fun d!8309 () Bool)

(assert (=> d!8309 (= (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) (ite (> (extraOpen!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0) (- 1) (ite (and (= (extraOpen!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0) (= (extraClose!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0)) 0 (ite (>= (extraClose!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0) (extraClose!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) (- 1)))))))

(assert (=> bs!2752 d!8309))

(declare-fun d!8311 () Bool)

(declare-fun c!3226 () Bool)

(assert (=> d!8311 (= c!3226 (is-Nil!242 (tail!471 xs!280)))))

(declare-fun e!6034 () Balance!255)

(assert (=> d!8311 (= (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758) e!6034)))

(declare-fun b!10335 () Bool)

(assert (=> b!10335 (= e!6034 (Balance!256 0 0))))

(declare-fun b!10336 () Bool)

(declare-fun dynLambda!344 (Int Parenthesis!67 Balance!255) Balance!255)

(assert (=> b!10336 (= e!6034 (dynLambda!344 lambda!2758 (head!459 (tail!471 xs!280)) (foldRight!57 (tail!471 (tail!471 xs!280)) (Balance!256 0 0) lambda!2758)))))

(assert (= (and d!8311 c!3226) b!10335))

(assert (= (and d!8311 (not c!3226)) b!10336))

(declare-fun b_lambda!5433 () Bool)

(assert (=> (not b_lambda!5433) (not b!10336)))

(declare-fun m!13419 () Bool)

(assert (=> b!10336 m!13419))

(assert (=> b!10336 m!13419))

(declare-fun m!13421 () Bool)

(assert (=> b!10336 m!13421))

(assert (=> bs!2752 d!8311))

(assert (=> bs!2758 d!8295))

(assert (=> bs!2758 d!8297))

(declare-fun d!8313 () Bool)

(declare-fun c!3227 () Bool)

(assert (=> d!8313 (= c!3227 (is-Nil!242 xs!280))))

(declare-fun e!6035 () Balance!255)

(assert (=> d!8313 (= (foldRight!57 xs!280 (Balance!256 0 0) lambda!2758) e!6035)))

(declare-fun b!10337 () Bool)

(assert (=> b!10337 (= e!6035 (Balance!256 0 0))))

(declare-fun b!10338 () Bool)

(assert (=> b!10338 (= e!6035 (dynLambda!344 lambda!2758 (head!459 xs!280) (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)))))

(assert (= (and d!8313 c!3227) b!10337))

(assert (= (and d!8313 (not c!3227)) b!10338))

(declare-fun b_lambda!5435 () Bool)

(assert (=> (not b_lambda!5435) (not b!10338)))

(assert (=> b!10338 m!13371))

(assert (=> b!10338 m!13371))

(declare-fun m!13423 () Bool)

(assert (=> b!10338 m!13423))

(assert (=> start!2060 d!8313))

(declare-fun d!8315 () Bool)

(declare-fun res!3598 () Bool)

(declare-fun e!6038 () Bool)

(assert (=> d!8315 (=> (not res!3598) (not e!6038))))

(assert (=> d!8315 (= res!3598 (= (dynLambda!341 (x!5849 thiss!671)) (dynLambda!341 (y!612 thiss!671))))))

(assert (=> d!8315 (= (inv!357 thiss!671) e!6038)))

(declare-fun b!10341 () Bool)

(assert (=> b!10341 (= e!6038 (dynLambda!342 (evidence!172 thiss!671)))))

(assert (= (and d!8315 res!3598) b!10341))

(declare-fun b_lambda!5437 () Bool)

(assert (=> (not b_lambda!5437) (not d!8315)))

(declare-fun t!2877 () Bool)

(declare-fun tb!2537 () Bool)

(assert (=> (and b!10296 (= (x!5849 thiss!671) (x!5849 thiss!671)) t!2877) tb!2537))

(declare-fun result!2577 () Bool)

(assert (=> tb!2537 (= result!2577 true)))

(assert (=> d!8315 t!2877))

(declare-fun b_and!4759 () Bool)

(assert (= b_and!4751 (and (=> t!2877 result!2577) b_and!4759)))

(declare-fun t!2879 () Bool)

(declare-fun tb!2539 () Bool)

(assert (=> (and b!10296 (= (y!612 thiss!671) (x!5849 thiss!671)) t!2879) tb!2539))

(declare-fun result!2579 () Bool)

(assert (=> tb!2539 (= result!2579 true)))

(assert (=> d!8315 t!2879))

(declare-fun b_and!4761 () Bool)

(assert (= b_and!4753 (and (=> t!2879 result!2579) b_and!4761)))

(declare-fun tb!2541 () Bool)

(declare-fun t!2881 () Bool)

(assert (=> (and b!10302 (= (x!5849 that!170) (x!5849 thiss!671)) t!2881) tb!2541))

(declare-fun result!2581 () Bool)

(assert (=> tb!2541 (= result!2581 true)))

(assert (=> d!8315 t!2881))

(declare-fun b_and!4763 () Bool)

(assert (= b_and!4755 (and (=> t!2881 result!2581) b_and!4763)))

(declare-fun t!2883 () Bool)

(declare-fun tb!2543 () Bool)

(assert (=> (and b!10302 (= (y!612 that!170) (x!5849 thiss!671)) t!2883) tb!2543))

(declare-fun result!2583 () Bool)

(assert (=> tb!2543 (= result!2583 true)))

(assert (=> d!8315 t!2883))

(declare-fun b_and!4765 () Bool)

(assert (= b_and!4757 (and (=> t!2883 result!2583) b_and!4765)))

(declare-fun b_lambda!5439 () Bool)

(assert (=> (not b_lambda!5439) (not d!8315)))

(assert (=> d!8315 t!2861))

(declare-fun b_and!4767 () Bool)

(assert (= b_and!4759 (and (=> t!2861 result!2561) b_and!4767)))

(assert (=> d!8315 t!2863))

(declare-fun b_and!4769 () Bool)

(assert (= b_and!4761 (and (=> t!2863 result!2563) b_and!4769)))

(assert (=> d!8315 t!2865))

(declare-fun b_and!4771 () Bool)

(assert (= b_and!4763 (and (=> t!2865 result!2565) b_and!4771)))

(assert (=> d!8315 t!2867))

(declare-fun b_and!4773 () Bool)

(assert (= b_and!4765 (and (=> t!2867 result!2567) b_and!4773)))

(declare-fun b_lambda!5441 () Bool)

(assert (=> (not b_lambda!5441) (not b!10341)))

(assert (=> b!10341 t!2857))

(declare-fun b_and!4775 () Bool)

(assert (= b_and!4739 (and (=> t!2857 result!2557) b_and!4775)))

(assert (=> b!10341 t!2859))

(declare-fun b_and!4777 () Bool)

(assert (= b_and!4741 (and (=> t!2859 result!2559) b_and!4777)))

(declare-fun m!13425 () Bool)

(assert (=> d!8315 m!13425))

(assert (=> d!8315 m!13379))

(assert (=> b!10341 m!13377))

(assert (=> start!2060 d!8315))

(declare-fun d!8317 () Bool)

(declare-fun res!3599 () Bool)

(declare-fun e!6039 () Bool)

(assert (=> d!8317 (=> (not res!3599) (not e!6039))))

(assert (=> d!8317 (= res!3599 (= (dynLambda!341 (x!5849 that!170)) (dynLambda!341 (y!612 that!170))))))

(assert (=> d!8317 (= (inv!357 that!170) e!6039)))

(declare-fun b!10342 () Bool)

(assert (=> b!10342 (= e!6039 (dynLambda!342 (evidence!172 that!170)))))

(assert (= (and d!8317 res!3599) b!10342))

(declare-fun b_lambda!5443 () Bool)

(assert (=> (not b_lambda!5443) (not d!8317)))

(assert (=> d!8317 t!2869))

(declare-fun b_and!4779 () Bool)

(assert (= b_and!4767 (and (=> t!2869 result!2569) b_and!4779)))

(assert (=> d!8317 t!2871))

(declare-fun b_and!4781 () Bool)

(assert (= b_and!4769 (and (=> t!2871 result!2571) b_and!4781)))

(assert (=> d!8317 t!2873))

(declare-fun b_and!4783 () Bool)

(assert (= b_and!4771 (and (=> t!2873 result!2573) b_and!4783)))

(assert (=> d!8317 t!2875))

(declare-fun b_and!4785 () Bool)

(assert (= b_and!4773 (and (=> t!2875 result!2575) b_and!4785)))

(declare-fun b_lambda!5445 () Bool)

(assert (=> (not b_lambda!5445) (not d!8317)))

(declare-fun tb!2545 () Bool)

(declare-fun t!2885 () Bool)

(assert (=> (and b!10296 (= (x!5849 thiss!671) (y!612 that!170)) t!2885) tb!2545))

(declare-fun result!2585 () Bool)

(assert (=> tb!2545 (= result!2585 true)))

(assert (=> d!8317 t!2885))

(declare-fun b_and!4787 () Bool)

(assert (= b_and!4779 (and (=> t!2885 result!2585) b_and!4787)))

(declare-fun tb!2547 () Bool)

(declare-fun t!2887 () Bool)

(assert (=> (and b!10296 (= (y!612 thiss!671) (y!612 that!170)) t!2887) tb!2547))

(declare-fun result!2587 () Bool)

(assert (=> tb!2547 (= result!2587 true)))

(assert (=> d!8317 t!2887))

(declare-fun b_and!4789 () Bool)

(assert (= b_and!4781 (and (=> t!2887 result!2587) b_and!4789)))

(declare-fun t!2889 () Bool)

(declare-fun tb!2549 () Bool)

(assert (=> (and b!10302 (= (x!5849 that!170) (y!612 that!170)) t!2889) tb!2549))

(declare-fun result!2589 () Bool)

(assert (=> tb!2549 (= result!2589 true)))

(assert (=> d!8317 t!2889))

(declare-fun b_and!4791 () Bool)

(assert (= b_and!4783 (and (=> t!2889 result!2589) b_and!4791)))

(declare-fun t!2891 () Bool)

(declare-fun tb!2551 () Bool)

(assert (=> (and b!10302 (= (y!612 that!170) (y!612 that!170)) t!2891) tb!2551))

(declare-fun result!2591 () Bool)

(assert (=> tb!2551 (= result!2591 true)))

(assert (=> d!8317 t!2891))

(declare-fun b_and!4793 () Bool)

(assert (= b_and!4785 (and (=> t!2891 result!2591) b_and!4793)))

(declare-fun b_lambda!5447 () Bool)

(assert (=> (not b_lambda!5447) (not b!10342)))

(declare-fun t!2893 () Bool)

(declare-fun tb!2553 () Bool)

(assert (=> (and b!10296 (= (evidence!172 thiss!671) (evidence!172 that!170)) t!2893) tb!2553))

(declare-fun result!2593 () Bool)

(assert (=> tb!2553 (= result!2593 true)))

(assert (=> b!10342 t!2893))

(declare-fun b_and!4795 () Bool)

(assert (= b_and!4775 (and (=> t!2893 result!2593) b_and!4795)))

(declare-fun t!2895 () Bool)

(declare-fun tb!2555 () Bool)

(assert (=> (and b!10302 (= (evidence!172 that!170) (evidence!172 that!170)) t!2895) tb!2555))

(declare-fun result!2595 () Bool)

(assert (=> tb!2555 (= result!2595 true)))

(assert (=> b!10342 t!2895))

(declare-fun b_and!4797 () Bool)

(assert (= b_and!4777 (and (=> t!2895 result!2595) b_and!4797)))

(assert (=> d!8317 m!13381))

(declare-fun m!13427 () Bool)

(assert (=> d!8317 m!13427))

(declare-fun m!13429 () Bool)

(assert (=> b!10342 m!13429))

(assert (=> start!2060 d!8317))

(assert (=> bs!2757 d!8307))

(assert (=> bs!2757 d!8309))

(assert (=> bs!2757 d!8311))

(declare-fun d!8319 () Bool)

(assert (=> d!8319 (= (nonNegative!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) (and (>= (extraOpen!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0) (>= (extraClose!168 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) 0)))))

(assert (=> b!10294 d!8319))

(assert (=> b!10294 d!8311))

(declare-fun d!8321 () Bool)

(declare-fun c!3228 () Bool)

(assert (=> d!8321 (= c!3228 (is-Nil!242 xs!280))))

(declare-fun e!6040 () Int)

(assert (=> d!8321 (= (foldRight!58 xs!280 0 lambda!2759) e!6040)))

(declare-fun b!10343 () Bool)

(assert (=> b!10343 (= e!6040 0)))

(declare-fun b!10344 () Bool)

(assert (=> b!10344 (= e!6040 (dynLambda!343 lambda!2759 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(assert (= (and d!8321 c!3228) b!10343))

(assert (= (and d!8321 (not c!3228)) b!10344))

(declare-fun b_lambda!5449 () Bool)

(assert (=> (not b_lambda!5449) (not b!10344)))

(assert (=> b!10344 m!13395))

(assert (=> b!10344 m!13395))

(declare-fun m!13431 () Bool)

(assert (=> b!10344 m!13431))

(assert (=> b!10300 d!8321))

(declare-fun b_lambda!5451 () Bool)

(assert (= b_lambda!5449 (or b!10300 b_lambda!5451)))

(declare-fun bs!2761 () Bool)

(declare-fun d!8323 () Bool)

(assert (= bs!2761 (and d!8323 b!10300)))

(assert (=> bs!2761 (= (dynLambda!343 lambda!2759 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)) (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(assert (=> bs!2761 m!13395))

(assert (=> bs!2761 m!13397))

(assert (=> b!10344 d!8323))

(declare-fun b_lambda!5453 () Bool)

(assert (= b_lambda!5441 (or (and b!10303 (= lambda!2762 (evidence!172 thiss!671))) (and b!10293 (= lambda!2764 (evidence!172 thiss!671))) (and b!10296 b_free!1345) (and b!10302 b_free!1351 (= (evidence!172 that!170) (evidence!172 thiss!671))) b_lambda!5453)))

(assert (=> (and b!10303 (= lambda!2762 (evidence!172 thiss!671)) b!10341) d!8285))

(assert (=> (and b!10293 (= lambda!2764 (evidence!172 thiss!671)) b!10341) d!8287))

(declare-fun b_lambda!5455 () Bool)

(assert (= b_lambda!5433 (or start!2060 b_lambda!5455)))

(declare-fun bs!2762 () Bool)

(declare-fun d!8325 () Bool)

(assert (= bs!2762 (and d!8325 start!2060)))

(declare-fun +$colon!0 (Balance!255 Parenthesis!67) Balance!255)

(assert (=> bs!2762 (= (dynLambda!344 lambda!2758 (head!459 (tail!471 xs!280)) (foldRight!57 (tail!471 (tail!471 xs!280)) (Balance!256 0 0) lambda!2758)) (+$colon!0 (foldRight!57 (tail!471 (tail!471 xs!280)) (Balance!256 0 0) lambda!2758) (head!459 (tail!471 xs!280))))))

(assert (=> bs!2762 m!13419))

(declare-fun m!13433 () Bool)

(assert (=> bs!2762 m!13433))

(assert (=> b!10336 d!8325))

(declare-fun b_lambda!5457 () Bool)

(assert (= b_lambda!5443 (or (and b!10303 (= lambda!2761 (x!5849 that!170))) (and b!10293 (= lambda!2763 (x!5849 that!170))) (and b!10303 (= lambda!2760 (x!5849 that!170))) (and b!10302 b_free!1349 (= (y!612 that!170) (x!5849 that!170))) (and b!10296 b_free!1341 (= (x!5849 thiss!671) (x!5849 that!170))) (and b!10302 b_free!1347) (and b!10296 b_free!1343 (= (y!612 thiss!671) (x!5849 that!170))) b_lambda!5457)))

(assert (=> (and b!10303 (= lambda!2760 (x!5849 that!170)) d!8317) d!8289))

(assert (=> (and b!10303 (= lambda!2761 (x!5849 that!170)) d!8317) d!8291))

(assert (=> (and b!10293 (= lambda!2763 (x!5849 that!170)) d!8317) d!8293))

(declare-fun b_lambda!5459 () Bool)

(assert (= b_lambda!5447 (or (and b!10303 (= lambda!2762 (evidence!172 that!170))) (and b!10293 (= lambda!2764 (evidence!172 that!170))) (and b!10296 b_free!1345 (= (evidence!172 thiss!671) (evidence!172 that!170))) (and b!10302 b_free!1351) b_lambda!5459)))

(declare-fun bs!2763 () Bool)

(declare-fun d!8327 () Bool)

(assert (= bs!2763 (and d!8327 b!10303)))

(assert (=> bs!2763 (= (dynLambda!342 lambda!2762) true)))

(assert (=> (and b!10303 (= lambda!2762 (evidence!172 that!170)) b!10342) d!8327))

(declare-fun bs!2764 () Bool)

(declare-fun d!8329 () Bool)

(assert (= bs!2764 (and d!8329 b!10293)))

(assert (=> bs!2764 (= (dynLambda!342 lambda!2764) trivial!1)))

(assert (=> (and b!10293 (= lambda!2764 (evidence!172 that!170)) b!10342) d!8329))

(declare-fun b_lambda!5461 () Bool)

(assert (= b_lambda!5435 (or start!2060 b_lambda!5461)))

(declare-fun bs!2765 () Bool)

(declare-fun d!8331 () Bool)

(assert (= bs!2765 (and d!8331 start!2060)))

(assert (=> bs!2765 (= (dynLambda!344 lambda!2758 (head!459 xs!280) (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758)) (+$colon!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758) (head!459 xs!280)))))

(assert (=> bs!2765 m!13371))

(declare-fun m!13435 () Bool)

(assert (=> bs!2765 m!13435))

(assert (=> b!10338 d!8331))

(declare-fun b_lambda!5463 () Bool)

(assert (= b_lambda!5437 (or (and b!10302 b_free!1349 (= (y!612 that!170) (x!5849 thiss!671))) (and b!10302 b_free!1347 (= (x!5849 that!170) (x!5849 thiss!671))) (and b!10296 b_free!1341) (and b!10303 (= lambda!2760 (x!5849 thiss!671))) (and b!10296 b_free!1343 (= (y!612 thiss!671) (x!5849 thiss!671))) (and b!10293 (= lambda!2763 (x!5849 thiss!671))) (and b!10303 (= lambda!2761 (x!5849 thiss!671))) b_lambda!5463)))

(declare-fun bs!2766 () Bool)

(declare-fun d!8333 () Bool)

(assert (= bs!2766 (and d!8333 b!10303)))

(assert (=> bs!2766 (= (dynLambda!341 lambda!2761) (updateCounter!0 (head!459 xs!280) (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758))))))

(assert (=> bs!2766 m!13371))

(assert (=> bs!2766 m!13371))

(assert (=> bs!2766 m!13391))

(assert (=> bs!2766 m!13391))

(assert (=> bs!2766 m!13393))

(assert (=> (and b!10303 (= lambda!2761 (x!5849 thiss!671)) d!8315) d!8333))

(declare-fun bs!2767 () Bool)

(declare-fun d!8335 () Bool)

(assert (= bs!2767 (and d!8335 b!10293)))

(assert (=> bs!2767 (= (dynLambda!341 lambda!2763) (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(assert (=> bs!2767 m!13395))

(assert (=> bs!2767 m!13395))

(assert (=> bs!2767 m!13397))

(assert (=> (and b!10293 (= lambda!2763 (x!5849 thiss!671)) d!8315) d!8335))

(declare-fun bs!2768 () Bool)

(declare-fun d!8337 () Bool)

(assert (= bs!2768 (and d!8337 b!10303)))

(assert (=> bs!2768 (= (dynLambda!341 lambda!2760) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10303 (= lambda!2760 (x!5849 thiss!671)) d!8315) d!8337))

(declare-fun b_lambda!5465 () Bool)

(assert (= b_lambda!5445 (or (and b!10302 b_free!1347 (= (x!5849 that!170) (y!612 that!170))) (and b!10302 b_free!1349) (and b!10293 (= lambda!2763 (y!612 that!170))) (and b!10296 b_free!1343 (= (y!612 thiss!671) (y!612 that!170))) (and b!10303 (= lambda!2760 (y!612 that!170))) (and b!10296 b_free!1341 (= (x!5849 thiss!671) (y!612 that!170))) (and b!10303 (= lambda!2761 (y!612 that!170))) b_lambda!5465)))

(declare-fun bs!2769 () Bool)

(declare-fun d!8339 () Bool)

(assert (= bs!2769 (and d!8339 b!10303)))

(assert (=> bs!2769 (= (dynLambda!341 lambda!2760) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10303 (= lambda!2760 (y!612 that!170)) d!8317) d!8339))

(declare-fun bs!2770 () Bool)

(declare-fun d!8341 () Bool)

(assert (= bs!2770 (and d!8341 b!10293)))

(assert (=> bs!2770 (= (dynLambda!341 lambda!2763) (updateCounter!0 (head!459 xs!280) (foldRight!58 (tail!471 xs!280) 0 lambda!2759)))))

(assert (=> bs!2770 m!13395))

(assert (=> bs!2770 m!13395))

(assert (=> bs!2770 m!13397))

(assert (=> (and b!10293 (= lambda!2763 (y!612 that!170)) d!8317) d!8341))

(declare-fun bs!2771 () Bool)

(declare-fun d!8343 () Bool)

(assert (= bs!2771 (and d!8343 b!10303)))

(assert (=> bs!2771 (= (dynLambda!341 lambda!2761) (updateCounter!0 (head!459 xs!280) (balanceToCounter!0 (foldRight!57 (tail!471 xs!280) (Balance!256 0 0) lambda!2758))))))

(assert (=> bs!2771 m!13371))

(assert (=> bs!2771 m!13371))

(assert (=> bs!2771 m!13391))

(assert (=> bs!2771 m!13391))

(assert (=> bs!2771 m!13393))

(assert (=> (and b!10303 (= lambda!2761 (y!612 that!170)) d!8317) d!8343))

(declare-fun b_lambda!5467 () Bool)

(assert (= b_lambda!5439 (or (and b!10303 (= lambda!2760 (y!612 thiss!671))) (and b!10302 b_free!1349 (= (y!612 that!170) (y!612 thiss!671))) (and b!10296 b_free!1341 (= (x!5849 thiss!671) (y!612 thiss!671))) (and b!10302 b_free!1347 (= (x!5849 that!170) (y!612 thiss!671))) (and b!10296 b_free!1343) (and b!10293 (= lambda!2763 (y!612 thiss!671))) (and b!10303 (= lambda!2761 (y!612 thiss!671))) b_lambda!5467)))

(assert (=> (and b!10303 (= lambda!2760 (y!612 thiss!671)) d!8315) d!8279))

(assert (=> (and b!10303 (= lambda!2761 (y!612 thiss!671)) d!8315) d!8281))

(assert (=> (and b!10293 (= lambda!2763 (y!612 thiss!671)) d!8315) d!8283))

(declare-fun b_lambda!5469 () Bool)

(assert (= b_lambda!5431 (or b!10300 b_lambda!5469)))

(declare-fun bs!2772 () Bool)

(declare-fun d!8345 () Bool)

(assert (= bs!2772 (and d!8345 b!10300)))

(assert (=> bs!2772 (= (dynLambda!343 lambda!2759 (head!459 (tail!471 xs!280)) (foldRight!58 (tail!471 (tail!471 xs!280)) 0 lambda!2759)) (updateCounter!0 (head!459 (tail!471 xs!280)) (foldRight!58 (tail!471 (tail!471 xs!280)) 0 lambda!2759)))))

(assert (=> bs!2772 m!13399))

(declare-fun m!13437 () Bool)

(assert (=> bs!2772 m!13437))

(assert (=> b!10314 d!8345))

(push 1)

(assert b_and!4793)

(assert (not b!10314))

(assert b_and!4787)

(assert (not b!10327))

(assert (not b_lambda!5451))

(assert (not b_lambda!5457))

(assert (not b!10344))

(assert (not b_next!3309))

(assert (not b!10325))

(assert (not b_next!3311))

(assert (not b!10328))

(assert (not b!10336))

(assert (not b_lambda!5455))

(assert (not d!8299))

(assert (not b_lambda!5463))

(assert (not bs!2765))

(assert (not bs!2766))

(assert (not b_lambda!5459))

(assert (not bs!2767))

(assert (not b_next!3317))

(assert (not b!10326))

(assert (not bs!2772))

(assert (not b_lambda!5453))

(assert (not b_lambda!5467))

(assert (not b_lambda!5469))

(assert (not b_lambda!5425))

(assert (not b_next!3319))

(assert (not b_lambda!5429))

(assert (not bs!2771))

(assert (not b_next!3315))

(assert b_and!4795)

(assert (not bs!2762))

(assert b_and!4791)

(assert (not b_next!3313))

(assert (not b_lambda!5461))

(assert (not bs!2770))

(assert b_and!4797)

(assert (not b_lambda!5427))

(assert (not b!10338))

(assert (not b_lambda!5465))

(assert b_and!4789)

(assert (not bs!2761))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4793)

(assert b_and!4787)

(assert (not b_next!3309))

(assert (not b_next!3311))

(assert (not b_next!3317))

(assert (not b_next!3319))

(assert (not b_next!3315))

(assert b_and!4795)

(assert b_and!4791)

(assert (not b_next!3313))

(assert b_and!4797)

(assert b_and!4789)

(check-sat)

(pop 1)

