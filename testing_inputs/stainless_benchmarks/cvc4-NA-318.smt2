; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2414 () Bool)

(assert start!2414)

(declare-fun b!12027 () Bool)

(declare-fun b_free!1793 () Bool)

(declare-fun b_next!4229 () Bool)

(assert (=> b!12027 (= b_free!1793 (not b_next!4229))))

(declare-fun tp!2861 () Bool)

(declare-fun b_and!6201 () Bool)

(assert (=> b!12027 (= tp!2861 b_and!6201)))

(declare-fun b_free!1795 () Bool)

(declare-fun b_next!4231 () Bool)

(assert (=> b!12027 (= b_free!1795 (not b_next!4231))))

(declare-fun tp!2859 () Bool)

(declare-fun b_and!6203 () Bool)

(assert (=> b!12027 (= tp!2859 b_and!6203)))

(declare-fun b_free!1797 () Bool)

(declare-fun b_next!4233 () Bool)

(assert (=> b!12027 (= b_free!1797 (not b_next!4233))))

(declare-fun tp!2862 () Bool)

(declare-fun b_and!6205 () Bool)

(assert (=> b!12027 (= tp!2862 b_and!6205)))

(declare-fun b_free!1799 () Bool)

(declare-fun b_next!4235 () Bool)

(assert (=> start!2414 (= b_free!1799 (not b_next!4235))))

(declare-fun tp!2860 () Bool)

(declare-fun b_and!6207 () Bool)

(assert (=> start!2414 (= tp!2860 b_and!6207)))

(declare-fun b!12022 () Bool)

(declare-fun b_free!1801 () Bool)

(declare-fun b_next!4237 () Bool)

(assert (=> b!12022 (= b_free!1801 (not b_next!4237))))

(declare-fun tp!2858 () Bool)

(declare-fun b_and!6209 () Bool)

(assert (=> b!12022 (= tp!2858 b_and!6209)))

(declare-fun b_free!1803 () Bool)

(declare-fun b_next!4239 () Bool)

(assert (=> b!12022 (= b_free!1803 (not b_next!4239))))

(declare-fun tp!2863 () Bool)

(declare-fun b_and!6211 () Bool)

(assert (=> b!12022 (= tp!2863 b_and!6211)))

(declare-fun b_free!1805 () Bool)

(declare-fun b_next!4241 () Bool)

(assert (=> b!12022 (= b_free!1805 (not b_next!4241))))

(declare-fun tp!2857 () Bool)

(declare-fun b_and!6213 () Bool)

(assert (=> b!12022 (= tp!2857 b_and!6213)))

(declare-fun b_next!4243 () Bool)

(declare-fun f!539 () Int)

(declare-fun lambda!3241 () Int)

(declare-fun b!12028 () Bool)

(assert (=> start!2414 (= b_next!4235 (or (and b!12028 (= lambda!3241 f!539)) b_next!4243))))

(declare-fun b!12021 () Bool)

(assert (=> b!12021 true))

(declare-fun order!297 () Int)

(declare-fun order!299 () Int)

(declare-fun lambda!3242 () Int)

(declare-fun dynLambda!492 (Int Int) Int)

(declare-fun dynLambda!493 (Int Int) Int)

(assert (=> b!12021 (< (dynLambda!492 order!297 f!539) (dynLambda!493 order!299 lambda!3242))))

(assert (=> b!12021 true))

(assert (=> b!12021 true))

(declare-datatypes () ((Balance!345 (Balance!346 (extraOpen!213 Int) (extraClose!213 Int)))))

(declare-datatypes () ((EqEvidence!272 (EqEvidence!273 (x!6870 Int) (y!660 Int) (evidence!203 Int)))))

(declare-fun thiss!747 () EqEvidence!272)

(declare-fun b_next!4245 () Bool)

(assert (=> b!12027 (= b_next!4229 (or (and b!12021 (= lambda!3242 (x!6870 thiss!747))) b_next!4245))))

