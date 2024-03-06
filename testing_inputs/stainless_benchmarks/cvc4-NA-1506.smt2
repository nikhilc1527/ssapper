; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10220 () Bool)

(assert start!10220)

(declare-fun b!74232 () Bool)

(declare-fun res!36536 () Bool)

(declare-fun e!40119 () Bool)

(assert (=> b!74232 (=> (not res!36536) (not e!40119))))

(declare-fun inductVal!761 () Bool)

(declare-datatypes () ((Formula!75 (Implies!79 (lhs!1338 Formula!75) (rhs!1338 Formula!75)) (And!79 (lhs!1339 Formula!75) (rhs!1339 Formula!75)) (Or!79 (lhs!1340 Formula!75) (rhs!1340 Formula!75)) (Literal!73 (id!4936 (_ BitVec 32))) (Not!79 (f!4676 Formula!75)))))

(declare-fun f!4611 () Formula!75)

(declare-fun nnfIsStable!0 (Formula!75) Bool)

(assert (=> b!74232 (= res!36536 (= inductVal!761 (nnfIsStable!0 (lhs!1339 f!4611))))))

(declare-fun b!74231 () Bool)

(declare-fun res!36535 () Bool)

(assert (=> b!74231 (=> (not res!36535) (not e!40119))))

(declare-fun inductVal!753 () Bool)

(assert (=> b!74231 (= res!36535 (= inductVal!753 (nnfIsStable!0 (rhs!1339 f!4611))))))

(declare-fun res!36537 () Bool)

(assert (=> start!10220 (=> (not res!36537) (not e!40119))))

(declare-fun isNNF!0 (Formula!75) Bool)

(assert (=> start!10220 (= res!36537 (isNNF!0 f!4611))))

(assert (=> start!10220 e!40119))

(assert (=> start!10220 true))

(declare-fun b!74233 () Bool)

(declare-fun nnf!0 (Formula!75) Formula!75)

(assert (=> b!74233 (= e!40119 (not (= (nnf!0 f!4611) f!4611)))))

(declare-fun b!74230 () Bool)

(declare-fun res!36538 () Bool)

(assert (=> b!74230 (=> (not res!36538) (not e!40119))))

(assert (=> b!74230 (= res!36538 (and (not (is-Implies!79 f!4611)) (is-And!79 f!4611)))))

(assert (= (and start!10220 res!36537) b!74230))

(assert (= (and b!74230 res!36538) b!74231))

(assert (= (and b!74231 res!36535) b!74232))

(assert (= (and b!74232 res!36536) b!74233))

(declare-fun m!72918 () Bool)

(assert (=> b!74232 m!72918))

(declare-fun m!72920 () Bool)

(assert (=> b!74231 m!72920))

(declare-fun m!72922 () Bool)

(assert (=> start!10220 m!72922))

(declare-fun m!72924 () Bool)

(assert (=> b!74233 m!72924))

(push 1)

(assert (not b!74232))

(assert (not b!74231))

(assert (not start!10220))

