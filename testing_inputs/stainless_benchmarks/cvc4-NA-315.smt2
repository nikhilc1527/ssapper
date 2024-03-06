; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2394 () Bool)

(assert start!2394)

(declare-fun b!11948 () Bool)

(declare-fun b_free!1751 () Bool)

(declare-fun b_next!4161 () Bool)

(assert (=> b!11948 (= b_free!1751 (not b_next!4161))))

(declare-fun tp!2797 () Bool)

(declare-fun b_and!6091 () Bool)

(assert (=> b!11948 (= tp!2797 b_and!6091)))

(declare-fun b_free!1753 () Bool)

(declare-fun b_next!4163 () Bool)

(assert (=> b!11948 (= b_free!1753 (not b_next!4163))))

(declare-fun tp!2798 () Bool)

(declare-fun b_and!6093 () Bool)

(assert (=> b!11948 (= tp!2798 b_and!6093)))

(declare-fun b_free!1755 () Bool)

(declare-fun b_next!4165 () Bool)

(assert (=> b!11948 (= b_free!1755 (not b_next!4165))))

(declare-fun tp!2800 () Bool)

(declare-fun b_and!6095 () Bool)

(assert (=> b!11948 (= tp!2800 b_and!6095)))

(declare-fun b_free!1757 () Bool)

(declare-fun b_next!4167 () Bool)

(assert (=> start!2394 (= b_free!1757 (not b_next!4167))))

(declare-fun tp!2796 () Bool)

(declare-fun b_and!6097 () Bool)

(assert (=> start!2394 (= tp!2796 b_and!6097)))

(declare-fun b_free!1759 () Bool)

(declare-fun b_next!4169 () Bool)

(assert (=> start!2394 (= b_free!1759 (not b_next!4169))))

(declare-fun tp!2799 () Bool)

(declare-fun b_and!6099 () Bool)

(assert (=> start!2394 (= tp!2799 b_and!6099)))

(declare-fun b!11944 () Bool)

(declare-fun b_free!1761 () Bool)

(declare-fun b_next!4171 () Bool)

(assert (=> b!11944 (= b_free!1761 (not b_next!4171))))

(declare-fun tp!2794 () Bool)

(declare-fun b_and!6101 () Bool)

(assert (=> b!11944 (= tp!2794 b_and!6101)))

(declare-fun b_free!1763 () Bool)

(declare-fun b_next!4173 () Bool)

(assert (=> b!11944 (= b_free!1763 (not b_next!4173))))

(declare-fun tp!2795 () Bool)

(declare-fun b_and!6103 () Bool)

(assert (=> b!11944 (= tp!2795 b_and!6103)))

(declare-fun f!539 () Int)

(declare-fun b!11945 () Bool)

(declare-fun lambda!3215 () Int)

(declare-fun b_next!4175 () Bool)

(assert (=> start!2394 (= b_next!4167 (or (and b!11945 (= lambda!3215 f!539)) b_next!4175))))

(declare-fun b!11951 () Bool)

(assert (=> b!11951 true))

(declare-fun order!289 () Int)

(declare-fun lambda!3216 () Int)

(declare-fun order!291 () Int)

(declare-fun dynLambda!484 (Int Int) Int)

(declare-fun dynLambda!485 (Int Int) Int)

(assert (=> b!11951 (< (dynLambda!484 order!289 f!539) (dynLambda!485 order!291 lambda!3216))))

(assert (=> b!11951 true))

(assert (=> b!11951 true))

(declare-datatypes () ((Balance!339 (Balance!340 (extraOpen!210 Int) (extraClose!210 Int)))))

(declare-datatypes () ((EqEvidence!266 (EqEvidence!267 (x!6808 Int) (y!656 Int) (evidence!200 Int)))))

(declare-fun thiss!747 () EqEvidence!266)

(declare-fun b_next!4177 () Bool)

(assert (=> b!11948 (= b_next!4161 (or (and b!11951 (= lambda!3216 (x!6808 thiss!747))) b_next!4177))))

(declare-fun b_next!4179 () Bool)

(assert (=> b!11948 (= b_next!4163 (or (and b!11951 (= lambda!3216 (y!656 thiss!747))) b_next!4179))))

(declare-fun b_next!4181 () Bool)

(declare-datatypes () ((EqProof!128 (EqProof!129 (x!6809 Int) (y!657 Int)))))

(declare-fun thiss!757 () EqProof!128)

(assert (=> b!11944 (= b_next!4171 (or (and b!11951 (= lambda!3216 (x!6809 thiss!757))) b_next!4181))))

(declare-fun b_next!4183 () Bool)

(assert (=> b!11944 (= b_next!4173 (or (and b!11951 (= lambda!3216 (y!657 thiss!757))) b_next!4183))))

(assert (=> b!11951 true))

(declare-fun lambda!3218 () Int)

(declare-fun order!293 () Int)

(declare-fun dynLambda!486 (Int Int) Int)

(assert (=> b!11951 (< (dynLambda!484 order!289 f!539) (dynLambda!486 order!293 lambda!3218))))

(assert (=> b!11951 true))

(assert (=> b!11951 true))

(declare-fun order!295 () Int)

(declare-fun lambda!3217 () Int)

(declare-fun dynLambda!487 (Int Int) Int)

(assert (=> b!11951 (< (dynLambda!484 order!289 f!539) (dynLambda!487 order!295 lambda!3217))))

(assert (=> b!11951 true))

(declare-fun b_next!4185 () Bool)

(assert (=> b!11948 (= b_next!4165 (or (and b!11951 (= lambda!3217 (evidence!200 thiss!747))) b_next!4185))))

(declare-fun b_next!4187 () Bool)

(declare-fun proof!210 () Int)

(assert (=> start!2394 (= b_next!4169 (or (and b!11951 (= lambda!3217 proof!210)) b_next!4187))))

(declare-fun bs!3071 () Bool)

(declare-fun b!11950 () Bool)

(assert (= bs!3071 (and b!11950 b!11951)))

(declare-fun lambda!3219 () Int)

(assert (=> bs!3071 (not (= lambda!3219 lambda!3216))))

(assert (=> b!11950 true))

(assert (=> b!11950 (< (dynLambda!484 order!289 f!539) (dynLambda!485 order!291 lambda!3219))))

(assert (=> b!11950 true))

(assert (=> b!11950 true))

(declare-fun b_next!4189 () Bool)

(assert (=> b!11948 (= b_next!4177 (or (and b!11950 (= lambda!3219 (x!6808 thiss!747))) b_next!4189))))

(declare-fun b_next!4191 () Bool)

(assert (=> b!11948 (= b_next!4179 (or (and b!11950 (= lambda!3219 (y!656 thiss!747))) b_next!4191))))

(declare-fun b_next!4193 () Bool)

(assert (=> b!11944 (= b_next!4181 (or (and b!11950 (= lambda!3219 (x!6809 thiss!757))) b_next!4193))))

(declare-fun b_next!4195 () Bool)

(assert (=> b!11944 (= b_next!4183 (or (and b!11950 (= lambda!3219 (y!657 thiss!757))) b_next!4195))))

(declare-fun bs!3072 () Bool)

(declare-fun b!11943 () Bool)

(assert (= bs!3072 (and b!11943 b!11951)))

(declare-fun lambda!3220 () Int)

(assert (=> bs!3072 (not (= lambda!3220 lambda!3217))))

(assert (=> b!11943 true))

(assert (=> b!11943 (< (dynLambda!484 order!289 f!539) (dynLambda!487 order!295 lambda!3220))))

(assert (=> b!11943 true))

(assert (=> b!11943 true))

(declare-fun b_next!4197 () Bool)

(assert (=> b!11948 (= b_next!4185 (or (and b!11943 (= lambda!3220 (evidence!200 thiss!747))) b_next!4197))))

(declare-fun b_next!4199 () Bool)

