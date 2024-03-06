; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2220 () Bool)

(assert start!2220)

(declare-fun b!11038 () Bool)

(declare-fun b_free!1477 () Bool)

(declare-fun b_next!3561 () Bool)

(assert (=> b!11038 (= b_free!1477 (not b_next!3561))))

(declare-fun tp!2383 () Bool)

(declare-fun b_and!5125 () Bool)

(assert (=> b!11038 (= tp!2383 b_and!5125)))

(declare-fun b_free!1479 () Bool)

(declare-fun b_next!3563 () Bool)

(assert (=> b!11038 (= b_free!1479 (not b_next!3563))))

(declare-fun tp!2380 () Bool)

(declare-fun b_and!5127 () Bool)

(assert (=> b!11038 (= tp!2380 b_and!5127)))

(declare-fun b_free!1481 () Bool)

(declare-fun b_next!3565 () Bool)

(assert (=> b!11038 (= b_free!1481 (not b_next!3565))))

(declare-fun tp!2381 () Bool)

(declare-fun b_and!5129 () Bool)

(assert (=> b!11038 (= tp!2381 b_and!5129)))

(declare-fun b_free!1483 () Bool)

(declare-fun b_next!3567 () Bool)

(assert (=> start!2220 (= b_free!1483 (not b_next!3567))))

(declare-fun tp!2379 () Bool)

(declare-fun b_and!5131 () Bool)

(assert (=> start!2220 (= tp!2379 b_and!5131)))

(declare-fun b_free!1485 () Bool)

(declare-fun b_next!3569 () Bool)

(assert (=> start!2220 (= b_free!1485 (not b_next!3569))))

(declare-fun tp!2382 () Bool)

(declare-fun b_and!5133 () Bool)

(assert (=> start!2220 (= tp!2382 b_and!5133)))

(declare-fun f!539 () Int)

(declare-fun b!11042 () Bool)

(declare-fun lambda!2925 () Int)

(declare-fun b_next!3571 () Bool)

(assert (=> start!2220 (= b_next!3567 (or (and b!11042 (= lambda!2925 f!539)) b_next!3571))))

(declare-fun b_next!3573 () Bool)

(declare-fun f!566 () Int)

(assert (=> start!2220 (= b_next!3569 (or (and b!11042 (= lambda!2925 f!566)) b_next!3573))))

(declare-fun b!11040 () Bool)

(assert (=> b!11040 true))

(declare-fun order!185 () Int)

(declare-fun lambda!2926 () Int)

(declare-fun order!183 () Int)

(declare-fun dynLambda!381 (Int Int) Int)

(declare-fun dynLambda!382 (Int Int) Int)

(assert (=> b!11040 (< (dynLambda!381 order!183 f!539) (dynLambda!382 order!185 lambda!2926))))

(assert (=> b!11040 true))

(assert (=> b!11040 true))

(declare-datatypes () ((Balance!293 (Balance!294 (extraOpen!187 Int) (extraClose!187 Int)))))

(declare-datatypes () ((EqEvidence!224 (EqEvidence!225 (x!6175 Int) (y!625 Int) (evidence!179 Int)))))

(declare-fun thiss!747 () EqEvidence!224)

(declare-fun b_next!3575 () Bool)

(assert (=> b!11038 (= b_next!3561 (or (and b!11040 (= lambda!2926 (x!6175 thiss!747))) b_next!3575))))

(declare-fun b_next!3577 () Bool)

(assert (=> b!11038 (= b_next!3563 (or (and b!11040 (= lambda!2926 (y!625 thiss!747))) b_next!3577))))

(assert (=> b!11040 true))

(declare-fun lambda!2928 () Int)

(declare-fun order!187 () Int)

(declare-fun dynLambda!383 (Int Int) Int)

(assert (=> b!11040 (< (dynLambda!381 order!183 f!539) (dynLambda!383 order!187 lambda!2928))))

(assert (=> b!11040 true))

(assert (=> b!11040 true))

(declare-fun lambda!2927 () Int)

(declare-fun order!189 () Int)

(declare-fun dynLambda!384 (Int Int) Int)

(assert (=> b!11040 (< (dynLambda!381 order!183 f!539) (dynLambda!384 order!189 lambda!2927))))