(declare-fun b_next!4247 () Bool)

(assert (=> b!12027 (= b_next!4231 (or (and b!12021 (= lambda!3242 (y!660 thiss!747))) b_next!4247))))

(declare-fun b_next!4249 () Bool)

(declare-fun that!183 () EqEvidence!272)

(assert (=> b!12022 (= b_next!4237 (or (and b!12021 (= lambda!3242 (x!6870 that!183))) b_next!4249))))

(declare-fun b_next!4251 () Bool)

(assert (=> b!12022 (= b_next!4239 (or (and b!12021 (= lambda!3242 (y!660 that!183))) b_next!4251))))

(assert (=> b!12021 true))

(declare-fun order!301 () Int)

(declare-fun lambda!3244 () Int)

(declare-fun dynLambda!494 (Int Int) Int)

(assert (=> b!12021 (< (dynLambda!492 order!297 f!539) (dynLambda!494 order!301 lambda!3244))))

(assert (=> b!12021 true))

(assert (=> b!12021 true))

(declare-fun order!303 () Int)

(declare-fun lambda!3243 () Int)

(declare-fun dynLambda!495 (Int Int) Int)

(assert (=> b!12021 (< (dynLambda!492 order!297 f!539) (dynLambda!495 order!303 lambda!3243))))

(assert (=> b!12021 true))

(declare-fun b_next!4253 () Bool)

(assert (=> b!12027 (= b_next!4233 (or (and b!12021 (= lambda!3243 (evidence!203 thiss!747))) b_next!4253))))

(declare-fun b_next!4255 () Bool)

(assert (=> b!12022 (= b_next!4241 (or (and b!12021 (= lambda!3243 (evidence!203 that!183))) b_next!4255))))

(declare-fun bs!3097 () Bool)

(declare-fun b!12023 () Bool)

(assert (= bs!3097 (and b!12023 b!12021)))

(declare-fun lambda!3245 () Int)

(assert (=> bs!3097 (not (= lambda!3245 lambda!3242))))

(assert (=> b!12023 true))

(assert (=> b!12023 (< (dynLambda!492 order!297 f!539) (dynLambda!493 order!299 lambda!3245))))

(assert (=> b!12023 true))

(assert (=> b!12023 true))

(declare-fun b_next!4257 () Bool)

(assert (=> b!12027 (= b_next!4245 (or (and b!12023 (= lambda!3245 (x!6870 thiss!747))) b_next!4257))))

(declare-fun b_next!4259 () Bool)

(assert (=> b!12027 (= b_next!4247 (or (and b!12023 (= lambda!3245 (y!660 thiss!747))) b_next!4259))))

(declare-fun b_next!4261 () Bool)

(assert (=> b!12022 (= b_next!4249 (or (and b!12023 (= lambda!3245 (x!6870 that!183))) b_next!4261))))

(declare-fun b_next!4263 () Bool)

(assert (=> b!12022 (= b_next!4251 (or (and b!12023 (= lambda!3245 (y!660 that!183))) b_next!4263))))

(declare-fun lambda!3246 () Int)

(assert (=> bs!3097 (not (= lambda!3246 lambda!3243))))

(assert (=> b!12023 true))

(assert (=> b!12023 (< (dynLambda!492 order!297 f!539) (dynLambda!495 order!303 lambda!3246))))

(assert (=> b!12023 true))

(assert (=> b!12023 true))

(declare-fun b_next!4265 () Bool)

(assert (=> b!12027 (= b_next!4253 (or (and b!12023 (= lambda!3246 (evidence!203 thiss!747))) b_next!4265))))

(declare-fun b_next!4267 () Bool)

(assert (=> b!12022 (= b_next!4255 (or (and b!12023 (= lambda!3246 (evidence!203 that!183))) b_next!4267))))

(declare-fun b!12019 () Bool)

(declare-fun res!4450 () Bool)

