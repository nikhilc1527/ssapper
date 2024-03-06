; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2346 () Bool)

(assert start!2346)

(declare-fun b_free!1651 () Bool)

(declare-fun b_next!3957 () Bool)

(assert (=> start!2346 (= b_free!1651 (not b_next!3957))))

(declare-fun tp!2647 () Bool)

(declare-fun b_and!5785 () Bool)

(assert (=> start!2346 (= tp!2647 b_and!5785)))

(declare-fun b_free!1653 () Bool)

(declare-fun b_next!3959 () Bool)

(assert (=> start!2346 (= b_free!1653 (not b_next!3959))))

(declare-fun tp!2646 () Bool)

(declare-fun b_and!5787 () Bool)

(assert (=> start!2346 (= tp!2646 b_and!5787)))

(declare-fun b!11713 () Bool)

(declare-fun b_free!1655 () Bool)

(declare-fun b_next!3961 () Bool)

(assert (=> b!11713 (= b_free!1655 (not b_next!3961))))

(declare-fun tp!2648 () Bool)

(declare-fun b_and!5789 () Bool)

(assert (=> b!11713 (= tp!2648 b_and!5789)))

(declare-fun b_free!1657 () Bool)

(declare-fun b_next!3963 () Bool)

(assert (=> b!11713 (= b_free!1657 (not b_next!3963))))

(declare-fun tp!2645 () Bool)

(declare-fun b_and!5791 () Bool)

(assert (=> b!11713 (= tp!2645 b_and!5791)))

(declare-fun b!11715 () Bool)

(declare-fun b_free!1659 () Bool)

(declare-fun b_next!3965 () Bool)

(assert (=> b!11715 (= b_free!1659 (not b_next!3965))))

(declare-fun tp!2644 () Bool)

(declare-fun b_and!5793 () Bool)

(assert (=> b!11715 (= tp!2644 b_and!5793)))

(declare-fun b_free!1661 () Bool)

(declare-fun b_next!3967 () Bool)

(assert (=> b!11715 (= b_free!1661 (not b_next!3967))))

(declare-fun tp!2649 () Bool)

(declare-fun b_and!5795 () Bool)

(assert (=> b!11715 (= tp!2649 b_and!5795)))

(declare-fun b_free!1663 () Bool)

(declare-fun b_next!3969 () Bool)

(assert (=> b!11715 (= b_free!1663 (not b_next!3969))))

(declare-fun tp!2650 () Bool)

(declare-fun b_and!5797 () Bool)

(assert (=> b!11715 (= tp!2650 b_and!5797)))

(declare-fun f!539 () Int)

(declare-fun lambda!3138 () Int)

(declare-fun b!11710 () Bool)

(declare-fun b_next!3971 () Bool)

(assert (=> start!2346 (= b_next!3957 (or (and b!11710 (= lambda!3138 f!539)) b_next!3971))))

(declare-fun b!11707 () Bool)

(assert (=> b!11707 true))

(declare-fun order!269 () Int)

(declare-fun order!271 () Int)

(declare-fun lambda!3139 () Int)

(declare-fun dynLambda!461 (Int Int) Int)

(declare-fun dynLambda!462 (Int Int) Int)

(assert (=> b!11707 (< (dynLambda!461 order!269 f!539) (dynLambda!462 order!271 lambda!3139))))

(assert (=> b!11707 true))

(assert (=> b!11707 true))

(declare-fun b_next!3973 () Bool)

(declare-datatypes () ((Balance!323 (Balance!324 (extraOpen!202 Int) (extraClose!202 Int)))))

(declare-datatypes () ((EqProof!118 (EqProof!119 (x!6650 Int) (y!644 Int)))))

(declare-fun thiss!733 () EqProof!118)

(assert (=> b!11713 (= b_next!3961 (or (and b!11707 (= lambda!3139 (x!6650 thiss!733))) b_next!3973))))

(declare-fun b_next!3975 () Bool)

(assert (=> b!11713 (= b_next!3963 (or (and b!11707 (= lambda!3139 (y!644 thiss!733))) b_next!3975))))

(declare-fun b_next!3977 () Bool)

(declare-datatypes () ((EqEvidence!252 (EqEvidence!253 (x!6651 Int) (y!645 Int) (evidence!193 Int)))))

(declare-fun thiss!721 () EqEvidence!252)

(assert (=> b!11715 (= b_next!3965 (or (and b!11707 (= lambda!3139 (x!6651 thiss!721))) b_next!3977))))

(declare-fun b_next!3979 () Bool)

(assert (=> b!11715 (= b_next!3967 (or (and b!11707 (= lambda!3139 (y!645 thiss!721))) b_next!3979))))

(declare-fun lambda!3140 () Int)

(assert (=> b!11707 (not (= lambda!3140 lambda!3139))))

(assert (=> b!11707 true))

(assert (=> b!11707 (< (dynLambda!461 order!269 f!539) (dynLambda!462 order!271 lambda!3140))))

(assert (=> b!11707 true))

(assert (=> b!11707 true))

(declare-fun b_next!3981 () Bool)

(assert (=> b!11713 (= b_next!3973 (or (and b!11707 (= lambda!3140 (x!6650 thiss!733))) b_next!3981))))

(declare-fun b_next!3983 () Bool)

(assert (=> b!11713 (= b_next!3975 (or (and b!11707 (= lambda!3140 (y!644 thiss!733))) b_next!3983))))

(declare-fun b_next!3985 () Bool)

(assert (=> b!11715 (= b_next!3977 (or (and b!11707 (= lambda!3140 (x!6651 thiss!721))) b_next!3985))))

(declare-fun b_next!3987 () Bool)

(assert (=> b!11715 (= b_next!3979 (or (and b!11707 (= lambda!3140 (y!645 thiss!721))) b_next!3987))))

(declare-fun m!14593 () Bool)

(assert (=> b!11707 m!14593))

(declare-fun lambda!3141 () Int)

(declare-fun proof!208 () Int)

(declare-fun dynLambda!463 (Int) Bool)

(assert (=> (and start!2346 b!11707 (= (dynLambda!463 lambda!3141) (dynLambda!463 proof!208))) (= lambda!3141 proof!208)))

(assert (=> (and b!11715 b!11707 (= (dynLambda!463 lambda!3141) (dynLambda!463 (evidence!193 thiss!721)))) (= lambda!3141 (evidence!193 thiss!721))))

(declare-fun b_next!3989 () Bool)

(assert (=> start!2346 (= b_next!3959 (or (and b!11707 (= lambda!3141 proof!208)) b_next!3989))))

(declare-fun b_next!3991 () Bool)

(assert (=> b!11715 (= b_next!3969 (or (and b!11707 (= lambda!3141 (evidence!193 thiss!721))) b_next!3991))))

(declare-fun bs!2990 () Bool)

(declare-fun b!11711 () Bool)

(assert (= bs!2990 (and b!11711 b!11707)))

(declare-fun lambda!3142 () Int)

(assert (=> bs!2990 (not (= lambda!3142 lambda!3139))))

(assert (=> bs!2990 (not (= lambda!3142 lambda!3140))))

(assert (=> b!11711 true))

(assert (=> b!11711 (< (dynLambda!461 order!269 f!539) (dynLambda!462 order!271 lambda!3142))))

(assert (=> b!11711 true))

(assert (=> b!11711 true))

(declare-fun b_next!3993 () Bool)

(assert (=> b!11713 (= b_next!3981 (or (and b!11711 (= lambda!3142 (x!6650 thiss!733))) b_next!3993))))

(declare-fun b_next!3995 () Bool)

(assert (=> b!11713 (= b_next!3983 (or (and b!11711 (= lambda!3142 (y!644 thiss!733))) b_next!3995))))

(declare-fun b_next!3997 () Bool)

(assert (=> b!11715 (= b_next!3985 (or (and b!11711 (= lambda!3142 (x!6651 thiss!721))) b_next!3997))))

(declare-fun b_next!3999 () Bool)

(assert (=> b!11715 (= b_next!3987 (or (and b!11711 (= lambda!3142 (y!645 thiss!721))) b_next!3999))))

(declare-fun bs!2991 () Bool)

(declare-fun b!11716 () Bool)

(assert (= bs!2991 (and b!11716 b!11707)))

(declare-fun lambda!3143 () Int)

(assert (=> bs!2991 (not (= lambda!3143 lambda!3141))))

(assert (=> b!11716 true))

(assert (=> b!11716 true))

(declare-fun b_next!4001 () Bool)

(assert (=> start!2346 (= b_next!3989 (or (and b!11716 (= lambda!3143 proof!208)) b_next!4001))))

(declare-fun b_next!4003 () Bool)

(assert (=> b!11715 (= b_next!3991 (or (and b!11716 (= lambda!3143 (evidence!193 thiss!721))) b_next!4003))))

(declare-fun res!4321 () Bool)

(declare-fun e!6518 () Bool)

(assert (=> b!11707 (=> (not res!4321) (not e!6518))))

(assert (=> b!11707 (= res!4321 (= thiss!721 (EqEvidence!253 lambda!3139 lambda!3140 lambda!3141)))))

(declare-fun b!11708 () Bool)

(declare-fun res!4323 () Bool)

(assert (=> b!11708 (=> (not res!4323) (not e!6518))))

(declare-datatypes () ((List!279 (Nil!277) (Cons!276 (head!494 Balance!323) (tail!506 List!279)))))

