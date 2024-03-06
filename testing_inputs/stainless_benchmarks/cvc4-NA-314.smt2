; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2384 () Bool)

(assert start!2384)

(declare-fun b_free!1743 () Bool)

(declare-fun b_next!4145 () Bool)

(assert (=> start!2384 (= b_free!1743 (not b_next!4145))))

(declare-fun tp!2778 () Bool)

(declare-fun b_and!6059 () Bool)

(assert (=> start!2384 (= tp!2778 b_and!6059)))

(declare-fun b_free!1745 () Bool)

(declare-fun b_next!4147 () Bool)

(assert (=> start!2384 (= b_free!1745 (not b_next!4147))))

(declare-fun tp!2779 () Bool)

(declare-fun b_and!6061 () Bool)

(assert (=> start!2384 (= tp!2779 b_and!6061)))

(declare-fun b!11892 () Bool)

(declare-fun b_free!1747 () Bool)

(declare-fun b_next!4149 () Bool)

(assert (=> b!11892 (= b_free!1747 (not b_next!4149))))

(declare-fun tp!2777 () Bool)

(declare-fun b_and!6063 () Bool)

(assert (=> b!11892 (= tp!2777 b_and!6063)))

(declare-fun b_free!1749 () Bool)

(declare-fun b_next!4151 () Bool)

(assert (=> b!11892 (= b_free!1749 (not b_next!4151))))

(declare-fun tp!2776 () Bool)

(declare-fun b_and!6065 () Bool)

(assert (=> b!11892 (= tp!2776 b_and!6065)))

(declare-fun f!539 () Int)

(declare-fun b_next!4153 () Bool)

(declare-fun lambda!3191 () Int)

(declare-fun b!11891 () Bool)

(assert (=> start!2384 (= b_next!4145 (or (and b!11891 (= lambda!3191 f!539)) b_next!4153))))

(declare-fun b!11894 () Bool)

(assert (=> b!11894 true))

(declare-fun order!283 () Int)

(declare-fun order!281 () Int)

(declare-fun lambda!3192 () Int)

(declare-fun dynLambda!476 (Int Int) Int)

(declare-fun dynLambda!477 (Int Int) Int)

(assert (=> b!11894 (< (dynLambda!476 order!281 f!539) (dynLambda!477 order!283 lambda!3192))))

(assert (=> b!11894 true))

(assert (=> b!11894 true))

(declare-datatypes () ((Balance!337 (Balance!338 (extraOpen!209 Int) (extraClose!209 Int)))))

(declare-datatypes () ((EqProof!126 (EqProof!127 (x!6749 Int) (y!655 Int)))))

(declare-fun thiss!748 () EqProof!126)

(declare-fun b_next!4155 () Bool)

(assert (=> b!11892 (= b_next!4149 (or (and b!11894 (= lambda!3192 (x!6749 thiss!748))) b_next!4155))))

(declare-fun b_next!4157 () Bool)

(assert (=> b!11892 (= b_next!4151 (or (and b!11894 (= lambda!3192 (y!655 thiss!748))) b_next!4157))))

(declare-fun b!11887 () Bool)

(assert (=> b!11887 true))

(declare-fun order!285 () Int)

(declare-fun lambda!3194 () Int)

(declare-fun dynLambda!478 (Int Int) Int)

(assert (=> b!11887 (< (dynLambda!476 order!281 f!539) (dynLambda!478 order!285 lambda!3194))))

(assert (=> b!11887 true))

(assert (=> b!11887 true))

(declare-fun order!287 () Int)

(declare-fun lambda!3193 () Int)

(declare-fun dynLambda!479 (Int Int) Int)

(assert (=> b!11887 (< (dynLambda!476 order!281 f!539) (dynLambda!479 order!287 lambda!3193))))

(assert (=> b!11887 true))

(declare-fun proof!209 () Int)

(declare-fun b_next!4159 () Bool)

(assert (=> start!2384 (= b_next!4147 (or (and b!11887 (= lambda!3193 proof!209)) b_next!4159))))

(declare-fun res!4396 () Bool)

(declare-fun e!6597 () Bool)

(assert (=> b!11887 (=> (not res!4396) (not e!6597))))

(assert (=> b!11887 (= res!4396 (= proof!209 lambda!3193))))

(declare-fun b!11888 () Bool)

(declare-fun dynLambda!480 (Int) Bool)

