; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2014 () Bool)

(assert start!2014)

(declare-fun b!10015 () Bool)

(declare-fun b_free!1257 () Bool)

(declare-fun b_next!3097 () Bool)

(assert (=> b!10015 (= b_free!1257 (not b_next!3097))))

(declare-fun tp!2023 () Bool)

(declare-fun b_and!4539 () Bool)

(assert (=> b!10015 (= tp!2023 b_and!4539)))

(declare-fun b_free!1259 () Bool)

(declare-fun b_next!3099 () Bool)

(assert (=> b!10015 (= b_free!1259 (not b_next!3099))))

(declare-fun tp!2020 () Bool)

(declare-fun b_and!4541 () Bool)

(assert (=> b!10015 (= tp!2020 b_and!4541)))

(declare-fun b_free!1261 () Bool)

(declare-fun b_next!3101 () Bool)

(assert (=> b!10015 (= b_free!1261 (not b_next!3101))))

(declare-fun tp!2021 () Bool)

(declare-fun b_and!4543 () Bool)

(assert (=> b!10015 (= tp!2021 b_and!4543)))

(declare-fun b!10009 () Bool)

(declare-fun b_free!1263 () Bool)

(declare-fun b_next!3103 () Bool)

(assert (=> b!10009 (= b_free!1263 (not b_next!3103))))

(declare-fun tp!2019 () Bool)

(declare-fun b_and!4545 () Bool)

(assert (=> b!10009 (= tp!2019 b_and!4545)))

(declare-fun b_free!1265 () Bool)

(declare-fun b_next!3105 () Bool)

(assert (=> b!10009 (= b_free!1265 (not b_next!3105))))

(declare-fun tp!2022 () Bool)

(declare-fun b_and!4547 () Bool)

(assert (=> b!10009 (= tp!2022 b_and!4547)))

(declare-fun b_free!1267 () Bool)

(declare-fun b_next!3107 () Bool)

(assert (=> start!2014 (= b_free!1267 (not b_next!3107))))

(declare-fun tp!2018 () Bool)

(declare-fun b_and!4549 () Bool)

(assert (=> start!2014 (= tp!2018 b_and!4549)))

(declare-fun b!10012 () Bool)

(declare-fun m!13149 () Bool)

(assert (=> b!10012 m!13149))

(assert (=> b!10012 true))

(declare-fun lambda!2625 () Int)

(declare-datatypes () ((EqEvidence!196 (EqEvidence!197 (x!5672 Int) (y!603 Int) (evidence!165 Int)))))

(declare-fun thiss!672 () EqEvidence!196)

(declare-fun dynLambda!331 (Int) Int)

(assert (=> (and b!10015 b!10012 (= (dynLambda!331 lambda!2625) (dynLambda!331 (x!5672 thiss!672)))) (= lambda!2625 (x!5672 thiss!672))))

(assert (=> (and b!10015 b!10012 (= (dynLambda!331 lambda!2625) (dynLambda!331 (y!603 thiss!672)))) (= lambda!2625 (y!603 thiss!672))))

(declare-datatypes () ((EqProof!92 (EqProof!93 (x!5673 Int) (y!604 Int)))))

(declare-fun thiss!686 () EqProof!92)

(assert (=> (and b!10009 b!10012 (= (dynLambda!331 lambda!2625) (dynLambda!331 (x!5673 thiss!686)))) (= lambda!2625 (x!5673 thiss!686))))

(assert (=> (and b!10009 b!10012 (= (dynLambda!331 lambda!2625) (dynLambda!331 (y!604 thiss!686)))) (= lambda!2625 (y!604 thiss!686))))

(declare-fun b_next!3109 () Bool)

(assert (=> b!10015 (= b_next!3097 (or (and b!10012 (= lambda!2625 (x!5672 thiss!672))) b_next!3109))))

(declare-fun b_next!3111 () Bool)

(assert (=> b!10015 (= b_next!3099 (or (and b!10012 (= lambda!2625 (y!603 thiss!672))) b_next!3111))))

(declare-fun b_next!3113 () Bool)

(assert (=> b!10009 (= b_next!3103 (or (and b!10012 (= lambda!2625 (x!5673 thiss!686))) b_next!3113))))

(declare-fun b_next!3115 () Bool)

(assert (=> b!10009 (= b_next!3105 (or (and b!10012 (= lambda!2625 (y!604 thiss!686))) b_next!3115))))

(declare-fun lambda!2626 () Int)

(assert (=> b!10012 (not (= lambda!2626 lambda!2625))))

(assert (=> b!10012 true))

(declare-fun b_next!3117 () Bool)