(assert (=> start!2394 (= b_next!4187 (or (and b!11943 (= lambda!3220 proof!210)) b_next!4199))))

(declare-fun res!4419 () Bool)

(declare-fun e!6614 () Bool)

(assert (=> b!11943 (=> (not res!4419) (not e!6614))))

(assert (=> b!11943 (= res!4419 (= proof!210 lambda!3220))))

(declare-fun e!6613 () Bool)

(assert (=> b!11944 (= e!6613 (and tp!2794 tp!2795))))

(declare-fun res!4425 () Bool)

(assert (=> b!11945 (=> (not res!4425) (not e!6614))))

(assert (=> b!11945 (= res!4425 (= f!539 lambda!3215))))

(declare-fun b!11946 () Bool)

(declare-fun res!4423 () Bool)

(assert (=> b!11946 (=> (not res!4423) (not e!6614))))

(declare-datatypes () ((List!283 (Nil!281) (Cons!280 (head!498 Balance!339) (tail!510 List!283)))))

(declare-fun xs!292 () List!283)

(assert (=> b!11946 (= res!4423 (or (not (is-Cons!280 xs!292)) (not (is-Nil!281 (tail!510 xs!292)))))))

(declare-fun b!11947 () Bool)

(declare-fun dynLambda!488 (Int) Bool)

(assert (=> b!11947 (= e!6614 (not (dynLambda!488 proof!210)))))

(declare-fun e!6612 () Bool)

(assert (=> b!11948 (= e!6612 (and tp!2797 tp!2798 tp!2800))))

(declare-fun b!11949 () Bool)

(declare-fun res!4418 () Bool)

(assert (=> b!11949 (=> (not res!4418) (not e!6614))))

(declare-fun ys!54 () List!283)

(declare-datatypes () ((ProofOps!266 (ProofOps!267 (prop!266 Bool)))))

(declare-fun thiss!710 () ProofOps!266)

(declare-fun dynLambda!489 (Int Balance!339 Balance!339) Balance!339)

(declare-fun foldRight1!113 (List!283 Int) Balance!339)

(declare-fun append!132 (List!283 List!283) List!283)

(assert (=> b!11949 (= res!4418 (= thiss!710 (ProofOps!267 (= (dynLambda!489 f!539 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)) (foldRight1!113 (append!132 xs!292 ys!54) f!539)))))))

(declare-fun res!4422 () Bool)

(assert (=> b!11950 (=> (not res!4422) (not e!6614))))

(assert (=> b!11950 (= res!4422 (= thiss!757 (EqProof!129 lambda!3219 lambda!3219)))))

(declare-fun res!4424 () Bool)

(assert (=> b!11951 (=> (not res!4424) (not e!6614))))

(assert (=> b!11951 (= res!4424 (= thiss!747 (EqEvidence!267 lambda!3216 lambda!3216 lambda!3217)))))

(declare-fun res!4421 () Bool)

(assert (=> start!2394 (=> (not res!4421) (not e!6614))))

(declare-fun isEmpty!211 (List!283) Bool)

(assert (=> start!2394 (= res!4421 (not (isEmpty!211 xs!292)))))

(assert (=> start!2394 e!6614))

(declare-fun inv!401 (EqEvidence!266) Bool)

(assert (=> start!2394 (and (inv!401 thiss!747) e!6612)))

(assert (=> start!2394 tp!2796))

(assert (=> start!2394 true))

(assert (=> start!2394 tp!2799))

(declare-fun inv!402 (EqProof!128) Bool)

(assert (=> start!2394 (and (inv!402 thiss!757) e!6613)))

(declare-fun b!11952 () Bool)

(declare-fun res!4420 () Bool)

(assert (=> b!11952 (=> (not res!4420) (not e!6614))))

(assert (=> b!11952 (= res!4420 (not (isEmpty!211 ys!54)))))

(assert (= (and start!2394 res!4421) b!11952))

(assert (= (and b!11952 res!4420) b!11945))

(assert (= (and b!11945 res!4425) b!11949))

(assert (= (and b!11949 res!4418) b!11946))

(assert (= (and b!11946 res!4423) b!11951))

(assert (= (and b!11951 res!4424) b!11950))

(assert (= (and b!11950 res!4422) b!11943))

(assert (= (and b!11943 res!4419) b!11947))

(assert (= start!2394 b!11948))

(assert (= start!2394 b!11944))

(declare-fun b_lambda!6355 () Bool)

(assert (=> (not b_lambda!6355) (not b!11947)))

(declare-fun tb!3213 () Bool)

(declare-fun t!3553 () Bool)

(assert (=> (and b!11948 (= (evidence!200 thiss!747) proof!210) t!3553) tb!3213))

(declare-fun result!3265 () Bool)

(assert (=> tb!3213 (= result!3265 true)))

(assert (=> b!11947 t!3553))

(declare-fun b_and!6105 () Bool)

(assert (= b_and!6095 (and (=> t!3553 result!3265) b_and!6105)))

(declare-fun t!3555 () Bool)

(declare-fun tb!3215 () Bool)

(assert (=> (and start!2394 (= proof!210 proof!210) t!3555) tb!3215))

(declare-fun result!3267 () Bool)

(assert (=> tb!3215 (= result!3267 true)))

(assert (=> b!11947 t!3555))

(declare-fun b_and!6107 () Bool)

(assert (= b_and!6099 (and (=> t!3555 result!3267) b_and!6107)))

(declare-fun b_lambda!6357 () Bool)

(assert (=> (not b_lambda!6357) (not b!11949)))

(declare-fun t!3557 () Bool)

(declare-fun tb!3217 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3557) tb!3217))

(declare-fun result!3269 () Bool)

(assert (=> tb!3217 (= result!3269 true)))

(assert (=> b!11949 t!3557))

(declare-fun b_and!6109 () Bool)

(assert (= b_and!6097 (and (=> t!3557 result!3269) b_and!6109)))

(declare-fun m!14847 () Bool)

(assert (=> b!11947 m!14847))

(declare-fun m!14849 () Bool)

(assert (=> b!11949 m!14849))

(declare-fun m!14851 () Bool)

(assert (=> b!11949 m!14851))

(declare-fun m!14853 () Bool)

(assert (=> b!11949 m!14853))

(assert (=> b!11949 m!14851))

(assert (=> b!11949 m!14853))

(declare-fun m!14855 () Bool)

(assert (=> b!11949 m!14855))

(assert (=> b!11949 m!14849))

(declare-fun m!14857 () Bool)

(assert (=> b!11949 m!14857))

(declare-fun m!14859 () Bool)

(assert (=> start!2394 m!14859))

(declare-fun m!14861 () Bool)

(assert (=> start!2394 m!14861))

(declare-fun m!14863 () Bool)

(assert (=> start!2394 m!14863))

(declare-fun m!14865 () Bool)

(assert (=> b!11952 m!14865))

(push 1)

(assert (not b!11952))

(assert (not b_next!4175))

(assert b_and!6105)

(assert (not b_lambda!6355))

(assert b_and!6101)

(assert (not b!11949))

(assert (not b_lambda!6357))

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert (not start!2394))

(assert b_and!6109)

(assert b_and!6107)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4175))

(assert b_and!6105)

(assert b_and!6101)

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert b_and!6109)

(assert b_and!6107)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6359 () Bool)

(assert (= b_lambda!6357 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6359)))

(declare-fun bs!3073 () Bool)

(declare-fun d!9203 () Bool)

(assert (= bs!3073 (and d!9203 b!11945)))

(declare-fun ++!3 (Balance!339 Balance!339) Balance!339)

(assert (=> bs!3073 (= (dynLambda!489 lambda!3215 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)) (++!3 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)))))

(assert (=> bs!3073 m!14851))

(assert (=> bs!3073 m!14853))

(declare-fun m!14867 () Bool)

(assert (=> bs!3073 m!14867))