(assert (=> b!11888 (= e!6597 (not (dynLambda!480 proof!209)))))

(declare-fun b!11889 () Bool)

(declare-fun res!4399 () Bool)

(assert (=> b!11889 (=> (not res!4399) (not e!6597))))

(declare-datatypes () ((List!282 (Nil!280) (Cons!279 (head!497 Balance!337) (tail!509 List!282)))))

(declare-fun ys!54 () List!282)

(declare-fun isEmpty!210 (List!282) Bool)

(assert (=> b!11889 (= res!4399 (not (isEmpty!210 ys!54)))))

(declare-fun b!11890 () Bool)

(declare-fun res!4397 () Bool)

(assert (=> b!11890 (=> (not res!4397) (not e!6597))))

(declare-datatypes () ((ProofOps!264 (ProofOps!265 (prop!265 Bool)))))

(declare-fun thiss!710 () ProofOps!264)

(declare-fun xs!292 () List!282)

(declare-fun dynLambda!481 (Int Balance!337 Balance!337) Balance!337)

(declare-fun foldRight1!112 (List!282 Int) Balance!337)

(declare-fun append!131 (List!282 List!282) List!282)

(assert (=> b!11890 (= res!4397 (= thiss!710 (ProofOps!265 (= (dynLambda!481 f!539 (foldRight1!112 xs!292 f!539) (foldRight1!112 ys!54 f!539)) (foldRight1!112 (append!131 xs!292 ys!54) f!539)))))))

(declare-fun res!4400 () Bool)

(assert (=> b!11891 (=> (not res!4400) (not e!6597))))

(assert (=> b!11891 (= res!4400 (= f!539 lambda!3191))))

(declare-fun e!6596 () Bool)

(assert (=> b!11892 (= e!6596 (and tp!2777 tp!2776))))

(declare-fun b!11893 () Bool)

(declare-fun res!4401 () Bool)

(assert (=> b!11893 (=> (not res!4401) (not e!6597))))

(assert (=> b!11893 (= res!4401 (or (not (is-Cons!279 xs!292)) (not (is-Nil!280 (tail!509 xs!292)))))))

(declare-fun res!4395 () Bool)

(assert (=> b!11894 (=> (not res!4395) (not e!6597))))

(assert (=> b!11894 (= res!4395 (= thiss!748 (EqProof!127 lambda!3192 lambda!3192)))))

(declare-fun res!4398 () Bool)

(assert (=> start!2384 (=> (not res!4398) (not e!6597))))

(assert (=> start!2384 (= res!4398 (not (isEmpty!210 xs!292)))))

(assert (=> start!2384 e!6597))

(assert (=> start!2384 tp!2778))

(assert (=> start!2384 tp!2779))

(assert (=> start!2384 true))

(declare-fun inv!400 (EqProof!126) Bool)

(assert (=> start!2384 (and (inv!400 thiss!748) e!6596)))

(assert (= (and start!2384 res!4398) b!11889))

(assert (= (and b!11889 res!4399) b!11891))

(assert (= (and b!11891 res!4400) b!11890))

(assert (= (and b!11890 res!4397) b!11893))

(assert (= (and b!11893 res!4401) b!11894))

(assert (= (and b!11894 res!4395) b!11887))

(assert (= (and b!11887 res!4396) b!11888))

(assert (= start!2384 b!11892))

(declare-fun b_lambda!6315 () Bool)

(assert (=> (not b_lambda!6315) (not b!11888)))

(declare-fun t!3535 () Bool)

(declare-fun tb!3195 () Bool)

(assert (=> (and start!2384 (= proof!209 proof!209) t!3535) tb!3195))

(declare-fun result!3247 () Bool)

(assert (=> tb!3195 (= result!3247 true)))

(assert (=> b!11888 t!3535))

(declare-fun b_and!6067 () Bool)

(assert (= b_and!6061 (and (=> t!3535 result!3247) b_and!6067)))

(declare-fun b_lambda!6317 () Bool)

(assert (=> (not b_lambda!6317) (not b!11890)))

(declare-fun t!3537 () Bool)

(declare-fun tb!3197 () Bool)

(assert (=> (and start!2384 (= f!539 f!539) t!3537) tb!3197))

(declare-fun result!3249 () Bool)

(assert (=> tb!3197 (= result!3249 true)))

(assert (=> b!11890 t!3537))

