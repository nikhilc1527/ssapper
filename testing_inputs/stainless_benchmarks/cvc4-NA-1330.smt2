; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9348 () Bool)

(assert start!9348)

(declare-fun res!32044 () Bool)

(declare-fun e!36326 () Bool)

(assert (=> start!9348 (=> (not res!32044) (not e!36326))))

(declare-datatypes () ((Formula!31 (And!36 (lhs!896 Formula!31) (rhs!896 Formula!31)) (Literal!30 (id!4811 Int)) (Implies!36 (lhs!897 Formula!31) (rhs!897 Formula!31)) (Or!36 (lhs!898 Formula!31) (rhs!898 Formula!31)) (Not!36 (f!4148 Formula!31)))))

(declare-fun f!3724 () Formula!31)

(declare-fun isNNF!1 (Formula!31) Bool)

(assert (=> start!9348 (= res!32044 (isNNF!1 f!3724))))

(assert (=> start!9348 e!36326))

(assert (=> start!9348 true))

(declare-fun b!67091 () Bool)

(declare-fun res!32045 () Bool)

(assert (=> b!67091 (=> (not res!32045) (not e!36326))))

(assert (=> b!67091 (= res!32045 (and (not (is-And!36 f!3724)) (not (is-Literal!30 f!3724)) (is-Implies!36 f!3724)))))

(declare-fun b!67093 () Bool)

(declare-fun res!32046 () Bool)

(assert (=> b!67093 (=> (not res!32046) (not e!36326))))

(declare-fun inductVal!276 () Bool)

(declare-fun simplifyPreservesNNF!0 (Formula!31) Bool)

(assert (=> b!67093 (= res!32046 (= inductVal!276 (simplifyPreservesNNF!0 (lhs!897 f!3724))))))

(declare-fun b!67092 () Bool)

(declare-fun res!32047 () Bool)

(assert (=> b!67092 (=> (not res!32047) (not e!36326))))

(declare-fun inductVal!268 () Bool)

(assert (=> b!67092 (= res!32047 (= inductVal!268 (simplifyPreservesNNF!0 (rhs!897 f!3724))))))

(declare-fun b!67094 () Bool)

(declare-fun simplify!1 (Formula!31) Formula!31)

(assert (=> b!67094 (= e!36326 (not (isNNF!1 (simplify!1 f!3724))))))

(assert (= (and start!9348 res!32044) b!67091))

(assert (= (and b!67091 res!32045) b!67092))

(assert (= (and b!67092 res!32047) b!67093))

(assert (= (and b!67093 res!32046) b!67094))

(declare-fun m!69853 () Bool)

(assert (=> start!9348 m!69853))

(declare-fun m!69855 () Bool)

(assert (=> b!67093 m!69855))

(declare-fun m!69857 () Bool)

(assert (=> b!67092 m!69857))

(declare-fun m!69859 () Bool)

(assert (=> b!67094 m!69859))

(assert (=> b!67094 m!69859))

(declare-fun m!69861 () Bool)

(assert (=> b!67094 m!69861))

(push 1)

(assert (not b!67093))

(assert (not start!9348))

(assert (not b!67092))