(assert (not b!74233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!74258 () Bool)

(declare-fun e!40133 () Bool)

(assert (=> b!74258 (= e!40133 (= (nnf!0 (lhs!1339 f!4611)) (lhs!1339 f!4611)))))

(declare-fun b!74259 () Bool)

(declare-fun e!40136 () Formula!75)

(assert (=> b!74259 (= e!40133 (= e!40136 (lhs!1339 f!4611)))))

(declare-fun c!18052 () Bool)

(declare-fun lt!15917 () Bool)

(assert (=> b!74259 (= c!18052 (or lt!15917 (is-Or!79 (lhs!1339 f!4611))))))

(declare-fun b!74260 () Bool)

(declare-fun e!40134 () Bool)

(declare-fun lt!15918 () Bool)

(assert (=> b!74260 (= e!40134 (nnfIsStable!0 (ite lt!15918 (lhs!1338 (lhs!1339 f!4611)) (ite (is-And!79 (lhs!1339 f!4611)) (lhs!1339 (lhs!1339 f!4611)) (lhs!1340 (lhs!1339 f!4611))))))))

(declare-fun d!54799 () Bool)

(declare-fun e!40135 () Bool)

(assert (=> d!54799 e!40135))

(declare-fun c!18050 () Bool)

(assert (=> d!54799 (= c!18050 lt!15918)))

(declare-fun lt!15920 () Formula!75)

(declare-fun e!40137 () Formula!75)

(assert (=> d!54799 (= lt!15920 e!40137)))

(declare-fun c!18051 () Bool)

(assert (=> d!54799 (= c!18051 (or lt!15918 (is-And!79 (lhs!1339 f!4611)) (is-Or!79 (lhs!1339 f!4611))))))

(declare-fun lt!15916 () Bool)

(assert (=> d!54799 (= lt!15916 e!40134)))

(declare-fun c!18053 () Bool)

(assert (=> d!54799 (= c!18053 (or lt!15918 (is-And!79 (lhs!1339 f!4611)) (is-Or!79 (lhs!1339 f!4611))))))

(declare-fun lt!15919 () Bool)

(declare-fun e!40132 () Bool)

(assert (=> d!54799 (= lt!15919 e!40132)))

(declare-fun c!18049 () Bool)

(assert (=> d!54799 (= c!18049 (or lt!15918 (is-And!79 (lhs!1339 f!4611)) (is-Or!79 (lhs!1339 f!4611)) (not (is-Literal!73 (lhs!1339 f!4611)))))))

(assert (=> d!54799 (= lt!15918 (is-Implies!79 (lhs!1339 f!4611)))))

(assert (=> d!54799 (isNNF!0 (lhs!1339 f!4611))))

(assert (=> d!54799 (= (nnfIsStable!0 (lhs!1339 f!4611)) true)))

(declare-fun b!74261 () Bool)

(declare-fun res!36570 () Formula!75)

(assert (=> b!74261 (= e!40137 res!36570)))

(assert (=> b!74261 true))

(declare-fun b!74262 () Bool)

(assert (=> b!74262 (= e!40135 (= lt!15920 (lhs!1339 f!4611)))))

(declare-fun b!74263 () Bool)

(declare-fun res!36568 () Formula!75)

(assert (=> b!74263 (= e!40136 res!36568)))

(assert (=> b!74263 true))

(assert (=> b!74263 true))

(declare-fun b!74264 () Bool)

(assert (=> b!74264 (= e!40137 (nnf!0 (lhs!1339 f!4611)))))

(declare-fun b!74265 () Bool)

(declare-fun res!36569 () Bool)

(assert (=> b!74265 (= e!40134 res!36569)))

(assert (=> b!74265 true))

(declare-fun b!74266 () Bool)

(declare-fun res!36571 () Bool)

(assert (=> b!74266 (= e!40132 res!36571)))

(assert (=> b!74266 true))

(declare-fun b!74267 () Bool)

(assert (=> b!74267 (= e!40136 lt!15920)))

(declare-fun b!74268 () Bool)

(assert (=> b!74268 (= e!40132 (nnfIsStable!0 (ite lt!15918 (rhs!1338 (lhs!1339 f!4611)) (ite (is-And!79 (lhs!1339 f!4611)) (rhs!1339 (lhs!1339 f!4611)) (ite (is-Or!79 (lhs!1339 f!4611)) (rhs!1340 (lhs!1339 f!4611)) (f!4676 (lhs!1339 f!4611)))))))))

(declare-fun b!74269 () Bool)

(assert (=> b!74269 (= e!40135 e!40133)))

(declare-fun c!18048 () Bool)

(assert (=> b!74269 (= c!18048 (or lt!15917 (is-Or!79 (lhs!1339 f!4611))))))

(assert (=> b!74269 (= lt!15917 (is-And!79 (lhs!1339 f!4611)))))

(assert (= (and d!54799 c!18049) b!74268))

(assert (= (and d!54799 (not c!18049)) b!74266))

(assert (= (and d!54799 c!18053) b!74260))

(assert (= (and d!54799 (not c!18053)) b!74265))

(assert (= (and d!54799 c!18051) b!74264))

(assert (= (and d!54799 (not c!18051)) b!74261))

(assert (= (and b!74259 c!18052) b!74267))

(assert (= (and b!74259 (not c!18052)) b!74263))

(assert (= (and b!74269 c!18048) b!74259))

(assert (= (and b!74269 (not c!18048)) b!74258))

(assert (= (and d!54799 c!18050) b!74262))

(assert (= (and d!54799 (not c!18050)) b!74269))

(declare-fun m!72926 () Bool)

(assert (=> d!54799 m!72926))

(declare-fun m!72928 () Bool)

(assert (=> b!74258 m!72928))

(assert (=> b!74264 m!72928))

(declare-fun m!72930 () Bool)

(assert (=> b!74268 m!72930))

(declare-fun m!72932 () Bool)

(assert (=> b!74260 m!72932))

(assert (=> b!74232 d!54799))

(declare-fun b!74270 () Bool)

(declare-fun e!40139 () Bool)

(assert (=> b!74270 (= e!40139 (= (nnf!0 (rhs!1339 f!4611)) (rhs!1339 f!4611)))))

(declare-fun b!74271 () Bool)

(declare-fun e!40142 () Formula!75)

(assert (=> b!74271 (= e!40139 (= e!40142 (rhs!1339 f!4611)))))

(declare-fun c!18058 () Bool)

(declare-fun lt!15922 () Bool)

(assert (=> b!74271 (= c!18058 (or lt!15922 (is-Or!79 (rhs!1339 f!4611))))))

(declare-fun b!74272 () Bool)

(declare-fun e!40140 () Bool)

(declare-fun lt!15923 () Bool)

(assert (=> b!74272 (= e!40140 (nnfIsStable!0 (ite lt!15923 (lhs!1338 (rhs!1339 f!4611)) (ite (is-And!79 (rhs!1339 f!4611)) (lhs!1339 (rhs!1339 f!4611)) (lhs!1340 (rhs!1339 f!4611))))))))

(declare-fun d!54801 () Bool)

(declare-fun e!40141 () Bool)

(assert (=> d!54801 e!40141))

(declare-fun c!18056 () Bool)

(assert (=> d!54801 (= c!18056 lt!15923)))

(declare-fun lt!15925 () Formula!75)

(declare-fun e!40143 () Formula!75)

(assert (=> d!54801 (= lt!15925 e!40143)))

(declare-fun c!18057 () Bool)

(assert (=> d!54801 (= c!18057 (or lt!15923 (is-And!79 (rhs!1339 f!4611)) (is-Or!79 (rhs!1339 f!4611))))))

(declare-fun lt!15921 () Bool)

(assert (=> d!54801 (= lt!15921 e!40140)))

(declare-fun c!18059 () Bool)

(assert (=> d!54801 (= c!18059 (or lt!15923 (is-And!79 (rhs!1339 f!4611)) (is-Or!79 (rhs!1339 f!4611))))))

(declare-fun lt!15924 () Bool)

(declare-fun e!40138 () Bool)

(assert (=> d!54801 (= lt!15924 e!40138)))

(declare-fun c!18055 () Bool)

(assert (=> d!54801 (= c!18055 (or lt!15923 (is-And!79 (rhs!1339 f!4611)) (is-Or!79 (rhs!1339 f!4611)) (not (is-Literal!73 (rhs!1339 f!4611)))))))

(assert (=> d!54801 (= lt!15923 (is-Implies!79 (rhs!1339 f!4611)))))

(assert (=> d!54801 (isNNF!0 (rhs!1339 f!4611))))

(assert (=> d!54801 (= (nnfIsStable!0 (rhs!1339 f!4611)) true)))

(declare-fun b!74273 () Bool)

(declare-fun res!36574 () Formula!75)

(assert (=> b!74273 (= e!40143 res!36574)))

(assert (=> b!74273 true))

(declare-fun b!74274 () Bool)

(assert (=> b!74274 (= e!40141 (= lt!15925 (rhs!1339 f!4611)))))

(declare-fun b!74275 () Bool)

(declare-fun res!36572 () Formula!75)

(assert (=> b!74275 (= e!40142 res!36572)))

(assert (=> b!74275 true))

(assert (=> b!74275 true))

(declare-fun b!74276 () Bool)

(assert (=> b!74276 (= e!40143 (nnf!0 (rhs!1339 f!4611)))))

(declare-fun b!74277 () Bool)

(declare-fun res!36573 () Bool)

(assert (=> b!74277 (= e!40140 res!36573)))

(assert (=> b!74277 true))

(declare-fun b!74278 () Bool)

(declare-fun res!36575 () Bool)

(assert (=> b!74278 (= e!40138 res!36575)))

(assert (=> b!74278 true))

(declare-fun b!74279 () Bool)

(assert (=> b!74279 (= e!40142 lt!15925)))

(declare-fun b!74280 () Bool)

(assert (=> b!74280 (= e!40138 (nnfIsStable!0 (ite lt!15923 (rhs!1338 (rhs!1339 f!4611)) (ite (is-And!79 (rhs!1339 f!4611)) (rhs!1339 (rhs!1339 f!4611)) (ite (is-Or!79 (rhs!1339 f!4611)) (rhs!1340 (rhs!1339 f!4611)) (f!4676 (rhs!1339 f!4611)))))))))

(declare-fun b!74281 () Bool)

(assert (=> b!74281 (= e!40141 e!40139)))

(declare-fun c!18054 () Bool)

(assert (=> b!74281 (= c!18054 (or lt!15922 (is-Or!79 (rhs!1339 f!4611))))))

(assert (=> b!74281 (= lt!15922 (is-And!79 (rhs!1339 f!4611)))))

(assert (= (and d!54801 c!18055) b!74280))

(assert (= (and d!54801 (not c!18055)) b!74278))

(assert (= (and d!54801 c!18059) b!74272))

(assert (= (and d!54801 (not c!18059)) b!74277))

(assert (= (and d!54801 c!18057) b!74276))

(assert (= (and d!54801 (not c!18057)) b!74273))

(assert (= (and b!74271 c!18058) b!74279))

(assert (= (and b!74271 (not c!18058)) b!74275))

(assert (= (and b!74281 c!18054) b!74271))

(assert (= (and b!74281 (not c!18054)) b!74270))

(assert (= (and d!54801 c!18056) b!74274))

(assert (= (and d!54801 (not c!18056)) b!74281))

(declare-fun m!72934 () Bool)

(assert (=> d!54801 m!72934))

(declare-fun m!72936 () Bool)

(assert (=> b!74270 m!72936))

(assert (=> b!74276 m!72936))

(declare-fun m!72938 () Bool)

(assert (=> b!74280 m!72938))

(declare-fun m!72940 () Bool)

(assert (=> b!74272 m!72940))

(assert (=> b!74231 d!54801))

(declare-fun b!74330 () Bool)

(declare-fun e!40173 () Bool)

(declare-fun e!40184 () Bool)

(assert (=> b!74330 (= e!40173 e!40184)))

(declare-fun res!36615 () Bool)

(assert (=> b!74330 (=> (not res!36615) (not e!40184))))

(declare-fun lt!15948 () Bool)

(assert (=> b!74330 (= res!36615 (not lt!15948))))

(declare-fun b!74331 () Bool)

(declare-fun e!40172 () Bool)

(declare-fun res!36618 () Bool)

(assert (=> b!74331 (= e!40172 res!36618)))

(assert (=> b!74331 true))

(declare-fun b!74332 () Bool)

(declare-fun e!40183 () Bool)

(declare-fun e!40180 () Bool)

(assert (=> b!74332 (= e!40183 e!40180)))

(declare-fun c!18088 () Bool)

(declare-fun lt!15947 () Bool)

(assert (=> b!74332 (= c!18088 (or lt!15947 (is-Implies!79 f!4611)))))

(declare-fun b!74333 () Bool)

(declare-fun e!40182 () Bool)

(declare-fun e!40174 () Formula!75)

(assert (=> b!74333 (= e!40182 (isNNF!0 e!40174))))

(declare-fun c!18086 () Bool)

(declare-fun lt!15946 () Bool)

(assert (=> b!74333 (= c!18086 lt!15946)))

(declare-fun b!74334 () Bool)

(declare-fun lt!15951 () Bool)

(assert (=> b!74334 (= e!40172 lt!15951)))

(declare-fun d!54803 () Bool)

(declare-fun c!18087 () Bool)

(assert (=> d!54803 (= c!18087 lt!15948)))

(declare-fun lt!15944 () Bool)

(assert (=> d!54803 (= lt!15944 e!40182)))

(declare-fun c!18085 () Bool)

(assert (=> d!54803 (= c!18085 e!40173)))

(declare-fun res!36616 () Bool)

(assert (=> d!54803 (=> res!36616 e!40173)))

(assert (=> d!54803 (= res!36616 lt!15946)))

(assert (=> d!54803 (= lt!15946 (and lt!15948 lt!15951))))

(declare-fun e!40185 () Bool)

(assert (=> d!54803 (= lt!15951 e!40185)))

(declare-fun c!18083 () Bool)

(assert (=> d!54803 (= c!18083 (or lt!15948 (is-Or!79 f!4611) (is-Implies!79 f!4611)))))

(assert (=> d!54803 (= lt!15948 (is-And!79 f!4611))))

(declare-fun e!40175 () Bool)

(assert (=> d!54803 (= (isNNF!0 f!4611) e!40175)))

(declare-fun b!74335 () Bool)

(declare-fun e!40176 () Bool)

(declare-fun res!36617 () Bool)

(assert (=> b!74335 (= e!40176 res!36617)))

(assert (=> b!74335 true))

(declare-fun b!74336 () Bool)

(declare-fun e!40181 () Bool)

(declare-fun e!40177 () Bool)

(assert (=> b!74336 (= e!40181 e!40177)))

(declare-fun res!36610 () Bool)

(assert (=> b!74336 (=> (not res!36610) (not e!40177))))

(declare-fun lt!15949 () Bool)

(assert (=> b!74336 (= res!36610 lt!15949)))

(declare-fun lt!15945 () Bool)

(declare-fun lt!15950 () Bool)

(declare-fun b!74337 () Bool)

(assert (=> b!74337 (= e!40184 (or (and lt!15945 lt!15950) (and (not lt!15945) (is-Implies!79 f!4611) lt!15950)))))

(assert (=> b!74337 (= lt!15950 e!40172)))

(declare-fun c!18084 () Bool)

(assert (=> b!74337 (= c!18084 (or lt!15945 (is-Implies!79 f!4611)))))

(assert (=> b!74337 (= lt!15945 (is-Or!79 f!4611))))

(declare-fun b!74338 () Bool)

(assert (=> b!74338 (= e!40185 (isNNF!0 (ite lt!15948 (lhs!1339 f!4611) (ite (is-Or!79 f!4611) (lhs!1340 f!4611) (lhs!1338 f!4611)))))))

(declare-fun b!74339 () Bool)

(declare-fun res!36612 () Bool)

(assert (=> b!74339 (= e!40182 res!36612)))

(assert (=> b!74339 true))

(declare-fun b!74340 () Bool)

(declare-fun e!40179 () Formula!75)

(assert (=> b!74340 (= e!40179 (rhs!1340 f!4611))))

(declare-fun b!74341 () Bool)

(assert (=> b!74341 (= e!40174 e!40179)))

(declare-fun c!18080 () Bool)

(assert (=> b!74341 (= c!18080 e!40183)))

(declare-fun res!36614 () Bool)

(assert (=> b!74341 (=> (not res!36614) (not e!40183))))

(assert (=> b!74341 (= res!36614 lt!15947)))

(assert (=> b!74341 (= lt!15947 (is-Or!79 f!4611))))

(declare-fun b!74342 () Bool)

(declare-fun res!36613 () Bool)

(assert (=> b!74342 (= e!40180 res!36613)))

(assert (=> b!74342 true))

(declare-fun b!74343 () Bool)

(assert (=> b!74343 (= e!40176 lt!15951)))

(declare-fun b!74344 () Bool)

(declare-fun e!40178 () Bool)

(declare-fun res!36619 () Bool)

(assert (=> b!74344 (= e!40178 res!36619)))

(assert (=> b!74344 true))

(assert (=> b!74344 true))

(declare-fun b!74345 () Bool)

(assert (=> b!74345 (= e!40174 (rhs!1339 f!4611))))

(declare-fun b!74346 () Bool)

(assert (=> b!74346 (= e!40177 e!40178)))

(declare-fun lt!15952 () Bool)

(declare-fun c!18081 () Bool)

(assert (=> b!74346 (= c!18081 (or (and lt!15952 lt!15949) (and (not lt!15952) (is-Implies!79 f!4611) lt!15949)))))

(declare-fun b!74347 () Bool)

(declare-fun res!36611 () Bool)

(assert (=> b!74347 (= e!40185 res!36611)))

(assert (=> b!74347 true))

(declare-fun b!74348 () Bool)

(assert (=> b!74348 (= e!40175 e!40181)))

(declare-fun c!18089 () Bool)

(assert (=> b!74348 (= c!18089 (or lt!15952 (is-Implies!79 f!4611)))))

(assert (=> b!74348 (= lt!15949 e!40176)))

(declare-fun c!18082 () Bool)

(assert (=> b!74348 (= c!18082 (or lt!15952 (is-Implies!79 f!4611)))))

(assert (=> b!74348 (= lt!15952 (is-Or!79 f!4611))))

(declare-fun b!74349 () Bool)

(assert (=> b!74349 (= e!40180 lt!15951)))

(declare-fun b!74350 () Bool)

(assert (=> b!74350 (= e!40179 (rhs!1338 f!4611))))

(declare-fun b!74351 () Bool)

(assert (=> b!74351 (= e!40175 (and lt!15951 lt!15944))))

(declare-fun b!74352 () Bool)

(assert (=> b!74352 (= e!40178 lt!15944)))

(declare-fun b!74353 () Bool)

(assert (=> b!74353 (= e!40181 (or (and (is-Not!79 f!4611) (is-Literal!73 (f!4676 f!4611))) (not (is-Not!79 f!4611))))))

(assert (= (and d!54803 c!18083) b!74338))

(assert (= (and d!54803 (not c!18083)) b!74347))

(assert (= (and d!54803 (not res!36616)) b!74330))

(assert (= (and b!74330 res!36615) b!74337))

(assert (= (and b!74337 c!18084) b!74334))

(assert (= (and b!74337 (not c!18084)) b!74331))

(assert (= (and b!74341 res!36614) b!74332))

(assert (= (and b!74332 c!18088) b!74349))

(assert (= (and b!74332 (not c!18088)) b!74342))

(assert (= (and b!74341 c!18080) b!74340))

(assert (= (and b!74341 (not c!18080)) b!74350))

(assert (= (and b!74333 c!18086) b!74345))

(assert (= (and b!74333 (not c!18086)) b!74341))

(assert (= (and d!54803 c!18085) b!74333))

(assert (= (and d!54803 (not c!18085)) b!74339))

(assert (= (and b!74348 c!18082) b!74343))

(assert (= (and b!74348 (not c!18082)) b!74335))

(assert (= (and b!74336 res!36610) b!74346))

(assert (= (and b!74346 c!18081) b!74352))

(assert (= (and b!74346 (not c!18081)) b!74344))

(assert (= (and b!74348 c!18089) b!74336))

(assert (= (and b!74348 (not c!18089)) b!74353))

(assert (= (and d!54803 c!18087) b!74351))

(assert (= (and d!54803 (not c!18087)) b!74348))

(declare-fun m!72942 () Bool)

(assert (=> b!74333 m!72942))

(declare-fun m!72944 () Bool)

(assert (=> b!74338 m!72944))

(assert (=> start!10220 d!54803))

(declare-fun b!74418 () Bool)

(declare-fun e!40232 () Formula!75)

(declare-fun lt!15994 () Formula!75)

(declare-fun lt!15990 () Formula!75)

(assert (=> b!74418 (= e!40232 (And!79 lt!15994 lt!15990))))

(declare-fun b!74419 () Bool)

(declare-fun e!40231 () Formula!75)

(assert (=> b!74419 (= e!40231 e!40232)))

(declare-fun c!18128 () Bool)

(declare-fun lt!16004 () Bool)

(assert (=> b!74419 (= c!18128 lt!16004)))

(declare-fun e!40225 () Formula!75)

(assert (=> b!74419 (= lt!15990 e!40225)))

(declare-fun c!18136 () Bool)

(assert (=> b!74419 (= c!18136 (or lt!16004 (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611)))))))