(declare-fun b_and!6069 () Bool)

(assert (= b_and!6059 (and (=> t!3537 result!3249) b_and!6069)))

(declare-fun m!14801 () Bool)

(assert (=> b!11888 m!14801))

(declare-fun m!14803 () Bool)

(assert (=> b!11889 m!14803))

(declare-fun m!14805 () Bool)

(assert (=> b!11890 m!14805))

(declare-fun m!14807 () Bool)

(assert (=> b!11890 m!14807))

(declare-fun m!14809 () Bool)

(assert (=> b!11890 m!14809))

(assert (=> b!11890 m!14807))

(assert (=> b!11890 m!14809))

(declare-fun m!14811 () Bool)

(assert (=> b!11890 m!14811))

(assert (=> b!11890 m!14805))

(declare-fun m!14813 () Bool)

(assert (=> b!11890 m!14813))

(declare-fun m!14815 () Bool)

(assert (=> start!2384 m!14815))

(declare-fun m!14817 () Bool)

(assert (=> start!2384 m!14817))

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_next!4159))

(assert b_and!6069)

(assert (not b!11890))

(assert (not b_next!4153))

(assert (not b!11889))

(assert (not b_next!4155))

(assert b_and!6065)

(assert b_and!6063)

(assert (not b_lambda!6315))

(assert (not b_lambda!6317))

(assert (not start!2384))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_next!4159))

(assert b_and!6069)

(assert (not b_next!4153))

(assert (not b_next!4155))

(assert b_and!6065)

(assert b_and!6063)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6319 () Bool)

(assert (= b_lambda!6317 (or (and b!11891 (= lambda!3191 f!539)) (and start!2384 b_free!1743) b_lambda!6319)))

(declare-fun bs!3062 () Bool)

(declare-fun d!9173 () Bool)

(assert (= bs!3062 (and d!9173 b!11891)))

(declare-fun ++!3 (Balance!337 Balance!337) Balance!337)

(assert (=> bs!3062 (= (dynLambda!481 lambda!3191 (foldRight1!112 xs!292 f!539) (foldRight1!112 ys!54 f!539)) (++!3 (foldRight1!112 xs!292 f!539) (foldRight1!112 ys!54 f!539)))))

(assert (=> bs!3062 m!14807))

(assert (=> bs!3062 m!14809))

(declare-fun m!14819 () Bool)

(assert (=> bs!3062 m!14819))

(assert (=> (and b!11891 (= lambda!3191 f!539) b!11890) d!9173))

(declare-fun b_lambda!6321 () Bool)

(assert (= b_lambda!6315 (or (and b!11887 (= lambda!3193 proof!209)) (and start!2384 b_free!1745) b_lambda!6321)))

(declare-fun bs!3063 () Bool)

(declare-fun d!9175 () Bool)

(assert (= bs!3063 (and d!9175 b!11887)))

(declare-fun dynLambda!482 (Int Balance!337) Balance!337)

(assert (=> bs!3063 (= (dynLambda!480 lambda!3193) (= (foldRight1!112 xs!292 f!539) (dynLambda!482 lambda!3194 (foldRight1!112 (tail!509 xs!292) f!539))))))

(declare-fun b_lambda!6323 () Bool)

(assert (=> (not b_lambda!6323) (not bs!3063)))

(assert (=> bs!3063 m!14807))

(declare-fun m!14821 () Bool)

(assert (=> bs!3063 m!14821))

(assert (=> bs!3063 m!14821))

(declare-fun m!14823 () Bool)

(assert (=> bs!3063 m!14823))

(assert (=> (and b!11887 (= lambda!3193 proof!209) b!11888) d!9175))

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_lambda!6321))

(assert (not bs!3062))

(assert (not b_next!4159))

(assert b_and!6069)

(assert (not b!11890))

(assert (not b_next!4153))

(assert (not b_lambda!6323))

(assert (not b!11889))

(assert (not b_next!4155))

(assert (not bs!3063))

(assert (not b_lambda!6319))

(assert b_and!6065)

(assert b_and!6063)

(assert (not start!2384))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_next!4159))

(assert b_and!6069)

(assert (not b_next!4153))

(assert (not b_next!4155))

(assert b_and!6065)

(assert b_and!6063)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6325 () Bool)

(assert (= b_lambda!6323 (or b!11887 b_lambda!6325)))