(assert (=> b!10015 (= b_next!3109 (or (and b!10012 (= lambda!2626 (x!5672 thiss!672))) b_next!3117))))

(declare-fun b_next!3119 () Bool)

(assert (=> b!10015 (= b_next!3111 (or (and b!10012 (= lambda!2626 (y!603 thiss!672))) b_next!3119))))

(declare-fun b_next!3121 () Bool)

(assert (=> b!10009 (= b_next!3113 (or (and b!10012 (= lambda!2626 (x!5673 thiss!686))) b_next!3121))))

(declare-fun b_next!3123 () Bool)

(assert (=> b!10009 (= b_next!3115 (or (and b!10012 (= lambda!2626 (y!604 thiss!686))) b_next!3123))))

(assert (=> b!10012 true))

(declare-fun b_next!3125 () Bool)

(declare-fun lambda!2627 () Int)

(assert (=> b!10015 (= b_next!3101 (or (and b!10012 (= lambda!2627 (evidence!165 thiss!672))) b_next!3125))))

(declare-fun proof!198 () Int)

(declare-fun b_next!3127 () Bool)

(assert (=> start!2014 (= b_next!3107 (or (and b!10012 (= lambda!2627 proof!198)) b_next!3127))))

(declare-fun bs!2693 () Bool)

(declare-fun b!10008 () Bool)

(assert (= bs!2693 (and b!10008 b!10012)))

(declare-fun lambda!2628 () Int)

(assert (=> bs!2693 (not (= lambda!2628 lambda!2625))))

(assert (=> bs!2693 (not (= lambda!2628 lambda!2626))))

(assert (=> b!10008 true))

(declare-fun b_next!3129 () Bool)

(assert (=> b!10015 (= b_next!3117 (or (and b!10008 (= lambda!2628 (x!5672 thiss!672))) b_next!3129))))

(declare-fun b_next!3131 () Bool)

(assert (=> b!10015 (= b_next!3119 (or (and b!10008 (= lambda!2628 (y!603 thiss!672))) b_next!3131))))

(declare-fun b_next!3133 () Bool)

(assert (=> b!10009 (= b_next!3121 (or (and b!10008 (= lambda!2628 (x!5673 thiss!686))) b_next!3133))))

(declare-fun b_next!3135 () Bool)

(assert (=> b!10009 (= b_next!3123 (or (and b!10008 (= lambda!2628 (y!604 thiss!686))) b_next!3135))))

(declare-fun bs!2694 () Bool)

(declare-fun b!10016 () Bool)

(assert (= bs!2694 (and b!10016 b!10012)))

(declare-fun lambda!2629 () Int)

(assert (=> bs!2694 (not (= lambda!2629 lambda!2627))))

(declare-fun dynLambda!332 (Int) Bool)

(assert (=> (and b!10015 b!10016 (= (dynLambda!332 lambda!2629) (dynLambda!332 (evidence!165 thiss!672)))) (= lambda!2629 (evidence!165 thiss!672))))

(assert (=> (and start!2014 b!10016 (= (dynLambda!332 lambda!2629) (dynLambda!332 proof!198))) (= lambda!2629 proof!198)))

(declare-fun b_next!3137 () Bool)

(assert (=> b!10015 (= b_next!3125 (or (and b!10016 (= lambda!2629 (evidence!165 thiss!672))) b_next!3137))))

(declare-fun b_next!3139 () Bool)

(assert (=> start!2014 (= b_next!3127 (or (and b!10016 (= lambda!2629 proof!198)) b_next!3139))))

(declare-fun b!10005 () Bool)

(declare-fun e!5896 () Bool)

(declare-datatypes () ((Balance!241 (Balance!242 (extraOpen!161 Int) (extraClose!161 Int)))))

(declare-fun balance!3 () Balance!241)

(declare-fun nonNegative!0 (Balance!241) Bool)

(assert (=> b!10005 (= e!5896 (nonNegative!0 balance!3))))

(declare-fun b!10006 () Bool)

(declare-fun res!3394 () Bool)

(declare-fun e!5894 () Bool)

(assert (=> b!10006 (=> (not res!3394) (not e!5894))))

(declare-datatypes () ((ProofOps!188 (ProofOps!189 (prop!222 Bool)))))

(declare-fun thiss!651 () ProofOps!188)

(assert (=> b!10006 (= res!3394 (= thiss!651 (ProofOps!189 e!5896)))))

(declare-fun res!3393 () Bool)

(assert (=> b!10006 (=> (not res!3393) (not e!5896))))

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!241) Int)