(declare-fun e!6646 () Bool)

(assert (=> b!12019 (=> (not res!4450) (not e!6646))))

(declare-datatypes () ((List!284 (Nil!282) (Cons!281 (head!499 Balance!345) (tail!511 List!284)))))

(declare-fun ys!54 () List!284)

(declare-datatypes () ((ProofOps!268 (ProofOps!269 (prop!267 Bool)))))

(declare-fun thiss!710 () ProofOps!268)

(declare-fun xs!292 () List!284)

(declare-fun dynLambda!496 (Int Balance!345 Balance!345) Balance!345)

(declare-fun foldRight1!114 (List!284 Int) Balance!345)

(declare-fun append!133 (List!284 List!284) List!284)

(assert (=> b!12019 (= res!4450 (= thiss!710 (ProofOps!269 (= (dynLambda!496 f!539 (foldRight1!114 xs!292 f!539) (foldRight1!114 ys!54 f!539)) (foldRight1!114 (append!133 xs!292 ys!54) f!539)))))))

(declare-fun b!12020 () Bool)

(declare-fun res!4452 () Bool)

(assert (=> b!12020 (=> (not res!4452) (not e!6646))))

(assert (=> b!12020 (= res!4452 (or (not (is-Cons!281 xs!292)) (not (is-Nil!282 (tail!511 xs!292)))))))

(declare-fun res!4447 () Bool)

(assert (=> b!12021 (=> (not res!4447) (not e!6646))))

(assert (=> b!12021 (= res!4447 (= thiss!747 (EqEvidence!273 lambda!3242 lambda!3242 lambda!3243)))))

(declare-fun e!6645 () Bool)

(assert (=> b!12022 (= e!6645 (and tp!2858 tp!2863 tp!2857))))

(declare-fun res!4451 () Bool)

(assert (=> b!12023 (=> (not res!4451) (not e!6646))))

(assert (=> b!12023 (= res!4451 (= that!183 (EqEvidence!273 lambda!3245 lambda!3245 lambda!3246)))))

(declare-fun b!12024 () Bool)

(declare-fun dynLambda!497 (Int) Balance!345)

(assert (=> b!12024 (= e!6646 (not (= (dynLambda!497 (y!660 thiss!747)) (dynLambda!497 (x!6870 that!183)))))))

(declare-fun b!12025 () Bool)

(declare-fun res!4446 () Bool)

(assert (=> b!12025 (=> (not res!4446) (not e!6646))))

(declare-fun dynLambda!498 (Int) Bool)

(assert (=> b!12025 (= res!4446 (dynLambda!498 (evidence!203 thiss!747)))))

(declare-fun b!12026 () Bool)

(declare-fun res!4449 () Bool)

(assert (=> b!12026 (=> (not res!4449) (not e!6646))))

(declare-fun isEmpty!212 (List!284) Bool)

(assert (=> b!12026 (= res!4449 (not (isEmpty!212 ys!54)))))

(declare-fun res!4445 () Bool)

(assert (=> start!2414 (=> (not res!4445) (not e!6646))))

(assert (=> start!2414 (= res!4445 (not (isEmpty!212 xs!292)))))

(assert (=> start!2414 e!6646))

(declare-fun e!6647 () Bool)

(declare-fun inv!405 (EqEvidence!272) Bool)

(assert (=> start!2414 (and (inv!405 thiss!747) e!6647)))

(assert (=> start!2414 tp!2860))

(assert (=> start!2414 true))

(assert (=> start!2414 (and (inv!405 that!183) e!6645)))

(assert (=> b!12027 (= e!6647 (and tp!2861 tp!2859 tp!2862))))

(declare-fun res!4448 () Bool)

(assert (=> b!12028 (=> (not res!4448) (not e!6646))))

(assert (=> b!12028 (= res!4448 (= f!539 lambda!3241))))

(assert (= (and start!2414 res!4445) b!12026))