(declare-fun bs!3064 () Bool)

(declare-fun d!9177 () Bool)

(assert (= bs!3064 (and d!9177 b!11887)))

(assert (=> bs!3064 (= (dynLambda!482 lambda!3194 (foldRight1!112 (tail!509 xs!292) f!539)) (dynLambda!481 f!539 (head!497 xs!292) (foldRight1!112 (tail!509 xs!292) f!539)))))

(declare-fun b_lambda!6327 () Bool)

(assert (=> (not b_lambda!6327) (not bs!3064)))

(declare-fun t!3539 () Bool)

(declare-fun tb!3199 () Bool)

(assert (=> (and start!2384 (= f!539 f!539) t!3539) tb!3199))

(declare-fun result!3251 () Bool)

(assert (=> tb!3199 (= result!3251 true)))

(assert (=> bs!3064 t!3539))

(declare-fun b_and!6071 () Bool)

(assert (= b_and!6069 (and (=> t!3539 result!3251) b_and!6071)))

(assert (=> bs!3064 m!14821))

(declare-fun m!14825 () Bool)

(assert (=> bs!3064 m!14825))

(assert (=> bs!3063 d!9177))

(push 1)

(assert (not b_lambda!6325))

(assert (not b_lambda!6327))

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_lambda!6321))

(assert (not bs!3062))

(assert (not b_next!4159))

(assert (not b!11890))

(assert (not b_next!4153))

(assert b_and!6071)

(assert (not b!11889))

(assert (not b_next!4155))

(assert (not bs!3063))

(assert (not b_lambda!6319))

(assert b_and!6065)

(assert b_and!6063)

(assert (not start!2384))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_next!4159))

(assert (not b_next!4153))

(assert b_and!6071)

(assert (not b_next!4155))

(assert b_and!6065)

(assert b_and!6063)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9179 () Bool)

(declare-fun c!3437 () Bool)

(assert (=> d!9179 (= c!3437 (and (is-Cons!279 xs!292) (is-Nil!280 (tail!509 xs!292))))))

(declare-fun e!6600 () Balance!337)

(assert (=> d!9179 (= (foldRight1!112 xs!292 f!539) e!6600)))

(declare-fun b!11911 () Bool)

(assert (=> b!11911 (= e!6600 (head!497 xs!292))))

(declare-fun b!11912 () Bool)

(assert (=> b!11912 (= e!6600 (dynLambda!481 f!539 (head!497 xs!292) (foldRight1!112 (tail!509 xs!292) f!539)))))

(assert (= (and d!9179 c!3437) b!11911))

(assert (= (and d!9179 (not c!3437)) b!11912))

(declare-fun b_lambda!6329 () Bool)

(assert (=> (not b_lambda!6329) (not b!11912)))

(assert (=> b!11912 t!3539))

(declare-fun b_and!6073 () Bool)

(assert (= b_and!6071 (and (=> t!3539 result!3251) b_and!6073)))

(assert (=> b!11912 m!14821))

(assert (=> b!11912 m!14821))

(assert (=> b!11912 m!14825))

(assert (=> b!11890 d!9179))

(declare-fun d!9181 () Bool)

(declare-fun c!3438 () Bool)

(assert (=> d!9181 (= c!3438 (and (is-Cons!279 ys!54) (is-Nil!280 (tail!509 ys!54))))))

(declare-fun e!6601 () Balance!337)

(assert (=> d!9181 (= (foldRight1!112 ys!54 f!539) e!6601)))

(declare-fun b!11913 () Bool)

(assert (=> b!11913 (= e!6601 (head!497 ys!54))))

(declare-fun b!11914 () Bool)

(assert (=> b!11914 (= e!6601 (dynLambda!481 f!539 (head!497 ys!54) (foldRight1!112 (tail!509 ys!54) f!539)))))

(assert (= (and d!9181 c!3438) b!11913))

(assert (= (and d!9181 (not c!3438)) b!11914))

(declare-fun b_lambda!6331 () Bool)

(assert (=> (not b_lambda!6331) (not b!11914)))

(declare-fun t!3541 () Bool)

(declare-fun tb!3201 () Bool)

(assert (=> (and start!2384 (= f!539 f!539) t!3541) tb!3201))

(declare-fun result!3253 () Bool)

(assert (=> tb!3201 (= result!3253 true)))

(assert (=> b!11914 t!3541))