(assert (=> b!11040 true))

(declare-fun b_next!3579 () Bool)

(assert (=> b!11038 (= b_next!3565 (or (and b!11040 (= lambda!2927 (evidence!179 thiss!747))) b_next!3579))))

(declare-fun b!11037 () Bool)

(declare-fun res!3989 () Bool)

(declare-fun e!6310 () Bool)

(assert (=> b!11037 (=> (not res!3989) (not e!6310))))

(declare-datatypes () ((List!266 (Nil!264) (Cons!263 (head!481 Balance!293) (tail!493 List!266)))))

(declare-fun ys!54 () List!266)

(declare-datatypes () ((ProofOps!232 (ProofOps!233 (prop!249 Bool)))))

(declare-fun thiss!710 () ProofOps!232)

(declare-fun xs!292 () List!266)

(declare-fun dynLambda!385 (Int Balance!293 Balance!293) Balance!293)

(declare-fun foldRight1!96 (List!266 Int) Balance!293)

(declare-fun append!115 (List!266 List!266) List!266)

(assert (=> b!11037 (= res!3989 (= thiss!710 (ProofOps!233 (= (dynLambda!385 f!539 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)) (foldRight1!96 (append!115 xs!292 ys!54) f!539)))))))

(declare-fun e!6311 () Bool)

(assert (=> b!11038 (= e!6311 (and tp!2383 tp!2380 tp!2381))))

(declare-fun b!11039 () Bool)

(declare-fun res!3987 () Bool)

(assert (=> b!11039 (=> (not res!3987) (not e!6310))))

(declare-fun isEmpty!194 (List!266) Bool)

(assert (=> b!11039 (= res!3987 (not (isEmpty!194 ys!54)))))

(declare-fun res!3986 () Bool)

(assert (=> start!2220 (=> (not res!3986) (not e!6310))))

(assert (=> start!2220 (= res!3986 (not (isEmpty!194 xs!292)))))

(assert (=> start!2220 e!6310))

(assert (=> start!2220 true))

(declare-fun inv!370 (EqEvidence!224) Bool)

(assert (=> start!2220 (and (inv!370 thiss!747) e!6311)))

(assert (=> start!2220 tp!2379))

(assert (=> start!2220 tp!2382))

(declare-fun res!3992 () Bool)

(assert (=> b!11040 (=> (not res!3992) (not e!6310))))

(assert (=> b!11040 (= res!3992 (= thiss!747 (EqEvidence!225 lambda!2926 lambda!2926 lambda!2927)))))

(declare-fun b!11041 () Bool)

(declare-fun res!3990 () Bool)

(assert (=> b!11041 (=> (not res!3990) (not e!6310))))

(assert (=> b!11041 (= res!3990 (or (not (is-Cons!263 xs!292)) (not (is-Nil!264 (tail!493 xs!292)))))))

(declare-fun res!3991 () Bool)

(assert (=> b!11042 (=> (not res!3991) (not e!6310))))

(assert (=> b!11042 (= res!3991 (= f!539 lambda!2925))))

(declare-fun b!11043 () Bool)

(declare-fun thiss!758 () List!266)

(assert (=> b!11043 (= e!6310 (isEmpty!194 thiss!758))))

(declare-fun b!11044 () Bool)

(declare-fun res!3988 () Bool)

(assert (=> b!11044 (=> (not res!3988) (not e!6310))))

(assert (=> b!11044 (= res!3988 (and (= thiss!758 (tail!493 xs!292)) (= f!566 f!539)))))

(assert (= (and start!2220 res!3986) b!11039))

(assert (= (and b!11039 res!3987) b!11042))

(assert (= (and b!11042 res!3991) b!11037))

(assert (= (and b!11037 res!3989) b!11041))

(assert (= (and b!11041 res!3990) b!11040))

(assert (= (and b!11040 res!3992) b!11044))

(assert (= (and b!11044 res!3988) b!11043))

(assert (= start!2220 b!11038))

(declare-fun b_lambda!5689 () Bool)

(assert (=> (not b_lambda!5689) (not b!11037)))

(declare-fun t!3053 () Bool)

(declare-fun tb!2713 () Bool)