(assert (= (and b!12026 res!4449) b!12028))

(assert (= (and b!12028 res!4448) b!12019))

(assert (= (and b!12019 res!4450) b!12020))

(assert (= (and b!12020 res!4452) b!12021))

(assert (= (and b!12021 res!4447) b!12023))

(assert (= (and b!12023 res!4451) b!12025))

(assert (= (and b!12025 res!4446) b!12024))

(assert (= start!2414 b!12027))

(assert (= start!2414 b!12022))

(declare-fun b_lambda!6459 () Bool)

(assert (=> (not b_lambda!6459) (not b!12019)))

(declare-fun t!3605 () Bool)

(declare-fun tb!3265 () Bool)

(assert (=> (and start!2414 (= f!539 f!539) t!3605) tb!3265))

(declare-fun result!3317 () Bool)

(assert (=> tb!3265 (= result!3317 true)))

(assert (=> b!12019 t!3605))

(declare-fun b_and!6215 () Bool)

(assert (= b_and!6207 (and (=> t!3605 result!3317) b_and!6215)))

(declare-fun b_lambda!6461 () Bool)

(assert (=> (not b_lambda!6461) (not b!12024)))

(declare-fun t!3607 () Bool)

(declare-fun tb!3267 () Bool)

(assert (=> (and b!12027 (= (x!6870 thiss!747) (y!660 thiss!747)) t!3607) tb!3267))

(declare-fun result!3319 () Bool)

(assert (=> tb!3267 (= result!3319 true)))

(assert (=> b!12024 t!3607))

(declare-fun b_and!6217 () Bool)

(assert (= b_and!6201 (and (=> t!3607 result!3319) b_and!6217)))

(declare-fun t!3609 () Bool)

(declare-fun tb!3269 () Bool)

(assert (=> (and b!12027 (= (y!660 thiss!747) (y!660 thiss!747)) t!3609) tb!3269))

(declare-fun result!3321 () Bool)

(assert (=> tb!3269 (= result!3321 true)))

(assert (=> b!12024 t!3609))

(declare-fun b_and!6219 () Bool)

(assert (= b_and!6203 (and (=> t!3609 result!3321) b_and!6219)))

(declare-fun tb!3271 () Bool)

(declare-fun t!3611 () Bool)

(assert (=> (and b!12022 (= (x!6870 that!183) (y!660 thiss!747)) t!3611) tb!3271))

(declare-fun result!3323 () Bool)

(assert (=> tb!3271 (= result!3323 true)))

(assert (=> b!12024 t!3611))

(declare-fun b_and!6221 () Bool)

(assert (= b_and!6209 (and (=> t!3611 result!3323) b_and!6221)))

(declare-fun t!3613 () Bool)

(declare-fun tb!3273 () Bool)

(assert (=> (and b!12022 (= (y!660 that!183) (y!660 thiss!747)) t!3613) tb!3273))

(declare-fun result!3325 () Bool)

(assert (=> tb!3273 (= result!3325 true)))

(assert (=> b!12024 t!3613))

(declare-fun b_and!6223 () Bool)

(assert (= b_and!6211 (and (=> t!3613 result!3325) b_and!6223)))

(declare-fun b_lambda!6463 () Bool)

(assert (=> (not b_lambda!6463) (not b!12024)))

(declare-fun t!3615 () Bool)

(declare-fun tb!3275 () Bool)

(assert (=> (and b!12027 (= (x!6870 thiss!747) (x!6870 that!183)) t!3615) tb!3275))

(declare-fun result!3327 () Bool)

(assert (=> tb!3275 (= result!3327 true)))

(assert (=> b!12024 t!3615))

(declare-fun b_and!6225 () Bool)

(assert (= b_and!6217 (and (=> t!3615 result!3327) b_and!6225)))

(declare-fun t!3617 () Bool)

(declare-fun tb!3277 () Bool)

