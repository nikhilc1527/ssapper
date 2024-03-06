; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2190 () Bool)

(assert start!2190)

(declare-fun b_free!1443 () Bool)

(declare-fun b_next!3489 () Bool)

(assert (=> start!2190 (= b_free!1443 (not b_next!3489))))

(declare-fun tp!2332 () Bool)

(declare-fun b_and!5013 () Bool)

(assert (=> start!2190 (= tp!2332 b_and!5013)))

(declare-fun b_free!1445 () Bool)

(declare-fun b_next!3491 () Bool)

(assert (=> start!2190 (= b_free!1445 (not b_next!3491))))

(declare-fun tp!2328 () Bool)

(declare-fun b_and!5015 () Bool)

(assert (=> start!2190 (= tp!2328 b_and!5015)))

(declare-fun b!10893 () Bool)

(declare-fun b_free!1447 () Bool)

(declare-fun b_next!3493 () Bool)

(assert (=> b!10893 (= b_free!1447 (not b_next!3493))))

(declare-fun tp!2329 () Bool)

(declare-fun b_and!5017 () Bool)

(assert (=> b!10893 (= tp!2329 b_and!5017)))

(declare-fun b_free!1449 () Bool)

(declare-fun b_next!3495 () Bool)

(assert (=> b!10893 (= b_free!1449 (not b_next!3495))))

(declare-fun tp!2330 () Bool)

(declare-fun b_and!5019 () Bool)

(assert (=> b!10893 (= tp!2330 b_and!5019)))

(declare-fun b_free!1451 () Bool)

(declare-fun b_next!3497 () Bool)

(assert (=> b!10893 (= b_free!1451 (not b_next!3497))))

(declare-fun tp!2331 () Bool)

(declare-fun b_and!5021 () Bool)

(assert (=> b!10893 (= tp!2331 b_and!5021)))

(declare-fun f!539 () Int)

(declare-fun b!10891 () Bool)

(declare-fun b_next!3499 () Bool)

(declare-fun lambda!2889 () Int)

(assert (=> start!2190 (= b_next!3489 (or (and b!10891 (= lambda!2889 f!539)) b_next!3499))))

(declare-fun b_next!3501 () Bool)

(declare-fun f!556 () Int)

(assert (=> start!2190 (= b_next!3491 (or (and b!10891 (= lambda!2889 f!556)) b_next!3501))))

(declare-fun b!10888 () Bool)

(assert (=> b!10888 true))

(declare-fun order!171 () Int)

(declare-fun lambda!2890 () Int)

(declare-fun order!173 () Int)

(declare-fun dynLambda!367 (Int Int) Int)

(declare-fun dynLambda!368 (Int Int) Int)

(assert (=> b!10888 (< (dynLambda!367 order!171 f!539) (dynLambda!368 order!173 lambda!2890))))

(assert (=> b!10888 true))

(assert (=> b!10888 true))

(declare-fun b_next!3503 () Bool)

(declare-datatypes () ((Balance!283 (Balance!284 (extraOpen!182 Int) (extraClose!182 Int)))))

(declare-datatypes () ((EqEvidence!222 (EqEvidence!223 (x!6093 Int) (y!622 Int) (evidence!178 Int)))))

(declare-fun thiss!720 () EqEvidence!222)

(assert (=> b!10893 (= b_next!3493 (or (and b!10888 (= lambda!2890 (x!6093 thiss!720))) b_next!3503))))

(declare-fun b_next!3505 () Bool)

(assert (=> b!10893 (= b_next!3495 (or (and b!10888 (= lambda!2890 (y!622 thiss!720))) b_next!3505))))

(declare-fun lambda!2891 () Int)

(assert (=> b!10888 (not (= lambda!2891 lambda!2890))))

(assert (=> b!10888 true))

(assert (=> b!10888 (< (dynLambda!367 order!171 f!539) (dynLambda!368 order!173 lambda!2891))))

(assert (=> b!10888 true))

(assert (=> b!10888 true))

(declare-fun b_next!3507 () Bool)

(assert (=> b!10893 (= b_next!3503 (or (and b!10888 (= lambda!2891 (x!6093 thiss!720))) b_next!3507))))

(declare-fun b_next!3509 () Bool)

(assert (=> b!10893 (= b_next!3505 (or (and b!10888 (= lambda!2891 (y!622 thiss!720))) b_next!3509))))