(assert (=> (and start!2220 (= f!539 f!539) t!3053) tb!2713))

(declare-fun result!2765 () Bool)

(assert (=> tb!2713 (= result!2765 true)))

(assert (=> b!11037 t!3053))

(declare-fun b_and!5135 () Bool)

(assert (= b_and!5131 (and (=> t!3053 result!2765) b_and!5135)))

(declare-fun tb!2715 () Bool)

(declare-fun t!3055 () Bool)

(assert (=> (and start!2220 (= f!566 f!539) t!3055) tb!2715))

(declare-fun result!2767 () Bool)

(assert (=> tb!2715 (= result!2767 true)))

(assert (=> b!11037 t!3055))

(declare-fun b_and!5137 () Bool)

(assert (= b_and!5133 (and (=> t!3055 result!2767) b_and!5137)))

(declare-fun m!14001 () Bool)

(assert (=> b!11037 m!14001))

(declare-fun m!14003 () Bool)

(assert (=> b!11037 m!14003))

(declare-fun m!14005 () Bool)

(assert (=> b!11037 m!14005))

(assert (=> b!11037 m!14003))

(assert (=> b!11037 m!14005))

(declare-fun m!14007 () Bool)

(assert (=> b!11037 m!14007))

(assert (=> b!11037 m!14001))

(declare-fun m!14009 () Bool)

(assert (=> b!11037 m!14009))

(declare-fun m!14011 () Bool)

(assert (=> b!11039 m!14011))

(declare-fun m!14013 () Bool)

(assert (=> start!2220 m!14013))

(declare-fun m!14015 () Bool)

(assert (=> start!2220 m!14015))

(declare-fun m!14017 () Bool)

(assert (=> b!11043 m!14017))

(push 1)

(assert (not b!11043))

(assert b_and!5127)

(assert (not b_lambda!5689))

(assert b_and!5125)

(assert (not b_next!3571))

(assert (not b_next!3579))

(assert b_and!5137)

(assert b_and!5135)

(assert (not b_next!3573))

(assert (not b!11039))

(assert (not start!2220))

(assert (not b_next!3575))

(assert b_and!5129)

(assert (not b!11037))

(assert (not b_next!3577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5127)

(assert b_and!5125)

(assert (not b_next!3571))

(assert (not b_next!3579))

(assert b_and!5137)

(assert b_and!5135)

(assert (not b_next!3573))

(assert (not b_next!3575))

(assert b_and!5129)

(assert (not b_next!3577))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5691 () Bool)

(assert (= b_lambda!5689 (or (and b!11042 (= lambda!2925 f!539)) (and start!2220 b_free!1483) (and start!2220 b_free!1485 (= f!566 f!539)) b_lambda!5691)))

(declare-fun bs!2857 () Bool)

(declare-fun d!8619 () Bool)

(assert (= bs!2857 (and d!8619 b!11042)))

(declare-fun ++!3 (Balance!293 Balance!293) Balance!293)

(assert (=> bs!2857 (= (dynLambda!385 lambda!2925 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)) (++!3 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)))))

(assert (=> bs!2857 m!14003))

(assert (=> bs!2857 m!14005))

(declare-fun m!14019 () Bool)

(assert (=> bs!2857 m!14019))

(assert (=> (and b!11042 (= lambda!2925 f!539) b!11037) d!8619))

(push 1)

(assert (not b!11043))

(assert b_and!5127)

(assert b_and!5125)

(assert (not bs!2857))

(assert (not b_next!3571))

(assert (not b_next!3579))

(assert b_and!5137)

(assert b_and!5135)

(assert (not b_next!3573))

(assert (not b!11039))

(assert (not start!2220))

(assert (not b_lambda!5691))

(assert (not b_next!3575))

(assert b_and!5129)

(assert (not b!11037))

(assert (not b_next!3577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5127)

(assert b_and!5125)

(assert (not b_next!3571))

(assert (not b_next!3579))

(assert b_and!5137)

(assert b_and!5135)

(assert (not b_next!3573))

(assert (not b_next!3575))

(assert b_and!5129)

(assert (not b_next!3577))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8621 () Bool)

(declare-fun c!3341 () Bool)