(declare-fun b_and!6075 () Bool)

(assert (= b_and!6073 (and (=> t!3541 result!3253) b_and!6075)))

(declare-fun m!14827 () Bool)

(assert (=> b!11914 m!14827))

(assert (=> b!11914 m!14827))

(declare-fun m!14829 () Bool)

(assert (=> b!11914 m!14829))

(assert (=> b!11890 d!9181))

(declare-fun d!9183 () Bool)

(declare-fun c!3439 () Bool)

(assert (=> d!9183 (= c!3439 (and (is-Cons!279 (append!131 xs!292 ys!54)) (is-Nil!280 (tail!509 (append!131 xs!292 ys!54)))))))

(declare-fun e!6602 () Balance!337)

(assert (=> d!9183 (= (foldRight1!112 (append!131 xs!292 ys!54) f!539) e!6602)))

(declare-fun b!11915 () Bool)

(assert (=> b!11915 (= e!6602 (head!497 (append!131 xs!292 ys!54)))))

(declare-fun b!11916 () Bool)

(assert (=> b!11916 (= e!6602 (dynLambda!481 f!539 (head!497 (append!131 xs!292 ys!54)) (foldRight1!112 (tail!509 (append!131 xs!292 ys!54)) f!539)))))

(assert (= (and d!9183 c!3439) b!11915))

(assert (= (and d!9183 (not c!3439)) b!11916))

(declare-fun b_lambda!6333 () Bool)

(assert (=> (not b_lambda!6333) (not b!11916)))

(declare-fun t!3543 () Bool)

(declare-fun tb!3203 () Bool)

(assert (=> (and start!2384 (= f!539 f!539) t!3543) tb!3203))

(declare-fun result!3255 () Bool)

(assert (=> tb!3203 (= result!3255 true)))

(assert (=> b!11916 t!3543))

(declare-fun b_and!6077 () Bool)

(assert (= b_and!6075 (and (=> t!3543 result!3255) b_and!6077)))

(declare-fun m!14831 () Bool)

(assert (=> b!11916 m!14831))

(assert (=> b!11916 m!14831))

(declare-fun m!14833 () Bool)

(assert (=> b!11916 m!14833))

(assert (=> b!11890 d!9183))

(declare-fun d!9185 () Bool)

(declare-fun c!3442 () Bool)

(assert (=> d!9185 (= c!3442 (is-Nil!280 xs!292))))

(declare-fun e!6605 () List!282)

(assert (=> d!9185 (= (append!131 xs!292 ys!54) e!6605)))

(declare-fun b!11921 () Bool)

(assert (=> b!11921 (= e!6605 ys!54)))

(declare-fun b!11922 () Bool)

(assert (=> b!11922 (= e!6605 (Cons!279 (head!497 xs!292) (append!131 (tail!509 xs!292) ys!54)))))

(assert (= (and d!9185 c!3442) b!11921))

(assert (= (and d!9185 (not c!3442)) b!11922))

(declare-fun m!14835 () Bool)

(assert (=> b!11922 m!14835))

(assert (=> b!11890 d!9185))

(declare-fun d!9187 () Bool)

(assert (=> d!9187 (= (isEmpty!210 ys!54) (is-Nil!280 ys!54))))

(assert (=> b!11889 d!9187))

(declare-fun d!9189 () Bool)

(assert (=> d!9189 (= (isEmpty!210 xs!292) (is-Nil!280 xs!292))))

(assert (=> start!2384 d!9189))

(declare-fun d!9191 () Bool)

(declare-fun dynLambda!483 (Int) Balance!337)

(assert (=> d!9191 (= (inv!400 thiss!748) (= (dynLambda!483 (x!6749 thiss!748)) (dynLambda!483 (y!655 thiss!748))))))

(declare-fun b_lambda!6335 () Bool)

(assert (=> (not b_lambda!6335) (not d!9191)))

(declare-fun t!3545 () Bool)

(declare-fun tb!3205 () Bool)

(assert (=> (and b!11892 (= (x!6749 thiss!748) (x!6749 thiss!748)) t!3545) tb!3205))

(declare-fun result!3257 () Bool)

(assert (=> tb!3205 (= result!3257 true)))

(assert (=> d!9191 t!3545))

(declare-fun b_and!6079 () Bool)

(assert (= b_and!6063 (and (=> t!3545 result!3257) b_and!6079)))