(declare-fun ys!54 () List!279)

(declare-datatypes () ((ProofOps!258 (ProofOps!259 (prop!262 Bool)))))

(declare-fun thiss!710 () ProofOps!258)

(declare-fun xs!292 () List!279)

(declare-fun dynLambda!464 (Int Balance!323 Balance!323) Balance!323)

(declare-fun foldRight1!109 (List!279 Int) Balance!323)

(declare-fun append!128 (List!279 List!279) List!279)

(assert (=> b!11708 (= res!4323 (= thiss!710 (ProofOps!259 (= (dynLambda!464 f!539 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)) (foldRight1!109 (append!128 xs!292 ys!54) f!539)))))))

(declare-fun b!11709 () Bool)

(assert (=> b!11709 (= e!6518 (not (dynLambda!463 proof!208)))))

(declare-fun res!4318 () Bool)

(assert (=> b!11710 (=> (not res!4318) (not e!6518))))

(assert (=> b!11710 (= res!4318 (= f!539 lambda!3138))))

(declare-fun res!4320 () Bool)

(assert (=> b!11711 (=> (not res!4320) (not e!6518))))

(assert (=> b!11711 (= res!4320 (= thiss!733 (EqProof!119 lambda!3142 lambda!3142)))))

(declare-fun b!11712 () Bool)

(declare-fun res!4324 () Bool)

(assert (=> b!11712 (=> (not res!4324) (not e!6518))))

(declare-fun isEmpty!207 (List!279) Bool)

(assert (=> b!11712 (= res!4324 (not (isEmpty!207 ys!54)))))

(declare-fun res!4325 () Bool)

(assert (=> start!2346 (=> (not res!4325) (not e!6518))))

(assert (=> start!2346 (= res!4325 (not (isEmpty!207 xs!292)))))

(assert (=> start!2346 e!6518))

(assert (=> start!2346 tp!2647))

(assert (=> start!2346 true))

(assert (=> start!2346 tp!2646))

(declare-fun e!6519 () Bool)

(declare-fun inv!389 (EqProof!118) Bool)

(assert (=> start!2346 (and (inv!389 thiss!733) e!6519)))

(declare-fun e!6520 () Bool)

(declare-fun inv!390 (EqEvidence!252) Bool)

(assert (=> start!2346 (and (inv!390 thiss!721) e!6520)))

(assert (=> b!11713 (= e!6519 (and tp!2648 tp!2645))))

(declare-fun b!11714 () Bool)

(declare-fun res!4322 () Bool)

(assert (=> b!11714 (=> (not res!4322) (not e!6518))))

(assert (=> b!11714 (= res!4322 (and (is-Cons!276 xs!292) (is-Nil!277 (tail!506 xs!292))))))

(assert (=> b!11715 (= e!6520 (and tp!2644 tp!2649 tp!2650))))

(declare-fun res!4319 () Bool)

(assert (=> b!11716 (=> (not res!4319) (not e!6518))))

(assert (=> b!11716 (= res!4319 (= proof!208 lambda!3143))))

(assert (= (and start!2346 res!4325) b!11712))

(assert (= (and b!11712 res!4324) b!11710))

(assert (= (and b!11710 res!4318) b!11708))

(assert (= (and b!11708 res!4323) b!11714))

(assert (= (and b!11714 res!4322) b!11707))

(assert (= (and b!11707 res!4321) b!11711))

(assert (= (and b!11711 res!4320) b!11716))

(assert (= (and b!11716 res!4319) b!11709))

(assert (= start!2346 b!11713))

(assert (= start!2346 b!11715))

(declare-fun b_lambda!6127 () Bool)

(assert (=> (not b_lambda!6127) (not b!11708)))

(declare-fun t!3405 () Bool)

(declare-fun tb!3065 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3405) tb!3065))

(declare-fun result!3117 () Bool)

(assert (=> tb!3065 (= result!3117 true)))

(assert (=> b!11708 t!3405))

(declare-fun b_and!5799 () Bool)

(assert (= b_and!5785 (and (=> t!3405 result!3117) b_and!5799)))

(declare-fun b_lambda!6129 () Bool)

(assert (=> (not b_lambda!6129) (not b!11709)))

(declare-fun t!3407 () Bool)

(declare-fun tb!3067 () Bool)

(assert (=> (and start!2346 (= proof!208 proof!208) t!3407) tb!3067))

(declare-fun result!3119 () Bool)

(assert (=> tb!3067 (= result!3119 true)))

(assert (=> b!11709 t!3407))

(declare-fun b_and!5801 () Bool)

(assert (= b_and!5787 (and (=> t!3407 result!3119) b_and!5801)))

(declare-fun t!3409 () Bool)

(declare-fun tb!3069 () Bool)

(assert (=> (and b!11715 (= (evidence!193 thiss!721) proof!208) t!3409) tb!3069))

(declare-fun result!3121 () Bool)

(assert (=> tb!3069 (= result!3121 true)))

(assert (=> b!11709 t!3409))

(declare-fun b_and!5803 () Bool)

(assert (= b_and!5797 (and (=> t!3409 result!3121) b_and!5803)))

(declare-fun m!14595 () Bool)

(assert (=> b!11708 m!14595))

(declare-fun m!14597 () Bool)

(assert (=> b!11708 m!14597))

(declare-fun m!14599 () Bool)

(assert (=> b!11708 m!14599))

(assert (=> b!11708 m!14597))

(assert (=> b!11708 m!14599))

(declare-fun m!14601 () Bool)

(assert (=> b!11708 m!14601))

(assert (=> b!11708 m!14595))

(declare-fun m!14603 () Bool)

(assert (=> b!11708 m!14603))

(declare-fun m!14605 () Bool)

(assert (=> b!11709 m!14605))

(declare-fun m!14607 () Bool)

(assert (=> b!11712 m!14607))

(declare-fun m!14609 () Bool)

(assert (=> start!2346 m!14609))

(declare-fun m!14611 () Bool)

(assert (=> start!2346 m!14611))

(declare-fun m!14613 () Bool)

(assert (=> start!2346 m!14613))

(push 1)

(assert b_and!5801)

(assert (not b_lambda!6129))

(assert (not b_next!3997))

(assert (not b!11707))

(assert b_and!5795)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert (not b_lambda!6127))

(assert (not b!11712))

(assert b_and!5803)

(assert b_and!5791)

(assert (not start!2346))

(assert (not b!11708))

(assert b_and!5799)

(assert (not b_next!4001))

(assert b_and!5789)

(assert b_and!5793)

(assert (not b_next!3971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5801)

(assert (not b_next!3997))

(assert b_and!5795)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert b_and!5803)

(assert b_and!5791)

(assert b_and!5799)

(assert (not b_next!4001))

(assert b_and!5789)

(assert b_and!5793)

(assert (not b_next!3971))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6131 () Bool)

(assert (= b_lambda!6129 (or (and b!11707 (= lambda!3141 proof!208)) (and b!11716 (= lambda!3143 proof!208)) (and start!2346 b_free!1653) (and b!11715 b_free!1663 (= (evidence!193 thiss!721) proof!208)) b_lambda!6131)))

(declare-fun bs!2992 () Bool)

(declare-fun d!9001 () Bool)

(assert (= bs!2992 (and d!9001 b!11707)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2992 (= (dynLambda!463 lambda!3141) trivial!1)))

(assert (=> (and b!11707 (= lambda!3141 proof!208) b!11709) d!9001))

(declare-fun bs!2993 () Bool)

(declare-fun d!9003 () Bool)

(assert (= bs!2993 (and d!9003 b!11716)))

(assert (=> bs!2993 (= (dynLambda!463 lambda!3143) (= (append!128 xs!292 ys!54) (Cons!276 (head!494 xs!292) ys!54)))))

(assert (=> bs!2993 m!14595))

(assert (=> (and b!11716 (= lambda!3143 proof!208) b!11709) d!9003))

(declare-fun b_lambda!6133 () Bool)

(assert (= b_lambda!6127 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6133)))

(declare-fun bs!2994 () Bool)

(declare-fun d!9005 () Bool)

(assert (= bs!2994 (and d!9005 b!11710)))

(declare-fun ++!3 (Balance!323 Balance!323) Balance!323)

(assert (=> bs!2994 (= (dynLambda!464 lambda!3138 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)) (++!3 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)))))

(assert (=> bs!2994 m!14597))

(assert (=> bs!2994 m!14599))

(declare-fun m!14615 () Bool)

(assert (=> bs!2994 m!14615))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11708) d!9005))

(push 1)

(assert b_and!5801)

(assert (not b_next!3997))

(assert (not b!11707))

(assert b_and!5795)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert (not b!11712))

(assert (not bs!2993))

(assert b_and!5803)

(assert b_and!5791)

(assert (not start!2346))

(assert (not b!11708))

(assert (not bs!2994))

(assert b_and!5799)

(assert (not b_next!4001))

(assert b_and!5789)

(assert (not b_lambda!6131))

(assert b_and!5793)

(assert (not b_lambda!6133))

(assert (not b_next!3971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5801)

(assert (not b_next!3997))

(assert b_and!5795)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert b_and!5803)

(assert b_and!5791)

(assert b_and!5799)

(assert (not b_next!4001))

(assert b_and!5789)

(assert b_and!5793)