(assert (not b!67094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67127 () Bool)

(declare-fun e!36343 () Bool)

(declare-fun lt!13300 () Bool)

(assert (=> b!67127 (= e!36343 (simplifyPreservesNNF!0 (ite lt!13300 (lhs!896 (lhs!897 f!3724)) (ite (is-Implies!36 (lhs!897 f!3724)) (lhs!897 (lhs!897 f!3724)) (lhs!898 (lhs!897 f!3724))))))))

(declare-fun b!67128 () Bool)

(declare-fun e!36348 () Bool)

(assert (=> b!67128 (= e!36348 (isNNF!1 (simplify!1 (lhs!897 f!3724))))))

(declare-fun b!67129 () Bool)

(declare-fun e!36350 () Formula!31)

(declare-fun res!32091 () Formula!31)

(assert (=> b!67129 (= e!36350 res!32091)))

(assert (=> b!67129 true))

(declare-fun b!67130 () Bool)

(declare-fun e!36345 () Bool)

(declare-fun res!32088 () Bool)

(assert (=> b!67130 (= e!36345 res!32088)))

(assert (=> b!67130 true))

(declare-fun b!67131 () Bool)

(declare-fun e!36349 () Bool)

(declare-fun res!32090 () Bool)

(assert (=> b!67131 (= e!36349 res!32090)))

(assert (=> b!67131 true))

(declare-fun b!67132 () Bool)

(declare-fun e!36347 () Formula!31)

(declare-fun res!32089 () Formula!31)

(assert (=> b!67132 (= e!36347 res!32089)))

(assert (=> b!67132 true))

(declare-fun b!67133 () Bool)

(declare-fun e!36344 () Bool)

(assert (=> b!67133 (= e!36348 e!36344)))

(declare-fun c!15385 () Bool)

(declare-fun lt!13298 () Bool)

(assert (=> b!67133 (= c!15385 (or lt!13298 (and (not lt!13298) (is-Or!36 (lhs!897 f!3724)))))))

(declare-fun b!67134 () Bool)

(declare-fun e!36346 () Bool)

(assert (=> b!67134 (= e!36346 e!36345)))

(declare-fun c!15383 () Bool)

(assert (=> b!67134 (= c!15383 (or lt!13300 (and (not lt!13300) (is-Literal!30 (lhs!897 f!3724)))))))

(declare-fun b!67135 () Bool)

(declare-fun res!32087 () Bool)

(assert (=> b!67135 (= e!36344 res!32087)))

(assert (=> b!67135 true))

(assert (=> b!67135 true))

(declare-fun b!67136 () Bool)

(assert (=> b!67136 (= e!36350 (simplify!1 (lhs!897 f!3724)))))

(declare-fun d!53462 () Bool)

(assert (=> d!53462 e!36346))

(declare-fun c!15384 () Bool)

(assert (=> d!53462 (= c!15384 (or lt!13300 (is-Literal!30 (lhs!897 f!3724))))))

(declare-fun lt!13299 () Formula!31)

(assert (=> d!53462 (= lt!13299 e!36347)))

(declare-fun c!15379 () Bool)

(assert (=> d!53462 (= c!15379 (or lt!13300 (is-Literal!30 (lhs!897 f!3724))))))

(declare-fun lt!13296 () Bool)

(assert (=> d!53462 (= lt!13296 e!36343)))

(declare-fun c!15380 () Bool)

(assert (=> d!53462 (= c!15380 (or lt!13300 (and (not (is-Literal!30 (lhs!897 f!3724))) (or (is-Implies!36 (lhs!897 f!3724)) (is-Or!36 (lhs!897 f!3724))))))))

(declare-fun lt!13295 () Bool)

(assert (=> d!53462 (= lt!13295 e!36349)))

(declare-fun c!15381 () Bool)

(assert (=> d!53462 (= c!15381 (or lt!13300 (not (is-Literal!30 (lhs!897 f!3724)))))))

(assert (=> d!53462 (= lt!13300 (is-And!36 (lhs!897 f!3724)))))

(assert (=> d!53462 (isNNF!1 (lhs!897 f!3724))))

(assert (=> d!53462 (= (simplifyPreservesNNF!0 (lhs!897 f!3724)) true)))

(declare-fun b!67137 () Bool)

(assert (=> b!67137 (= e!36347 (simplify!1 (lhs!897 f!3724)))))

(declare-fun b!67138 () Bool)

(declare-fun lt!13297 () Formula!31)

(assert (=> b!67138 (= e!36344 (isNNF!1 lt!13297))))

(declare-fun b!67139 () Bool)

(assert (=> b!67139 (= e!36349 (simplifyPreservesNNF!0 (ite lt!13300 (rhs!896 (lhs!897 f!3724)) (ite (is-Implies!36 (lhs!897 f!3724)) (rhs!897 (lhs!897 f!3724)) (ite (is-Or!36 (lhs!897 f!3724)) (rhs!898 (lhs!897 f!3724)) (f!4148 (lhs!897 f!3724)))))))))

(declare-fun b!67140 () Bool)

(declare-fun res!32092 () Bool)

(assert (=> b!67140 (= e!36343 res!32092)))

(assert (=> b!67140 true))

(declare-fun b!67141 () Bool)

(assert (=> b!67141 (= e!36346 e!36348)))

(declare-fun c!15382 () Bool)

(assert (=> b!67141 (= c!15382 (or lt!13298 (is-Or!36 (lhs!897 f!3724))))))

(assert (=> b!67141 (= lt!13297 e!36350)))

(declare-fun c!15378 () Bool)

(assert (=> b!67141 (= c!15378 (or lt!13298 (is-Or!36 (lhs!897 f!3724))))))

(assert (=> b!67141 (= lt!13298 (is-Implies!36 (lhs!897 f!3724)))))

(declare-fun b!67142 () Bool)

(assert (=> b!67142 (= e!36345 (isNNF!1 lt!13299))))

(assert (= (and d!53462 c!15381) b!67139))

(assert (= (and d!53462 (not c!15381)) b!67131))

(assert (= (and d!53462 c!15380) b!67127))

(assert (= (and d!53462 (not c!15380)) b!67140))

(assert (= (and d!53462 c!15379) b!67137))

(assert (= (and d!53462 (not c!15379)) b!67132))

(assert (= (and b!67134 c!15383) b!67142))

(assert (= (and b!67134 (not c!15383)) b!67130))

(assert (= (and b!67141 c!15378) b!67136))

(assert (= (and b!67141 (not c!15378)) b!67129))

(assert (= (and b!67133 c!15385) b!67138))

(assert (= (and b!67133 (not c!15385)) b!67135))

(assert (= (and b!67141 c!15382) b!67133))

(assert (= (and b!67141 (not c!15382)) b!67128))

(assert (= (and d!53462 c!15384) b!67134))

(assert (= (and d!53462 (not c!15384)) b!67141))

(declare-fun m!69863 () Bool)

(assert (=> b!67136 m!69863))

(declare-fun m!69865 () Bool)

(assert (=> b!67142 m!69865))

(assert (=> b!67137 m!69863))

(declare-fun m!69867 () Bool)

(assert (=> b!67139 m!69867))

(assert (=> b!67128 m!69863))

(assert (=> b!67128 m!69863))

(declare-fun m!69869 () Bool)

(assert (=> b!67128 m!69869))

(declare-fun m!69871 () Bool)

(assert (=> b!67138 m!69871))

(declare-fun m!69873 () Bool)

(assert (=> d!53462 m!69873))

(declare-fun m!69875 () Bool)

(assert (=> b!67127 m!69875))

(assert (=> b!67093 d!53462))

(declare-fun b!67157 () Bool)

(declare-fun e!36359 () Bool)

(declare-fun e!36361 () Bool)

(assert (=> b!67157 (= e!36359 e!36361)))

(declare-fun c!15394 () Bool)

(declare-fun lt!13309 () Bool)

(declare-fun lt!13307 () Bool)

(declare-fun lt!13308 () Bool)

(assert (=> b!67157 (= c!15394 (or lt!13307 (and (not lt!13309) (is-Or!36 f!3724) lt!13308)))))

(declare-fun b!67158 () Bool)

(declare-fun e!36362 () Bool)

(assert (=> b!67158 (= e!36362 e!36359)))

(declare-fun res!32106 () Bool)

(assert (=> b!67158 (=> (not res!32106) (not e!36359))))

(assert (=> b!67158 (= res!32106 lt!13308)))

(declare-fun b!67159 () Bool)

(declare-fun e!36360 () Bool)

(assert (=> b!67159 (= e!36360 (isNNF!1 (ite lt!13309 (lhs!896 f!3724) (lhs!898 f!3724))))))

(declare-fun d!53464 () Bool)

(declare-fun c!15392 () Bool)

(assert (=> d!53464 (= c!15392 (or lt!13309 (is-Or!36 f!3724)))))

(assert (=> d!53464 (= lt!13307 (and lt!13309 lt!13308))))

(assert (=> d!53464 (= lt!13308 e!36360)))

(declare-fun c!15393 () Bool)

(assert (=> d!53464 (= c!15393 (or lt!13309 (is-Or!36 f!3724)))))

(assert (=> d!53464 (= lt!13309 (is-And!36 f!3724))))

(assert (=> d!53464 (= (isNNF!1 f!3724) e!36362)))

(declare-fun b!67160 () Bool)

(declare-fun res!32107 () Bool)

(assert (=> b!67160 (= e!36361 res!32107)))

(assert (=> b!67160 true))

(assert (=> b!67160 true))

(declare-fun b!67161 () Bool)

(assert (=> b!67161 (= e!36361 (isNNF!1 (ite lt!13307 (rhs!896 f!3724) (rhs!898 f!3724))))))

(declare-fun b!67162 () Bool)

(declare-fun res!32105 () Bool)

(assert (=> b!67162 (= e!36360 res!32105)))

(assert (=> b!67162 true))

(declare-fun b!67163 () Bool)

(assert (=> b!67163 (= e!36362 (and (not (is-Implies!36 f!3724)) (or (and (is-Not!36 f!3724) (is-Literal!30 (f!4148 f!3724))) (not (is-Not!36 f!3724)))))))

(assert (= (and d!53464 c!15393) b!67159))

(assert (= (and d!53464 (not c!15393)) b!67162))

(assert (= (and b!67158 res!32106) b!67157))

(assert (= (and b!67157 c!15394) b!67161))

(assert (= (and b!67157 (not c!15394)) b!67160))

(assert (= (and d!53464 c!15392) b!67158))

(assert (= (and d!53464 (not c!15392)) b!67163))

(declare-fun m!69877 () Bool)

(assert (=> b!67159 m!69877))

(declare-fun m!69879 () Bool)

(assert (=> b!67161 m!69879))

(assert (=> start!9348 d!53464))

(declare-fun b!67164 () Bool)

(declare-fun e!36363 () Bool)

(declare-fun lt!13315 () Bool)

(assert (=> b!67164 (= e!36363 (simplifyPreservesNNF!0 (ite lt!13315 (lhs!896 (rhs!897 f!3724)) (ite (is-Implies!36 (rhs!897 f!3724)) (lhs!897 (rhs!897 f!3724)) (lhs!898 (rhs!897 f!3724))))))))

(declare-fun b!67165 () Bool)

(declare-fun e!36368 () Bool)

(assert (=> b!67165 (= e!36368 (isNNF!1 (simplify!1 (rhs!897 f!3724))))))

(declare-fun b!67166 () Bool)

(declare-fun e!36370 () Formula!31)

(declare-fun res!32112 () Formula!31)

(assert (=> b!67166 (= e!36370 res!32112)))

(assert (=> b!67166 true))

(declare-fun b!67167 () Bool)

(declare-fun e!36365 () Bool)

(declare-fun res!32109 () Bool)

(assert (=> b!67167 (= e!36365 res!32109)))

(assert (=> b!67167 true))

(declare-fun b!67168 () Bool)

(declare-fun e!36369 () Bool)

(declare-fun res!32111 () Bool)

(assert (=> b!67168 (= e!36369 res!32111)))

(assert (=> b!67168 true))

(declare-fun b!67169 () Bool)

(declare-fun e!36367 () Formula!31)

(declare-fun res!32110 () Formula!31)

(assert (=> b!67169 (= e!36367 res!32110)))

(assert (=> b!67169 true))

(declare-fun b!67170 () Bool)

(declare-fun e!36364 () Bool)

(assert (=> b!67170 (= e!36368 e!36364)))

(declare-fun c!15402 () Bool)

(declare-fun lt!13313 () Bool)

(assert (=> b!67170 (= c!15402 (or lt!13313 (and (not lt!13313) (is-Or!36 (rhs!897 f!3724)))))))

(declare-fun b!67171 () Bool)

(declare-fun e!36366 () Bool)

(assert (=> b!67171 (= e!36366 e!36365)))

(declare-fun c!15400 () Bool)

(assert (=> b!67171 (= c!15400 (or lt!13315 (and (not lt!13315) (is-Literal!30 (rhs!897 f!3724)))))))

(declare-fun b!67172 () Bool)

(declare-fun res!32108 () Bool)

(assert (=> b!67172 (= e!36364 res!32108)))

(assert (=> b!67172 true))

(assert (=> b!67172 true))

(declare-fun b!67173 () Bool)

(assert (=> b!67173 (= e!36370 (simplify!1 (rhs!897 f!3724)))))

(declare-fun d!53466 () Bool)

(assert (=> d!53466 e!36366))

(declare-fun c!15401 () Bool)

(assert (=> d!53466 (= c!15401 (or lt!13315 (is-Literal!30 (rhs!897 f!3724))))))

(declare-fun lt!13314 () Formula!31)

(assert (=> d!53466 (= lt!13314 e!36367)))

(declare-fun c!15396 () Bool)

(assert (=> d!53466 (= c!15396 (or lt!13315 (is-Literal!30 (rhs!897 f!3724))))))

(declare-fun lt!13311 () Bool)

(assert (=> d!53466 (= lt!13311 e!36363)))

(declare-fun c!15397 () Bool)

(assert (=> d!53466 (= c!15397 (or lt!13315 (and (not (is-Literal!30 (rhs!897 f!3724))) (or (is-Implies!36 (rhs!897 f!3724)) (is-Or!36 (rhs!897 f!3724))))))))

(declare-fun lt!13310 () Bool)

(assert (=> d!53466 (= lt!13310 e!36369)))

(declare-fun c!15398 () Bool)

(assert (=> d!53466 (= c!15398 (or lt!13315 (not (is-Literal!30 (rhs!897 f!3724)))))))

(assert (=> d!53466 (= lt!13315 (is-And!36 (rhs!897 f!3724)))))

(assert (=> d!53466 (isNNF!1 (rhs!897 f!3724))))

(assert (=> d!53466 (= (simplifyPreservesNNF!0 (rhs!897 f!3724)) true)))

(declare-fun b!67174 () Bool)

(assert (=> b!67174 (= e!36367 (simplify!1 (rhs!897 f!3724)))))

(declare-fun b!67175 () Bool)

(declare-fun lt!13312 () Formula!31)

(assert (=> b!67175 (= e!36364 (isNNF!1 lt!13312))))

(declare-fun b!67176 () Bool)

(assert (=> b!67176 (= e!36369 (simplifyPreservesNNF!0 (ite lt!13315 (rhs!896 (rhs!897 f!3724)) (ite (is-Implies!36 (rhs!897 f!3724)) (rhs!897 (rhs!897 f!3724)) (ite (is-Or!36 (rhs!897 f!3724)) (rhs!898 (rhs!897 f!3724)) (f!4148 (rhs!897 f!3724)))))))))

(declare-fun b!67177 () Bool)

(declare-fun res!32113 () Bool)

(assert (=> b!67177 (= e!36363 res!32113)))

(assert (=> b!67177 true))

(declare-fun b!67178 () Bool)

(assert (=> b!67178 (= e!36366 e!36368)))

(declare-fun c!15399 () Bool)

(assert (=> b!67178 (= c!15399 (or lt!13313 (is-Or!36 (rhs!897 f!3724))))))

(assert (=> b!67178 (= lt!13312 e!36370)))

(declare-fun c!15395 () Bool)

(assert (=> b!67178 (= c!15395 (or lt!13313 (is-Or!36 (rhs!897 f!3724))))))

(assert (=> b!67178 (= lt!13313 (is-Implies!36 (rhs!897 f!3724)))))

(declare-fun b!67179 () Bool)

(assert (=> b!67179 (= e!36365 (isNNF!1 lt!13314))))

(assert (= (and d!53466 c!15398) b!67176))

(assert (= (and d!53466 (not c!15398)) b!67168))

(assert (= (and d!53466 c!15397) b!67164))

(assert (= (and d!53466 (not c!15397)) b!67177))

(assert (= (and d!53466 c!15396) b!67174))

(assert (= (and d!53466 (not c!15396)) b!67169))

(assert (= (and b!67171 c!15400) b!67179))

(assert (= (and b!67171 (not c!15400)) b!67167))

(assert (= (and b!67178 c!15395) b!67173))

(assert (= (and b!67178 (not c!15395)) b!67166))

(assert (= (and b!67170 c!15402) b!67175))

(assert (= (and b!67170 (not c!15402)) b!67172))

(assert (= (and b!67178 c!15399) b!67170))

(assert (= (and b!67178 (not c!15399)) b!67165))

(assert (= (and d!53466 c!15401) b!67171))

(assert (= (and d!53466 (not c!15401)) b!67178))

(declare-fun m!69881 () Bool)

(assert (=> b!67173 m!69881))

(declare-fun m!69883 () Bool)

(assert (=> b!67179 m!69883))

(assert (=> b!67174 m!69881))

(declare-fun m!69885 () Bool)

(assert (=> b!67176 m!69885))

(assert (=> b!67165 m!69881))

(assert (=> b!67165 m!69881))

(declare-fun m!69887 () Bool)

(assert (=> b!67165 m!69887))

(declare-fun m!69889 () Bool)

(assert (=> b!67175 m!69889))

(declare-fun m!69891 () Bool)

(assert (=> d!53466 m!69891))

(declare-fun m!69893 () Bool)

(assert (=> b!67164 m!69893))

(assert (=> b!67092 d!53466))

(declare-fun b!67180 () Bool)

(declare-fun e!36371 () Bool)

(declare-fun e!36373 () Bool)

(assert (=> b!67180 (= e!36371 e!36373)))

(declare-fun lt!13316 () Bool)

(declare-fun lt!13318 () Bool)

(declare-fun lt!13317 () Bool)

(declare-fun c!15405 () Bool)

(assert (=> b!67180 (= c!15405 (or lt!13316 (and (not lt!13318) (is-Or!36 (simplify!1 f!3724)) lt!13317)))))

(declare-fun b!67181 () Bool)

(declare-fun e!36374 () Bool)

(assert (=> b!67181 (= e!36374 e!36371)))

(declare-fun res!32115 () Bool)

(assert (=> b!67181 (=> (not res!32115) (not e!36371))))

(assert (=> b!67181 (= res!32115 lt!13317)))

(declare-fun b!67182 () Bool)

(declare-fun e!36372 () Bool)

(assert (=> b!67182 (= e!36372 (isNNF!1 (ite lt!13318 (lhs!896 (simplify!1 f!3724)) (lhs!898 (simplify!1 f!3724)))))))

(declare-fun d!53468 () Bool)

(declare-fun c!15403 () Bool)

(assert (=> d!53468 (= c!15403 (or lt!13318 (is-Or!36 (simplify!1 f!3724))))))

(assert (=> d!53468 (= lt!13316 (and lt!13318 lt!13317))))

(assert (=> d!53468 (= lt!13317 e!36372)))

(declare-fun c!15404 () Bool)

(assert (=> d!53468 (= c!15404 (or lt!13318 (is-Or!36 (simplify!1 f!3724))))))

(assert (=> d!53468 (= lt!13318 (is-And!36 (simplify!1 f!3724)))))

(assert (=> d!53468 (= (isNNF!1 (simplify!1 f!3724)) e!36374)))

(declare-fun b!67183 () Bool)

(declare-fun res!32116 () Bool)

(assert (=> b!67183 (= e!36373 res!32116)))

(assert (=> b!67183 true))

(assert (=> b!67183 true))

(declare-fun b!67184 () Bool)

(assert (=> b!67184 (= e!36373 (isNNF!1 (ite lt!13316 (rhs!896 (simplify!1 f!3724)) (rhs!898 (simplify!1 f!3724)))))))

(declare-fun b!67185 () Bool)

(declare-fun res!32114 () Bool)

(assert (=> b!67185 (= e!36372 res!32114)))

(assert (=> b!67185 true))

(declare-fun b!67186 () Bool)

(assert (=> b!67186 (= e!36374 (and (not (is-Implies!36 (simplify!1 f!3724))) (or (and (is-Not!36 (simplify!1 f!3724)) (is-Literal!30 (f!4148 (simplify!1 f!3724)))) (not (is-Not!36 (simplify!1 f!3724))))))))

(assert (= (and d!53468 c!15404) b!67182))

(assert (= (and d!53468 (not c!15404)) b!67185))

(assert (= (and b!67181 res!32115) b!67180))

(assert (= (and b!67180 c!15405) b!67184))

(assert (= (and b!67180 (not c!15405)) b!67183))

(assert (= (and d!53468 c!15403) b!67181))

(assert (= (and d!53468 (not c!15403)) b!67186))

(declare-fun m!69895 () Bool)

(assert (=> b!67182 m!69895))

(declare-fun m!69897 () Bool)

(assert (=> b!67184 m!69897))

(assert (=> b!67094 d!53468))

(declare-fun b!67215 () Bool)

(declare-fun e!36392 () Formula!31)

(declare-fun lt!13338 () Bool)

(assert (=> b!67215 (= e!36392 (simplify!1 (ite lt!13338 (rhs!896 f!3724) (ite (is-Or!36 f!3724) (rhs!898 f!3724) (rhs!897 f!3724)))))))

(declare-fun b!67216 () Bool)

(declare-fun e!36389 () Formula!31)

(declare-fun lt!13337 () Formula!31)

(declare-fun lt!13340 () Formula!31)

(assert (=> b!67216 (= e!36389 (Or!36 lt!13337 lt!13340))))

(declare-fun b!67217 () Bool)

(declare-fun e!36395 () Formula!31)

(assert (=> b!67217 (= e!36395 e!36389)))

(declare-fun c!15425 () Bool)

(declare-fun lt!13343 () Bool)

(assert (=> b!67217 (= c!15425 lt!13343)))

(declare-fun e!36394 () Formula!31)

(assert (=> b!67217 (= lt!13340 e!36394)))

(declare-fun c!15424 () Bool)

(assert (=> b!67217 (= c!15424 (or lt!13343 (is-Implies!36 f!3724)))))

(declare-fun e!36390 () Formula!31)

(assert (=> b!67217 (= lt!13337 e!36390)))

(declare-fun c!15420 () Bool)

(assert (=> b!67217 (= c!15420 (or lt!13343 (is-Implies!36 f!3724) (is-Not!36 f!3724)))))

(assert (=> b!67217 (= lt!13343 (is-Or!36 f!3724))))

(declare-fun b!67218 () Bool)

(declare-fun e!36393 () Formula!31)

(declare-fun res!32142 () Formula!31)

(assert (=> b!67218 (= e!36393 res!32142)))

(assert (=> b!67218 true))

(assert (=> b!67218 true))

(declare-fun b!67219 () Bool)

(declare-fun res!32144 () Formula!31)

(assert (=> b!67219 (= e!36394 res!32144)))

(assert (=> b!67219 true))

(declare-fun b!67220 () Bool)

(declare-fun e!36391 () Formula!31)

(assert (=> b!67220 (= e!36391 (simplify!1 (ite lt!13338 (lhs!896 f!3724) (ite (is-Or!36 f!3724) (lhs!898 f!3724) (ite (is-Implies!36 f!3724) (lhs!897 f!3724) (f!4148 f!3724))))))))

(declare-fun d!53470 () Bool)

(declare-fun lt!13344 () Formula!31)

(declare-fun isSimplified!1 (Formula!31) Bool)

(assert (=> d!53470 (isSimplified!1 lt!13344)))

(assert (=> d!53470 (= lt!13344 e!36395)))

(declare-fun c!15426 () Bool)

(assert (=> d!53470 (= c!15426 lt!13338)))

(declare-fun lt!13341 () Formula!31)

(assert (=> d!53470 (= lt!13341 e!36392)))

(declare-fun c!15422 () Bool)

(assert (=> d!53470 (= c!15422 (or lt!13338 (is-Or!36 f!3724) (is-Implies!36 f!3724)))))

(declare-fun lt!13342 () Formula!31)

(assert (=> d!53470 (= lt!13342 e!36391)))

(declare-fun c!15421 () Bool)

(assert (=> d!53470 (= c!15421 (or lt!13338 (is-Or!36 f!3724) (is-Implies!36 f!3724) (is-Not!36 f!3724)))))

(assert (=> d!53470 (= lt!13338 (is-And!36 f!3724))))

(assert (=> d!53470 (= (simplify!1 f!3724) lt!13344)))

(declare-fun b!67221 () Bool)

(assert (=> b!67221 (= e!36393 lt!13337)))

(declare-fun b!67222 () Bool)

(declare-fun res!32143 () Formula!31)

(assert (=> b!67222 (= e!36392 res!32143)))

(assert (=> b!67222 true))

(declare-fun lt!13339 () Formula!31)

(declare-fun lt!13345 () Bool)

(declare-fun b!67223 () Bool)

(assert (=> b!67223 (= e!36389 (ite lt!13345 (Or!36 (Not!36 lt!13339) lt!13340) (ite (is-Not!36 f!3724) (Not!36 lt!13339) f!3724)))))

(assert (=> b!67223 (= lt!13339 e!36393)))

(declare-fun c!15423 () Bool)

(assert (=> b!67223 (= c!15423 (or lt!13345 (is-Not!36 f!3724)))))

(assert (=> b!67223 (= lt!13345 (is-Implies!36 f!3724))))

(declare-fun b!67224 () Bool)

(assert (=> b!67224 (= e!36394 lt!13341)))

(declare-fun b!67225 () Bool)

(assert (=> b!67225 (= e!36395 (And!36 lt!13342 lt!13341))))

(declare-fun b!67226 () Bool)

(declare-fun res!32145 () Formula!31)

(assert (=> b!67226 (= e!36391 res!32145)))

(assert (=> b!67226 true))

(declare-fun b!67227 () Bool)

(declare-fun res!32146 () Formula!31)

(assert (=> b!67227 (= e!36390 res!32146)))

(assert (=> b!67227 true))

(declare-fun b!67228 () Bool)

(assert (=> b!67228 (= e!36390 lt!13342)))

(assert (= (and d!53470 c!15421) b!67220))

(assert (= (and d!53470 (not c!15421)) b!67226))

(assert (= (and d!53470 c!15422) b!67215))

(assert (= (and d!53470 (not c!15422)) b!67222))

(assert (= (and b!67217 c!15420) b!67228))

(assert (= (and b!67217 (not c!15420)) b!67227))

(assert (= (and b!67217 c!15424) b!67224))

(assert (= (and b!67217 (not c!15424)) b!67219))

(assert (= (and b!67223 c!15423) b!67221))

(assert (= (and b!67223 (not c!15423)) b!67218))

(assert (= (and b!67217 c!15425) b!67216))

(assert (= (and b!67217 (not c!15425)) b!67223))

(assert (= (and d!53470 c!15426) b!67225))

(assert (= (and d!53470 (not c!15426)) b!67217))

(declare-fun m!69899 () Bool)

(assert (=> b!67215 m!69899))

(declare-fun m!69901 () Bool)

(assert (=> b!67220 m!69901))

(declare-fun m!69903 () Bool)

(assert (=> d!53470 m!69903))

(assert (=> b!67094 d!53470))

(push 1)

(assert (not b!67161))

(assert (not b!67139))

(assert (not b!67182))

(assert (not b!67165))

(assert (not b!67164))

(assert (not b!67220))

(assert (not b!67175))

(assert (not b!67138))

(assert (not b!67176))

(assert (not b!67215))

(assert (not b!67184))

(assert (not d!53466))

(assert (not b!67173))

(assert (not d!53462))

(assert (not b!67159))

(assert (not b!67136))

(assert (not b!67137))

(assert (not b!67179))

(assert (not d!53470))

(assert (not b!67128))

(assert (not b!67127))

(assert (not b!67142))

(assert (not b!67174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