(assert (=> b!10888 true))

(assert (=> b!10888 true))

(declare-fun b_next!3511 () Bool)

(declare-fun lambda!2892 () Int)

(assert (=> b!10893 (= b_next!3497 (or (and b!10888 (= lambda!2892 (evidence!178 thiss!720))) b_next!3511))))

(declare-fun b!10885 () Bool)

(declare-fun res!3893 () Bool)

(declare-fun e!6268 () Bool)

(assert (=> b!10885 (=> (not res!3893) (not e!6268))))

(assert (=> b!10885 (= res!3893 (= f!556 f!539))))

(declare-fun b!10886 () Bool)

(declare-fun res!3895 () Bool)

(assert (=> b!10886 (=> (not res!3895) (not e!6268))))

(declare-datatypes () ((List!261 (Nil!259) (Cons!258 (head!476 Balance!283) (tail!488 List!261)))))

(declare-fun ys!54 () List!261)

(declare-fun isEmpty!189 (List!261) Bool)

(assert (=> b!10886 (= res!3895 (not (isEmpty!189 ys!54)))))

(declare-fun res!3890 () Bool)

(assert (=> start!2190 (=> (not res!3890) (not e!6268))))

(declare-fun xs!292 () List!261)

(assert (=> start!2190 (= res!3890 (not (isEmpty!189 xs!292)))))

(assert (=> start!2190 e!6268))

(assert (=> start!2190 tp!2332))

(assert (=> start!2190 tp!2328))

(assert (=> start!2190 true))

(declare-fun e!6267 () Bool)

(declare-fun inv!367 (EqEvidence!222) Bool)

(assert (=> start!2190 (and (inv!367 thiss!720) e!6267)))

(declare-fun b!10887 () Bool)

(declare-fun thiss!738 () List!261)

(assert (=> b!10887 (= e!6268 (isEmpty!189 thiss!738))))

(declare-fun res!3894 () Bool)

(assert (=> b!10888 (=> (not res!3894) (not e!6268))))

(assert (=> b!10888 (= res!3894 (= thiss!720 (EqEvidence!223 lambda!2890 lambda!2891 lambda!2892)))))

(declare-fun b!10889 () Bool)

(declare-fun res!3892 () Bool)

(assert (=> b!10889 (=> (not res!3892) (not e!6268))))

(declare-fun append!110 (List!261 List!261) List!261)

(assert (=> b!10889 (= res!3892 (= thiss!738 (append!110 xs!292 ys!54)))))

(declare-fun b!10890 () Bool)

(declare-fun res!3891 () Bool)

(assert (=> b!10890 (=> (not res!3891) (not e!6268))))

(declare-datatypes () ((ProofOps!222 (ProofOps!223 (prop!244 Bool)))))

(declare-fun thiss!710 () ProofOps!222)

(declare-fun dynLambda!369 (Int Balance!283 Balance!283) Balance!283)

(declare-fun foldRight1!91 (List!261 Int) Balance!283)

(assert (=> b!10890 (= res!3891 (= thiss!710 (ProofOps!223 (= (dynLambda!369 f!539 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)) (foldRight1!91 (append!110 xs!292 ys!54) f!539)))))))

(declare-fun res!3896 () Bool)

(assert (=> b!10891 (=> (not res!3896) (not e!6268))))

(assert (=> b!10891 (= res!3896 (= f!539 lambda!2889))))

(declare-fun b!10892 () Bool)

(declare-fun res!3889 () Bool)

(assert (=> b!10892 (=> (not res!3889) (not e!6268))))

(assert (=> b!10892 (= res!3889 (and (is-Cons!258 xs!292) (is-Nil!259 (tail!488 xs!292))))))

(assert (=> b!10893 (= e!6267 (and tp!2329 tp!2330 tp!2331))))

(assert (= (and start!2190 res!3890) b!10886))

(assert (= (and b!10886 res!3895) b!10891))

(assert (= (and b!10891 res!3896) b!10890))

(assert (= (and b!10890 res!3891) b!10892))

(assert (= (and b!10892 res!3889) b!10888))

(assert (= (and b!10888 res!3894) b!10889))

(assert (= (and b!10889 res!3892) b!10885))

(assert (= (and b!10885 res!3893) b!10887))

(assert (= start!2190 b!10893))