(assert (not b_next!3971))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9007 () Bool)

(assert (=> d!9007 (= (isEmpty!207 ys!54) (is-Nil!277 ys!54))))

(assert (=> b!11712 d!9007))

(declare-fun d!9009 () Bool)

(declare-fun c!3415 () Bool)

(assert (=> d!9009 (= c!3415 (is-Nil!277 xs!292))))

(declare-fun e!6523 () List!279)

(assert (=> d!9009 (= (append!128 xs!292 ys!54) e!6523)))

(declare-fun b!11727 () Bool)

(assert (=> b!11727 (= e!6523 ys!54)))

(declare-fun b!11728 () Bool)

(assert (=> b!11728 (= e!6523 (Cons!276 (head!494 xs!292) (append!128 (tail!506 xs!292) ys!54)))))

(assert (= (and d!9009 c!3415) b!11727))

(assert (= (and d!9009 (not c!3415)) b!11728))

(declare-fun m!14617 () Bool)

(assert (=> b!11728 m!14617))

(assert (=> bs!2993 d!9009))

(declare-fun d!9011 () Bool)

(assert (=> d!9011 (= (isEmpty!207 xs!292) (is-Nil!277 xs!292))))

(assert (=> start!2346 d!9011))

(declare-fun d!9013 () Bool)

(declare-fun dynLambda!465 (Int) Balance!323)

(assert (=> d!9013 (= (inv!389 thiss!733) (= (dynLambda!465 (x!6650 thiss!733)) (dynLambda!465 (y!644 thiss!733))))))

(declare-fun b_lambda!6135 () Bool)

(assert (=> (not b_lambda!6135) (not d!9013)))

(declare-fun t!3411 () Bool)

(declare-fun tb!3071 () Bool)

(assert (=> (and b!11713 (= (x!6650 thiss!733) (x!6650 thiss!733)) t!3411) tb!3071))

(declare-fun result!3123 () Bool)

(assert (=> tb!3071 (= result!3123 true)))

(assert (=> d!9013 t!3411))

(declare-fun b_and!5805 () Bool)

(assert (= b_and!5789 (and (=> t!3411 result!3123) b_and!5805)))

(declare-fun t!3413 () Bool)

(declare-fun tb!3073 () Bool)

(assert (=> (and b!11713 (= (y!644 thiss!733) (x!6650 thiss!733)) t!3413) tb!3073))

(declare-fun result!3125 () Bool)

(assert (=> tb!3073 (= result!3125 true)))

(assert (=> d!9013 t!3413))

(declare-fun b_and!5807 () Bool)

(assert (= b_and!5791 (and (=> t!3413 result!3125) b_and!5807)))

(declare-fun tb!3075 () Bool)

(declare-fun t!3415 () Bool)

(assert (=> (and b!11715 (= (x!6651 thiss!721) (x!6650 thiss!733)) t!3415) tb!3075))

(declare-fun result!3127 () Bool)

(assert (=> tb!3075 (= result!3127 true)))

(assert (=> d!9013 t!3415))

(declare-fun b_and!5809 () Bool)

(assert (= b_and!5793 (and (=> t!3415 result!3127) b_and!5809)))

(declare-fun tb!3077 () Bool)

(declare-fun t!3417 () Bool)

(assert (=> (and b!11715 (= (y!645 thiss!721) (x!6650 thiss!733)) t!3417) tb!3077))

(declare-fun result!3129 () Bool)

(assert (=> tb!3077 (= result!3129 true)))

(assert (=> d!9013 t!3417))

(declare-fun b_and!5811 () Bool)

(assert (= b_and!5795 (and (=> t!3417 result!3129) b_and!5811)))

(declare-fun b_lambda!6137 () Bool)

(assert (=> (not b_lambda!6137) (not d!9013)))

(declare-fun t!3419 () Bool)

(declare-fun tb!3079 () Bool)

(assert (=> (and b!11713 (= (x!6650 thiss!733) (y!644 thiss!733)) t!3419) tb!3079))

(declare-fun result!3131 () Bool)

(assert (=> tb!3079 (= result!3131 true)))

(assert (=> d!9013 t!3419))

(declare-fun b_and!5813 () Bool)

(assert (= b_and!5805 (and (=> t!3419 result!3131) b_and!5813)))

(declare-fun t!3421 () Bool)

(declare-fun tb!3081 () Bool)

(assert (=> (and b!11713 (= (y!644 thiss!733) (y!644 thiss!733)) t!3421) tb!3081))

(declare-fun result!3133 () Bool)

(assert (=> tb!3081 (= result!3133 true)))

(assert (=> d!9013 t!3421))

(declare-fun b_and!5815 () Bool)

(assert (= b_and!5807 (and (=> t!3421 result!3133) b_and!5815)))

(declare-fun tb!3083 () Bool)

(declare-fun t!3423 () Bool)

(assert (=> (and b!11715 (= (x!6651 thiss!721) (y!644 thiss!733)) t!3423) tb!3083))

(declare-fun result!3135 () Bool)

(assert (=> tb!3083 (= result!3135 true)))

(assert (=> d!9013 t!3423))

(declare-fun b_and!5817 () Bool)

(assert (= b_and!5809 (and (=> t!3423 result!3135) b_and!5817)))

(declare-fun tb!3085 () Bool)

(declare-fun t!3425 () Bool)

(assert (=> (and b!11715 (= (y!645 thiss!721) (y!644 thiss!733)) t!3425) tb!3085))

(declare-fun result!3137 () Bool)

(assert (=> tb!3085 (= result!3137 true)))

(assert (=> d!9013 t!3425))

(declare-fun b_and!5819 () Bool)

(assert (= b_and!5811 (and (=> t!3425 result!3137) b_and!5819)))

(declare-fun m!14619 () Bool)

(assert (=> d!9013 m!14619))

(declare-fun m!14621 () Bool)

(assert (=> d!9013 m!14621))

(assert (=> start!2346 d!9013))

(declare-fun d!9015 () Bool)

(declare-fun res!4328 () Bool)

(declare-fun e!6526 () Bool)

(assert (=> d!9015 (=> (not res!4328) (not e!6526))))

(assert (=> d!9015 (= res!4328 (= (dynLambda!465 (x!6651 thiss!721)) (dynLambda!465 (y!645 thiss!721))))))

(assert (=> d!9015 (= (inv!390 thiss!721) e!6526)))

(declare-fun b!11731 () Bool)

(assert (=> b!11731 (= e!6526 (dynLambda!463 (evidence!193 thiss!721)))))

(assert (= (and d!9015 res!4328) b!11731))

(declare-fun b_lambda!6139 () Bool)

(assert (=> (not b_lambda!6139) (not d!9015)))

(declare-fun t!3427 () Bool)

(declare-fun tb!3087 () Bool)

(assert (=> (and b!11713 (= (x!6650 thiss!733) (x!6651 thiss!721)) t!3427) tb!3087))

(declare-fun result!3139 () Bool)

(assert (=> tb!3087 (= result!3139 true)))

(assert (=> d!9015 t!3427))

(declare-fun b_and!5821 () Bool)

(assert (= b_and!5813 (and (=> t!3427 result!3139) b_and!5821)))

(declare-fun t!3429 () Bool)

(declare-fun tb!3089 () Bool)

(assert (=> (and b!11713 (= (y!644 thiss!733) (x!6651 thiss!721)) t!3429) tb!3089))

(declare-fun result!3141 () Bool)

(assert (=> tb!3089 (= result!3141 true)))

(assert (=> d!9015 t!3429))

(declare-fun b_and!5823 () Bool)

(assert (= b_and!5815 (and (=> t!3429 result!3141) b_and!5823)))

(declare-fun t!3431 () Bool)

(declare-fun tb!3091 () Bool)

(assert (=> (and b!11715 (= (x!6651 thiss!721) (x!6651 thiss!721)) t!3431) tb!3091))

(declare-fun result!3143 () Bool)

(assert (=> tb!3091 (= result!3143 true)))

(assert (=> d!9015 t!3431))

(declare-fun b_and!5825 () Bool)

(assert (= b_and!5817 (and (=> t!3431 result!3143) b_and!5825)))

(declare-fun t!3433 () Bool)

(declare-fun tb!3093 () Bool)

(assert (=> (and b!11715 (= (y!645 thiss!721) (x!6651 thiss!721)) t!3433) tb!3093))

(declare-fun result!3145 () Bool)

(assert (=> tb!3093 (= result!3145 true)))

(assert (=> d!9015 t!3433))

(declare-fun b_and!5827 () Bool)

(assert (= b_and!5819 (and (=> t!3433 result!3145) b_and!5827)))

(declare-fun b_lambda!6141 () Bool)

(assert (=> (not b_lambda!6141) (not d!9015)))

(declare-fun tb!3095 () Bool)

(declare-fun t!3435 () Bool)

(assert (=> (and b!11713 (= (x!6650 thiss!733) (y!645 thiss!721)) t!3435) tb!3095))

(declare-fun result!3147 () Bool)

(assert (=> tb!3095 (= result!3147 true)))

(assert (=> d!9015 t!3435))

(declare-fun b_and!5829 () Bool)

(assert (= b_and!5821 (and (=> t!3435 result!3147) b_and!5829)))

(declare-fun t!3437 () Bool)

(declare-fun tb!3097 () Bool)

