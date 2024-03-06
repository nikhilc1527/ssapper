; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9342 () Bool)

(assert start!9342)

(declare-fun res!31986 () Bool)

(declare-fun e!36286 () Bool)

(assert (=> start!9342 (=> (not res!31986) (not e!36286))))

(declare-datatypes () ((Formula!30 (And!35 (lhs!893 Formula!30) (rhs!893 Formula!30)) (Literal!29 (id!4810 Int)) (Implies!35 (lhs!894 Formula!30) (rhs!894 Formula!30)) (Or!35 (lhs!895 Formula!30) (rhs!895 Formula!30)) (Not!35 (f!4145 Formula!30)))))

(declare-fun f!3724 () Formula!30)

(declare-fun isNNF!1 (Formula!30) Bool)

(assert (=> start!9342 (= res!31986 (isNNF!1 f!3724))))

(assert (=> start!9342 e!36286))

(assert (=> start!9342 true))

(declare-fun b!67011 () Bool)

(declare-fun res!31987 () Bool)

(assert (=> b!67011 (=> (not res!31987) (not e!36286))))

(assert (=> b!67011 (= res!31987 (and (not (is-And!35 f!3724)) (is-Literal!29 f!3724)))))

(declare-fun b!67012 () Bool)

(declare-fun simplify!1 (Formula!30) Formula!30)

(assert (=> b!67012 (= e!36286 (not (isNNF!1 (simplify!1 f!3724))))))

(assert (= (and start!9342 res!31986) b!67011))

(assert (= (and b!67011 res!31987) b!67012))

(declare-fun m!69833 () Bool)

(assert (=> start!9342 m!69833))

(declare-fun m!69835 () Bool)

(assert (=> b!67012 m!69835))

(assert (=> b!67012 m!69835))

(declare-fun m!69837 () Bool)

(assert (=> b!67012 m!69837))

(push 1)

(assert (not b!67012))