(declare-fun b_lambda!5623 () Bool)

(assert (=> (not b_lambda!5623) (not b!10890)))

(declare-fun t!2991 () Bool)

(declare-fun tb!2651 () Bool)

(assert (=> (and start!2190 (= f!539 f!539) t!2991) tb!2651))

(declare-fun result!2703 () Bool)

(assert (=> tb!2651 (= result!2703 true)))

(assert (=> b!10890 t!2991))

(declare-fun b_and!5023 () Bool)

(assert (= b_and!5013 (and (=> t!2991 result!2703) b_and!5023)))

(declare-fun tb!2653 () Bool)

(declare-fun t!2993 () Bool)

(assert (=> (and start!2190 (= f!556 f!539) t!2993) tb!2653))

(declare-fun result!2705 () Bool)

(assert (=> tb!2653 (= result!2705 true)))

(assert (=> b!10890 t!2993))

(declare-fun b_and!5025 () Bool)

(assert (= b_and!5015 (and (=> t!2993 result!2705) b_and!5025)))

(declare-fun m!13855 () Bool)

(assert (=> b!10886 m!13855))

(declare-fun m!13857 () Bool)

(assert (=> b!10889 m!13857))

(assert (=> b!10890 m!13857))

(declare-fun m!13859 () Bool)

(assert (=> b!10890 m!13859))

(declare-fun m!13861 () Bool)

(assert (=> b!10890 m!13861))

(assert (=> b!10890 m!13859))

(assert (=> b!10890 m!13861))

(declare-fun m!13863 () Bool)

(assert (=> b!10890 m!13863))

(assert (=> b!10890 m!13857))

(declare-fun m!13865 () Bool)

(assert (=> b!10890 m!13865))

(declare-fun m!13867 () Bool)

(assert (=> b!10887 m!13867))

(declare-fun m!13869 () Bool)

(assert (=> start!2190 m!13869))

(declare-fun m!13871 () Bool)

(assert (=> start!2190 m!13871))

(push 1)

(assert (not b_next!3501))

(assert (not b_next!3511))

(assert (not b!10886))

(assert b_and!5023)

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert (not b!10890))

(assert b_and!5017)

(assert (not b!10887))

(assert (not b!10889))

(assert b_and!5019)

(assert b_and!5025)

(assert (not start!2190))

(assert (not b_lambda!5623))

(assert b_and!5021)

(assert (not b_next!3507))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3501))

(assert (not b_next!3511))

(assert b_and!5023)

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert b_and!5017)

(assert b_and!5019)

(assert b_and!5025)

(assert b_and!5021)

(assert (not b_next!3507))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5625 () Bool)

(assert (= b_lambda!5623 (or (and b!10891 (= lambda!2889 f!539)) (and start!2190 b_free!1443) (and start!2190 b_free!1445 (= f!556 f!539)) b_lambda!5625)))

(declare-fun bs!2835 () Bool)

(declare-fun d!8553 () Bool)

(assert (= bs!2835 (and d!8553 b!10891)))

(declare-fun ++!3 (Balance!283 Balance!283) Balance!283)

(assert (=> bs!2835 (= (dynLambda!369 lambda!2889 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)) (++!3 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)))))

(assert (=> bs!2835 m!13859))

(assert (=> bs!2835 m!13861))

(declare-fun m!13873 () Bool)

(assert (=> bs!2835 m!13873))

(assert (=> (and b!10891 (= lambda!2889 f!539) b!10890) d!8553))

(push 1)

(assert (not b_next!3501))

(assert (not b_next!3511))

(assert (not bs!2835))

(assert (not b!10886))

(assert b_and!5023)

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert (not b!10890))

(assert b_and!5017)

(assert (not b!10887))

(assert (not b_lambda!5625))

(assert (not b!10889))

(assert b_and!5019)

(assert b_and!5025)

(assert (not start!2190))

(assert b_and!5021)

(assert (not b_next!3507))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3501))

(assert (not b_next!3511))

(assert b_and!5023)

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert b_and!5017)

(assert b_and!5019)

(assert b_and!5025)

(assert b_and!5021)

(assert (not b_next!3507))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8555 () Bool)

(assert (=> d!8555 (= (isEmpty!189 ys!54) (is-Nil!259 ys!54))))

(assert (=> b!10886 d!8555))