(assert (=> (and b!11713 (= (y!644 thiss!733) (y!645 thiss!721)) t!3437) tb!3097))

(declare-fun result!3149 () Bool)

(assert (=> tb!3097 (= result!3149 true)))

(assert (=> d!9015 t!3437))

(declare-fun b_and!5831 () Bool)

(assert (= b_and!5823 (and (=> t!3437 result!3149) b_and!5831)))

(declare-fun t!3439 () Bool)

(declare-fun tb!3099 () Bool)

(assert (=> (and b!11715 (= (x!6651 thiss!721) (y!645 thiss!721)) t!3439) tb!3099))

(declare-fun result!3151 () Bool)

(assert (=> tb!3099 (= result!3151 true)))

(assert (=> d!9015 t!3439))

(declare-fun b_and!5833 () Bool)

(assert (= b_and!5825 (and (=> t!3439 result!3151) b_and!5833)))

(declare-fun t!3441 () Bool)

(declare-fun tb!3101 () Bool)

(assert (=> (and b!11715 (= (y!645 thiss!721) (y!645 thiss!721)) t!3441) tb!3101))

(declare-fun result!3153 () Bool)

(assert (=> tb!3101 (= result!3153 true)))

(assert (=> d!9015 t!3441))

(declare-fun b_and!5835 () Bool)

(assert (= b_and!5827 (and (=> t!3441 result!3153) b_and!5835)))

(declare-fun b_lambda!6143 () Bool)

(assert (=> (not b_lambda!6143) (not b!11731)))

(declare-fun tb!3103 () Bool)

(declare-fun t!3443 () Bool)

(assert (=> (and start!2346 (= proof!208 (evidence!193 thiss!721)) t!3443) tb!3103))

(declare-fun result!3155 () Bool)

(assert (=> tb!3103 (= result!3155 true)))

(assert (=> b!11731 t!3443))

(declare-fun b_and!5837 () Bool)

(assert (= b_and!5801 (and (=> t!3443 result!3155) b_and!5837)))

(declare-fun t!3445 () Bool)

(declare-fun tb!3105 () Bool)

(assert (=> (and b!11715 (= (evidence!193 thiss!721) (evidence!193 thiss!721)) t!3445) tb!3105))

(declare-fun result!3157 () Bool)

(assert (=> tb!3105 (= result!3157 true)))

(assert (=> b!11731 t!3445))

(declare-fun b_and!5839 () Bool)

(assert (= b_and!5803 (and (=> t!3445 result!3157) b_and!5839)))

(declare-fun m!14623 () Bool)

(assert (=> d!9015 m!14623))

(declare-fun m!14625 () Bool)

(assert (=> d!9015 m!14625))

(declare-fun m!14627 () Bool)

(assert (=> b!11731 m!14627))

(assert (=> start!2346 d!9015))

(declare-fun d!9017 () Bool)

(declare-fun c!3418 () Bool)

(assert (=> d!9017 (= c!3418 (and (is-Cons!276 xs!292) (is-Nil!277 (tail!506 xs!292))))))

(declare-fun e!6529 () Balance!323)

(assert (=> d!9017 (= (foldRight1!109 xs!292 f!539) e!6529)))

(declare-fun b!11736 () Bool)

(assert (=> b!11736 (= e!6529 (head!494 xs!292))))

(declare-fun b!11737 () Bool)

(assert (=> b!11737 (= e!6529 (dynLambda!464 f!539 (head!494 xs!292) (foldRight1!109 (tail!506 xs!292) f!539)))))

(assert (= (and d!9017 c!3418) b!11736))

(assert (= (and d!9017 (not c!3418)) b!11737))

(declare-fun b_lambda!6145 () Bool)

(assert (=> (not b_lambda!6145) (not b!11737)))

(declare-fun t!3447 () Bool)

(declare-fun tb!3107 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3447) tb!3107))

(declare-fun result!3159 () Bool)

(assert (=> tb!3107 (= result!3159 true)))

(assert (=> b!11737 t!3447))

(declare-fun b_and!5841 () Bool)

(assert (= b_and!5799 (and (=> t!3447 result!3159) b_and!5841)))

(declare-fun m!14629 () Bool)

(assert (=> b!11737 m!14629))

(assert (=> b!11737 m!14629))

(declare-fun m!14631 () Bool)

(assert (=> b!11737 m!14631))

(assert (=> b!11708 d!9017))

(declare-fun d!9019 () Bool)

(declare-fun c!3419 () Bool)

(assert (=> d!9019 (= c!3419 (and (is-Cons!276 ys!54) (is-Nil!277 (tail!506 ys!54))))))

(declare-fun e!6530 () Balance!323)

(assert (=> d!9019 (= (foldRight1!109 ys!54 f!539) e!6530)))

(declare-fun b!11738 () Bool)

(assert (=> b!11738 (= e!6530 (head!494 ys!54))))

(declare-fun b!11739 () Bool)

(assert (=> b!11739 (= e!6530 (dynLambda!464 f!539 (head!494 ys!54) (foldRight1!109 (tail!506 ys!54) f!539)))))

(assert (= (and d!9019 c!3419) b!11738))

(assert (= (and d!9019 (not c!3419)) b!11739))

(declare-fun b_lambda!6147 () Bool)

(assert (=> (not b_lambda!6147) (not b!11739)))

(declare-fun t!3449 () Bool)

(declare-fun tb!3109 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3449) tb!3109))

(declare-fun result!3161 () Bool)

(assert (=> tb!3109 (= result!3161 true)))

(assert (=> b!11739 t!3449))

(declare-fun b_and!5843 () Bool)

(assert (= b_and!5841 (and (=> t!3449 result!3161) b_and!5843)))

(declare-fun m!14633 () Bool)

(assert (=> b!11739 m!14633))

(assert (=> b!11739 m!14633))

(declare-fun m!14635 () Bool)

(assert (=> b!11739 m!14635))

(assert (=> b!11708 d!9019))

(declare-fun d!9021 () Bool)

(declare-fun c!3420 () Bool)

(assert (=> d!9021 (= c!3420 (and (is-Cons!276 (append!128 xs!292 ys!54)) (is-Nil!277 (tail!506 (append!128 xs!292 ys!54)))))))

(declare-fun e!6531 () Balance!323)

(assert (=> d!9021 (= (foldRight1!109 (append!128 xs!292 ys!54) f!539) e!6531)))

(declare-fun b!11740 () Bool)

(assert (=> b!11740 (= e!6531 (head!494 (append!128 xs!292 ys!54)))))

(declare-fun b!11741 () Bool)

(assert (=> b!11741 (= e!6531 (dynLambda!464 f!539 (head!494 (append!128 xs!292 ys!54)) (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539)))))

(assert (= (and d!9021 c!3420) b!11740))

(assert (= (and d!9021 (not c!3420)) b!11741))

(declare-fun b_lambda!6149 () Bool)

(assert (=> (not b_lambda!6149) (not b!11741)))

(declare-fun t!3451 () Bool)

(declare-fun tb!3111 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3451) tb!3111))

(declare-fun result!3163 () Bool)

(assert (=> tb!3111 (= result!3163 true)))

(assert (=> b!11741 t!3451))

(declare-fun b_and!5845 () Bool)

(assert (= b_and!5843 (and (=> t!3451 result!3163) b_and!5845)))

(declare-fun m!14637 () Bool)

(assert (=> b!11741 m!14637))

(assert (=> b!11741 m!14637))

(declare-fun m!14639 () Bool)

(assert (=> b!11741 m!14639))

(assert (=> b!11708 d!9021))

(assert (=> b!11708 d!9009))

(declare-fun d!9023 () Bool)

(declare-fun lt!1778 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9023 (= lt!1778 (min!4 (extraOpen!202 (foldRight1!109 xs!292 f!539)) (extraClose!202 (foldRight1!109 ys!54 f!539))))))

(assert (=> d!9023 (= (++!3 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)) (Balance!324 (- (+ (extraOpen!202 (foldRight1!109 xs!292 f!539)) (extraOpen!202 (foldRight1!109 ys!54 f!539))) lt!1778) (- (+ (extraClose!202 (foldRight1!109 xs!292 f!539)) (extraClose!202 (foldRight1!109 ys!54 f!539))) lt!1778)))))

(declare-fun bs!2995 () Bool)

(assert (= bs!2995 d!9023))

(declare-fun m!14641 () Bool)

(assert (=> bs!2995 m!14641))

(assert (=> bs!2994 d!9023))

(declare-fun d!9025 () Bool)

(assert (=> d!9025 (= trivial!1 true)))

(assert (=> b!11707 d!9025))

(declare-fun b_lambda!6151 () Bool)

(assert (= b_lambda!6145 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6151)))

(declare-fun bs!2996 () Bool)

(declare-fun d!9027 () Bool)

(assert (= bs!2996 (and d!9027 b!11710)))

(assert (=> bs!2996 (= (dynLambda!464 lambda!3138 (head!494 xs!292) (foldRight1!109 (tail!506 xs!292) f!539)) (++!3 (head!494 xs!292) (foldRight1!109 (tail!506 xs!292) f!539)))))

(assert (=> bs!2996 m!14629))

(declare-fun m!14643 () Bool)

(assert (=> bs!2996 m!14643))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11737) d!9027))

(declare-fun b_lambda!6153 () Bool)