(assert (=> (and b!11945 (= lambda!3215 f!539) b!11949) d!9203))

(declare-fun b_lambda!6361 () Bool)

(assert (= b_lambda!6355 (or (and b!11951 (= lambda!3217 proof!210)) (and b!11943 (= lambda!3220 proof!210)) (and b!11948 b_free!1755 (= (evidence!200 thiss!747) proof!210)) (and start!2394 b_free!1759) b_lambda!6361)))

(declare-fun bs!3074 () Bool)

(declare-fun d!9205 () Bool)

(assert (= bs!3074 (and d!9205 b!11951)))

(declare-fun dynLambda!490 (Int Balance!339) Balance!339)

(assert (=> bs!3074 (= (dynLambda!488 lambda!3217) (= (foldRight1!113 xs!292 f!539) (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539))))))

(declare-fun b_lambda!6363 () Bool)

(assert (=> (not b_lambda!6363) (not bs!3074)))

(assert (=> bs!3074 m!14851))

(declare-fun m!14869 () Bool)

(assert (=> bs!3074 m!14869))

(assert (=> bs!3074 m!14869))

(declare-fun m!14871 () Bool)

(assert (=> bs!3074 m!14871))

(assert (=> (and b!11951 (= lambda!3217 proof!210) b!11947) d!9205))

(declare-fun bs!3075 () Bool)

(declare-fun d!9207 () Bool)

(assert (= bs!3075 (and d!9207 b!11943)))

(declare-fun append_is_associative!0 (Balance!339 Balance!339 Balance!339) Bool)

(assert (=> bs!3075 (= (dynLambda!488 lambda!3220) (append_is_associative!0 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539) (foldRight1!113 ys!54 f!539)))))

(assert (=> bs!3075 m!14869))

(assert (=> bs!3075 m!14853))

(assert (=> bs!3075 m!14869))

(assert (=> bs!3075 m!14853))

(declare-fun m!14873 () Bool)

(assert (=> bs!3075 m!14873))

(assert (=> (and b!11943 (= lambda!3220 proof!210) b!11947) d!9207))

(push 1)

(assert (not b!11952))

(assert (not b_next!4175))

(assert (not b_lambda!6363))

(assert b_and!6105)

(assert (not bs!3073))

(assert b_and!6101)

(assert (not b!11949))

(assert (not b_lambda!6359))

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_lambda!6361))

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert (not bs!3075))

(assert (not start!2394))

(assert b_and!6109)

(assert (not bs!3074))

(assert b_and!6107)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4175))

(assert b_and!6105)

(assert b_and!6101)

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert b_and!6109)

(assert b_and!6107)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6365 () Bool)

(assert (= b_lambda!6363 (or b!11951 b_lambda!6365)))

(declare-fun bs!3076 () Bool)

(declare-fun d!9209 () Bool)

(assert (= bs!3076 (and d!9209 b!11951)))

(assert (=> bs!3076 (= (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (dynLambda!489 f!539 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539)))))

(declare-fun b_lambda!6367 () Bool)

(assert (=> (not b_lambda!6367) (not bs!3076)))

(declare-fun t!3559 () Bool)

(declare-fun tb!3219 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3559) tb!3219))

(declare-fun result!3271 () Bool)

(assert (=> tb!3219 (= result!3271 true)))

(assert (=> bs!3076 t!3559))

(declare-fun b_and!6111 () Bool)

(assert (= b_and!6109 (and (=> t!3559 result!3271) b_and!6111)))

(assert (=> bs!3076 m!14869))

(declare-fun m!14875 () Bool)

(assert (=> bs!3076 m!14875))

(assert (=> bs!3074 d!9209))

(push 1)

(assert (not b!11952))

(assert (not b_next!4175))

(assert b_and!6105)

(assert (not bs!3073))

(assert b_and!6101)

(assert (not b!11949))

(assert (not b_lambda!6359))

(assert b_and!6111)

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_lambda!6367))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert (not b_lambda!6365))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_lambda!6361))

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert (not bs!3075))

(assert (not start!2394))

(assert (not bs!3074))

(assert b_and!6107)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4175))

(assert b_and!6105)

(assert b_and!6101)

(assert b_and!6111)

(assert b_and!6091)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6103)

(assert (not b_next!4197))

(assert b_and!6093)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert b_and!6107)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9211 () Bool)

(assert (=> d!9211 (= (isEmpty!211 xs!292) (is-Nil!281 xs!292))))

(assert (=> start!2394 d!9211))

(declare-fun d!9213 () Bool)

(declare-fun res!4428 () Bool)

(declare-fun e!6617 () Bool)

(assert (=> d!9213 (=> (not res!4428) (not e!6617))))

(declare-fun dynLambda!491 (Int) Balance!339)

(assert (=> d!9213 (= res!4428 (= (dynLambda!491 (x!6808 thiss!747)) (dynLambda!491 (y!656 thiss!747))))))

(assert (=> d!9213 (= (inv!401 thiss!747) e!6617)))

(declare-fun b!11967 () Bool)

(assert (=> b!11967 (= e!6617 (dynLambda!488 (evidence!200 thiss!747)))))

(assert (= (and d!9213 res!4428) b!11967))

(declare-fun b_lambda!6369 () Bool)

(assert (=> (not b_lambda!6369) (not d!9213)))

(declare-fun t!3561 () Bool)

(declare-fun tb!3221 () Bool)

(assert (=> (and b!11948 (= (x!6808 thiss!747) (x!6808 thiss!747)) t!3561) tb!3221))

(declare-fun result!3273 () Bool)

(assert (=> tb!3221 (= result!3273 true)))

(assert (=> d!9213 t!3561))

(declare-fun b_and!6113 () Bool)

(assert (= b_and!6091 (and (=> t!3561 result!3273) b_and!6113)))

(declare-fun t!3563 () Bool)

(declare-fun tb!3223 () Bool)

(assert (=> (and b!11948 (= (y!656 thiss!747) (x!6808 thiss!747)) t!3563) tb!3223))

(declare-fun result!3275 () Bool)

(assert (=> tb!3223 (= result!3275 true)))

(assert (=> d!9213 t!3563))

(declare-fun b_and!6115 () Bool)

(assert (= b_and!6093 (and (=> t!3563 result!3275) b_and!6115)))

(declare-fun tb!3225 () Bool)

(declare-fun t!3565 () Bool)

(assert (=> (and b!11944 (= (x!6809 thiss!757) (x!6808 thiss!747)) t!3565) tb!3225))

(declare-fun result!3277 () Bool)

(assert (=> tb!3225 (= result!3277 true)))

(assert (=> d!9213 t!3565))

(declare-fun b_and!6117 () Bool)

(assert (= b_and!6101 (and (=> t!3565 result!3277) b_and!6117)))

(declare-fun tb!3227 () Bool)

(declare-fun t!3567 () Bool)

(assert (=> (and b!11944 (= (y!657 thiss!757) (x!6808 thiss!747)) t!3567) tb!3227))

(declare-fun result!3279 () Bool)

(assert (=> tb!3227 (= result!3279 true)))

(assert (=> d!9213 t!3567))

(declare-fun b_and!6119 () Bool)

(assert (= b_and!6103 (and (=> t!3567 result!3279) b_and!6119)))

(declare-fun b_lambda!6371 () Bool)

(assert (=> (not b_lambda!6371) (not d!9213)))

(declare-fun t!3569 () Bool)

(declare-fun tb!3229 () Bool)

(assert (=> (and b!11948 (= (x!6808 thiss!747) (y!656 thiss!747)) t!3569) tb!3229))

(declare-fun result!3281 () Bool)

(assert (=> tb!3229 (= result!3281 true)))

(assert (=> d!9213 t!3569))

(declare-fun b_and!6121 () Bool)

(assert (= b_and!6113 (and (=> t!3569 result!3281) b_and!6121)))

(declare-fun t!3571 () Bool)