(declare-fun d!8557 () Bool)

(assert (=> d!8557 (= (isEmpty!189 thiss!738) (is-Nil!259 thiss!738))))

(assert (=> b!10887 d!8557))

(declare-fun d!8559 () Bool)

(declare-fun c!3325 () Bool)

(assert (=> d!8559 (= c!3325 (and (is-Cons!258 xs!292) (is-Nil!259 (tail!488 xs!292))))))

(declare-fun e!6271 () Balance!283)

(assert (=> d!8559 (= (foldRight1!91 xs!292 f!539) e!6271)))

(declare-fun b!10904 () Bool)

(assert (=> b!10904 (= e!6271 (head!476 xs!292))))

(declare-fun b!10905 () Bool)

(assert (=> b!10905 (= e!6271 (dynLambda!369 f!539 (head!476 xs!292) (foldRight1!91 (tail!488 xs!292) f!539)))))

(assert (= (and d!8559 c!3325) b!10904))

(assert (= (and d!8559 (not c!3325)) b!10905))

(declare-fun b_lambda!5627 () Bool)

(assert (=> (not b_lambda!5627) (not b!10905)))

(declare-fun t!2995 () Bool)

(declare-fun tb!2655 () Bool)

(assert (=> (and start!2190 (= f!539 f!539) t!2995) tb!2655))

(declare-fun result!2707 () Bool)

(assert (=> tb!2655 (= result!2707 true)))

(assert (=> b!10905 t!2995))

(declare-fun b_and!5027 () Bool)

(assert (= b_and!5023 (and (=> t!2995 result!2707) b_and!5027)))

(declare-fun t!2997 () Bool)

(declare-fun tb!2657 () Bool)

(assert (=> (and start!2190 (= f!556 f!539) t!2997) tb!2657))

(declare-fun result!2709 () Bool)

(assert (=> tb!2657 (= result!2709 true)))

(assert (=> b!10905 t!2997))

(declare-fun b_and!5029 () Bool)

(assert (= b_and!5025 (and (=> t!2997 result!2709) b_and!5029)))

(declare-fun m!13875 () Bool)

(assert (=> b!10905 m!13875))

(assert (=> b!10905 m!13875))

(declare-fun m!13877 () Bool)

(assert (=> b!10905 m!13877))

(assert (=> b!10890 d!8559))

(declare-fun d!8561 () Bool)

(declare-fun c!3326 () Bool)

(assert (=> d!8561 (= c!3326 (and (is-Cons!258 ys!54) (is-Nil!259 (tail!488 ys!54))))))

(declare-fun e!6272 () Balance!283)

(assert (=> d!8561 (= (foldRight1!91 ys!54 f!539) e!6272)))

(declare-fun b!10906 () Bool)

(assert (=> b!10906 (= e!6272 (head!476 ys!54))))

(declare-fun b!10907 () Bool)

(assert (=> b!10907 (= e!6272 (dynLambda!369 f!539 (head!476 ys!54) (foldRight1!91 (tail!488 ys!54) f!539)))))

(assert (= (and d!8561 c!3326) b!10906))

(assert (= (and d!8561 (not c!3326)) b!10907))

(declare-fun b_lambda!5629 () Bool)

(assert (=> (not b_lambda!5629) (not b!10907)))

(declare-fun t!2999 () Bool)

(declare-fun tb!2659 () Bool)

(assert (=> (and start!2190 (= f!539 f!539) t!2999) tb!2659))

(declare-fun result!2711 () Bool)

(assert (=> tb!2659 (= result!2711 true)))

(assert (=> b!10907 t!2999))

(declare-fun b_and!5031 () Bool)

(assert (= b_and!5027 (and (=> t!2999 result!2711) b_and!5031)))

(declare-fun tb!2661 () Bool)

(declare-fun t!3001 () Bool)

(assert (=> (and start!2190 (= f!556 f!539) t!3001) tb!2661))

(declare-fun result!2713 () Bool)

(assert (=> tb!2661 (= result!2713 true)))

(assert (=> b!10907 t!3001))

(declare-fun b_and!5033 () Bool)

(assert (= b_and!5029 (and (=> t!3001 result!2713) b_and!5033)))

(declare-fun m!13879 () Bool)

(assert (=> b!10907 m!13879))

(assert (=> b!10907 m!13879))