(assert (= b_lambda!6135 (or (and b!11711 (= lambda!3142 (x!6650 thiss!733))) (and b!11707 (= lambda!3139 (x!6650 thiss!733))) (and b!11715 b_free!1659 (= (x!6651 thiss!721) (x!6650 thiss!733))) (and b!11715 b_free!1661 (= (y!645 thiss!721) (x!6650 thiss!733))) (and b!11707 (= lambda!3140 (x!6650 thiss!733))) (and b!11713 b_free!1657 (= (y!644 thiss!733) (x!6650 thiss!733))) (and b!11713 b_free!1655) b_lambda!6153)))

(declare-fun bs!2997 () Bool)

(declare-fun d!9029 () Bool)

(assert (= bs!2997 (and d!9029 b!11707)))

(assert (=> bs!2997 (= (dynLambda!465 lambda!3140) (dynLambda!464 f!539 (head!494 xs!292) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6167 () Bool)

(assert (=> (not b_lambda!6167) (not bs!2997)))

(declare-fun t!3453 () Bool)

(declare-fun tb!3113 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3453) tb!3113))

(declare-fun result!3165 () Bool)

(assert (=> tb!3113 (= result!3165 true)))

(assert (=> bs!2997 t!3453))

(declare-fun b_and!5847 () Bool)

(assert (= b_and!5845 (and (=> t!3453 result!3165) b_and!5847)))

(assert (=> bs!2997 m!14599))

(assert (=> bs!2997 m!14599))

(declare-fun m!14645 () Bool)

(assert (=> bs!2997 m!14645))

(assert (=> (and b!11707 (= lambda!3140 (x!6650 thiss!733)) d!9013) d!9029))

(declare-fun bs!2998 () Bool)

(declare-fun d!9031 () Bool)

(assert (= bs!2998 (and d!9031 b!11707)))

(assert (=> bs!2998 (= (dynLambda!465 lambda!3139) (dynLambda!464 f!539 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6169 () Bool)

(assert (=> (not b_lambda!6169) (not bs!2998)))

(assert (=> bs!2998 t!3405))

(declare-fun b_and!5849 () Bool)

(assert (= b_and!5847 (and (=> t!3405 result!3117) b_and!5849)))

(assert (=> bs!2998 m!14597))

(assert (=> bs!2998 m!14599))

(assert (=> bs!2998 m!14597))

(assert (=> bs!2998 m!14599))

(assert (=> bs!2998 m!14601))

(assert (=> (and b!11707 (= lambda!3139 (x!6650 thiss!733)) d!9013) d!9031))

(declare-fun bs!2999 () Bool)

(declare-fun d!9033 () Bool)

(assert (= bs!2999 (and d!9033 b!11711)))

(assert (=> bs!2999 (= (dynLambda!465 lambda!3142) (foldRight1!109 (Cons!276 (head!494 xs!292) ys!54) f!539))))

(declare-fun m!14647 () Bool)

(assert (=> bs!2999 m!14647))

(assert (=> (and b!11711 (= lambda!3142 (x!6650 thiss!733)) d!9013) d!9033))

(declare-fun b_lambda!6155 () Bool)

(assert (= b_lambda!6141 (or (and b!11715 b_free!1661) (and b!11707 (= lambda!3140 (y!645 thiss!721))) (and b!11713 b_free!1657 (= (y!644 thiss!733) (y!645 thiss!721))) (and b!11707 (= lambda!3139 (y!645 thiss!721))) (and b!11715 b_free!1659 (= (x!6651 thiss!721) (y!645 thiss!721))) (and b!11713 b_free!1655 (= (x!6650 thiss!733) (y!645 thiss!721))) (and b!11711 (= lambda!3142 (y!645 thiss!721))) b_lambda!6155)))

(declare-fun bs!3000 () Bool)

(declare-fun d!9035 () Bool)

(assert (= bs!3000 (and d!9035 b!11707)))

(assert (=> bs!3000 (= (dynLambda!465 lambda!3140) (dynLambda!464 f!539 (head!494 xs!292) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6171 () Bool)

(assert (=> (not b_lambda!6171) (not bs!3000)))

(assert (=> bs!3000 t!3453))

(declare-fun b_and!5851 () Bool)

(assert (= b_and!5849 (and (=> t!3453 result!3165) b_and!5851)))

(assert (=> bs!3000 m!14599))

(assert (=> bs!3000 m!14599))

(assert (=> bs!3000 m!14645))

(assert (=> (and b!11707 (= lambda!3140 (y!645 thiss!721)) d!9015) d!9035))

(declare-fun bs!3001 () Bool)

(declare-fun d!9037 () Bool)

(assert (= bs!3001 (and d!9037 b!11711)))

(assert (=> bs!3001 (= (dynLambda!465 lambda!3142) (foldRight1!109 (Cons!276 (head!494 xs!292) ys!54) f!539))))

(assert (=> bs!3001 m!14647))

(assert (=> (and b!11711 (= lambda!3142 (y!645 thiss!721)) d!9015) d!9037))

(declare-fun bs!3002 () Bool)

(declare-fun d!9039 () Bool)

(assert (= bs!3002 (and d!9039 b!11707)))

(assert (=> bs!3002 (= (dynLambda!465 lambda!3139) (dynLambda!464 f!539 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6173 () Bool)

(assert (=> (not b_lambda!6173) (not bs!3002)))

(assert (=> bs!3002 t!3405))

(declare-fun b_and!5853 () Bool)

(assert (= b_and!5851 (and (=> t!3405 result!3117) b_and!5853)))

(assert (=> bs!3002 m!14597))

(assert (=> bs!3002 m!14599))

(assert (=> bs!3002 m!14597))

(assert (=> bs!3002 m!14599))

(assert (=> bs!3002 m!14601))

(assert (=> (and b!11707 (= lambda!3139 (y!645 thiss!721)) d!9015) d!9039))

(declare-fun b_lambda!6157 () Bool)

(assert (= b_lambda!6147 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6157)))

(declare-fun bs!3003 () Bool)

(declare-fun d!9041 () Bool)

(assert (= bs!3003 (and d!9041 b!11710)))

(assert (=> bs!3003 (= (dynLambda!464 lambda!3138 (head!494 ys!54) (foldRight1!109 (tail!506 ys!54) f!539)) (++!3 (head!494 ys!54) (foldRight1!109 (tail!506 ys!54) f!539)))))

(assert (=> bs!3003 m!14633))

(declare-fun m!14649 () Bool)

(assert (=> bs!3003 m!14649))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11739) d!9041))

(declare-fun b_lambda!6159 () Bool)

(assert (= b_lambda!6149 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6159)))

(declare-fun bs!3004 () Bool)

(declare-fun d!9043 () Bool)

(assert (= bs!3004 (and d!9043 b!11710)))

(assert (=> bs!3004 (= (dynLambda!464 lambda!3138 (head!494 (append!128 xs!292 ys!54)) (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539)) (++!3 (head!494 (append!128 xs!292 ys!54)) (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539)))))

(assert (=> bs!3004 m!14637))

(declare-fun m!14651 () Bool)

(assert (=> bs!3004 m!14651))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11741) d!9043))

(declare-fun b_lambda!6161 () Bool)

(assert (= b_lambda!6137 (or (and b!11707 (= lambda!3140 (y!644 thiss!733))) (and b!11713 b_free!1655 (= (x!6650 thiss!733) (y!644 thiss!733))) (and b!11707 (= lambda!3139 (y!644 thiss!733))) (and b!11715 b_free!1661 (= (y!645 thiss!721) (y!644 thiss!733))) (and b!11713 b_free!1657) (and b!11715 b_free!1659 (= (x!6651 thiss!721) (y!644 thiss!733))) (and b!11711 (= lambda!3142 (y!644 thiss!733))) b_lambda!6161)))

(declare-fun bs!3005 () Bool)

(declare-fun d!9045 () Bool)

(assert (= bs!3005 (and d!9045 b!11707)))

(assert (=> bs!3005 (= (dynLambda!465 lambda!3139) (dynLambda!464 f!539 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6175 () Bool)

(assert (=> (not b_lambda!6175) (not bs!3005)))

(assert (=> bs!3005 t!3405))

(declare-fun b_and!5855 () Bool)

(assert (= b_and!5853 (and (=> t!3405 result!3117) b_and!5855)))

(assert (=> bs!3005 m!14597))

(assert (=> bs!3005 m!14599))

(assert (=> bs!3005 m!14597))

(assert (=> bs!3005 m!14599))

(assert (=> bs!3005 m!14601))

(assert (=> (and b!11707 (= lambda!3139 (y!644 thiss!733)) d!9013) d!9045))

(declare-fun bs!3006 () Bool)

(declare-fun d!9047 () Bool)

(assert (= bs!3006 (and d!9047 b!11711)))

(assert (=> bs!3006 (= (dynLambda!465 lambda!3142) (foldRight1!109 (Cons!276 (head!494 xs!292) ys!54) f!539))))

(assert (=> bs!3006 m!14647))

(assert (=> (and b!11711 (= lambda!3142 (y!644 thiss!733)) d!9013) d!9047))

(declare-fun bs!3007 () Bool)

(declare-fun d!9049 () Bool)

(assert (= bs!3007 (and d!9049 b!11707)))

(assert (=> bs!3007 (= (dynLambda!465 lambda!3140) (dynLambda!464 f!539 (head!494 xs!292) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6177 () Bool)

(assert (=> (not b_lambda!6177) (not bs!3007)))

(assert (=> bs!3007 t!3453))

(declare-fun b_and!5857 () Bool)

(assert (= b_and!5855 (and (=> t!3453 result!3165) b_and!5857)))

(assert (=> bs!3007 m!14599))

(assert (=> bs!3007 m!14599))

(assert (=> bs!3007 m!14645))

(assert (=> (and b!11707 (= lambda!3140 (y!644 thiss!733)) d!9013) d!9049))

(declare-fun b_lambda!6163 () Bool)

(assert (= b_lambda!6139 (or (and b!11715 b_free!1659) (and b!11707 (= lambda!3140 (x!6651 thiss!721))) (and b!11713 b_free!1657 (= (y!644 thiss!733) (x!6651 thiss!721))) (and b!11713 b_free!1655 (= (x!6650 thiss!733) (x!6651 thiss!721))) (and b!11707 (= lambda!3139 (x!6651 thiss!721))) (and b!11715 b_free!1661 (= (y!645 thiss!721) (x!6651 thiss!721))) (and b!11711 (= lambda!3142 (x!6651 thiss!721))) b_lambda!6163)))

(declare-fun bs!3008 () Bool)

(declare-fun d!9051 () Bool)

(assert (= bs!3008 (and d!9051 b!11707)))

(assert (=> bs!3008 (= (dynLambda!465 lambda!3140) (dynLambda!464 f!539 (head!494 xs!292) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6179 () Bool)

(assert (=> (not b_lambda!6179) (not bs!3008)))

(assert (=> bs!3008 t!3453))

(declare-fun b_and!5859 () Bool)

(assert (= b_and!5857 (and (=> t!3453 result!3165) b_and!5859)))

(assert (=> bs!3008 m!14599))

(assert (=> bs!3008 m!14599))

(assert (=> bs!3008 m!14645))

(assert (=> (and b!11707 (= lambda!3140 (x!6651 thiss!721)) d!9015) d!9051))

(declare-fun bs!3009 () Bool)

(declare-fun d!9053 () Bool)

(assert (= bs!3009 (and d!9053 b!11707)))

(assert (=> bs!3009 (= (dynLambda!465 lambda!3139) (dynLambda!464 f!539 (foldRight1!109 xs!292 f!539) (foldRight1!109 ys!54 f!539)))))

(declare-fun b_lambda!6181 () Bool)

(assert (=> (not b_lambda!6181) (not bs!3009)))

(assert (=> bs!3009 t!3405))

(declare-fun b_and!5861 () Bool)

(assert (= b_and!5859 (and (=> t!3405 result!3117) b_and!5861)))

(assert (=> bs!3009 m!14597))

(assert (=> bs!3009 m!14599))

(assert (=> bs!3009 m!14597))

(assert (=> bs!3009 m!14599))

(assert (=> bs!3009 m!14601))

(assert (=> (and b!11707 (= lambda!3139 (x!6651 thiss!721)) d!9015) d!9053))

(declare-fun bs!3010 () Bool)

(declare-fun d!9055 () Bool)

(assert (= bs!3010 (and d!9055 b!11711)))

(assert (=> bs!3010 (= (dynLambda!465 lambda!3142) (foldRight1!109 (Cons!276 (head!494 xs!292) ys!54) f!539))))

(assert (=> bs!3010 m!14647))

(assert (=> (and b!11711 (= lambda!3142 (x!6651 thiss!721)) d!9015) d!9055))

(declare-fun b_lambda!6165 () Bool)

(assert (= b_lambda!6143 (or (and b!11707 (= lambda!3141 (evidence!193 thiss!721))) (and b!11716 (= lambda!3143 (evidence!193 thiss!721))) (and start!2346 b_free!1653 (= proof!208 (evidence!193 thiss!721))) (and b!11715 b_free!1663) b_lambda!6165)))

(declare-fun bs!3011 () Bool)

(declare-fun d!9057 () Bool)

(assert (= bs!3011 (and d!9057 b!11707)))

(assert (=> bs!3011 (= (dynLambda!463 lambda!3141) trivial!1)))

(assert (=> (and b!11707 (= lambda!3141 (evidence!193 thiss!721)) b!11731) d!9057))

(declare-fun bs!3012 () Bool)

(declare-fun d!9059 () Bool)

(assert (= bs!3012 (and d!9059 b!11716)))

(assert (=> bs!3012 (= (dynLambda!463 lambda!3143) (= (append!128 xs!292 ys!54) (Cons!276 (head!494 xs!292) ys!54)))))

(assert (=> bs!3012 m!14595))

(assert (=> (and b!11716 (= lambda!3143 (evidence!193 thiss!721)) b!11731) d!9059))

(push 1)

(assert b_and!5833)

(assert (not bs!3003))

(assert (not bs!3002))

(assert (not bs!3010))

(assert (not b_lambda!6171))

(assert (not b_lambda!6179))

(assert (not b_next!3997))

(assert (not d!9023))

(assert (not b_lambda!6163))

(assert (not bs!3007))

(assert (not b_lambda!6151))

(assert b_and!5837)

(assert (not b_lambda!6175))

(assert (not b_lambda!6169))

(assert (not bs!3012))

(assert (not bs!3000))

(assert (not bs!3005))

(assert (not b_lambda!6181))

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not bs!3006))

(assert (not b_lambda!6161))

(assert (not b_next!4003))

(assert b_and!5861)

(assert (not b_next!3995))

(assert b_and!5829)

(assert (not bs!2996))

(assert (not b_lambda!6155))

(assert (not b!11728))

(assert (not bs!3004))

(assert (not b!11741))

(assert b_and!5839)

(assert (not bs!3009))

(assert b_and!5831)

(assert (not b_lambda!6173))

(assert (not bs!3001))

(assert (not b!11739))

(assert (not b_next!4001))

(assert (not b_lambda!6167))

(assert (not b_lambda!6153))

(assert (not b_lambda!6159))

(assert (not bs!2999))

(assert (not b!11737))

(assert (not bs!2997))

(assert (not b_lambda!6157))

(assert (not b_lambda!6131))

(assert (not bs!3008))

(assert (not b_lambda!6133))

(assert (not bs!2998))

(assert (not b_lambda!6177))

(assert (not b_lambda!6165))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5833)

(assert (not b_next!3997))

(assert b_and!5837)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert b_and!5861)

(assert (not b_next!3995))

(assert b_and!5829)

(assert b_and!5839)

(assert b_and!5831)

(assert (not b_next!4001))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6183 () Bool)

(assert (= b_lambda!6181 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6183)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3009) d!9005))

(declare-fun b_lambda!6185 () Bool)

(assert (= b_lambda!6167 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6185)))

(declare-fun bs!3013 () Bool)

(declare-fun d!9061 () Bool)

(assert (= bs!3013 (and d!9061 b!11710)))

(assert (=> bs!3013 (= (dynLambda!464 lambda!3138 (head!494 xs!292) (foldRight1!109 ys!54 f!539)) (++!3 (head!494 xs!292) (foldRight1!109 ys!54 f!539)))))

(assert (=> bs!3013 m!14599))

(declare-fun m!14653 () Bool)

(assert (=> bs!3013 m!14653))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!2997) d!9061))