(declare-fun e!40222 () Formula!75)

(assert (=> b!74419 (= lt!15994 e!40222)))

(declare-fun c!18129 () Bool)

(assert (=> b!74419 (= c!18129 (or lt!16004 (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> b!74419 (= lt!16004 (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))))))

(declare-fun b!74420 () Bool)

(declare-fun lt!15996 () Bool)

(declare-fun lt!16001 () Formula!75)

(assert (=> b!74420 (= e!40232 (ite lt!15996 (And!79 lt!16001 lt!15990) (ite (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611))) lt!16001 f!4611)))))

(declare-fun e!40228 () Formula!75)

(assert (=> b!74420 (= lt!16001 e!40228)))

(declare-fun c!18133 () Bool)

(assert (=> b!74420 (= c!18133 (or lt!15996 (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> b!74420 (= lt!15996 (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))))))

(declare-fun b!74421 () Bool)

(declare-fun res!36680 () Formula!75)

(assert (=> b!74421 (= e!40225 res!36680)))

(assert (=> b!74421 true))

(declare-fun b!74422 () Bool)

(declare-fun e!40230 () Formula!75)

(declare-fun lt!16000 () Formula!75)

(assert (=> b!74422 (= e!40230 lt!16000)))

(declare-fun b!74423 () Bool)

(declare-fun e!40229 () Formula!75)

(declare-fun lt!16003 () Formula!75)

(assert (=> b!74423 (= e!40229 lt!16003)))

(declare-fun b!74424 () Bool)

(declare-fun e!40218 () Formula!75)

(declare-fun lt!15997 () Formula!75)

(assert (=> b!74424 (= e!40218 lt!15997)))

(declare-fun b!74425 () Bool)

(declare-fun e!40223 () Formula!75)

(declare-fun lt!15989 () Formula!75)

(assert (=> b!74425 (= e!40223 lt!15989)))

(declare-fun b!74426 () Bool)

(declare-fun e!40233 () Formula!75)

(declare-fun lt!16006 () Formula!75)

(assert (=> b!74426 (= e!40233 lt!16006)))

(declare-fun b!74427 () Bool)

(declare-fun e!40221 () Formula!75)

(assert (=> b!74427 (= e!40221 (And!79 lt!15989 lt!16000))))

(declare-fun b!74428 () Bool)

(declare-fun lt!16005 () Formula!75)

(assert (=> b!74428 (= e!40225 lt!16005)))

(declare-fun d!54805 () Bool)

(declare-fun lt!15991 () Formula!75)

(assert (=> d!54805 (isNNF!0 lt!15991)))

(assert (=> d!54805 (= lt!15991 e!40221)))

(declare-fun c!18126 () Bool)

(declare-fun lt!15998 () Bool)

(assert (=> d!54805 (= c!18126 lt!15998)))

(declare-fun e!40219 () Formula!75)

(assert (=> d!54805 (= lt!16000 e!40219)))

(declare-fun c!18132 () Bool)

(assert (=> d!54805 (= c!18132 (or lt!15998 (is-Or!79 f!4611) (is-Implies!79 f!4611) (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611)))))))