(declare-fun m!13881 () Bool)

(assert (=> b!10907 m!13881))

(assert (=> b!10890 d!8561))

(declare-fun d!8563 () Bool)

(declare-fun c!3327 () Bool)

(assert (=> d!8563 (= c!3327 (and (is-Cons!258 (append!110 xs!292 ys!54)) (is-Nil!259 (tail!488 (append!110 xs!292 ys!54)))))))

(declare-fun e!6273 () Balance!283)

(assert (=> d!8563 (= (foldRight1!91 (append!110 xs!292 ys!54) f!539) e!6273)))

(declare-fun b!10908 () Bool)

(assert (=> b!10908 (= e!6273 (head!476 (append!110 xs!292 ys!54)))))

(declare-fun b!10909 () Bool)

(assert (=> b!10909 (= e!6273 (dynLambda!369 f!539 (head!476 (append!110 xs!292 ys!54)) (foldRight1!91 (tail!488 (append!110 xs!292 ys!54)) f!539)))))

(assert (= (and d!8563 c!3327) b!10908))

(assert (= (and d!8563 (not c!3327)) b!10909))

(declare-fun b_lambda!5631 () Bool)

(assert (=> (not b_lambda!5631) (not b!10909)))

(declare-fun t!3003 () Bool)

(declare-fun tb!2663 () Bool)

(assert (=> (and start!2190 (= f!539 f!539) t!3003) tb!2663))

(declare-fun result!2715 () Bool)

(assert (=> tb!2663 (= result!2715 true)))

(assert (=> b!10909 t!3003))

(declare-fun b_and!5035 () Bool)

(assert (= b_and!5031 (and (=> t!3003 result!2715) b_and!5035)))

(declare-fun t!3005 () Bool)

(declare-fun tb!2665 () Bool)

(assert (=> (and start!2190 (= f!556 f!539) t!3005) tb!2665))

(declare-fun result!2717 () Bool)

(assert (=> tb!2665 (= result!2717 true)))

(assert (=> b!10909 t!3005))

(declare-fun b_and!5037 () Bool)

(assert (= b_and!5033 (and (=> t!3005 result!2717) b_and!5037)))

(declare-fun m!13883 () Bool)

(assert (=> b!10909 m!13883))

(assert (=> b!10909 m!13883))

(declare-fun m!13885 () Bool)

(assert (=> b!10909 m!13885))

(assert (=> b!10890 d!8563))

(declare-fun d!8565 () Bool)

(declare-fun c!3330 () Bool)

(assert (=> d!8565 (= c!3330 (is-Nil!259 xs!292))))

(declare-fun e!6276 () List!261)

(assert (=> d!8565 (= (append!110 xs!292 ys!54) e!6276)))

(declare-fun b!10914 () Bool)

(assert (=> b!10914 (= e!6276 ys!54)))

(declare-fun b!10915 () Bool)

(assert (=> b!10915 (= e!6276 (Cons!258 (head!476 xs!292) (append!110 (tail!488 xs!292) ys!54)))))

(assert (= (and d!8565 c!3330) b!10914))

(assert (= (and d!8565 (not c!3330)) b!10915))

(declare-fun m!13887 () Bool)

(assert (=> b!10915 m!13887))

(assert (=> b!10890 d!8565))

(declare-fun d!8567 () Bool)

(declare-fun lt!1745 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8567 (= lt!1745 (min!4 (extraOpen!182 (foldRight1!91 xs!292 f!539)) (extraClose!182 (foldRight1!91 ys!54 f!539))))))

(assert (=> d!8567 (= (++!3 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)) (Balance!284 (- (+ (extraOpen!182 (foldRight1!91 xs!292 f!539)) (extraOpen!182 (foldRight1!91 ys!54 f!539))) lt!1745) (- (+ (extraClose!182 (foldRight1!91 xs!292 f!539)) (extraClose!182 (foldRight1!91 ys!54 f!539))) lt!1745)))))

(declare-fun bs!2836 () Bool)

(assert (= bs!2836 d!8567))

(declare-fun m!13889 () Bool)

(assert (=> bs!2836 m!13889))

(assert (=> bs!2835 d!8567))

(assert (=> b!10889 d!8565))

(declare-fun d!8569 () Bool)

(assert (=> d!8569 (= (isEmpty!189 xs!292) (is-Nil!259 xs!292))))