(declare-fun b_lambda!6187 () Bool)

(assert (= b_lambda!6171 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6187)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3000) d!9061))

(declare-fun b_lambda!6189 () Bool)

(assert (= b_lambda!6179 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6189)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3008) d!9061))

(declare-fun b_lambda!6191 () Bool)

(assert (= b_lambda!6173 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6191)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3002) d!9005))

(declare-fun b_lambda!6193 () Bool)

(assert (= b_lambda!6169 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6193)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!2998) d!9005))

(declare-fun b_lambda!6195 () Bool)

(assert (= b_lambda!6175 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6195)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3005) d!9005))

(declare-fun b_lambda!6197 () Bool)

(assert (= b_lambda!6177 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6197)))

(assert (=> (and b!11710 (= lambda!3138 f!539) bs!3007) d!9061))

(push 1)

(assert b_and!5833)

(assert (not bs!3003))

(assert (not b_lambda!6195))

(assert (not bs!3002))

(assert (not bs!3010))

(assert (not b_lambda!6183))

(assert (not b_next!3997))

(assert (not d!9023))

(assert (not b_lambda!6163))

(assert (not bs!3007))

(assert (not b_lambda!6151))

(assert b_and!5837)

(assert (not bs!3012))

(assert (not bs!3000))

(assert (not bs!3005))

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not bs!3006))

(assert (not b_lambda!6161))

(assert (not b_next!4003))

(assert b_and!5861)

(assert (not b_next!3995))

(assert b_and!5829)

(assert (not bs!2996))

(assert (not b_lambda!6155))

(assert (not b!11728))

(assert (not b_lambda!6189))

(assert (not bs!3004))

(assert (not b!11741))

(assert b_and!5839)

(assert (not bs!3009))

(assert b_and!5831)

(assert (not bs!3001))

(assert (not b_lambda!6185))

(assert (not b!11739))

(assert (not b_next!4001))

(assert (not b_lambda!6187))

(assert (not b_lambda!6153))

(assert (not b_lambda!6159))

(assert (not bs!2999))

(assert (not b!11737))

(assert (not b_lambda!6191))

(assert (not bs!2997))