(declare-fun e!40227 () Formula!75)

(assert (=> d!54805 (= lt!15989 e!40227)))

(declare-fun c!18130 () Bool)

(assert (=> d!54805 (= c!18130 (or lt!15998 (is-Or!79 f!4611) (is-Implies!79 f!4611) (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> d!54805 (= lt!15998 (is-And!79 f!4611))))

(assert (=> d!54805 (= (nnf!0 f!4611) lt!15991)))

(declare-fun b!74429 () Bool)

(assert (=> b!74429 (= e!40227 (nnf!0 (ite lt!15998 (lhs!1339 f!4611) (ite (is-Or!79 f!4611) (lhs!1340 f!4611) (ite (is-Implies!79 f!4611) (lhs!1338 f!4611) (ite (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (Not!79 (lhs!1339 (f!4676 f!4611))) (ite (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (Not!79 (lhs!1340 (f!4676 f!4611))) (ite (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (lhs!1338 (f!4676 f!4611)) (f!4676 (f!4676 f!4611))))))))))))

(declare-fun b!74430 () Bool)

(declare-fun lt!15992 () Formula!75)

(assert (=> b!74430 (= e!40222 lt!15992)))

(declare-fun b!74431 () Bool)

(declare-fun e!40224 () Formula!75)

(assert (=> b!74431 (= e!40224 (Implies!79 lt!15997 lt!16003))))

(declare-fun b!74432 () Bool)

(assert (=> b!74432 (= e!40228 lt!15994)))

(declare-fun b!74433 () Bool)

(declare-fun res!36685 () Formula!75)

(assert (=> b!74433 (= e!40228 res!36685)))

(assert (=> b!74433 true))

(assert (=> b!74433 true))

(declare-fun b!74434 () Bool)

(declare-fun res!36681 () Formula!75)

(assert (=> b!74434 (= e!40219 res!36681)))

(assert (=> b!74434 true))

(declare-fun b!74435 () Bool)

(assert (=> b!74435 (= e!40224 e!40231)))

(declare-fun c!18122 () Bool)

(declare-fun lt!15999 () Bool)

(assert (=> b!74435 (= c!18122 lt!15999)))

(assert (=> b!74435 (= lt!16005 e!40229)))

(declare-fun c!18127 () Bool)

(assert (=> b!74435 (= c!18127 (or lt!15999 (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611)))))))

(assert (=> b!74435 (= lt!15992 e!40218)))

(declare-fun c!18124 () Bool)

(assert (=> b!74435 (= c!18124 (or lt!15999 (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> b!74435 (= lt!15999 (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))))))

(declare-fun b!74436 () Bool)

(declare-fun e!40220 () Formula!75)

(declare-fun res!36675 () Formula!75)

(assert (=> b!74436 (= e!40220 res!36675)))

(assert (=> b!74436 true))

(declare-fun b!74437 () Bool)

(declare-fun res!36679 () Formula!75)

(assert (=> b!74437 (= e!40233 res!36679)))

(assert (=> b!74437 true))

(declare-fun b!74438 () Bool)

(declare-fun res!36678 () Formula!75)

(assert (=> b!74438 (= e!40223 res!36678)))

(assert (=> b!74438 true))

(declare-fun b!74439 () Bool)

(assert (=> b!74439 (= e!40219 (nnf!0 (ite lt!15998 (rhs!1339 f!4611) (ite (is-Or!79 f!4611) (rhs!1340 f!4611) (ite (is-Implies!79 f!4611) (rhs!1338 f!4611) (ite (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (Not!79 (rhs!1339 (f!4676 f!4611))) (ite (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (Not!79 (rhs!1340 (f!4676 f!4611))) (Not!79 (rhs!1338 (f!4676 f!4611))))))))))))

(declare-fun b!74440 () Bool)

(assert (=> b!74440 (= e!40231 (Or!79 lt!15992 lt!16005))))

(declare-fun b!74441 () Bool)

(declare-fun res!36683 () Formula!75)

(assert (=> b!74441 (= e!40218 res!36683)))

(assert (=> b!74441 true))

(declare-fun b!74442 () Bool)

(declare-fun res!36684 () Formula!75)

(assert (=> b!74442 (= e!40227 res!36684)))

(assert (=> b!74442 true))

(declare-fun b!74443 () Bool)

(declare-fun res!36676 () Formula!75)

(assert (=> b!74443 (= e!40230 res!36676)))

(assert (=> b!74443 true))

(declare-fun b!74444 () Bool)

(declare-fun lt!15995 () Formula!75)

(assert (=> b!74444 (= e!40220 lt!15995)))

(declare-fun b!74445 () Bool)

(declare-fun res!36682 () Formula!75)

(assert (=> b!74445 (= e!40222 res!36682)))

(assert (=> b!74445 true))

(declare-fun b!74446 () Bool)

(declare-fun res!36677 () Formula!75)

(assert (=> b!74446 (= e!40229 res!36677)))

(assert (=> b!74446 true))

(declare-fun b!74447 () Bool)

(declare-fun e!40226 () Formula!75)

(assert (=> b!74447 (= e!40226 (Or!79 lt!15995 lt!16006))))

(declare-fun b!74448 () Bool)

(assert (=> b!74448 (= e!40221 e!40226)))

(declare-fun c!18131 () Bool)

(declare-fun lt!16002 () Bool)

(assert (=> b!74448 (= c!18131 lt!16002)))

(assert (=> b!74448 (= lt!16006 e!40230)))

(declare-fun c!18137 () Bool)

(assert (=> b!74448 (= c!18137 (or lt!16002 (is-Implies!79 f!4611) (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611)))))))

(assert (=> b!74448 (= lt!15995 e!40223)))

(declare-fun c!18125 () Bool)

(assert (=> b!74448 (= c!18125 (or lt!16002 (is-Implies!79 f!4611) (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> b!74448 (= lt!16002 (is-Or!79 f!4611))))

(declare-fun b!74449 () Bool)

(assert (=> b!74449 (= e!40226 e!40224)))

(declare-fun c!18123 () Bool)

(declare-fun lt!15993 () Bool)

(assert (=> b!74449 (= c!18123 lt!15993)))

(assert (=> b!74449 (= lt!16003 e!40233)))

(declare-fun c!18135 () Bool)

(assert (=> b!74449 (= c!18135 (or lt!15993 (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611)))))))

(assert (=> b!74449 (= lt!15997 e!40220)))

(declare-fun c!18134 () Bool)

(assert (=> b!74449 (= c!18134 (or lt!15993 (and (is-Not!79 f!4611) (is-And!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Or!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Implies!79 (f!4676 f!4611))) (and (is-Not!79 f!4611) (is-Not!79 (f!4676 f!4611)))))))

(assert (=> b!74449 (= lt!15993 (is-Implies!79 f!4611))))

(assert (= (and d!54805 c!18130) b!74429))

(assert (= (and d!54805 (not c!18130)) b!74442))

(assert (= (and d!54805 c!18132) b!74439))

(assert (= (and d!54805 (not c!18132)) b!74434))

(assert (= (and b!74448 c!18125) b!74425))

(assert (= (and b!74448 (not c!18125)) b!74438))

(assert (= (and b!74448 c!18137) b!74422))

(assert (= (and b!74448 (not c!18137)) b!74443))

(assert (= (and b!74449 c!18134) b!74444))

(assert (= (and b!74449 (not c!18134)) b!74436))

(assert (= (and b!74449 c!18135) b!74426))

(assert (= (and b!74449 (not c!18135)) b!74437))

(assert (= (and b!74435 c!18124) b!74424))

(assert (= (and b!74435 (not c!18124)) b!74441))

(assert (= (and b!74435 c!18127) b!74423))

(assert (= (and b!74435 (not c!18127)) b!74446))

(assert (= (and b!74419 c!18129) b!74430))

(assert (= (and b!74419 (not c!18129)) b!74445))

(assert (= (and b!74419 c!18136) b!74428))

(assert (= (and b!74419 (not c!18136)) b!74421))

(assert (= (and b!74420 c!18133) b!74432))

(assert (= (and b!74420 (not c!18133)) b!74433))

(assert (= (and b!74419 c!18128) b!74418))

(assert (= (and b!74419 (not c!18128)) b!74420))

(assert (= (and b!74435 c!18122) b!74440))

(assert (= (and b!74435 (not c!18122)) b!74419))

(assert (= (and b!74449 c!18123) b!74431))

(assert (= (and b!74449 (not c!18123)) b!74435))

(assert (= (and b!74448 c!18131) b!74447))

(assert (= (and b!74448 (not c!18131)) b!74449))

(assert (= (and d!54805 c!18126) b!74427))

(assert (= (and d!54805 (not c!18126)) b!74448))

(declare-fun m!72946 () Bool)

(assert (=> d!54805 m!72946))

(declare-fun m!72948 () Bool)

(assert (=> b!74429 m!72948))

(declare-fun m!72950 () Bool)

(assert (=> b!74439 m!72950))

(assert (=> b!74233 d!54805))

(push 1)

(assert (not b!74264))

(assert (not b!74280))

(assert (not d!54799))

(assert (not b!74260))

(assert (not b!74429))

(assert (not b!74268))

(assert (not b!74276))

(assert (not b!74338))

(assert (not b!74258))

(assert (not b!74272))

(assert (not b!74270))

(assert (not b!74439))

(assert (not d!54805))

(assert (not b!74333))

(assert (not d!54801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