(assert (not start!9342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67027 () Bool)

(declare-fun e!36295 () Bool)

(assert (=> b!67027 (= e!36295 (and (not (is-Implies!35 (simplify!1 f!3724))) (or (and (is-Not!35 (simplify!1 f!3724)) (is-Literal!29 (f!4145 (simplify!1 f!3724)))) (not (is-Not!35 (simplify!1 f!3724))))))))

(declare-fun b!67028 () Bool)

(declare-fun e!36296 () Bool)

(declare-fun lt!13250 () Bool)

(assert (=> b!67028 (= e!36296 (isNNF!1 (ite lt!13250 (rhs!893 (simplify!1 f!3724)) (rhs!895 (simplify!1 f!3724)))))))

(declare-fun b!67029 () Bool)

(declare-fun e!36298 () Bool)

(assert (=> b!67029 (= e!36298 e!36296)))

(declare-fun lt!13252 () Bool)

(declare-fun lt!13251 () Bool)

(declare-fun c!15335 () Bool)

(assert (=> b!67029 (= c!15335 (or lt!13250 (and (not lt!13251) (is-Or!35 (simplify!1 f!3724)) lt!13252)))))

(declare-fun b!67030 () Bool)

(declare-fun e!36297 () Bool)

(declare-fun res!32002 () Bool)

(assert (=> b!67030 (= e!36297 res!32002)))

(assert (=> b!67030 true))

(declare-fun b!67031 () Bool)

(assert (=> b!67031 (= e!36295 e!36298)))

(declare-fun res!32000 () Bool)

(assert (=> b!67031 (=> (not res!32000) (not e!36298))))

(assert (=> b!67031 (= res!32000 lt!13252)))

(declare-fun b!67032 () Bool)

(assert (=> b!67032 (= e!36297 (isNNF!1 (ite lt!13251 (lhs!893 (simplify!1 f!3724)) (lhs!895 (simplify!1 f!3724)))))))

(declare-fun d!53456 () Bool)

(declare-fun c!15337 () Bool)

(assert (=> d!53456 (= c!15337 (or lt!13251 (is-Or!35 (simplify!1 f!3724))))))

(assert (=> d!53456 (= lt!13250 (and lt!13251 lt!13252))))

(assert (=> d!53456 (= lt!13252 e!36297)))

(declare-fun c!15336 () Bool)

(assert (=> d!53456 (= c!15336 (or lt!13251 (is-Or!35 (simplify!1 f!3724))))))

(assert (=> d!53456 (= lt!13251 (is-And!35 (simplify!1 f!3724)))))

(assert (=> d!53456 (= (isNNF!1 (simplify!1 f!3724)) e!36295)))

(declare-fun b!67033 () Bool)

(declare-fun res!32001 () Bool)

(assert (=> b!67033 (= e!36296 res!32001)))

(assert (=> b!67033 true))

(assert (=> b!67033 true))

(assert (= (and d!53456 c!15336) b!67032))

(assert (= (and d!53456 (not c!15336)) b!67030))

(assert (= (and b!67031 res!32000) b!67029))

(assert (= (and b!67029 c!15335) b!67028))

(assert (= (and b!67029 (not c!15335)) b!67033))

(assert (= (and d!53456 c!15337) b!67031))

(assert (= (and d!53456 (not c!15337)) b!67027))

(declare-fun m!69839 () Bool)

(assert (=> b!67028 m!69839))

(declare-fun m!69841 () Bool)

(assert (=> b!67032 m!69841))

(assert (=> b!67012 d!53456))

(declare-fun b!67062 () Bool)

(declare-fun e!36315 () Formula!30)

(declare-fun lt!13278 () Formula!30)

(declare-fun lt!13273 () Formula!30)

(assert (=> b!67062 (= e!36315 (Or!35 lt!13278 lt!13273))))

(declare-fun b!67063 () Bool)

(declare-fun e!36316 () Formula!30)

(declare-fun res!32029 () Formula!30)

(assert (=> b!67063 (= e!36316 res!32029)))

(assert (=> b!67063 true))

(declare-fun lt!13279 () Formula!30)

(declare-fun lt!13277 () Bool)

(declare-fun b!67064 () Bool)

(assert (=> b!67064 (= e!36315 (ite lt!13277 (Or!35 (Not!35 lt!13279) lt!13273) (ite (is-Not!35 f!3724) (Not!35 lt!13279) f!3724)))))

(declare-fun e!36313 () Formula!30)

(assert (=> b!67064 (= lt!13279 e!36313)))

(declare-fun c!15353 () Bool)

(assert (=> b!67064 (= c!15353 (or lt!13277 (is-Not!35 f!3724)))))

(assert (=> b!67064 (= lt!13277 (is-Implies!35 f!3724))))

(declare-fun b!67065 () Bool)

(declare-fun e!36319 () Formula!30)

(declare-fun lt!13275 () Bool)

(assert (=> b!67065 (= e!36319 (simplify!1 (ite lt!13275 (rhs!893 f!3724) (ite (is-Or!35 f!3724) (rhs!895 f!3724) (rhs!894 f!3724)))))))

(declare-fun b!67066 () Bool)

(declare-fun res!32028 () Formula!30)

(assert (=> b!67066 (= e!36313 res!32028)))

(assert (=> b!67066 true))

(assert (=> b!67066 true))

(declare-fun b!67067 () Bool)

(declare-fun lt!13276 () Formula!30)

(assert (=> b!67067 (= e!36316 lt!13276)))

(declare-fun b!67068 () Bool)

(declare-fun res!32030 () Formula!30)

(assert (=> b!67068 (= e!36319 res!32030)))

(assert (=> b!67068 true))

(declare-fun b!67069 () Bool)

(declare-fun e!36318 () Formula!30)

(declare-fun lt!13272 () Formula!30)

(assert (=> b!67069 (= e!36318 (And!35 lt!13276 lt!13272))))

(declare-fun b!67070 () Bool)

(declare-fun e!36314 () Formula!30)

(declare-fun res!32031 () Formula!30)

(assert (=> b!67070 (= e!36314 res!32031)))

(assert (=> b!67070 true))

(declare-fun d!53458 () Bool)

(declare-fun lt!13274 () Formula!30)

(declare-fun isSimplified!1 (Formula!30) Bool)

(assert (=> d!53458 (isSimplified!1 lt!13274)))

(assert (=> d!53458 (= lt!13274 e!36318)))

(declare-fun c!15357 () Bool)

(assert (=> d!53458 (= c!15357 lt!13275)))

(assert (=> d!53458 (= lt!13272 e!36319)))

(declare-fun c!15358 () Bool)

(assert (=> d!53458 (= c!15358 (or lt!13275 (is-Or!35 f!3724) (is-Implies!35 f!3724)))))

(declare-fun e!36317 () Formula!30)

(assert (=> d!53458 (= lt!13276 e!36317)))

(declare-fun c!15356 () Bool)

(assert (=> d!53458 (= c!15356 (or lt!13275 (is-Or!35 f!3724) (is-Implies!35 f!3724) (is-Not!35 f!3724)))))

(assert (=> d!53458 (= lt!13275 (is-And!35 f!3724))))

(assert (=> d!53458 (= (simplify!1 f!3724) lt!13274)))

(declare-fun b!67071 () Bool)

(declare-fun res!32032 () Formula!30)

(assert (=> b!67071 (= e!36317 res!32032)))

(assert (=> b!67071 true))

(declare-fun b!67072 () Bool)

(assert (=> b!67072 (= e!36314 lt!13272)))

(declare-fun b!67073 () Bool)

(assert (=> b!67073 (= e!36317 (simplify!1 (ite lt!13275 (lhs!893 f!3724) (ite (is-Or!35 f!3724) (lhs!895 f!3724) (ite (is-Implies!35 f!3724) (lhs!894 f!3724) (f!4145 f!3724))))))))

(declare-fun b!67074 () Bool)

(assert (=> b!67074 (= e!36313 lt!13278)))

(declare-fun b!67075 () Bool)

(assert (=> b!67075 (= e!36318 e!36315)))

(declare-fun c!15355 () Bool)

(declare-fun lt!13271 () Bool)

(assert (=> b!67075 (= c!15355 lt!13271)))

(assert (=> b!67075 (= lt!13273 e!36314)))

(declare-fun c!15354 () Bool)

(assert (=> b!67075 (= c!15354 (or lt!13271 (is-Implies!35 f!3724)))))

(assert (=> b!67075 (= lt!13278 e!36316)))

(declare-fun c!15352 () Bool)

(assert (=> b!67075 (= c!15352 (or lt!13271 (is-Implies!35 f!3724) (is-Not!35 f!3724)))))

(assert (=> b!67075 (= lt!13271 (is-Or!35 f!3724))))

(assert (= (and d!53458 c!15356) b!67073))

(assert (= (and d!53458 (not c!15356)) b!67071))

(assert (= (and d!53458 c!15358) b!67065))

(assert (= (and d!53458 (not c!15358)) b!67068))

(assert (= (and b!67075 c!15352) b!67067))

(assert (= (and b!67075 (not c!15352)) b!67063))

(assert (= (and b!67075 c!15354) b!67072))

(assert (= (and b!67075 (not c!15354)) b!67070))

(assert (= (and b!67064 c!15353) b!67074))

(assert (= (and b!67064 (not c!15353)) b!67066))

(assert (= (and b!67075 c!15355) b!67062))

(assert (= (and b!67075 (not c!15355)) b!67064))

(assert (= (and d!53458 c!15357) b!67069))

(assert (= (and d!53458 (not c!15357)) b!67075))

(declare-fun m!69843 () Bool)

(assert (=> b!67065 m!69843))

(declare-fun m!69845 () Bool)

(assert (=> d!53458 m!69845))

(declare-fun m!69847 () Bool)

(assert (=> b!67073 m!69847))

(assert (=> b!67012 d!53458))

(declare-fun b!67076 () Bool)

(declare-fun e!36320 () Bool)

(assert (=> b!67076 (= e!36320 (and (not (is-Implies!35 f!3724)) (or (and (is-Not!35 f!3724) (is-Literal!29 (f!4145 f!3724))) (not (is-Not!35 f!3724)))))))

(declare-fun b!67077 () Bool)

(declare-fun e!36321 () Bool)

(declare-fun lt!13280 () Bool)

(assert (=> b!67077 (= e!36321 (isNNF!1 (ite lt!13280 (rhs!893 f!3724) (rhs!895 f!3724))))))

(declare-fun b!67078 () Bool)

(declare-fun e!36323 () Bool)

(assert (=> b!67078 (= e!36323 e!36321)))

(declare-fun lt!13281 () Bool)

(declare-fun lt!13282 () Bool)

(declare-fun c!15359 () Bool)

(assert (=> b!67078 (= c!15359 (or lt!13280 (and (not lt!13281) (is-Or!35 f!3724) lt!13282)))))

(declare-fun b!67079 () Bool)

(declare-fun e!36322 () Bool)

(declare-fun res!32035 () Bool)

(assert (=> b!67079 (= e!36322 res!32035)))

(assert (=> b!67079 true))

(declare-fun b!67080 () Bool)

(assert (=> b!67080 (= e!36320 e!36323)))

(declare-fun res!32033 () Bool)

(assert (=> b!67080 (=> (not res!32033) (not e!36323))))

(assert (=> b!67080 (= res!32033 lt!13282)))

(declare-fun b!67081 () Bool)

(assert (=> b!67081 (= e!36322 (isNNF!1 (ite lt!13281 (lhs!893 f!3724) (lhs!895 f!3724))))))

(declare-fun d!53460 () Bool)

(declare-fun c!15361 () Bool)

(assert (=> d!53460 (= c!15361 (or lt!13281 (is-Or!35 f!3724)))))

(assert (=> d!53460 (= lt!13280 (and lt!13281 lt!13282))))

(assert (=> d!53460 (= lt!13282 e!36322)))

(declare-fun c!15360 () Bool)

(assert (=> d!53460 (= c!15360 (or lt!13281 (is-Or!35 f!3724)))))

(assert (=> d!53460 (= lt!13281 (is-And!35 f!3724))))

(assert (=> d!53460 (= (isNNF!1 f!3724) e!36320)))

(declare-fun b!67082 () Bool)

(declare-fun res!32034 () Bool)

(assert (=> b!67082 (= e!36321 res!32034)))

(assert (=> b!67082 true))

(assert (=> b!67082 true))

(assert (= (and d!53460 c!15360) b!67081))

(assert (= (and d!53460 (not c!15360)) b!67079))

(assert (= (and b!67080 res!32033) b!67078))

(assert (= (and b!67078 c!15359) b!67077))

(assert (= (and b!67078 (not c!15359)) b!67082))

(assert (= (and d!53460 c!15361) b!67080))

(assert (= (and d!53460 (not c!15361)) b!67076))

(declare-fun m!69849 () Bool)

(assert (=> b!67077 m!69849))

(declare-fun m!69851 () Bool)

(assert (=> b!67081 m!69851))

(assert (=> start!9342 d!53460))

(push 1)

(assert (not b!67032))

(assert (not b!67028))

(assert (not b!67081))

(assert (not d!53458))

(assert (not b!67077))

(assert (not b!67073))

(assert (not b!67065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