(assert (not b_lambda!6157))

(assert (not b_lambda!6131))

(assert (not bs!3013))

(assert (not b_lambda!6193))

(assert (not bs!3008))

(assert (not b_lambda!6133))

(assert (not bs!2998))

(assert (not b_lambda!6165))

(assert (not b_lambda!6197))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5833)

(assert (not b_next!3997))

(assert b_and!5837)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert b_and!5861)

(assert (not b_next!3995))

(assert b_and!5829)

(assert b_and!5839)

(assert b_and!5831)

(assert (not b_next!4001))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9063 () Bool)

(assert (=> d!9063 (= (min!4 (extraOpen!202 (foldRight1!109 xs!292 f!539)) (extraClose!202 (foldRight1!109 ys!54 f!539))) (ite (<= (extraOpen!202 (foldRight1!109 xs!292 f!539)) (extraClose!202 (foldRight1!109 ys!54 f!539))) (extraOpen!202 (foldRight1!109 xs!292 f!539)) (extraClose!202 (foldRight1!109 ys!54 f!539))))))

(assert (=> d!9023 d!9063))

(declare-fun d!9065 () Bool)

(declare-fun lt!1779 () Int)

(assert (=> d!9065 (= lt!1779 (min!4 (extraOpen!202 (head!494 (append!128 xs!292 ys!54))) (extraClose!202 (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539))))))

(assert (=> d!9065 (= (++!3 (head!494 (append!128 xs!292 ys!54)) (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539)) (Balance!324 (- (+ (extraOpen!202 (head!494 (append!128 xs!292 ys!54))) (extraOpen!202 (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539))) lt!1779) (- (+ (extraClose!202 (head!494 (append!128 xs!292 ys!54))) (extraClose!202 (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539))) lt!1779)))))

(declare-fun bs!3014 () Bool)

(assert (= bs!3014 d!9065))

(declare-fun m!14655 () Bool)

(assert (=> bs!3014 m!14655))

(assert (=> bs!3004 d!9065))

(declare-fun d!9067 () Bool)

(declare-fun c!3421 () Bool)

(assert (=> d!9067 (= c!3421 (and (is-Cons!276 (Cons!276 (head!494 xs!292) ys!54)) (is-Nil!277 (tail!506 (Cons!276 (head!494 xs!292) ys!54)))))))

(declare-fun e!6532 () Balance!323)

(assert (=> d!9067 (= (foldRight1!109 (Cons!276 (head!494 xs!292) ys!54) f!539) e!6532)))

(declare-fun b!11743 () Bool)

(assert (=> b!11743 (= e!6532 (head!494 (Cons!276 (head!494 xs!292) ys!54)))))

(declare-fun b!11744 () Bool)

(assert (=> b!11744 (= e!6532 (dynLambda!464 f!539 (head!494 (Cons!276 (head!494 xs!292) ys!54)) (foldRight1!109 (tail!506 (Cons!276 (head!494 xs!292) ys!54)) f!539)))))

(assert (= (and d!9067 c!3421) b!11743))

(assert (= (and d!9067 (not c!3421)) b!11744))

(declare-fun b_lambda!6199 () Bool)

(assert (=> (not b_lambda!6199) (not b!11744)))

(declare-fun t!3455 () Bool)

(declare-fun tb!3115 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3455) tb!3115))

(declare-fun result!3167 () Bool)

(assert (=> tb!3115 (= result!3167 true)))

(assert (=> b!11744 t!3455))

(declare-fun b_and!5863 () Bool)

(assert (= b_and!5861 (and (=> t!3455 result!3167) b_and!5863)))

(declare-fun m!14657 () Bool)

(assert (=> b!11744 m!14657))

(assert (=> b!11744 m!14657))

(declare-fun m!14659 () Bool)

(assert (=> b!11744 m!14659))

(assert (=> bs!3006 d!9067))

(declare-fun d!9069 () Bool)

(declare-fun c!3422 () Bool)

(assert (=> d!9069 (= c!3422 (and (is-Cons!276 (tail!506 (append!128 xs!292 ys!54))) (is-Nil!277 (tail!506 (tail!506 (append!128 xs!292 ys!54))))))))

(declare-fun e!6533 () Balance!323)

(assert (=> d!9069 (= (foldRight1!109 (tail!506 (append!128 xs!292 ys!54)) f!539) e!6533)))

(declare-fun b!11745 () Bool)

(assert (=> b!11745 (= e!6533 (head!494 (tail!506 (append!128 xs!292 ys!54))))))

(declare-fun b!11746 () Bool)

(assert (=> b!11746 (= e!6533 (dynLambda!464 f!539 (head!494 (tail!506 (append!128 xs!292 ys!54))) (foldRight1!109 (tail!506 (tail!506 (append!128 xs!292 ys!54))) f!539)))))

(assert (= (and d!9069 c!3422) b!11745))

(assert (= (and d!9069 (not c!3422)) b!11746))

(declare-fun b_lambda!6201 () Bool)

(assert (=> (not b_lambda!6201) (not b!11746)))

(declare-fun t!3457 () Bool)

(declare-fun tb!3117 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3457) tb!3117))

(declare-fun result!3169 () Bool)

(assert (=> tb!3117 (= result!3169 true)))

(assert (=> b!11746 t!3457))

(declare-fun b_and!5865 () Bool)

(assert (= b_and!5863 (and (=> t!3457 result!3169) b_and!5865)))

(declare-fun m!14661 () Bool)

(assert (=> b!11746 m!14661))

(assert (=> b!11746 m!14661))

(declare-fun m!14663 () Bool)

(assert (=> b!11746 m!14663))

(assert (=> b!11741 d!9069))

(assert (=> bs!3001 d!9067))

(declare-fun d!9071 () Bool)

(declare-fun lt!1780 () Int)

(assert (=> d!9071 (= lt!1780 (min!4 (extraOpen!202 (head!494 xs!292)) (extraClose!202 (foldRight1!109 ys!54 f!539))))))

(assert (=> d!9071 (= (++!3 (head!494 xs!292) (foldRight1!109 ys!54 f!539)) (Balance!324 (- (+ (extraOpen!202 (head!494 xs!292)) (extraOpen!202 (foldRight1!109 ys!54 f!539))) lt!1780) (- (+ (extraClose!202 (head!494 xs!292)) (extraClose!202 (foldRight1!109 ys!54 f!539))) lt!1780)))))

(declare-fun bs!3015 () Bool)

(assert (= bs!3015 d!9071))

(declare-fun m!14665 () Bool)

(assert (=> bs!3015 m!14665))

(assert (=> bs!3013 d!9071))

(assert (=> bs!3007 d!9019))

(declare-fun d!9073 () Bool)

(declare-fun c!3423 () Bool)

(assert (=> d!9073 (= c!3423 (and (is-Cons!276 (tail!506 xs!292)) (is-Nil!277 (tail!506 (tail!506 xs!292)))))))

(declare-fun e!6534 () Balance!323)

(assert (=> d!9073 (= (foldRight1!109 (tail!506 xs!292) f!539) e!6534)))

(declare-fun b!11747 () Bool)

(assert (=> b!11747 (= e!6534 (head!494 (tail!506 xs!292)))))

(declare-fun b!11748 () Bool)

(assert (=> b!11748 (= e!6534 (dynLambda!464 f!539 (head!494 (tail!506 xs!292)) (foldRight1!109 (tail!506 (tail!506 xs!292)) f!539)))))

(assert (= (and d!9073 c!3423) b!11747))

(assert (= (and d!9073 (not c!3423)) b!11748))

(declare-fun b_lambda!6203 () Bool)

(assert (=> (not b_lambda!6203) (not b!11748)))

(declare-fun t!3459 () Bool)

(declare-fun tb!3119 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3459) tb!3119))

(declare-fun result!3171 () Bool)

(assert (=> tb!3119 (= result!3171 true)))

(assert (=> b!11748 t!3459))

(declare-fun b_and!5867 () Bool)

(assert (= b_and!5865 (and (=> t!3459 result!3171) b_and!5867)))

(declare-fun m!14667 () Bool)

(assert (=> b!11748 m!14667))

(assert (=> b!11748 m!14667))

(declare-fun m!14669 () Bool)

(assert (=> b!11748 m!14669))

(assert (=> b!11737 d!9073))

(declare-fun d!9075 () Bool)

(declare-fun lt!1781 () Int)

(assert (=> d!9075 (= lt!1781 (min!4 (extraOpen!202 (head!494 xs!292)) (extraClose!202 (foldRight1!109 (tail!506 xs!292) f!539))))))

(assert (=> d!9075 (= (++!3 (head!494 xs!292) (foldRight1!109 (tail!506 xs!292) f!539)) (Balance!324 (- (+ (extraOpen!202 (head!494 xs!292)) (extraOpen!202 (foldRight1!109 (tail!506 xs!292) f!539))) lt!1781) (- (+ (extraClose!202 (head!494 xs!292)) (extraClose!202 (foldRight1!109 (tail!506 xs!292) f!539))) lt!1781)))))

(declare-fun bs!3016 () Bool)

(assert (= bs!3016 d!9075))

(declare-fun m!14671 () Bool)

(assert (=> bs!3016 m!14671))

(assert (=> bs!2996 d!9075))

(assert (=> bs!3012 d!9009))

(assert (=> bs!2999 d!9067))