(assert (=> (and b!12027 (= (y!660 thiss!747) (x!6870 that!183)) t!3617) tb!3277))

(declare-fun result!3329 () Bool)

(assert (=> tb!3277 (= result!3329 true)))

(assert (=> b!12024 t!3617))

(declare-fun b_and!6227 () Bool)

(assert (= b_and!6219 (and (=> t!3617 result!3329) b_and!6227)))

(declare-fun t!3619 () Bool)

(declare-fun tb!3279 () Bool)

(assert (=> (and b!12022 (= (x!6870 that!183) (x!6870 that!183)) t!3619) tb!3279))

(declare-fun result!3331 () Bool)

(assert (=> tb!3279 (= result!3331 true)))

(assert (=> b!12024 t!3619))

(declare-fun b_and!6229 () Bool)

(assert (= b_and!6221 (and (=> t!3619 result!3331) b_and!6229)))

(declare-fun t!3621 () Bool)

(declare-fun tb!3281 () Bool)

(assert (=> (and b!12022 (= (y!660 that!183) (x!6870 that!183)) t!3621) tb!3281))

(declare-fun result!3333 () Bool)

(assert (=> tb!3281 (= result!3333 true)))

(assert (=> b!12024 t!3621))

(declare-fun b_and!6231 () Bool)

(assert (= b_and!6223 (and (=> t!3621 result!3333) b_and!6231)))

(declare-fun b_lambda!6465 () Bool)

(assert (=> (not b_lambda!6465) (not b!12025)))

(declare-fun t!3623 () Bool)

(declare-fun tb!3283 () Bool)

(assert (=> (and b!12027 (= (evidence!203 thiss!747) (evidence!203 thiss!747)) t!3623) tb!3283))

(declare-fun result!3335 () Bool)

(assert (=> tb!3283 (= result!3335 true)))

(assert (=> b!12025 t!3623))

(declare-fun b_and!6233 () Bool)

(assert (= b_and!6205 (and (=> t!3623 result!3335) b_and!6233)))

(declare-fun tb!3285 () Bool)

(declare-fun t!3625 () Bool)

(assert (=> (and b!12022 (= (evidence!203 that!183) (evidence!203 thiss!747)) t!3625) tb!3285))

(declare-fun result!3337 () Bool)

(assert (=> tb!3285 (= result!3337 true)))

(assert (=> b!12025 t!3625))

(declare-fun b_and!6235 () Bool)

(assert (= b_and!6213 (and (=> t!3625 result!3337) b_and!6235)))

(declare-fun m!14929 () Bool)

(assert (=> b!12026 m!14929))

(declare-fun m!14931 () Bool)

(assert (=> b!12024 m!14931))

(declare-fun m!14933 () Bool)

(assert (=> b!12024 m!14933))

(declare-fun m!14935 () Bool)

(assert (=> start!2414 m!14935))

(declare-fun m!14937 () Bool)

(assert (=> start!2414 m!14937))

(declare-fun m!14939 () Bool)

(assert (=> start!2414 m!14939))

(declare-fun m!14941 () Bool)

(assert (=> b!12025 m!14941))

(declare-fun m!14943 () Bool)

(assert (=> b!12019 m!14943))

(declare-fun m!14945 () Bool)

(assert (=> b!12019 m!14945))

(declare-fun m!14947 () Bool)

(assert (=> b!12019 m!14947))

(assert (=> b!12019 m!14945))

(assert (=> b!12019 m!14947))

(declare-fun m!14949 () Bool)

(assert (=> b!12019 m!14949))

(assert (=> b!12019 m!14943))

(declare-fun m!14951 () Bool)

(assert (=> b!12019 m!14951))

(push 1)

(assert b_and!6215)

(assert (not b_lambda!6461))

(assert (not b_next!4243))

(assert b_and!6233)

(assert (not b!12026))

(assert (not b_next!4267))

(assert (not b_lambda!6463))

(assert (not b_next!4257))