(declare-fun tb!3231 () Bool)

(assert (=> (and b!11948 (= (y!656 thiss!747) (y!656 thiss!747)) t!3571) tb!3231))

(declare-fun result!3283 () Bool)

(assert (=> tb!3231 (= result!3283 true)))

(assert (=> d!9213 t!3571))

(declare-fun b_and!6123 () Bool)

(assert (= b_and!6115 (and (=> t!3571 result!3283) b_and!6123)))

(declare-fun tb!3233 () Bool)

(declare-fun t!3573 () Bool)

(assert (=> (and b!11944 (= (x!6809 thiss!757) (y!656 thiss!747)) t!3573) tb!3233))

(declare-fun result!3285 () Bool)

(assert (=> tb!3233 (= result!3285 true)))

(assert (=> d!9213 t!3573))

(declare-fun b_and!6125 () Bool)

(assert (= b_and!6117 (and (=> t!3573 result!3285) b_and!6125)))

(declare-fun t!3575 () Bool)

(declare-fun tb!3235 () Bool)

(assert (=> (and b!11944 (= (y!657 thiss!757) (y!656 thiss!747)) t!3575) tb!3235))

(declare-fun result!3287 () Bool)

(assert (=> tb!3235 (= result!3287 true)))

(assert (=> d!9213 t!3575))

(declare-fun b_and!6127 () Bool)

(assert (= b_and!6119 (and (=> t!3575 result!3287) b_and!6127)))

(declare-fun b_lambda!6373 () Bool)

(assert (=> (not b_lambda!6373) (not b!11967)))

(declare-fun t!3577 () Bool)

(declare-fun tb!3237 () Bool)

(assert (=> (and b!11948 (= (evidence!200 thiss!747) (evidence!200 thiss!747)) t!3577) tb!3237))

(declare-fun result!3289 () Bool)

(assert (=> tb!3237 (= result!3289 true)))

(assert (=> b!11967 t!3577))

(declare-fun b_and!6129 () Bool)

(assert (= b_and!6105 (and (=> t!3577 result!3289) b_and!6129)))

(declare-fun tb!3239 () Bool)

(declare-fun t!3579 () Bool)

(assert (=> (and start!2394 (= proof!210 (evidence!200 thiss!747)) t!3579) tb!3239))

(declare-fun result!3291 () Bool)

(assert (=> tb!3239 (= result!3291 true)))

(assert (=> b!11967 t!3579))

(declare-fun b_and!6131 () Bool)

(assert (= b_and!6107 (and (=> t!3579 result!3291) b_and!6131)))

(declare-fun m!14877 () Bool)

(assert (=> d!9213 m!14877))

(declare-fun m!14879 () Bool)

(assert (=> d!9213 m!14879))

(declare-fun m!14881 () Bool)

(assert (=> b!11967 m!14881))

(assert (=> start!2394 d!9213))

(declare-fun d!9215 () Bool)

(assert (=> d!9215 (= (inv!402 thiss!757) (= (dynLambda!491 (x!6809 thiss!757)) (dynLambda!491 (y!657 thiss!757))))))

(declare-fun b_lambda!6375 () Bool)

(assert (=> (not b_lambda!6375) (not d!9215)))

(declare-fun t!3581 () Bool)

(declare-fun tb!3241 () Bool)

(assert (=> (and b!11948 (= (x!6808 thiss!747) (x!6809 thiss!757)) t!3581) tb!3241))

(declare-fun result!3293 () Bool)

(assert (=> tb!3241 (= result!3293 true)))

(assert (=> d!9215 t!3581))

(declare-fun b_and!6133 () Bool)

(assert (= b_and!6121 (and (=> t!3581 result!3293) b_and!6133)))

(declare-fun t!3583 () Bool)

(declare-fun tb!3243 () Bool)

(assert (=> (and b!11948 (= (y!656 thiss!747) (x!6809 thiss!757)) t!3583) tb!3243))

(declare-fun result!3295 () Bool)

(assert (=> tb!3243 (= result!3295 true)))

(assert (=> d!9215 t!3583))

(declare-fun b_and!6135 () Bool)

(assert (= b_and!6123 (and (=> t!3583 result!3295) b_and!6135)))

(declare-fun t!3585 () Bool)

(declare-fun tb!3245 () Bool)

(assert (=> (and b!11944 (= (x!6809 thiss!757) (x!6809 thiss!757)) t!3585) tb!3245))

(declare-fun result!3297 () Bool)

(assert (=> tb!3245 (= result!3297 true)))

(assert (=> d!9215 t!3585))

(declare-fun b_and!6137 () Bool)

(assert (= b_and!6125 (and (=> t!3585 result!3297) b_and!6137)))

(declare-fun t!3587 () Bool)

(declare-fun tb!3247 () Bool)

(assert (=> (and b!11944 (= (y!657 thiss!757) (x!6809 thiss!757)) t!3587) tb!3247))

(declare-fun result!3299 () Bool)

(assert (=> tb!3247 (= result!3299 true)))

(assert (=> d!9215 t!3587))

(declare-fun b_and!6139 () Bool)

(assert (= b_and!6127 (and (=> t!3587 result!3299) b_and!6139)))

(declare-fun b_lambda!6377 () Bool)

(assert (=> (not b_lambda!6377) (not d!9215)))

(declare-fun t!3589 () Bool)

(declare-fun tb!3249 () Bool)

(assert (=> (and b!11948 (= (x!6808 thiss!747) (y!657 thiss!757)) t!3589) tb!3249))

(declare-fun result!3301 () Bool)

(assert (=> tb!3249 (= result!3301 true)))

(assert (=> d!9215 t!3589))

(declare-fun b_and!6141 () Bool)

(assert (= b_and!6133 (and (=> t!3589 result!3301) b_and!6141)))

(declare-fun tb!3251 () Bool)

(declare-fun t!3591 () Bool)

(assert (=> (and b!11948 (= (y!656 thiss!747) (y!657 thiss!757)) t!3591) tb!3251))

(declare-fun result!3303 () Bool)

(assert (=> tb!3251 (= result!3303 true)))

(assert (=> d!9215 t!3591))

(declare-fun b_and!6143 () Bool)

(assert (= b_and!6135 (and (=> t!3591 result!3303) b_and!6143)))

(declare-fun t!3593 () Bool)

(declare-fun tb!3253 () Bool)

(assert (=> (and b!11944 (= (x!6809 thiss!757) (y!657 thiss!757)) t!3593) tb!3253))

(declare-fun result!3305 () Bool)

(assert (=> tb!3253 (= result!3305 true)))

(assert (=> d!9215 t!3593))

(declare-fun b_and!6145 () Bool)

(assert (= b_and!6137 (and (=> t!3593 result!3305) b_and!6145)))

(declare-fun t!3595 () Bool)

(declare-fun tb!3255 () Bool)

(assert (=> (and b!11944 (= (y!657 thiss!757) (y!657 thiss!757)) t!3595) tb!3255))

(declare-fun result!3307 () Bool)

(assert (=> tb!3255 (= result!3307 true)))

(assert (=> d!9215 t!3595))

(declare-fun b_and!6147 () Bool)

(assert (= b_and!6139 (and (=> t!3595 result!3307) b_and!6147)))

(declare-fun m!14883 () Bool)

(assert (=> d!9215 m!14883))

(declare-fun m!14885 () Bool)

(assert (=> d!9215 m!14885))

(assert (=> start!2394 d!9215))

(declare-fun d!9217 () Bool)

(assert (=> d!9217 (= (isEmpty!211 ys!54) (is-Nil!281 ys!54))))

(assert (=> b!11952 d!9217))

(declare-fun d!9219 () Bool)

(declare-fun c!3445 () Bool)

(assert (=> d!9219 (= c!3445 (and (is-Cons!280 xs!292) (is-Nil!281 (tail!510 xs!292))))))