(declare-fun t!3547 () Bool)

(declare-fun tb!3207 () Bool)

(assert (=> (and b!11892 (= (y!655 thiss!748) (x!6749 thiss!748)) t!3547) tb!3207))

(declare-fun result!3259 () Bool)

(assert (=> tb!3207 (= result!3259 true)))

(assert (=> d!9191 t!3547))

(declare-fun b_and!6081 () Bool)

(assert (= b_and!6065 (and (=> t!3547 result!3259) b_and!6081)))

(declare-fun b_lambda!6337 () Bool)

(assert (=> (not b_lambda!6337) (not d!9191)))

(declare-fun t!3549 () Bool)

(declare-fun tb!3209 () Bool)

(assert (=> (and b!11892 (= (x!6749 thiss!748) (y!655 thiss!748)) t!3549) tb!3209))

(declare-fun result!3261 () Bool)

(assert (=> tb!3209 (= result!3261 true)))

(assert (=> d!9191 t!3549))

(declare-fun b_and!6083 () Bool)

(assert (= b_and!6079 (and (=> t!3549 result!3261) b_and!6083)))

(declare-fun t!3551 () Bool)

(declare-fun tb!3211 () Bool)

(assert (=> (and b!11892 (= (y!655 thiss!748) (y!655 thiss!748)) t!3551) tb!3211))

(declare-fun result!3263 () Bool)

(assert (=> tb!3211 (= result!3263 true)))

(assert (=> d!9191 t!3551))

(declare-fun b_and!6085 () Bool)

(assert (= b_and!6081 (and (=> t!3551 result!3263) b_and!6085)))

(declare-fun m!14837 () Bool)

(assert (=> d!9191 m!14837))

(declare-fun m!14839 () Bool)

(assert (=> d!9191 m!14839))

(assert (=> start!2384 d!9191))

(declare-fun b_lambda!6339 () Bool)

(assert (= b_lambda!6333 (or (and b!11891 (= lambda!3191 f!539)) (and start!2384 b_free!1743) b_lambda!6339)))

(declare-fun bs!3065 () Bool)

(declare-fun d!9193 () Bool)

(assert (= bs!3065 (and d!9193 b!11891)))

(assert (=> bs!3065 (= (dynLambda!481 lambda!3191 (head!497 (append!131 xs!292 ys!54)) (foldRight1!112 (tail!509 (append!131 xs!292 ys!54)) f!539)) (++!3 (head!497 (append!131 xs!292 ys!54)) (foldRight1!112 (tail!509 (append!131 xs!292 ys!54)) f!539)))))

(assert (=> bs!3065 m!14831))

(declare-fun m!14841 () Bool)

(assert (=> bs!3065 m!14841))

(assert (=> (and b!11891 (= lambda!3191 f!539) b!11916) d!9193))

(declare-fun b_lambda!6341 () Bool)

(assert (= b_lambda!6335 (or (and b!11894 (= lambda!3192 (x!6749 thiss!748))) (and b!11892 b_free!1747) (and b!11892 b_free!1749 (= (y!655 thiss!748) (x!6749 thiss!748))) b_lambda!6341)))

(declare-fun bs!3066 () Bool)

(declare-fun d!9195 () Bool)

(assert (= bs!3066 (and d!9195 b!11894)))

(assert (=> bs!3066 (= (dynLambda!483 lambda!3192) (dynLambda!481 f!539 (foldRight1!112 xs!292 f!539) (foldRight1!112 ys!54 f!539)))))

(declare-fun b_lambda!6351 () Bool)

(assert (=> (not b_lambda!6351) (not bs!3066)))

(assert (=> bs!3066 t!3537))

(declare-fun b_and!6087 () Bool)

(assert (= b_and!6077 (and (=> t!3537 result!3249) b_and!6087)))

(assert (=> bs!3066 m!14807))

(assert (=> bs!3066 m!14809))

(assert (=> bs!3066 m!14807))

(assert (=> bs!3066 m!14809))

(assert (=> bs!3066 m!14811))

(assert (=> (and b!11894 (= lambda!3192 (x!6749 thiss!748)) d!9191) d!9195))

(declare-fun b_lambda!6343 () Bool)

(assert (= b_lambda!6331 (or (and b!11891 (= lambda!3191 f!539)) (and start!2384 b_free!1743) b_lambda!6343)))

(declare-fun bs!3067 () Bool)