(assert (not b!12019))

(assert b_and!6225)

(assert b_and!6227)

(assert (not b_lambda!6459))

(assert (not b_next!4259))

(assert (not b_next!4265))

(assert b_and!6235)

(assert (not start!2414))

(assert (not b_lambda!6465))

(assert b_and!6231)

(assert (not b_next!4263))

(assert (not b_next!4261))

(assert b_and!6229)

(check-sat)

(pop 1)

(push 1)

(assert b_and!6215)

(assert (not b_next!4243))

(assert b_and!6233)

(assert (not b_next!4267))

(assert (not b_next!4257))

(assert b_and!6225)

(assert b_and!6227)

(assert (not b_next!4259))

(assert (not b_next!4265))

(assert b_and!6235)

(assert b_and!6231)

(assert (not b_next!4263))

(assert (not b_next!4261))

(assert b_and!6229)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6467 () Bool)

(assert (= b_lambda!6465 (or (and b!12021 (= lambda!3243 (evidence!203 thiss!747))) (and b!12023 (= lambda!3246 (evidence!203 thiss!747))) (and b!12027 b_free!1797) (and b!12022 b_free!1805 (= (evidence!203 that!183) (evidence!203 thiss!747))) b_lambda!6467)))

(declare-fun bs!3098 () Bool)

(declare-fun d!9263 () Bool)

(assert (= bs!3098 (and d!9263 b!12021)))

(declare-fun dynLambda!499 (Int Balance!345) Balance!345)

(assert (=> bs!3098 (= (dynLambda!498 lambda!3243) (= (foldRight1!114 xs!292 f!539) (dynLambda!499 lambda!3244 (foldRight1!114 (tail!511 xs!292) f!539))))))

(declare-fun b_lambda!6475 () Bool)

(assert (=> (not b_lambda!6475) (not bs!3098)))

(assert (=> bs!3098 m!14945))

(declare-fun m!14953 () Bool)

(assert (=> bs!3098 m!14953))

(assert (=> bs!3098 m!14953))

(declare-fun m!14955 () Bool)

(assert (=> bs!3098 m!14955))

(assert (=> (and b!12021 (= lambda!3243 (evidence!203 thiss!747)) b!12025) d!9263))

(declare-fun bs!3099 () Bool)

(declare-fun d!9265 () Bool)

(assert (= bs!3099 (and d!9265 b!12023)))

(declare-fun append_is_associative!0 (Balance!345 Balance!345 Balance!345) Bool)

(assert (=> bs!3099 (= (dynLambda!498 lambda!3246) (append_is_associative!0 (head!499 xs!292) (foldRight1!114 (tail!511 xs!292) f!539) (foldRight1!114 ys!54 f!539)))))

(assert (=> bs!3099 m!14953))

(assert (=> bs!3099 m!14947))

(assert (=> bs!3099 m!14953))

(assert (=> bs!3099 m!14947))

(declare-fun m!14957 () Bool)

(assert (=> bs!3099 m!14957))

(assert (=> (and b!12023 (= lambda!3246 (evidence!203 thiss!747)) b!12025) d!9265))

(declare-fun b_lambda!6469 () Bool)

(assert (= b_lambda!6463 (or (and b!12021 (= lambda!3242 (x!6870 that!183))) (and b!12022 b_free!1803 (= (y!660 that!183) (x!6870 that!183))) (and b!12027 b_free!1793 (= (x!6870 thiss!747) (x!6870 that!183))) (and b!12023 (= lambda!3245 (x!6870 that!183))) (and b!12022 b_free!1801) (and b!12027 b_free!1795 (= (y!660 thiss!747) (x!6870 that!183))) b_lambda!6469)))

(declare-fun bs!3100 () Bool)

(declare-fun d!9267 () Bool)

(assert (= bs!3100 (and d!9267 b!12021)))