(assert (=> bs!2997 d!9019))

(assert (=> bs!2998 d!9017))

(assert (=> bs!2998 d!9019))

(assert (=> bs!3005 d!9017))

(assert (=> bs!3005 d!9019))

(assert (=> bs!3002 d!9017))

(assert (=> bs!3002 d!9019))

(declare-fun d!9077 () Bool)

(declare-fun c!3424 () Bool)

(assert (=> d!9077 (= c!3424 (is-Nil!277 (tail!506 xs!292)))))

(declare-fun e!6535 () List!279)

(assert (=> d!9077 (= (append!128 (tail!506 xs!292) ys!54) e!6535)))

(declare-fun b!11749 () Bool)

(assert (=> b!11749 (= e!6535 ys!54)))

(declare-fun b!11750 () Bool)

(assert (=> b!11750 (= e!6535 (Cons!276 (head!494 (tail!506 xs!292)) (append!128 (tail!506 (tail!506 xs!292)) ys!54)))))

(assert (= (and d!9077 c!3424) b!11749))

(assert (= (and d!9077 (not c!3424)) b!11750))

(declare-fun m!14673 () Bool)

(assert (=> b!11750 m!14673))

(assert (=> b!11728 d!9077))

(assert (=> bs!3010 d!9067))

(declare-fun d!9079 () Bool)

(declare-fun c!3425 () Bool)

(assert (=> d!9079 (= c!3425 (and (is-Cons!276 (tail!506 ys!54)) (is-Nil!277 (tail!506 (tail!506 ys!54)))))))

(declare-fun e!6536 () Balance!323)

(assert (=> d!9079 (= (foldRight1!109 (tail!506 ys!54) f!539) e!6536)))

(declare-fun b!11751 () Bool)

(assert (=> b!11751 (= e!6536 (head!494 (tail!506 ys!54)))))

(declare-fun b!11752 () Bool)

(assert (=> b!11752 (= e!6536 (dynLambda!464 f!539 (head!494 (tail!506 ys!54)) (foldRight1!109 (tail!506 (tail!506 ys!54)) f!539)))))

(assert (= (and d!9079 c!3425) b!11751))

(assert (= (and d!9079 (not c!3425)) b!11752))

(declare-fun b_lambda!6205 () Bool)

(assert (=> (not b_lambda!6205) (not b!11752)))

(declare-fun t!3461 () Bool)

(declare-fun tb!3121 () Bool)

(assert (=> (and start!2346 (= f!539 f!539) t!3461) tb!3121))

(declare-fun result!3173 () Bool)

(assert (=> tb!3121 (= result!3173 true)))

(assert (=> b!11752 t!3461))

(declare-fun b_and!5869 () Bool)

(assert (= b_and!5867 (and (=> t!3461 result!3173) b_and!5869)))

(declare-fun m!14675 () Bool)

(assert (=> b!11752 m!14675))

(assert (=> b!11752 m!14675))

(declare-fun m!14677 () Bool)

(assert (=> b!11752 m!14677))

(assert (=> b!11739 d!9079))

(assert (=> bs!3008 d!9019))

(assert (=> bs!3000 d!9019))

(assert (=> bs!3009 d!9017))

(assert (=> bs!3009 d!9019))

(declare-fun d!9081 () Bool)

(declare-fun lt!1782 () Int)

(assert (=> d!9081 (= lt!1782 (min!4 (extraOpen!202 (head!494 ys!54)) (extraClose!202 (foldRight1!109 (tail!506 ys!54) f!539))))))

(assert (=> d!9081 (= (++!3 (head!494 ys!54) (foldRight1!109 (tail!506 ys!54) f!539)) (Balance!324 (- (+ (extraOpen!202 (head!494 ys!54)) (extraOpen!202 (foldRight1!109 (tail!506 ys!54) f!539))) lt!1782) (- (+ (extraClose!202 (head!494 ys!54)) (extraClose!202 (foldRight1!109 (tail!506 ys!54) f!539))) lt!1782)))))

(declare-fun bs!3017 () Bool)

(assert (= bs!3017 d!9081))

(declare-fun m!14679 () Bool)

(assert (=> bs!3017 m!14679))

(assert (=> bs!3003 d!9081))

(declare-fun b_lambda!6207 () Bool)

(assert (= b_lambda!6205 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6207)))

(declare-fun bs!3018 () Bool)

(declare-fun d!9083 () Bool)

(assert (= bs!3018 (and d!9083 b!11710)))

(assert (=> bs!3018 (= (dynLambda!464 lambda!3138 (head!494 (tail!506 ys!54)) (foldRight1!109 (tail!506 (tail!506 ys!54)) f!539)) (++!3 (head!494 (tail!506 ys!54)) (foldRight1!109 (tail!506 (tail!506 ys!54)) f!539)))))

(assert (=> bs!3018 m!14675))

(declare-fun m!14681 () Bool)

(assert (=> bs!3018 m!14681))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11752) d!9083))

(declare-fun b_lambda!6209 () Bool)

(assert (= b_lambda!6203 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6209)))

(declare-fun bs!3019 () Bool)

(declare-fun d!9085 () Bool)

(assert (= bs!3019 (and d!9085 b!11710)))

(assert (=> bs!3019 (= (dynLambda!464 lambda!3138 (head!494 (tail!506 xs!292)) (foldRight1!109 (tail!506 (tail!506 xs!292)) f!539)) (++!3 (head!494 (tail!506 xs!292)) (foldRight1!109 (tail!506 (tail!506 xs!292)) f!539)))))

(assert (=> bs!3019 m!14667))

(declare-fun m!14683 () Bool)

(assert (=> bs!3019 m!14683))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11748) d!9085))

(declare-fun b_lambda!6211 () Bool)

(assert (= b_lambda!6201 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6211)))

(declare-fun bs!3020 () Bool)

(declare-fun d!9087 () Bool)

(assert (= bs!3020 (and d!9087 b!11710)))

(assert (=> bs!3020 (= (dynLambda!464 lambda!3138 (head!494 (tail!506 (append!128 xs!292 ys!54))) (foldRight1!109 (tail!506 (tail!506 (append!128 xs!292 ys!54))) f!539)) (++!3 (head!494 (tail!506 (append!128 xs!292 ys!54))) (foldRight1!109 (tail!506 (tail!506 (append!128 xs!292 ys!54))) f!539)))))

(assert (=> bs!3020 m!14661))

(declare-fun m!14685 () Bool)

(assert (=> bs!3020 m!14685))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11746) d!9087))

(declare-fun b_lambda!6213 () Bool)

(assert (= b_lambda!6199 (or (and b!11710 (= lambda!3138 f!539)) (and start!2346 b_free!1651) b_lambda!6213)))

(declare-fun bs!3021 () Bool)

(declare-fun d!9089 () Bool)

(assert (= bs!3021 (and d!9089 b!11710)))

(assert (=> bs!3021 (= (dynLambda!464 lambda!3138 (head!494 (Cons!276 (head!494 xs!292) ys!54)) (foldRight1!109 (tail!506 (Cons!276 (head!494 xs!292) ys!54)) f!539)) (++!3 (head!494 (Cons!276 (head!494 xs!292) ys!54)) (foldRight1!109 (tail!506 (Cons!276 (head!494 xs!292) ys!54)) f!539)))))

(assert (=> bs!3021 m!14657))

(declare-fun m!14687 () Bool)

(assert (=> bs!3021 m!14687))

(assert (=> (and b!11710 (= lambda!3138 f!539) b!11744) d!9089))

(push 1)

(assert (not d!9065))

(assert b_and!5833)

(assert (not b_lambda!6195))

(assert (not b!11752))

(assert (not bs!3019))

(assert (not b_lambda!6183))

(assert (not b_next!3997))

(assert (not b_lambda!6163))

(assert (not d!9081))

(assert (not b_lambda!6151))

(assert b_and!5837)

(assert (not b_lambda!6207))

(assert (not b!11748))

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_lambda!6161))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert b_and!5829)

(assert (not b_lambda!6155))

(assert (not b!11746))

(assert (not b_lambda!6189))

(assert (not d!9075))

(assert (not bs!3018))

(assert b_and!5869)

(assert b_and!5839)

(assert (not b!11750))

(assert b_and!5831)

(assert (not b_lambda!6185))

(assert (not b_next!4001))

(assert (not b_lambda!6187))

(assert (not b_lambda!6153))

(assert (not b_lambda!6159))

(assert (not b_lambda!6191))

(assert (not b_lambda!6157))

(assert (not bs!3020))

(assert (not b_lambda!6131))

(assert (not b_lambda!6211))

(assert (not b!11744))

(assert (not b_lambda!6209))

(assert (not b_lambda!6193))

(assert (not b_lambda!6213))

(assert (not d!9071))

(assert (not b_lambda!6133))

(assert (not bs!3021))

(assert (not b_lambda!6165))

(assert (not b_lambda!6197))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5833)

(assert (not b_next!3997))

(assert b_and!5837)

(assert (not b_next!3999))

(assert (not b_next!3993))

(assert (not b_next!4003))

(assert (not b_next!3995))

(assert b_and!5829)

(assert b_and!5869)

(assert b_and!5839)

(assert b_and!5831)

(assert (not b_next!4001))

(assert (not b_next!3971))

(assert b_and!5835)

(check-sat)

(pop 1)