(declare-fun e!6620 () Balance!339)

(assert (=> d!9219 (= (foldRight1!113 xs!292 f!539) e!6620)))

(declare-fun b!11972 () Bool)

(assert (=> b!11972 (= e!6620 (head!498 xs!292))))

(declare-fun b!11973 () Bool)

(assert (=> b!11973 (= e!6620 (dynLambda!489 f!539 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539)))))

(assert (= (and d!9219 c!3445) b!11972))

(assert (= (and d!9219 (not c!3445)) b!11973))

(declare-fun b_lambda!6379 () Bool)

(assert (=> (not b_lambda!6379) (not b!11973)))

(assert (=> b!11973 t!3559))

(declare-fun b_and!6149 () Bool)

(assert (= b_and!6111 (and (=> t!3559 result!3271) b_and!6149)))

(assert (=> b!11973 m!14869))

(assert (=> b!11973 m!14869))

(assert (=> b!11973 m!14875))

(assert (=> b!11949 d!9219))

(declare-fun d!9221 () Bool)

(declare-fun c!3446 () Bool)

(assert (=> d!9221 (= c!3446 (and (is-Cons!280 ys!54) (is-Nil!281 (tail!510 ys!54))))))

(declare-fun e!6621 () Balance!339)

(assert (=> d!9221 (= (foldRight1!113 ys!54 f!539) e!6621)))

(declare-fun b!11974 () Bool)

(assert (=> b!11974 (= e!6621 (head!498 ys!54))))

(declare-fun b!11975 () Bool)

(assert (=> b!11975 (= e!6621 (dynLambda!489 f!539 (head!498 ys!54) (foldRight1!113 (tail!510 ys!54) f!539)))))

(assert (= (and d!9221 c!3446) b!11974))

(assert (= (and d!9221 (not c!3446)) b!11975))

(declare-fun b_lambda!6381 () Bool)

(assert (=> (not b_lambda!6381) (not b!11975)))

(declare-fun t!3597 () Bool)

(declare-fun tb!3257 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3597) tb!3257))

(declare-fun result!3309 () Bool)

(assert (=> tb!3257 (= result!3309 true)))

(assert (=> b!11975 t!3597))

(declare-fun b_and!6151 () Bool)

(assert (= b_and!6149 (and (=> t!3597 result!3309) b_and!6151)))

(declare-fun m!14887 () Bool)

(assert (=> b!11975 m!14887))

(assert (=> b!11975 m!14887))

(declare-fun m!14889 () Bool)

(assert (=> b!11975 m!14889))

(assert (=> b!11949 d!9221))

(declare-fun d!9223 () Bool)

(declare-fun c!3447 () Bool)

(assert (=> d!9223 (= c!3447 (and (is-Cons!280 (append!132 xs!292 ys!54)) (is-Nil!281 (tail!510 (append!132 xs!292 ys!54)))))))

(declare-fun e!6622 () Balance!339)

(assert (=> d!9223 (= (foldRight1!113 (append!132 xs!292 ys!54) f!539) e!6622)))

(declare-fun b!11976 () Bool)

(assert (=> b!11976 (= e!6622 (head!498 (append!132 xs!292 ys!54)))))

(declare-fun b!11977 () Bool)

(assert (=> b!11977 (= e!6622 (dynLambda!489 f!539 (head!498 (append!132 xs!292 ys!54)) (foldRight1!113 (tail!510 (append!132 xs!292 ys!54)) f!539)))))

(assert (= (and d!9223 c!3447) b!11976))

(assert (= (and d!9223 (not c!3447)) b!11977))

(declare-fun b_lambda!6383 () Bool)

(assert (=> (not b_lambda!6383) (not b!11977)))

(declare-fun t!3599 () Bool)

(declare-fun tb!3259 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3599) tb!3259))

(declare-fun result!3311 () Bool)

(assert (=> tb!3259 (= result!3311 true)))

(assert (=> b!11977 t!3599))

(declare-fun b_and!6153 () Bool)

(assert (= b_and!6151 (and (=> t!3599 result!3311) b_and!6153)))

(declare-fun m!14891 () Bool)

(assert (=> b!11977 m!14891))

(assert (=> b!11977 m!14891))

(declare-fun m!14893 () Bool)

(assert (=> b!11977 m!14893))

(assert (=> b!11949 d!9223))

(declare-fun d!9225 () Bool)

(declare-fun c!3450 () Bool)

(assert (=> d!9225 (= c!3450 (is-Nil!281 xs!292))))

(declare-fun e!6625 () List!283)

(assert (=> d!9225 (= (append!132 xs!292 ys!54) e!6625)))

(declare-fun b!11982 () Bool)

(assert (=> b!11982 (= e!6625 ys!54)))

(declare-fun b!11983 () Bool)

(assert (=> b!11983 (= e!6625 (Cons!280 (head!498 xs!292) (append!132 (tail!510 xs!292) ys!54)))))

(assert (= (and d!9225 c!3450) b!11982))

(assert (= (and d!9225 (not c!3450)) b!11983))

(declare-fun m!14895 () Bool)

(assert (=> b!11983 m!14895))

(assert (=> b!11949 d!9225))

(declare-fun b_lambda!6385 () Bool)

(assert (= b_lambda!6379 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6385)))

(declare-fun bs!3077 () Bool)

(declare-fun d!9227 () Bool)

(assert (= bs!3077 (and d!9227 b!11945)))

(assert (=> bs!3077 (= (dynLambda!489 lambda!3215 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539)) (++!3 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539)))))

(assert (=> bs!3077 m!14869))

(declare-fun m!14897 () Bool)

(assert (=> bs!3077 m!14897))

(assert (=> (and b!11945 (= lambda!3215 f!539) b!11973) d!9227))

(declare-fun b_lambda!6387 () Bool)

(assert (= b_lambda!6381 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6387)))

(declare-fun bs!3078 () Bool)

(declare-fun d!9229 () Bool)

(assert (= bs!3078 (and d!9229 b!11945)))

(assert (=> bs!3078 (= (dynLambda!489 lambda!3215 (head!498 ys!54) (foldRight1!113 (tail!510 ys!54) f!539)) (++!3 (head!498 ys!54) (foldRight1!113 (tail!510 ys!54) f!539)))))

(assert (=> bs!3078 m!14887))

(declare-fun m!14899 () Bool)

(assert (=> bs!3078 m!14899))

(assert (=> (and b!11945 (= lambda!3215 f!539) b!11975) d!9229))

(declare-fun b_lambda!6389 () Bool)

(assert (= b_lambda!6375 (or (and b!11944 b_free!1763 (= (y!657 thiss!757) (x!6809 thiss!757))) (and b!11944 b_free!1761) (and b!11951 (= lambda!3216 (x!6809 thiss!757))) (and b!11948 b_free!1753 (= (y!656 thiss!747) (x!6809 thiss!757))) (and b!11948 b_free!1751 (= (x!6808 thiss!747) (x!6809 thiss!757))) (and b!11950 (= lambda!3219 (x!6809 thiss!757))) b_lambda!6389)))

(declare-fun bs!3079 () Bool)

(declare-fun d!9231 () Bool)

(assert (= bs!3079 (and d!9231 b!11950)))