(assert (=> bs!3100 (= (dynLambda!497 lambda!3242) (dynLambda!496 f!539 (foldRight1!114 xs!292 f!539) (foldRight1!114 ys!54 f!539)))))

(declare-fun b_lambda!6477 () Bool)

(assert (=> (not b_lambda!6477) (not bs!3100)))

(assert (=> bs!3100 t!3605))

(declare-fun b_and!6237 () Bool)

(assert (= b_and!6215 (and (=> t!3605 result!3317) b_and!6237)))

(assert (=> bs!3100 m!14945))

(assert (=> bs!3100 m!14947))

(assert (=> bs!3100 m!14945))

(assert (=> bs!3100 m!14947))

(assert (=> bs!3100 m!14949))

(assert (=> (and b!12021 (= lambda!3242 (x!6870 that!183)) b!12024) d!9267))

(declare-fun bs!3101 () Bool)

(declare-fun d!9269 () Bool)

(assert (= bs!3101 (and d!9269 b!12023)))

(assert (=> bs!3101 (= (dynLambda!497 lambda!3245) (dynLambda!496 f!539 (dynLambda!499 lambda!3244 (foldRight1!114 (tail!511 xs!292) f!539)) (foldRight1!114 ys!54 f!539)))))

(declare-fun b_lambda!6479 () Bool)

(assert (=> (not b_lambda!6479) (not bs!3101)))

(declare-fun t!3627 () Bool)

(declare-fun tb!3287 () Bool)

(assert (=> (and start!2414 (= f!539 f!539) t!3627) tb!3287))

(declare-fun result!3339 () Bool)

(assert (=> tb!3287 (= result!3339 true)))

(assert (=> bs!3101 t!3627))

(declare-fun b_and!6239 () Bool)

(assert (= b_and!6237 (and (=> t!3627 result!3339) b_and!6239)))

(declare-fun b_lambda!6481 () Bool)

(assert (=> (not b_lambda!6481) (not bs!3101)))

(assert (=> bs!3101 m!14953))

(assert (=> bs!3101 m!14955))

(assert (=> bs!3101 m!14947))

(declare-fun m!14959 () Bool)

(assert (=> bs!3101 m!14959))

(assert (=> bs!3101 m!14953))

(assert (=> bs!3101 m!14955))

(assert (=> bs!3101 m!14947))

(assert (=> (and b!12023 (= lambda!3245 (x!6870 that!183)) b!12024) d!9269))

(declare-fun b_lambda!6471 () Bool)

(assert (= b_lambda!6459 (or (and b!12028 (= lambda!3241 f!539)) (and start!2414 b_free!1799) b_lambda!6471)))

(declare-fun bs!3102 () Bool)

(declare-fun d!9271 () Bool)

(assert (= bs!3102 (and d!9271 b!12028)))

(declare-fun ++!3 (Balance!345 Balance!345) Balance!345)

(assert (=> bs!3102 (= (dynLambda!496 lambda!3241 (foldRight1!114 xs!292 f!539) (foldRight1!114 ys!54 f!539)) (++!3 (foldRight1!114 xs!292 f!539) (foldRight1!114 ys!54 f!539)))))

(assert (=> bs!3102 m!14945))

(assert (=> bs!3102 m!14947))

(declare-fun m!14961 () Bool)

(assert (=> bs!3102 m!14961))

(assert (=> (and b!12028 (= lambda!3241 f!539) b!12019) d!9271))

(declare-fun b_lambda!6473 () Bool)

(assert (= b_lambda!6461 (or (and b!12027 b_free!1793 (= (x!6870 thiss!747) (y!660 thiss!747))) (and b!12021 (= lambda!3242 (y!660 thiss!747))) (and b!12022 b_free!1803 (= (y!660 that!183) (y!660 thiss!747))) (and b!12023 (= lambda!3245 (y!660 thiss!747))) (and b!12027 b_free!1795) (and b!12022 b_free!1801 (= (x!6870 that!183) (y!660 thiss!747))) b_lambda!6473)))