(assert (=> start!2190 d!8569))

(declare-fun d!8571 () Bool)

(declare-fun res!3899 () Bool)

(declare-fun e!6279 () Bool)

(assert (=> d!8571 (=> (not res!3899) (not e!6279))))

(declare-fun dynLambda!370 (Int) Balance!283)

(assert (=> d!8571 (= res!3899 (= (dynLambda!370 (x!6093 thiss!720)) (dynLambda!370 (y!622 thiss!720))))))

(assert (=> d!8571 (= (inv!367 thiss!720) e!6279)))

(declare-fun b!10918 () Bool)

(declare-fun dynLambda!371 (Int) Bool)

(assert (=> b!10918 (= e!6279 (dynLambda!371 (evidence!178 thiss!720)))))

(assert (= (and d!8571 res!3899) b!10918))

(declare-fun b_lambda!5633 () Bool)

(assert (=> (not b_lambda!5633) (not d!8571)))

(declare-fun t!3007 () Bool)

(declare-fun tb!2667 () Bool)

(assert (=> (and b!10893 (= (x!6093 thiss!720) (x!6093 thiss!720)) t!3007) tb!2667))

(declare-fun result!2719 () Bool)

(assert (=> tb!2667 (= result!2719 true)))

(assert (=> d!8571 t!3007))

(declare-fun b_and!5039 () Bool)

(assert (= b_and!5017 (and (=> t!3007 result!2719) b_and!5039)))

(declare-fun t!3009 () Bool)

(declare-fun tb!2669 () Bool)

(assert (=> (and b!10893 (= (y!622 thiss!720) (x!6093 thiss!720)) t!3009) tb!2669))

(declare-fun result!2721 () Bool)

(assert (=> tb!2669 (= result!2721 true)))

(assert (=> d!8571 t!3009))

(declare-fun b_and!5041 () Bool)

(assert (= b_and!5019 (and (=> t!3009 result!2721) b_and!5041)))

(declare-fun b_lambda!5635 () Bool)

(assert (=> (not b_lambda!5635) (not d!8571)))

(declare-fun t!3011 () Bool)

(declare-fun tb!2671 () Bool)

(assert (=> (and b!10893 (= (x!6093 thiss!720) (y!622 thiss!720)) t!3011) tb!2671))

(declare-fun result!2723 () Bool)

(assert (=> tb!2671 (= result!2723 true)))

(assert (=> d!8571 t!3011))

(declare-fun b_and!5043 () Bool)

(assert (= b_and!5039 (and (=> t!3011 result!2723) b_and!5043)))

(declare-fun t!3013 () Bool)

(declare-fun tb!2673 () Bool)

(assert (=> (and b!10893 (= (y!622 thiss!720) (y!622 thiss!720)) t!3013) tb!2673))

(declare-fun result!2725 () Bool)

(assert (=> tb!2673 (= result!2725 true)))

(assert (=> d!8571 t!3013))

(declare-fun b_and!5045 () Bool)

(assert (= b_and!5041 (and (=> t!3013 result!2725) b_and!5045)))

(declare-fun b_lambda!5637 () Bool)

(assert (=> (not b_lambda!5637) (not b!10918)))

(declare-fun t!3015 () Bool)

(declare-fun tb!2675 () Bool)

(assert (=> (and b!10893 (= (evidence!178 thiss!720) (evidence!178 thiss!720)) t!3015) tb!2675))

(declare-fun result!2727 () Bool)

(assert (=> tb!2675 (= result!2727 true)))

(assert (=> b!10918 t!3015))

(declare-fun b_and!5047 () Bool)

(assert (= b_and!5021 (and (=> t!3015 result!2727) b_and!5047)))

(declare-fun m!13891 () Bool)

(assert (=> d!8571 m!13891))

(declare-fun m!13893 () Bool)

(assert (=> d!8571 m!13893))

(declare-fun m!13895 () Bool)

(assert (=> b!10918 m!13895))

(assert (=> start!2190 d!8571))

(declare-fun b_lambda!5639 () Bool)

(assert (= b_lambda!5629 (or (and b!10891 (= lambda!2889 f!539)) (and start!2190 b_free!1443) (and start!2190 b_free!1445 (= f!556 f!539)) b_lambda!5639)))

(declare-fun bs!2837 () Bool)