(assert (=> b!10006 (= res!3393 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun b!10007 () Bool)

(assert (=> b!10007 (= e!5894 (not (dynLambda!332 proof!198)))))

(declare-fun res!3396 () Bool)

(assert (=> b!10008 (=> (not res!3396) (not e!5894))))

(assert (=> b!10008 (= res!3396 (= thiss!686 (EqProof!93 lambda!2628 lambda!2628)))))

(declare-fun e!5895 () Bool)

(assert (=> b!10009 (= e!5895 (and tp!2019 tp!2022))))

(declare-fun b!10010 () Bool)

(declare-fun res!3395 () Bool)

(assert (=> b!10010 (=> (not res!3395) (not e!5894))))

(declare-datatypes () ((Parenthesis!60 (CloseParenthesis!59) (OpenParenthesis!59))))

(declare-datatypes () ((List!237 (Nil!235) (Cons!234 (head!452 Parenthesis!60) (tail!464 List!237)))))

(declare-fun xs!280 () List!237)

(declare-fun original_sequential_helper!0 (List!237) Bool)

(assert (=> b!10010 (= res!3395 (original_sequential_helper!0 (tail!464 xs!280)))))

(declare-fun b!10011 () Bool)

(declare-fun res!3399 () Bool)

(assert (=> b!10011 (=> (not res!3399) (not e!5894))))

(assert (=> b!10011 (= res!3399 (not (is-Nil!235 xs!280)))))

(declare-fun res!3398 () Bool)

(assert (=> b!10012 (=> (not res!3398) (not e!5894))))

(assert (=> b!10012 (= res!3398 (= thiss!672 (EqEvidence!197 lambda!2625 lambda!2626 lambda!2627)))))

(declare-fun res!3390 () Bool)

(assert (=> start!2014 (=> (not res!3390) (not e!5894))))

(declare-fun lambda!2623 () Int)

(declare-fun foldRight!43 (List!237 Balance!241 Int) Balance!241)

(assert (=> start!2014 (= res!3390 (= balance!3 (foldRight!43 xs!280 (Balance!242 0 0) lambda!2623)))))

(assert (=> start!2014 e!5894))

(assert (=> start!2014 true))

(declare-fun e!5893 () Bool)

(declare-fun inv!348 (EqEvidence!196) Bool)

(assert (=> start!2014 (and (inv!348 thiss!672) e!5893)))

(declare-fun inv!349 (EqProof!92) Bool)

(assert (=> start!2014 (and (inv!349 thiss!686) e!5895)))

(assert (=> start!2014 tp!2018))

(declare-fun b!10013 () Bool)

(declare-fun res!3392 () Bool)

(assert (=> b!10013 (=> (not res!3392) (not e!5894))))

(declare-fun lambda!2624 () Int)

(declare-fun foldRight!44 (List!237 Int Int) Int)

(assert (=> b!10013 (= res!3392 (= counter!4 (foldRight!44 xs!280 0 lambda!2624)))))

(declare-fun b!10014 () Bool)

(declare-fun res!3391 () Bool)

(assert (=> b!10014 (=> (not res!3391) (not e!5894))))

(assert (=> b!10014 (= res!3391 (nonNegative!0 (foldRight!43 (tail!464 xs!280) (Balance!242 0 0) lambda!2623)))))

(assert (=> b!10015 (= e!5893 (and tp!2023 tp!2020 tp!2021))))

(declare-fun res!3397 () Bool)

(assert (=> b!10016 (=> (not res!3397) (not e!5894))))

(assert (=> b!10016 (= res!3397 (= proof!198 lambda!2629))))

(assert (= (and start!2014 res!3390) b!10013))

(assert (= (and b!10013 res!3392) b!10006))

(assert (= (and b!10006 res!3393) b!10005))

(assert (= (and b!10006 res!3394) b!10011))

(assert (= (and b!10011 res!3399) b!10010))

(assert (= (and b!10010 res!3395) b!10014))

(assert (= (and b!10014 res!3391) b!10012))

(assert (= (and b!10012 res!3398) b!10008))

(assert (= (and b!10008 res!3396) b!10016))

(assert (= (and b!10016 res!3397) b!10007))

(assert (= start!2014 b!10015))

(assert (= start!2014 b!10009))

(declare-fun b_lambda!5331 () Bool)

(assert (=> (not b_lambda!5331) (not b!10007)))

(declare-fun tb!2433 () Bool)

(declare-fun t!2773 () Bool)

(assert (=> (and b!10015 (= (evidence!165 thiss!672) proof!198) t!2773) tb!2433))

(declare-fun result!2473 () Bool)

(assert (=> tb!2433 (= result!2473 true)))

(assert (=> b!10007 t!2773))

(declare-fun b_and!4551 () Bool)

(assert (= b_and!4543 (and (=> t!2773 result!2473) b_and!4551)))

(declare-fun t!2775 () Bool)

(declare-fun tb!2435 () Bool)

(assert (=> (and start!2014 (= proof!198 proof!198) t!2775) tb!2435))

(declare-fun result!2475 () Bool)

(assert (=> tb!2435 (= result!2475 true)))

(assert (=> b!10007 t!2775))

(declare-fun b_and!4553 () Bool)

(assert (= b_and!4549 (and (=> t!2775 result!2475) b_and!4553)))

(declare-fun m!13151 () Bool)

(assert (=> start!2014 m!13151))

(declare-fun m!13153 () Bool)

(assert (=> start!2014 m!13153))

(declare-fun m!13155 () Bool)

(assert (=> start!2014 m!13155))

(assert (=> b!10006 m!13149))

(declare-fun m!13157 () Bool)

(assert (=> b!10014 m!13157))

(assert (=> b!10014 m!13157))

(declare-fun m!13159 () Bool)

(assert (=> b!10014 m!13159))

(declare-fun m!13161 () Bool)

(assert (=> b!10005 m!13161))

(declare-fun m!13163 () Bool)

(assert (=> b!10013 m!13163))

(declare-fun m!13165 () Bool)

(assert (=> b!10010 m!13165))

(declare-fun m!13167 () Bool)

(assert (=> b!10007 m!13167))

(push 1)

(assert (not b_next!3139))

(assert (not b!10013))

(assert b_and!4541)

(assert (not b_next!3135))

(assert b_and!4553)

(assert b_and!4547)

(assert (not b!10005))

(assert b_and!4545)

(assert (not b_lambda!5331))

(assert (not b!10012))

(assert (not b_next!3137))

(assert (not b_next!3129))

(assert b_and!4551)

(assert (not b!10006))

(assert (not b!10014))

(assert (not b_next!3133))

(assert (not b!10010))

(assert b_and!4539)

(assert (not start!2014))

(assert (not b_next!3131))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3139))