(assert (=> bs!3079 (= (dynLambda!491 lambda!3219) (dynLambda!489 f!539 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6403 () Bool)

(assert (=> (not b_lambda!6403) (not bs!3079)))

(declare-fun t!3601 () Bool)

(declare-fun tb!3261 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3601) tb!3261))

(declare-fun result!3313 () Bool)

(assert (=> tb!3261 (= result!3313 true)))

(assert (=> bs!3079 t!3601))

(declare-fun b_and!6155 () Bool)

(assert (= b_and!6153 (and (=> t!3601 result!3313) b_and!6155)))

(declare-fun b_lambda!6405 () Bool)

(assert (=> (not b_lambda!6405) (not bs!3079)))

(assert (=> bs!3079 m!14869))

(assert (=> bs!3079 m!14869))

(assert (=> bs!3079 m!14871))

(assert (=> bs!3079 m!14871))

(assert (=> bs!3079 m!14853))

(declare-fun m!14901 () Bool)

(assert (=> bs!3079 m!14901))

(assert (=> bs!3079 m!14853))

(assert (=> (and b!11950 (= lambda!3219 (x!6809 thiss!757)) d!9215) d!9231))

(declare-fun bs!3080 () Bool)

(declare-fun d!9233 () Bool)

(assert (= bs!3080 (and d!9233 b!11951)))

(assert (=> bs!3080 (= (dynLambda!491 lambda!3216) (dynLambda!489 f!539 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6407 () Bool)

(assert (=> (not b_lambda!6407) (not bs!3080)))

(assert (=> bs!3080 t!3557))

(declare-fun b_and!6157 () Bool)

(assert (= b_and!6155 (and (=> t!3557 result!3269) b_and!6157)))

(assert (=> bs!3080 m!14851))

(assert (=> bs!3080 m!14853))

(assert (=> bs!3080 m!14851))

(assert (=> bs!3080 m!14853))

(assert (=> bs!3080 m!14855))

(assert (=> (and b!11951 (= lambda!3216 (x!6809 thiss!757)) d!9215) d!9233))

(declare-fun b_lambda!6391 () Bool)

(assert (= b_lambda!6383 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6391)))

(declare-fun bs!3081 () Bool)

(declare-fun d!9235 () Bool)

(assert (= bs!3081 (and d!9235 b!11945)))

(assert (=> bs!3081 (= (dynLambda!489 lambda!3215 (head!498 (append!132 xs!292 ys!54)) (foldRight1!113 (tail!510 (append!132 xs!292 ys!54)) f!539)) (++!3 (head!498 (append!132 xs!292 ys!54)) (foldRight1!113 (tail!510 (append!132 xs!292 ys!54)) f!539)))))

(assert (=> bs!3081 m!14891))

(declare-fun m!14903 () Bool)

(assert (=> bs!3081 m!14903))

(assert (=> (and b!11945 (= lambda!3215 f!539) b!11977) d!9235))

(declare-fun b_lambda!6393 () Bool)

(assert (= b_lambda!6369 (or (and b!11951 (= lambda!3216 (x!6808 thiss!747))) (and b!11944 b_free!1761 (= (x!6809 thiss!757) (x!6808 thiss!747))) (and b!11948 b_free!1751) (and b!11944 b_free!1763 (= (y!657 thiss!757) (x!6808 thiss!747))) (and b!11948 b_free!1753 (= (y!656 thiss!747) (x!6808 thiss!747))) (and b!11950 (= lambda!3219 (x!6808 thiss!747))) b_lambda!6393)))

(declare-fun bs!3082 () Bool)

(declare-fun d!9237 () Bool)

(assert (= bs!3082 (and d!9237 b!11950)))

(assert (=> bs!3082 (= (dynLambda!491 lambda!3219) (dynLambda!489 f!539 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6409 () Bool)

(assert (=> (not b_lambda!6409) (not bs!3082)))

(assert (=> bs!3082 t!3601))

(declare-fun b_and!6159 () Bool)

(assert (= b_and!6157 (and (=> t!3601 result!3313) b_and!6159)))

(declare-fun b_lambda!6411 () Bool)

(assert (=> (not b_lambda!6411) (not bs!3082)))

(assert (=> bs!3082 m!14869))

(assert (=> bs!3082 m!14869))

(assert (=> bs!3082 m!14871))

(assert (=> bs!3082 m!14871))

(assert (=> bs!3082 m!14853))

(assert (=> bs!3082 m!14901))

(assert (=> bs!3082 m!14853))

(assert (=> (and b!11950 (= lambda!3219 (x!6808 thiss!747)) d!9213) d!9237))

(declare-fun bs!3083 () Bool)

(declare-fun d!9239 () Bool)

(assert (= bs!3083 (and d!9239 b!11951)))

(assert (=> bs!3083 (= (dynLambda!491 lambda!3216) (dynLambda!489 f!539 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6413 () Bool)

(assert (=> (not b_lambda!6413) (not bs!3083)))

(assert (=> bs!3083 t!3557))

(declare-fun b_and!6161 () Bool)

(assert (= b_and!6159 (and (=> t!3557 result!3269) b_and!6161)))

(assert (=> bs!3083 m!14851))

(assert (=> bs!3083 m!14853))

(assert (=> bs!3083 m!14851))

(assert (=> bs!3083 m!14853))

(assert (=> bs!3083 m!14855))

(assert (=> (and b!11951 (= lambda!3216 (x!6808 thiss!747)) d!9213) d!9239))

(declare-fun b_lambda!6395 () Bool)

(assert (= b_lambda!6373 (or (and b!11951 (= lambda!3217 (evidence!200 thiss!747))) (and b!11943 (= lambda!3220 (evidence!200 thiss!747))) (and b!11948 b_free!1755) (and start!2394 b_free!1759 (= proof!210 (evidence!200 thiss!747))) b_lambda!6395)))

(declare-fun bs!3084 () Bool)

(declare-fun d!9241 () Bool)

(assert (= bs!3084 (and d!9241 b!11951)))

(assert (=> bs!3084 (= (dynLambda!488 lambda!3217) (= (foldRight1!113 xs!292 f!539) (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539))))))

(declare-fun b_lambda!6415 () Bool)

(assert (=> (not b_lambda!6415) (not bs!3084)))

(assert (=> bs!3084 m!14851))

(assert (=> bs!3084 m!14869))

(assert (=> bs!3084 m!14869))

(assert (=> bs!3084 m!14871))

(assert (=> (and b!11951 (= lambda!3217 (evidence!200 thiss!747)) b!11967) d!9241))

(declare-fun bs!3085 () Bool)

(declare-fun d!9243 () Bool)

(assert (= bs!3085 (and d!9243 b!11943)))

(assert (=> bs!3085 (= (dynLambda!488 lambda!3220) (append_is_associative!0 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539) (foldRight1!113 ys!54 f!539)))))

(assert (=> bs!3085 m!14869))

(assert (=> bs!3085 m!14853))

(assert (=> bs!3085 m!14869))

(assert (=> bs!3085 m!14853))

(assert (=> bs!3085 m!14873))

(assert (=> (and b!11943 (= lambda!3220 (evidence!200 thiss!747)) b!11967) d!9243))

(declare-fun b_lambda!6397 () Bool)

(assert (= b_lambda!6377 (or (and b!11944 b_free!1761 (= (x!6809 thiss!757) (y!657 thiss!757))) (and b!11948 b_free!1751 (= (x!6808 thiss!747) (y!657 thiss!757))) (and b!11950 (= lambda!3219 (y!657 thiss!757))) (and b!11951 (= lambda!3216 (y!657 thiss!757))) (and b!11944 b_free!1763) (and b!11948 b_free!1753 (= (y!656 thiss!747) (y!657 thiss!757))) b_lambda!6397)))

(declare-fun bs!3086 () Bool)

(declare-fun d!9245 () Bool)

(assert (= bs!3086 (and d!9245 b!11951)))

(assert (=> bs!3086 (= (dynLambda!491 lambda!3216) (dynLambda!489 f!539 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6417 () Bool)

(assert (=> (not b_lambda!6417) (not bs!3086)))

(assert (=> bs!3086 t!3557))

(declare-fun b_and!6163 () Bool)

(assert (= b_and!6161 (and (=> t!3557 result!3269) b_and!6163)))

(assert (=> bs!3086 m!14851))

(assert (=> bs!3086 m!14853))

(assert (=> bs!3086 m!14851))

(assert (=> bs!3086 m!14853))

(assert (=> bs!3086 m!14855))

(assert (=> (and b!11951 (= lambda!3216 (y!657 thiss!757)) d!9215) d!9245))

(declare-fun bs!3087 () Bool)

(declare-fun d!9247 () Bool)

(assert (= bs!3087 (and d!9247 b!11950)))

(assert (=> bs!3087 (= (dynLambda!491 lambda!3219) (dynLambda!489 f!539 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6419 () Bool)

(assert (=> (not b_lambda!6419) (not bs!3087)))

(assert (=> bs!3087 t!3601))

(declare-fun b_and!6165 () Bool)

(assert (= b_and!6163 (and (=> t!3601 result!3313) b_and!6165)))

(declare-fun b_lambda!6421 () Bool)

(assert (=> (not b_lambda!6421) (not bs!3087)))

(assert (=> bs!3087 m!14869))

(assert (=> bs!3087 m!14869))

(assert (=> bs!3087 m!14871))

(assert (=> bs!3087 m!14871))

(assert (=> bs!3087 m!14853))

(assert (=> bs!3087 m!14901))

(assert (=> bs!3087 m!14853))

(assert (=> (and b!11950 (= lambda!3219 (y!657 thiss!757)) d!9215) d!9247))

(declare-fun b_lambda!6399 () Bool)

(assert (= b_lambda!6367 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6399)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3076) d!9227))

(declare-fun b_lambda!6401 () Bool)

(assert (= b_lambda!6371 (or (and b!11944 b_free!1763 (= (y!657 thiss!757) (y!656 thiss!747))) (and b!11950 (= lambda!3219 (y!656 thiss!747))) (and b!11948 b_free!1753) (and b!11948 b_free!1751 (= (x!6808 thiss!747) (y!656 thiss!747))) (and b!11951 (= lambda!3216 (y!656 thiss!747))) (and b!11944 b_free!1761 (= (x!6809 thiss!757) (y!656 thiss!747))) b_lambda!6401)))

(declare-fun bs!3088 () Bool)

(declare-fun d!9249 () Bool)

(assert (= bs!3088 (and d!9249 b!11951)))

(assert (=> bs!3088 (= (dynLambda!491 lambda!3216) (dynLambda!489 f!539 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6423 () Bool)

(assert (=> (not b_lambda!6423) (not bs!3088)))

(assert (=> bs!3088 t!3557))

(declare-fun b_and!6167 () Bool)

(assert (= b_and!6165 (and (=> t!3557 result!3269) b_and!6167)))

(assert (=> bs!3088 m!14851))

(assert (=> bs!3088 m!14853))

(assert (=> bs!3088 m!14851))

(assert (=> bs!3088 m!14853))

(assert (=> bs!3088 m!14855))

(assert (=> (and b!11951 (= lambda!3216 (y!656 thiss!747)) d!9213) d!9249))

(declare-fun bs!3089 () Bool)

(declare-fun d!9251 () Bool)

(assert (= bs!3089 (and d!9251 b!11950)))

(assert (=> bs!3089 (= (dynLambda!491 lambda!3219) (dynLambda!489 f!539 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(declare-fun b_lambda!6425 () Bool)

(assert (=> (not b_lambda!6425) (not bs!3089)))

(assert (=> bs!3089 t!3601))

(declare-fun b_and!6169 () Bool)

(assert (= b_and!6167 (and (=> t!3601 result!3313) b_and!6169)))

(declare-fun b_lambda!6427 () Bool)

(assert (=> (not b_lambda!6427) (not bs!3089)))

(assert (=> bs!3089 m!14869))

(assert (=> bs!3089 m!14869))

(assert (=> bs!3089 m!14871))

(assert (=> bs!3089 m!14871))

(assert (=> bs!3089 m!14853))

(assert (=> bs!3089 m!14901))

(assert (=> bs!3089 m!14853))

(assert (=> (and b!11950 (= lambda!3219 (y!656 thiss!747)) d!9213) d!9251))

(push 1)

(assert (not b_lambda!6397))

(assert (not b_lambda!6399))

(assert (not b_lambda!6415))

(assert (not b_next!4175))

(assert (not bs!3086))

(assert (not b_lambda!6413))

(assert (not bs!3087))

(assert (not bs!3078))

(assert (not b_lambda!6385))

(assert (not bs!3073))

(assert (not b_lambda!6405))

(assert (not b_lambda!6423))

(assert (not bs!3077))

(assert (not b!11975))

(assert (not b_lambda!6411))

(assert (not b_lambda!6359))

(assert (not b!11983))

(assert (not b_lambda!6389))

(assert (not b_lambda!6409))

(assert (not b_lambda!6391))

(assert b_and!6131)

(assert (not bs!3083))

(assert (not b_lambda!6421))

(assert (not bs!3089))

(assert (not bs!3079))

(assert (not b_lambda!6407))

(assert (not b_lambda!6419))

(assert b_and!6129)

(assert (not bs!3088))

(assert (not b_next!4191))

(assert (not b_lambda!6401))

(assert (not b_next!4193))

(assert (not b_lambda!6387))

(assert (not b_next!4189))

(assert (not b_lambda!6365))

(assert (not bs!3082))

(assert b_and!6141)

(assert (not bs!3081))

(assert (not b_lambda!6393))

(assert (not b_next!4197))

(assert (not b_lambda!6427))

(assert (not b_lambda!6395))

(assert (not b_lambda!6417))

(assert (not bs!3080))

(assert b_and!6143)

(assert (not b_lambda!6361))

(assert (not b!11977))

(assert (not bs!3084))

(assert (not b_lambda!6403))

(assert b_and!6145)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert (not bs!3075))

(assert (not bs!3085))

(assert b_and!6147)

(assert b_and!6169)

(assert (not b_lambda!6425))

(assert (not b!11973))

(assert (not bs!3074))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4175))

(assert b_and!6131)

(assert b_and!6129)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6141)

(assert (not b_next!4197))

(assert b_and!6143)

(assert b_and!6145)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert b_and!6147)

(assert b_and!6169)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9253 () Bool)

(assert (=> d!9253 (= (++!3 (head!498 xs!292) (++!3 (foldRight1!113 (tail!510 xs!292) f!539) (foldRight1!113 ys!54 f!539))) (++!3 (++!3 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(assert (=> d!9253 (= (append_is_associative!0 (head!498 xs!292) (foldRight1!113 (tail!510 xs!292) f!539) (foldRight1!113 ys!54 f!539)) true)))

(declare-fun bs!3090 () Bool)

(assert (= bs!3090 d!9253))

(assert (=> bs!3090 m!14869))

(assert (=> bs!3090 m!14853))

(declare-fun m!14905 () Bool)

(assert (=> bs!3090 m!14905))

(assert (=> bs!3090 m!14905))

(declare-fun m!14907 () Bool)

(assert (=> bs!3090 m!14907))

(assert (=> bs!3090 m!14869))

(assert (=> bs!3090 m!14897))

(assert (=> bs!3090 m!14897))

(assert (=> bs!3090 m!14853))

(declare-fun m!14909 () Bool)

(assert (=> bs!3090 m!14909))

(assert (=> bs!3075 d!9253))

(declare-fun d!9255 () Bool)

(declare-fun c!3452 () Bool)

(assert (=> d!9255 (= c!3452 (and (is-Cons!280 (tail!510 xs!292)) (is-Nil!281 (tail!510 (tail!510 xs!292)))))))

(declare-fun e!6626 () Balance!339)

(assert (=> d!9255 (= (foldRight1!113 (tail!510 xs!292) f!539) e!6626)))

(declare-fun b!11985 () Bool)

(assert (=> b!11985 (= e!6626 (head!498 (tail!510 xs!292)))))

(declare-fun b!11986 () Bool)

(assert (=> b!11986 (= e!6626 (dynLambda!489 f!539 (head!498 (tail!510 xs!292)) (foldRight1!113 (tail!510 (tail!510 xs!292)) f!539)))))

(assert (= (and d!9255 c!3452) b!11985))

(assert (= (and d!9255 (not c!3452)) b!11986))

(declare-fun b_lambda!6429 () Bool)

(assert (=> (not b_lambda!6429) (not b!11986)))

(declare-fun t!3603 () Bool)

(declare-fun tb!3263 () Bool)

(assert (=> (and start!2394 (= f!539 f!539) t!3603) tb!3263))

(declare-fun result!3315 () Bool)

(assert (=> tb!3263 (= result!3315 true)))

(assert (=> b!11986 t!3603))

(declare-fun b_and!6171 () Bool)

(assert (= b_and!6169 (and (=> t!3603 result!3315) b_and!6171)))

(declare-fun m!14911 () Bool)

(assert (=> b!11986 m!14911))

(assert (=> b!11986 m!14911))

(declare-fun m!14913 () Bool)

(assert (=> b!11986 m!14913))

(assert (=> bs!3075 d!9255))

(assert (=> bs!3075 d!9221))

(assert (=> bs!3074 d!9219))

(assert (=> bs!3074 d!9255))

(declare-fun d!9257 () Bool)

(declare-fun lt!1788 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9257 (= lt!1788 (min!4 (extraOpen!210 (foldRight1!113 xs!292 f!539)) (extraClose!210 (foldRight1!113 ys!54 f!539))))))

(assert (=> d!9257 (= (++!3 (foldRight1!113 xs!292 f!539) (foldRight1!113 ys!54 f!539)) (Balance!340 (- (+ (extraOpen!210 (foldRight1!113 xs!292 f!539)) (extraOpen!210 (foldRight1!113 ys!54 f!539))) lt!1788) (- (+ (extraClose!210 (foldRight1!113 xs!292 f!539)) (extraClose!210 (foldRight1!113 ys!54 f!539))) lt!1788)))))

(declare-fun bs!3091 () Bool)

(assert (= bs!3091 d!9257))

(declare-fun m!14915 () Bool)

(assert (=> bs!3091 m!14915))

(assert (=> bs!3073 d!9257))

(declare-fun b_lambda!6431 () Bool)

(assert (= b_lambda!6421 (or b!11951 b_lambda!6431)))

(assert (=> bs!3087 d!9209))

(declare-fun b_lambda!6433 () Bool)

(assert (= b_lambda!6423 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6433)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3088) d!9203))

(declare-fun b_lambda!6435 () Bool)

(assert (= b_lambda!6407 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6435)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3080) d!9203))

(declare-fun b_lambda!6437 () Bool)

(assert (= b_lambda!6403 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6437)))

(declare-fun bs!3092 () Bool)

(declare-fun d!9259 () Bool)

(assert (= bs!3092 (and d!9259 b!11945)))

(assert (=> bs!3092 (= (dynLambda!489 lambda!3215 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)) (++!3 (dynLambda!490 lambda!3218 (foldRight1!113 (tail!510 xs!292) f!539)) (foldRight1!113 ys!54 f!539)))))

(assert (=> bs!3092 m!14871))

(assert (=> bs!3092 m!14853))

(declare-fun m!14917 () Bool)

(assert (=> bs!3092 m!14917))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3079) d!9259))

(declare-fun b_lambda!6439 () Bool)

(assert (= b_lambda!6409 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6439)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3082) d!9259))

(declare-fun b_lambda!6441 () Bool)

(assert (= b_lambda!6405 (or b!11951 b_lambda!6441)))

(assert (=> bs!3079 d!9209))

(declare-fun b_lambda!6443 () Bool)

(assert (= b_lambda!6417 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6443)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3086) d!9203))

(declare-fun b_lambda!6445 () Bool)

(assert (= b_lambda!6429 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6445)))

(declare-fun bs!3093 () Bool)

(declare-fun d!9261 () Bool)

(assert (= bs!3093 (and d!9261 b!11945)))

(assert (=> bs!3093 (= (dynLambda!489 lambda!3215 (head!498 (tail!510 xs!292)) (foldRight1!113 (tail!510 (tail!510 xs!292)) f!539)) (++!3 (head!498 (tail!510 xs!292)) (foldRight1!113 (tail!510 (tail!510 xs!292)) f!539)))))

(assert (=> bs!3093 m!14911))

(declare-fun m!14919 () Bool)

(assert (=> bs!3093 m!14919))

(assert (=> (and b!11945 (= lambda!3215 f!539) b!11986) d!9261))

(declare-fun b_lambda!6447 () Bool)

(assert (= b_lambda!6411 (or b!11951 b_lambda!6447)))

(assert (=> bs!3082 d!9209))

(declare-fun b_lambda!6449 () Bool)

(assert (= b_lambda!6413 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6449)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3083) d!9203))