(assert (=> d!8621 (= c!3341 (and (is-Cons!263 xs!292) (is-Nil!264 (tail!493 xs!292))))))

(declare-fun e!6314 () Balance!293)

(assert (=> d!8621 (= (foldRight1!96 xs!292 f!539) e!6314)))

(declare-fun b!11061 () Bool)

(assert (=> b!11061 (= e!6314 (head!481 xs!292))))

(declare-fun b!11062 () Bool)

(assert (=> b!11062 (= e!6314 (dynLambda!385 f!539 (head!481 xs!292) (foldRight1!96 (tail!493 xs!292) f!539)))))

(assert (= (and d!8621 c!3341) b!11061))

(assert (= (and d!8621 (not c!3341)) b!11062))

(declare-fun b_lambda!5693 () Bool)

(assert (=> (not b_lambda!5693) (not b!11062)))

(declare-fun t!3057 () Bool)

(declare-fun tb!2717 () Bool)

(assert (=> (and start!2220 (= f!539 f!539) t!3057) tb!2717))

(declare-fun result!2769 () Bool)

(assert (=> tb!2717 (= result!2769 true)))

(assert (=> b!11062 t!3057))

(declare-fun b_and!5139 () Bool)

(assert (= b_and!5135 (and (=> t!3057 result!2769) b_and!5139)))

(declare-fun tb!2719 () Bool)

(declare-fun t!3059 () Bool)

(assert (=> (and start!2220 (= f!566 f!539) t!3059) tb!2719))

(declare-fun result!2771 () Bool)

(assert (=> tb!2719 (= result!2771 true)))

(assert (=> b!11062 t!3059))

(declare-fun b_and!5141 () Bool)

(assert (= b_and!5137 (and (=> t!3059 result!2771) b_and!5141)))

(declare-fun m!14021 () Bool)

(assert (=> b!11062 m!14021))

(assert (=> b!11062 m!14021))

(declare-fun m!14023 () Bool)

(assert (=> b!11062 m!14023))

(assert (=> b!11037 d!8621))

(declare-fun d!8623 () Bool)

(declare-fun c!3342 () Bool)

(assert (=> d!8623 (= c!3342 (and (is-Cons!263 ys!54) (is-Nil!264 (tail!493 ys!54))))))

(declare-fun e!6315 () Balance!293)

(assert (=> d!8623 (= (foldRight1!96 ys!54 f!539) e!6315)))

(declare-fun b!11063 () Bool)

(assert (=> b!11063 (= e!6315 (head!481 ys!54))))

(declare-fun b!11064 () Bool)

(assert (=> b!11064 (= e!6315 (dynLambda!385 f!539 (head!481 ys!54) (foldRight1!96 (tail!493 ys!54) f!539)))))

(assert (= (and d!8623 c!3342) b!11063))

(assert (= (and d!8623 (not c!3342)) b!11064))

(declare-fun b_lambda!5695 () Bool)

(assert (=> (not b_lambda!5695) (not b!11064)))

(declare-fun t!3061 () Bool)

(declare-fun tb!2721 () Bool)

(assert (=> (and start!2220 (= f!539 f!539) t!3061) tb!2721))

(declare-fun result!2773 () Bool)

(assert (=> tb!2721 (= result!2773 true)))

(assert (=> b!11064 t!3061))

(declare-fun b_and!5143 () Bool)

(assert (= b_and!5139 (and (=> t!3061 result!2773) b_and!5143)))

(declare-fun t!3063 () Bool)

(declare-fun tb!2723 () Bool)

(assert (=> (and start!2220 (= f!566 f!539) t!3063) tb!2723))

(declare-fun result!2775 () Bool)

(assert (=> tb!2723 (= result!2775 true)))

(assert (=> b!11064 t!3063))

(declare-fun b_and!5145 () Bool)

(assert (= b_and!5141 (and (=> t!3063 result!2775) b_and!5145)))

(declare-fun m!14025 () Bool)

(assert (=> b!11064 m!14025))

(assert (=> b!11064 m!14025))

(declare-fun m!14027 () Bool)

(assert (=> b!11064 m!14027))

(assert (=> b!11037 d!8623))

(declare-fun d!8625 () Bool)

(declare-fun c!3343 () Bool)