(declare-fun bs!3103 () Bool)

(declare-fun d!9273 () Bool)

(assert (= bs!3103 (and d!9273 b!12021)))

(assert (=> bs!3103 (= (dynLambda!497 lambda!3242) (dynLambda!496 f!539 (foldRight1!114 xs!292 f!539) (foldRight1!114 ys!54 f!539)))))

(declare-fun b_lambda!6483 () Bool)

(assert (=> (not b_lambda!6483) (not bs!3103)))

(assert (=> bs!3103 t!3605))

(declare-fun b_and!6241 () Bool)

(assert (= b_and!6239 (and (=> t!3605 result!3317) b_and!6241)))

(assert (=> bs!3103 m!14945))

(assert (=> bs!3103 m!14947))

(assert (=> bs!3103 m!14945))

(assert (=> bs!3103 m!14947))

(assert (=> bs!3103 m!14949))

(assert (=> (and b!12021 (= lambda!3242 (y!660 thiss!747)) b!12024) d!9273))

(declare-fun bs!3104 () Bool)

(declare-fun d!9275 () Bool)

(assert (= bs!3104 (and d!9275 b!12023)))

(assert (=> bs!3104 (= (dynLambda!497 lambda!3245) (dynLambda!496 f!539 (dynLambda!499 lambda!3244 (foldRight1!114 (tail!511 xs!292) f!539)) (foldRight1!114 ys!54 f!539)))))

(declare-fun b_lambda!6485 () Bool)

(assert (=> (not b_lambda!6485) (not bs!3104)))

(assert (=> bs!3104 t!3627))

(declare-fun b_and!6243 () Bool)

(assert (= b_and!6241 (and (=> t!3627 result!3339) b_and!6243)))

(declare-fun b_lambda!6487 () Bool)

(assert (=> (not b_lambda!6487) (not bs!3104)))

(assert (=> bs!3104 m!14953))

(assert (=> bs!3104 m!14955))

(assert (=> bs!3104 m!14947))

(assert (=> bs!3104 m!14959))

(assert (=> bs!3104 m!14953))

(assert (=> bs!3104 m!14955))

(assert (=> bs!3104 m!14947))

(assert (=> (and b!12023 (= lambda!3245 (y!660 thiss!747)) b!12024) d!9275))

(push 1)

(assert (not b_lambda!6469))

(assert (not bs!3100))

(assert (not b_lambda!6475))

(assert (not bs!3103))

(assert (not b_next!4243))

(assert b_and!6233)

(assert (not b!12026))

(assert (not b_next!4267))

(assert (not b_lambda!6483))

(assert b_and!6243)

(assert (not b_next!4257))

(assert (not b!12019))

(assert (not b_lambda!6487))

(assert (not b_lambda!6485))

(assert (not b_lambda!6471))

(assert (not b_lambda!6473))

(assert b_and!6225)

(assert (not b_lambda!6477))

(assert (not bs!3104))

(assert (not bs!3098))

(assert b_and!6227)

(assert (not bs!3101))

(assert (not b_next!4259))

(assert (not b_lambda!6481))

(assert (not bs!3099))

(assert (not b_next!4265))

(assert b_and!6235)

(assert (not b_lambda!6479))

(assert (not start!2414))

(assert b_and!6231)

(assert (not b_next!4263))

(assert (not b_lambda!6467))

(assert (not bs!3102))

(assert (not b_next!4261))

(assert b_and!6229)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4243))

(assert b_and!6233)

(assert (not b_next!4267))

(assert b_and!6243)

(assert (not b_next!4257))

(assert b_and!6225)

(assert b_and!6227)

(assert (not b_next!4259))

(assert (not b_next!4265))

(assert b_and!6235)

(assert b_and!6231)

(assert (not b_next!4263))

(assert (not b_next!4261))

(assert b_and!6229)

(check-sat)

(pop 1)