(declare-fun d!9197 () Bool)

(assert (= bs!3067 (and d!9197 b!11891)))

(assert (=> bs!3067 (= (dynLambda!481 lambda!3191 (head!497 ys!54) (foldRight1!112 (tail!509 ys!54) f!539)) (++!3 (head!497 ys!54) (foldRight1!112 (tail!509 ys!54) f!539)))))

(assert (=> bs!3067 m!14827))

(declare-fun m!14843 () Bool)

(assert (=> bs!3067 m!14843))

(assert (=> (and b!11891 (= lambda!3191 f!539) b!11914) d!9197))

(declare-fun b_lambda!6345 () Bool)

(assert (= b_lambda!6329 (or (and b!11891 (= lambda!3191 f!539)) (and start!2384 b_free!1743) b_lambda!6345)))

(declare-fun bs!3068 () Bool)

(declare-fun d!9199 () Bool)

(assert (= bs!3068 (and d!9199 b!11891)))

(assert (=> bs!3068 (= (dynLambda!481 lambda!3191 (head!497 xs!292) (foldRight1!112 (tail!509 xs!292) f!539)) (++!3 (head!497 xs!292) (foldRight1!112 (tail!509 xs!292) f!539)))))

(assert (=> bs!3068 m!14821))

(declare-fun m!14845 () Bool)

(assert (=> bs!3068 m!14845))

(assert (=> (and b!11891 (= lambda!3191 f!539) b!11912) d!9199))

(declare-fun b_lambda!6347 () Bool)

(assert (= b_lambda!6337 (or (and b!11894 (= lambda!3192 (y!655 thiss!748))) (and b!11892 b_free!1747 (= (x!6749 thiss!748) (y!655 thiss!748))) (and b!11892 b_free!1749) b_lambda!6347)))

(declare-fun bs!3069 () Bool)

(declare-fun d!9201 () Bool)

(assert (= bs!3069 (and d!9201 b!11894)))

(assert (=> bs!3069 (= (dynLambda!483 lambda!3192) (dynLambda!481 f!539 (foldRight1!112 xs!292 f!539) (foldRight1!112 ys!54 f!539)))))

(declare-fun b_lambda!6353 () Bool)

(assert (=> (not b_lambda!6353) (not bs!3069)))

(assert (=> bs!3069 t!3537))

(declare-fun b_and!6089 () Bool)

(assert (= b_and!6087 (and (=> t!3537 result!3249) b_and!6089)))

(assert (=> bs!3069 m!14807))

(assert (=> bs!3069 m!14809))

(assert (=> bs!3069 m!14807))

(assert (=> bs!3069 m!14809))

(assert (=> bs!3069 m!14811))

(assert (=> (and b!11894 (= lambda!3192 (y!655 thiss!748)) d!9191) d!9201))

(declare-fun b_lambda!6349 () Bool)

(assert (= b_lambda!6327 (or (and b!11891 (= lambda!3191 f!539)) (and start!2384 b_free!1743) b_lambda!6349)))

(assert (=> (and b!11891 (= lambda!3191 f!539) bs!3064) d!9199))

(push 1)

(assert (not b_lambda!6339))

(assert (not b_lambda!6325))

(assert (not b_next!4157))

(assert (not b_lambda!6347))

(assert (not b_lambda!6353))

(assert (not b!11916))

(assert b_and!6067)

(assert (not b_lambda!6321))

(assert (not bs!3062))

(assert (not b_lambda!6349))

(assert (not b_next!4159))

(assert (not b_next!4153))

(assert (not bs!3065))

(assert b_and!6085)

(assert (not b_next!4155))

(assert (not bs!3063))

(assert (not b_lambda!6319))

(assert (not bs!3066))

(assert (not bs!3067))

(assert (not b_lambda!6345))

(assert (not b!11912))

(assert (not b_lambda!6351))

(assert (not bs!3068))

(assert (not b_lambda!6341))

(assert (not b!11914))

(assert b_and!6089)

(assert (not bs!3069))

(assert (not b!11922))

(assert (not b_lambda!6343))

(assert b_and!6083)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4157))

(assert b_and!6067)

(assert (not b_next!4159))

(assert (not b_next!4153))

(assert b_and!6085)

(assert (not b_next!4155))

(assert b_and!6089)

(assert b_and!6083)

(check-sat)

(pop 1)