(assert (=> d!8625 (= c!3343 (and (is-Cons!263 (append!115 xs!292 ys!54)) (is-Nil!264 (tail!493 (append!115 xs!292 ys!54)))))))

(declare-fun e!6316 () Balance!293)

(assert (=> d!8625 (= (foldRight1!96 (append!115 xs!292 ys!54) f!539) e!6316)))

(declare-fun b!11065 () Bool)

(assert (=> b!11065 (= e!6316 (head!481 (append!115 xs!292 ys!54)))))

(declare-fun b!11066 () Bool)

(assert (=> b!11066 (= e!6316 (dynLambda!385 f!539 (head!481 (append!115 xs!292 ys!54)) (foldRight1!96 (tail!493 (append!115 xs!292 ys!54)) f!539)))))

(assert (= (and d!8625 c!3343) b!11065))

(assert (= (and d!8625 (not c!3343)) b!11066))

(declare-fun b_lambda!5697 () Bool)

(assert (=> (not b_lambda!5697) (not b!11066)))

(declare-fun t!3065 () Bool)

(declare-fun tb!2725 () Bool)

(assert (=> (and start!2220 (= f!539 f!539) t!3065) tb!2725))

(declare-fun result!2777 () Bool)

(assert (=> tb!2725 (= result!2777 true)))

(assert (=> b!11066 t!3065))

(declare-fun b_and!5147 () Bool)

(assert (= b_and!5143 (and (=> t!3065 result!2777) b_and!5147)))

(declare-fun t!3067 () Bool)

(declare-fun tb!2727 () Bool)

(assert (=> (and start!2220 (= f!566 f!539) t!3067) tb!2727))

(declare-fun result!2779 () Bool)

(assert (=> tb!2727 (= result!2779 true)))

(assert (=> b!11066 t!3067))

(declare-fun b_and!5149 () Bool)

(assert (= b_and!5145 (and (=> t!3067 result!2779) b_and!5149)))

(declare-fun m!14029 () Bool)

(assert (=> b!11066 m!14029))

(assert (=> b!11066 m!14029))

(declare-fun m!14031 () Bool)

(assert (=> b!11066 m!14031))

(assert (=> b!11037 d!8625))

(declare-fun d!8627 () Bool)

(declare-fun c!3346 () Bool)

(assert (=> d!8627 (= c!3346 (is-Nil!264 xs!292))))

(declare-fun e!6319 () List!266)

(assert (=> d!8627 (= (append!115 xs!292 ys!54) e!6319)))

(declare-fun b!11071 () Bool)

(assert (=> b!11071 (= e!6319 ys!54)))

(declare-fun b!11072 () Bool)

(assert (=> b!11072 (= e!6319 (Cons!263 (head!481 xs!292) (append!115 (tail!493 xs!292) ys!54)))))

(assert (= (and d!8627 c!3346) b!11071))

(assert (= (and d!8627 (not c!3346)) b!11072))

(declare-fun m!14033 () Bool)

(assert (=> b!11072 m!14033))

(assert (=> b!11037 d!8627))

(declare-fun d!8629 () Bool)

(assert (=> d!8629 (= (isEmpty!194 xs!292) (is-Nil!264 xs!292))))

(assert (=> start!2220 d!8629))

(declare-fun d!8631 () Bool)

(declare-fun res!3995 () Bool)

(declare-fun e!6322 () Bool)

(assert (=> d!8631 (=> (not res!3995) (not e!6322))))

(declare-fun dynLambda!386 (Int) Balance!293)

(assert (=> d!8631 (= res!3995 (= (dynLambda!386 (x!6175 thiss!747)) (dynLambda!386 (y!625 thiss!747))))))

(assert (=> d!8631 (= (inv!370 thiss!747) e!6322)))

(declare-fun b!11075 () Bool)

(declare-fun dynLambda!387 (Int) Bool)

(assert (=> b!11075 (= e!6322 (dynLambda!387 (evidence!179 thiss!747)))))

(assert (= (and d!8631 res!3995) b!11075))

(declare-fun b_lambda!5699 () Bool)

(assert (=> (not b_lambda!5699) (not d!8631)))

(declare-fun t!3069 () Bool)