(declare-fun d!8573 () Bool)

(assert (= bs!2837 (and d!8573 b!10891)))

(assert (=> bs!2837 (= (dynLambda!369 lambda!2889 (head!476 ys!54) (foldRight1!91 (tail!488 ys!54) f!539)) (++!3 (head!476 ys!54) (foldRight1!91 (tail!488 ys!54) f!539)))))

(assert (=> bs!2837 m!13879))

(declare-fun m!13897 () Bool)

(assert (=> bs!2837 m!13897))

(assert (=> (and b!10891 (= lambda!2889 f!539) b!10907) d!8573))

(declare-fun b_lambda!5641 () Bool)

(assert (= b_lambda!5633 (or (and b!10888 (= lambda!2890 (x!6093 thiss!720))) (and b!10888 (= lambda!2891 (x!6093 thiss!720))) (and b!10893 b_free!1447) (and b!10893 b_free!1449 (= (y!622 thiss!720) (x!6093 thiss!720))) b_lambda!5641)))

(declare-fun bs!2838 () Bool)

(declare-fun d!8575 () Bool)

(assert (= bs!2838 (and d!8575 b!10888)))

(assert (=> bs!2838 (= (dynLambda!370 lambda!2890) (dynLambda!369 f!539 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)))))

(declare-fun b_lambda!5651 () Bool)

(assert (=> (not b_lambda!5651) (not bs!2838)))

(assert (=> bs!2838 t!2991))

(declare-fun b_and!5049 () Bool)

(assert (= b_and!5035 (and (=> t!2991 result!2703) b_and!5049)))

(assert (=> bs!2838 t!2993))

(declare-fun b_and!5051 () Bool)

(assert (= b_and!5037 (and (=> t!2993 result!2705) b_and!5051)))

(assert (=> bs!2838 m!13859))

(assert (=> bs!2838 m!13861))

(assert (=> bs!2838 m!13859))

(assert (=> bs!2838 m!13861))

(assert (=> bs!2838 m!13863))

(assert (=> (and b!10888 (= lambda!2890 (x!6093 thiss!720)) d!8571) d!8575))

(declare-fun bs!2839 () Bool)

(declare-fun d!8577 () Bool)

(assert (= bs!2839 (and d!8577 b!10888)))

(assert (=> bs!2839 (= (dynLambda!370 lambda!2891) (foldRight1!91 (Cons!258 (head!476 xs!292) ys!54) f!539))))

(declare-fun m!13899 () Bool)

(assert (=> bs!2839 m!13899))

(assert (=> (and b!10888 (= lambda!2891 (x!6093 thiss!720)) d!8571) d!8577))

(declare-fun b_lambda!5643 () Bool)

(assert (= b_lambda!5637 (or (and b!10888 (= lambda!2892 (evidence!178 thiss!720))) (and b!10893 b_free!1451) b_lambda!5643)))

(declare-fun bs!2840 () Bool)

(declare-fun d!8579 () Bool)

(assert (= bs!2840 (and d!8579 b!10888)))

(assert (=> bs!2840 (= (dynLambda!371 lambda!2892) (= (append!110 xs!292 ys!54) (Cons!258 (head!476 xs!292) ys!54)))))

(assert (=> bs!2840 m!13857))

(assert (=> (and b!10888 (= lambda!2892 (evidence!178 thiss!720)) b!10918) d!8579))

(declare-fun b_lambda!5645 () Bool)

(assert (= b_lambda!5635 (or (and b!10888 (= lambda!2890 (y!622 thiss!720))) (and b!10888 (= lambda!2891 (y!622 thiss!720))) (and b!10893 b_free!1447 (= (x!6093 thiss!720) (y!622 thiss!720))) (and b!10893 b_free!1449) b_lambda!5645)))

(declare-fun bs!2841 () Bool)

(declare-fun d!8581 () Bool)

(assert (= bs!2841 (and d!8581 b!10888)))

(assert (=> bs!2841 (= (dynLambda!370 lambda!2890) (dynLambda!369 f!539 (foldRight1!91 xs!292 f!539) (foldRight1!91 ys!54 f!539)))))

(declare-fun b_lambda!5653 () Bool)

(assert (=> (not b_lambda!5653) (not bs!2841)))

(assert (=> bs!2841 t!2991))

(declare-fun b_and!5053 () Bool)