(assert b_and!4541)

(assert (not b_next!3135))

(assert b_and!4553)

(assert b_and!4547)

(assert b_and!4545)

(assert (not b_next!3137))

(assert (not b_next!3129))

(assert b_and!4551)

(assert (not b_next!3133))

(assert b_and!4539)

(assert (not b_next!3131))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5333 () Bool)

(assert (= b_lambda!5331 (or (and b!10012 (= lambda!2627 proof!198)) (and b!10016 (= lambda!2629 proof!198)) (and b!10015 b_free!1261 (= (evidence!165 thiss!672) proof!198)) (and start!2014 b_free!1267) b_lambda!5333)))

(declare-fun bs!2695 () Bool)

(declare-fun d!8151 () Bool)

(assert (= bs!2695 (and d!8151 b!10012)))

(declare-fun toCounter_updateCounter!0 (Balance!241 Parenthesis!60) Bool)

(assert (=> bs!2695 (= (dynLambda!332 lambda!2627) (toCounter_updateCounter!0 (foldRight!43 (tail!464 xs!280) (Balance!242 0 0) lambda!2623) (head!452 xs!280)))))

(assert (=> bs!2695 m!13157))

(assert (=> bs!2695 m!13157))

(declare-fun m!13169 () Bool)

(assert (=> bs!2695 m!13169))

(assert (=> (and b!10012 (= lambda!2627 proof!198) b!10007) d!8151))

(declare-fun bs!2696 () Bool)

(declare-fun d!8153 () Bool)

(assert (= bs!2696 (and d!8153 b!10016)))

(assert (=> bs!2696 (= (dynLambda!332 lambda!2629) true)))

(assert (=> (and b!10016 (= lambda!2629 proof!198) b!10007) d!8153))

(push 1)

(assert (not b_next!3139))

(assert (not b!10013))

(assert b_and!4541)

(assert (not b_next!3135))

(assert b_and!4553)

(assert b_and!4547)

(assert (not b!10005))

(assert b_and!4545)

(assert (not b!10012))

(assert (not b_next!3137))

(assert (not b_next!3129))

(assert b_and!4551)

(assert (not b!10006))

(assert (not b!10014))

(assert (not b_next!3133))

(assert (not b_lambda!5333))

(assert (not bs!2695))

(assert (not b!10010))

(assert b_and!4539)

(assert (not start!2014))

(assert (not b_next!3131))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3139))

(assert b_and!4541)

(assert (not b_next!3135))

(assert b_and!4553)

(assert b_and!4547)

(assert b_and!4545)

(assert (not b_next!3137))

(assert (not b_next!3129))

(assert b_and!4551)

(assert (not b_next!3133))

(assert b_and!4539)

(assert (not b_next!3131))

(check-sat)

(pop 1)