(declare-fun tb!2729 () Bool)

(assert (=> (and b!11038 (= (x!6175 thiss!747) (x!6175 thiss!747)) t!3069) tb!2729))

(declare-fun result!2781 () Bool)

(assert (=> tb!2729 (= result!2781 true)))

(assert (=> d!8631 t!3069))

(declare-fun b_and!5151 () Bool)

(assert (= b_and!5125 (and (=> t!3069 result!2781) b_and!5151)))

(declare-fun t!3071 () Bool)

(declare-fun tb!2731 () Bool)

(assert (=> (and b!11038 (= (y!625 thiss!747) (x!6175 thiss!747)) t!3071) tb!2731))

(declare-fun result!2783 () Bool)

(assert (=> tb!2731 (= result!2783 true)))

(assert (=> d!8631 t!3071))

(declare-fun b_and!5153 () Bool)

(assert (= b_and!5127 (and (=> t!3071 result!2783) b_and!5153)))

(declare-fun b_lambda!5701 () Bool)

(assert (=> (not b_lambda!5701) (not d!8631)))

(declare-fun t!3073 () Bool)

(declare-fun tb!2733 () Bool)

(assert (=> (and b!11038 (= (x!6175 thiss!747) (y!625 thiss!747)) t!3073) tb!2733))

(declare-fun result!2785 () Bool)

(assert (=> tb!2733 (= result!2785 true)))

(assert (=> d!8631 t!3073))

(declare-fun b_and!5155 () Bool)

(assert (= b_and!5151 (and (=> t!3073 result!2785) b_and!5155)))

(declare-fun t!3075 () Bool)

(declare-fun tb!2735 () Bool)

(assert (=> (and b!11038 (= (y!625 thiss!747) (y!625 thiss!747)) t!3075) tb!2735))

(declare-fun result!2787 () Bool)

(assert (=> tb!2735 (= result!2787 true)))

(assert (=> d!8631 t!3075))

(declare-fun b_and!5157 () Bool)

(assert (= b_and!5153 (and (=> t!3075 result!2787) b_and!5157)))

(declare-fun b_lambda!5703 () Bool)

(assert (=> (not b_lambda!5703) (not b!11075)))

(declare-fun t!3077 () Bool)

(declare-fun tb!2737 () Bool)

(assert (=> (and b!11038 (= (evidence!179 thiss!747) (evidence!179 thiss!747)) t!3077) tb!2737))

(declare-fun result!2789 () Bool)

(assert (=> tb!2737 (= result!2789 true)))

(assert (=> b!11075 t!3077))

(declare-fun b_and!5159 () Bool)

(assert (= b_and!5129 (and (=> t!3077 result!2789) b_and!5159)))

(declare-fun m!14035 () Bool)

(assert (=> d!8631 m!14035))

(declare-fun m!14037 () Bool)

(assert (=> d!8631 m!14037))

(declare-fun m!14039 () Bool)

(assert (=> b!11075 m!14039))

(assert (=> start!2220 d!8631))

(declare-fun d!8633 () Bool)

(assert (=> d!8633 (= (isEmpty!194 ys!54) (is-Nil!264 ys!54))))

(assert (=> b!11039 d!8633))

(declare-fun d!8635 () Bool)

(declare-fun lt!1751 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8635 (= lt!1751 (min!4 (extraOpen!187 (foldRight1!96 xs!292 f!539)) (extraClose!187 (foldRight1!96 ys!54 f!539))))))

(assert (=> d!8635 (= (++!3 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)) (Balance!294 (- (+ (extraOpen!187 (foldRight1!96 xs!292 f!539)) (extraOpen!187 (foldRight1!96 ys!54 f!539))) lt!1751) (- (+ (extraClose!187 (foldRight1!96 xs!292 f!539)) (extraClose!187 (foldRight1!96 ys!54 f!539))) lt!1751)))))

(declare-fun bs!2858 () Bool)

(assert (= bs!2858 d!8635))

(declare-fun m!14041 () Bool)

(assert (=> bs!2858 m!14041))

(assert (=> bs!2857 d!8635))

(declare-fun d!8637 () Bool)

(assert (=> d!8637 (= (isEmpty!194 thiss!758) (is-Nil!264 thiss!758))))