(declare-fun b_lambda!6451 () Bool)

(assert (= b_lambda!6419 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6451)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3087) d!9259))

(declare-fun b_lambda!6453 () Bool)

(assert (= b_lambda!6415 (or b!11951 b_lambda!6453)))

(assert (=> bs!3084 d!9209))

(declare-fun b_lambda!6455 () Bool)

(assert (= b_lambda!6425 (or (and b!11945 (= lambda!3215 f!539)) (and start!2394 b_free!1757) b_lambda!6455)))

(assert (=> (and b!11945 (= lambda!3215 f!539) bs!3089) d!9259))

(declare-fun b_lambda!6457 () Bool)

(assert (= b_lambda!6427 (or b!11951 b_lambda!6457)))

(assert (=> bs!3089 d!9209))

(push 1)

(assert (not b_lambda!6397))

(assert (not d!9257))

(assert (not b_lambda!6399))

(assert (not b_lambda!6455))

(assert (not b_lambda!6451))

(assert (not b_next!4175))

(assert (not b_lambda!6453))

(assert b_and!6171)

(assert (not bs!3086))

(assert (not bs!3087))

(assert (not bs!3092))

(assert (not bs!3078))

(assert (not b_lambda!6385))

(assert (not bs!3093))

(assert (not bs!3077))