(assert (= b_and!5049 (and (=> t!2991 result!2703) b_and!5053)))

(assert (=> bs!2841 t!2993))

(declare-fun b_and!5055 () Bool)

(assert (= b_and!5051 (and (=> t!2993 result!2705) b_and!5055)))

(assert (=> bs!2841 m!13859))

(assert (=> bs!2841 m!13861))

(assert (=> bs!2841 m!13859))

(assert (=> bs!2841 m!13861))

(assert (=> bs!2841 m!13863))

(assert (=> (and b!10888 (= lambda!2890 (y!622 thiss!720)) d!8571) d!8581))

(declare-fun bs!2842 () Bool)

(declare-fun d!8583 () Bool)

(assert (= bs!2842 (and d!8583 b!10888)))

(assert (=> bs!2842 (= (dynLambda!370 lambda!2891) (foldRight1!91 (Cons!258 (head!476 xs!292) ys!54) f!539))))

(assert (=> bs!2842 m!13899))

(assert (=> (and b!10888 (= lambda!2891 (y!622 thiss!720)) d!8571) d!8583))

(declare-fun b_lambda!5647 () Bool)

(assert (= b_lambda!5631 (or (and b!10891 (= lambda!2889 f!539)) (and start!2190 b_free!1443) (and start!2190 b_free!1445 (= f!556 f!539)) b_lambda!5647)))

(declare-fun bs!2843 () Bool)

(declare-fun d!8585 () Bool)

(assert (= bs!2843 (and d!8585 b!10891)))

(assert (=> bs!2843 (= (dynLambda!369 lambda!2889 (head!476 (append!110 xs!292 ys!54)) (foldRight1!91 (tail!488 (append!110 xs!292 ys!54)) f!539)) (++!3 (head!476 (append!110 xs!292 ys!54)) (foldRight1!91 (tail!488 (append!110 xs!292 ys!54)) f!539)))))

(assert (=> bs!2843 m!13883))

(declare-fun m!13901 () Bool)

(assert (=> bs!2843 m!13901))

(assert (=> (and b!10891 (= lambda!2889 f!539) b!10909) d!8585))

(declare-fun b_lambda!5649 () Bool)

(assert (= b_lambda!5627 (or (and b!10891 (= lambda!2889 f!539)) (and start!2190 b_free!1443) (and start!2190 b_free!1445 (= f!556 f!539)) b_lambda!5649)))

(declare-fun bs!2844 () Bool)

(declare-fun d!8587 () Bool)

(assert (= bs!2844 (and d!8587 b!10891)))

(assert (=> bs!2844 (= (dynLambda!369 lambda!2889 (head!476 xs!292) (foldRight1!91 (tail!488 xs!292) f!539)) (++!3 (head!476 xs!292) (foldRight1!91 (tail!488 xs!292) f!539)))))

(assert (=> bs!2844 m!13875))

(declare-fun m!13903 () Bool)

(assert (=> bs!2844 m!13903))

(assert (=> (and b!10891 (= lambda!2889 f!539) b!10905) d!8587))

(push 1)

(assert b_and!5047)

(assert b_and!5043)

(assert (not b_lambda!5653))

(assert (not bs!2839))

(assert b_and!5055)

(assert (not bs!2843))

(assert (not bs!2844))

(assert (not b_lambda!5643))

(assert (not b_next!3501))

(assert (not d!8567))

(assert (not b_next!3511))

(assert (not bs!2842))

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert (not b!10915))

(assert (not bs!2841))

(assert b_and!5045)

(assert (not b_lambda!5625))

(assert (not bs!2837))

(assert (not b!10905))

(assert (not b!10909))

(assert b_and!5053)

(assert (not b_lambda!5647))

(assert (not b_lambda!5639))

(assert (not bs!2838))

(assert (not b!10907))

(assert (not b_lambda!5641))

(assert (not b_lambda!5651))

(assert (not b_lambda!5645))

(assert (not bs!2840))

(assert (not b_next!3507))

(assert (not b_lambda!5649))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5047)

(assert b_and!5043)

(assert b_and!5055)

(assert (not b_next!3501))

(assert (not b_next!3511))

(assert (not b_next!3499))

(assert (not b_next!3509))

(assert b_and!5045)

(assert b_and!5053)

(assert (not b_next!3507))

(check-sat)

(pop 1)