(assert (=> b!11043 d!8637))

(declare-fun b_lambda!5705 () Bool)

(assert (= b_lambda!5695 (or (and b!11042 (= lambda!2925 f!539)) (and start!2220 b_free!1483) (and start!2220 b_free!1485 (= f!566 f!539)) b_lambda!5705)))

(declare-fun bs!2859 () Bool)

(declare-fun d!8639 () Bool)

(assert (= bs!2859 (and d!8639 b!11042)))

(assert (=> bs!2859 (= (dynLambda!385 lambda!2925 (head!481 ys!54) (foldRight1!96 (tail!493 ys!54) f!539)) (++!3 (head!481 ys!54) (foldRight1!96 (tail!493 ys!54) f!539)))))

(assert (=> bs!2859 m!14025))

(declare-fun m!14043 () Bool)

(assert (=> bs!2859 m!14043))

(assert (=> (and b!11042 (= lambda!2925 f!539) b!11064) d!8639))

(declare-fun b_lambda!5707 () Bool)

(assert (= b_lambda!5703 (or (and b!11040 (= lambda!2927 (evidence!179 thiss!747))) (and b!11038 b_free!1481) b_lambda!5707)))

(declare-fun bs!2860 () Bool)

(declare-fun d!8641 () Bool)

(assert (= bs!2860 (and d!8641 b!11040)))

(declare-fun dynLambda!388 (Int Balance!293) Balance!293)

(assert (=> bs!2860 (= (dynLambda!387 lambda!2927) (= (foldRight1!96 xs!292 f!539) (dynLambda!388 lambda!2928 (foldRight1!96 (tail!493 xs!292) f!539))))))

(declare-fun b_lambda!5717 () Bool)

(assert (=> (not b_lambda!5717) (not bs!2860)))

(assert (=> bs!2860 m!14003))

(assert (=> bs!2860 m!14021))

(assert (=> bs!2860 m!14021))

(declare-fun m!14045 () Bool)

(assert (=> bs!2860 m!14045))

(assert (=> (and b!11040 (= lambda!2927 (evidence!179 thiss!747)) b!11075) d!8641))

(declare-fun b_lambda!5709 () Bool)

(assert (= b_lambda!5693 (or (and b!11042 (= lambda!2925 f!539)) (and start!2220 b_free!1483) (and start!2220 b_free!1485 (= f!566 f!539)) b_lambda!5709)))

(declare-fun bs!2861 () Bool)

(declare-fun d!8643 () Bool)

(assert (= bs!2861 (and d!8643 b!11042)))

(assert (=> bs!2861 (= (dynLambda!385 lambda!2925 (head!481 xs!292) (foldRight1!96 (tail!493 xs!292) f!539)) (++!3 (head!481 xs!292) (foldRight1!96 (tail!493 xs!292) f!539)))))

(assert (=> bs!2861 m!14021))

(declare-fun m!14047 () Bool)

(assert (=> bs!2861 m!14047))

(assert (=> (and b!11042 (= lambda!2925 f!539) b!11062) d!8643))

(declare-fun b_lambda!5711 () Bool)

(assert (= b_lambda!5699 (or (and b!11040 (= lambda!2926 (x!6175 thiss!747))) (and b!11038 b_free!1477) (and b!11038 b_free!1479 (= (y!625 thiss!747) (x!6175 thiss!747))) b_lambda!5711)))

(declare-fun bs!2862 () Bool)

(declare-fun d!8645 () Bool)

(assert (= bs!2862 (and d!8645 b!11040)))

(assert (=> bs!2862 (= (dynLambda!386 lambda!2926) (dynLambda!385 f!539 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)))))

(declare-fun b_lambda!5719 () Bool)

(assert (=> (not b_lambda!5719) (not bs!2862)))

(assert (=> bs!2862 t!3053))

(declare-fun b_and!5161 () Bool)

(assert (= b_and!5147 (and (=> t!3053 result!2765) b_and!5161)))

(assert (=> bs!2862 t!3055))

(declare-fun b_and!5163 () Bool)

(assert (= b_and!5149 (and (=> t!3055 result!2767) b_and!5163)))

(assert (=> bs!2862 m!14003))