(assert (not b_lambda!6445))

(assert (not b!11975))

(assert (not b_lambda!6359))

(assert (not b!11983))

(assert (not b_lambda!6441))

(assert (not b_lambda!6389))

(assert (not b_lambda!6391))

(assert b_and!6131)

(assert (not bs!3083))

(assert (not bs!3089))

(assert (not bs!3079))

(assert (not b_lambda!6437))

(assert (not b_lambda!6433))

(assert (not b_lambda!6439))

(assert b_and!6129)

(assert (not bs!3088))

(assert (not b_lambda!6443))

(assert (not b_next!4191))

(assert (not b_lambda!6401))

(assert (not b_lambda!6447))

(assert (not d!9253))

(assert (not b_next!4193))

(assert (not b_lambda!6387))

(assert (not b_next!4189))

(assert (not b_lambda!6365))

(assert (not bs!3082))

(assert b_and!6141)

(assert (not b!11986))

(assert (not bs!3081))

(assert (not b_lambda!6393))

(assert (not b_lambda!6431))

(assert (not b_next!4197))

(assert (not b_lambda!6395))

(assert (not b_lambda!6435))

(assert (not bs!3080))

(assert b_and!6143)

(assert (not b_lambda!6361))

(assert (not b!11977))

(assert (not bs!3084))

(assert b_and!6145)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert (not bs!3085))

(assert (not b_lambda!6457))

(assert b_and!6147)

(assert (not b!11973))

(assert (not b_lambda!6449))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4175))

(assert b_and!6171)

(assert b_and!6131)

(assert b_and!6129)

(assert (not b_next!4191))

(assert (not b_next!4193))

(assert (not b_next!4189))

(assert b_and!6141)

(assert (not b_next!4197))

(assert b_and!6143)

(assert b_and!6145)

(assert (not b_next!4195))

(assert (not b_next!4199))

(assert b_and!6147)

(check-sat)

(pop 1)