(assert (=> bs!2862 m!14005))

(assert (=> bs!2862 m!14003))

(assert (=> bs!2862 m!14005))

(assert (=> bs!2862 m!14007))

(assert (=> (and b!11040 (= lambda!2926 (x!6175 thiss!747)) d!8631) d!8645))

(declare-fun b_lambda!5713 () Bool)

(assert (= b_lambda!5701 (or (and b!11040 (= lambda!2926 (y!625 thiss!747))) (and b!11038 b_free!1477 (= (x!6175 thiss!747) (y!625 thiss!747))) (and b!11038 b_free!1479) b_lambda!5713)))

(declare-fun bs!2863 () Bool)

(declare-fun d!8647 () Bool)

(assert (= bs!2863 (and d!8647 b!11040)))

(assert (=> bs!2863 (= (dynLambda!386 lambda!2926) (dynLambda!385 f!539 (foldRight1!96 xs!292 f!539) (foldRight1!96 ys!54 f!539)))))

(declare-fun b_lambda!5721 () Bool)

(assert (=> (not b_lambda!5721) (not bs!2863)))

(assert (=> bs!2863 t!3053))

(declare-fun b_and!5165 () Bool)

(assert (= b_and!5161 (and (=> t!3053 result!2765) b_and!5165)))

(assert (=> bs!2863 t!3055))

(declare-fun b_and!5167 () Bool)

(assert (= b_and!5163 (and (=> t!3055 result!2767) b_and!5167)))

(assert (=> bs!2863 m!14003))

(assert (=> bs!2863 m!14005))

(assert (=> bs!2863 m!14003))

(assert (=> bs!2863 m!14005))

(assert (=> bs!2863 m!14007))

(assert (=> (and b!11040 (= lambda!2926 (y!625 thiss!747)) d!8631) d!8647))

(declare-fun b_lambda!5715 () Bool)

(assert (= b_lambda!5697 (or (and b!11042 (= lambda!2925 f!539)) (and start!2220 b_free!1483) (and start!2220 b_free!1485 (= f!566 f!539)) b_lambda!5715)))

(declare-fun bs!2864 () Bool)

(declare-fun d!8649 () Bool)

(assert (= bs!2864 (and d!8649 b!11042)))

(assert (=> bs!2864 (= (dynLambda!385 lambda!2925 (head!481 (append!115 xs!292 ys!54)) (foldRight1!96 (tail!493 (append!115 xs!292 ys!54)) f!539)) (++!3 (head!481 (append!115 xs!292 ys!54)) (foldRight1!96 (tail!493 (append!115 xs!292 ys!54)) f!539)))))

(assert (=> bs!2864 m!14029))

(declare-fun m!14049 () Bool)

(assert (=> bs!2864 m!14049))

(assert (=> (and b!11042 (= lambda!2925 f!539) b!11066) d!8649))

(push 1)

(assert (not b_lambda!5721))

(assert (not bs!2864))

(assert (not d!8635))

(assert b_and!5167)

(assert (not b_next!3571))

(assert (not bs!2861))

(assert (not b_lambda!5717))

(assert (not b_next!3579))

(assert (not b!11072))

(assert (not bs!2859))

(assert (not b!11062))

(assert (not b!11066))

(assert b_and!5159)

(assert (not bs!2860))

(assert (not b!11064))

(assert (not bs!2862))

(assert (not b_lambda!5713))

(assert (not b_lambda!5715))

(assert (not b_next!3573))

(assert (not b_lambda!5719))

(assert (not b_lambda!5711))

(assert (not bs!2863))

(assert (not b_lambda!5691))

(assert (not b_next!3575))

(assert b_and!5157)

(assert (not b_lambda!5705))

(assert b_and!5165)

(assert (not b_lambda!5709))

(assert (not b_lambda!5707))

(assert (not b_next!3577))

(assert b_and!5155)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5167)

(assert (not b_next!3571))

(assert (not b_next!3579))

(assert b_and!5159)

(assert (not b_next!3573))

(assert (not b_next!3575))

(assert b_and!5157)

(assert b_and!5165)

(assert (not b_next!3577))

(assert b_and!5155)

(check-sat)

(pop 1)

