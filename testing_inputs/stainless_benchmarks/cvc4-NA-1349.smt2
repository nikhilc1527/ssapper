; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9466 () Bool)

(assert start!9466)

(declare-fun res!33651 () Bool)

(declare-fun e!37481 () Bool)

(assert (=> start!9466 (=> (not res!33651) (not e!37481))))

(declare-datatypes () ((Formula!49 (And!54 (lhs!950 Formula!49) (rhs!950 Formula!49)) (Literal!48 (id!4829 Int)) (Implies!54 (lhs!951 Formula!49) (rhs!951 Formula!49)) (Or!54 (lhs!952 Formula!49) (rhs!952 Formula!49)) (Not!54 (f!4206 Formula!49)))))

(declare-fun f!3853 () Formula!49)

(assert (=> start!9466 (= res!33651 (and (not (is-And!54 f!3853)) (not (is-Or!54 f!3853)) (not (is-Implies!54 f!3853)) (is-Not!54 f!3853)))))

(assert (=> start!9466 e!37481))

(assert (=> start!9466 true))

(declare-fun b!69254 () Bool)

(declare-fun res!33652 () Bool)

(assert (=> b!69254 (=> (not res!33652) (not e!37481))))

(declare-fun x$1!894 () Formula!49)

(declare-fun simplify!1 (Formula!49) Formula!49)

(assert (=> b!69254 (= res!33652 (= x$1!894 (Not!54 (simplify!1 (f!4206 f!3853)))))))

(declare-fun b!69255 () Bool)

(declare-fun isSimplified!1 (Formula!49) Bool)

(assert (=> b!69255 (= e!37481 (not (isSimplified!1 x$1!894)))))

(assert (= (and start!9466 res!33651) b!69254))

(assert (= (and b!69254 res!33652) b!69255))

(declare-fun m!70435 () Bool)

(assert (=> b!69254 m!70435))

(declare-fun m!70437 () Bool)

(assert (=> b!69255 m!70437))

(push 1)

(assert (not b!69255))

(assert (not b!69254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!69282 () Bool)

(declare-fun e!37499 () Bool)

(declare-fun e!37504 () Bool)

(assert (=> b!69282 (= e!37499 e!37504)))

(declare-fun res!33678 () Bool)

(assert (=> b!69282 (=> (not res!33678) (not e!37504))))

(declare-fun lt!14380 () Bool)

(assert (=> b!69282 (= res!33678 (not lt!14380))))

(declare-fun b!69283 () Bool)

(declare-fun e!37503 () Bool)

(declare-fun lt!14379 () Bool)

(assert (=> b!69283 (= e!37503 lt!14379)))

(declare-fun b!69284 () Bool)

(declare-fun e!37502 () Bool)

(declare-fun res!33679 () Bool)

(assert (=> b!69284 (= e!37502 res!33679)))

(assert (=> b!69284 true))

(declare-fun b!69285 () Bool)

(declare-fun e!37498 () Bool)

(assert (=> b!69285 (= e!37504 e!37498)))

(declare-fun res!33682 () Bool)

(assert (=> b!69285 (=> (not res!33682) (not e!37498))))

(declare-fun lt!14382 () Bool)

(assert (=> b!69285 (= res!33682 lt!14382)))

(assert (=> b!69285 (= lt!14382 (is-Or!54 x$1!894))))

(declare-fun b!69286 () Bool)

(assert (=> b!69286 (= e!37502 (isSimplified!1 (ite lt!14380 (lhs!950 x$1!894) (ite (is-Or!54 x$1!894) (lhs!952 x$1!894) (f!4206 x$1!894)))))))

(declare-fun b!69287 () Bool)

(declare-fun e!37500 () Bool)

(declare-fun lt!14384 () Bool)

(assert (=> b!69287 (= e!37500 (and lt!14379 lt!14384))))

(declare-fun b!69288 () Bool)

(declare-fun e!37505 () Bool)

(declare-fun lt!14381 () Bool)

(assert (=> b!69288 (= e!37505 (isSimplified!1 (ite lt!14381 (rhs!950 x$1!894) (rhs!952 x$1!894))))))

(declare-fun b!69289 () Bool)

(declare-fun res!33684 () Bool)

(assert (=> b!69289 (= e!37505 res!33684)))

(assert (=> b!69289 true))

(declare-fun b!69290 () Bool)

(declare-fun lt!14383 () Bool)

(declare-fun lt!14385 () Bool)

(assert (=> b!69290 (= e!37500 (ite lt!14385 (and lt!14383 lt!14384) (and (not (is-Implies!54 x$1!894)) (or (not (is-Not!54 x$1!894)) lt!14383))))))

(assert (=> b!69290 (= lt!14383 e!37503)))

(declare-fun c!16280 () Bool)

(assert (=> b!69290 (= c!16280 (or lt!14385 (and (not (is-Implies!54 x$1!894)) (is-Not!54 x$1!894))))))

(assert (=> b!69290 (= lt!14385 (is-Or!54 x$1!894))))

(declare-fun b!69291 () Bool)

(declare-fun e!37501 () Bool)

(assert (=> b!69291 (= e!37501 lt!14379)))

(declare-fun b!69292 () Bool)

(declare-fun res!33680 () Bool)

(assert (=> b!69292 (= e!37503 res!33680)))

(assert (=> b!69292 true))

(assert (=> b!69292 true))

(declare-fun d!53620 () Bool)

(declare-fun c!16278 () Bool)

(assert (=> d!53620 (= c!16278 lt!14380)))

(assert (=> d!53620 (= lt!14384 e!37505)))

(declare-fun c!16277 () Bool)

(assert (=> d!53620 (= c!16277 e!37499)))

(declare-fun res!33683 () Bool)

(assert (=> d!53620 (=> res!33683 e!37499)))

(assert (=> d!53620 (= res!33683 lt!14381)))

(assert (=> d!53620 (= lt!14381 (and lt!14380 lt!14379))))

(assert (=> d!53620 (= lt!14379 e!37502)))

(declare-fun c!16279 () Bool)

(assert (=> d!53620 (= c!16279 (or lt!14380 (is-Or!54 x$1!894) (and (not (is-Implies!54 x$1!894)) (is-Not!54 x$1!894))))))

(assert (=> d!53620 (= lt!14380 (is-And!54 x$1!894))))

(assert (=> d!53620 (= (isSimplified!1 x$1!894) e!37500)))

(declare-fun b!69293 () Bool)

(assert (=> b!69293 (= e!37498 e!37501)))

(declare-fun c!16276 () Bool)

(assert (=> b!69293 (= c!16276 (or lt!14382 (and (not (is-Implies!54 x$1!894)) (is-Not!54 x$1!894))))))

(declare-fun b!69294 () Bool)

(declare-fun res!33681 () Bool)

(assert (=> b!69294 (= e!37501 res!33681)))

(assert (=> b!69294 true))

(assert (= (and d!53620 c!16279) b!69286))

(assert (= (and d!53620 (not c!16279)) b!69284))

(assert (= (and d!53620 (not res!33683)) b!69282))

(assert (= (and b!69282 res!33678) b!69285))

(assert (= (and b!69285 res!33682) b!69293))

(assert (= (and b!69293 c!16276) b!69291))

(assert (= (and b!69293 (not c!16276)) b!69294))

(assert (= (and d!53620 c!16277) b!69288))

(assert (= (and d!53620 (not c!16277)) b!69289))

(assert (= (and b!69290 c!16280) b!69283))

(assert (= (and b!69290 (not c!16280)) b!69292))

(assert (= (and d!53620 c!16278) b!69287))

(assert (= (and d!53620 (not c!16278)) b!69290))

(declare-fun m!70439 () Bool)

(assert (=> b!69286 m!70439))

(declare-fun m!70441 () Bool)

(assert (=> b!69288 m!70441))

(assert (=> b!69255 d!53620))

(declare-fun b!69323 () Bool)

(declare-fun e!37526 () Formula!49)

(declare-fun e!37520 () Formula!49)

(assert (=> b!69323 (= e!37526 e!37520)))

(declare-fun c!16300 () Bool)

(declare-fun lt!14405 () Bool)

(assert (=> b!69323 (= c!16300 lt!14405)))

(declare-fun lt!14406 () Formula!49)

(declare-fun e!37521 () Formula!49)

(assert (=> b!69323 (= lt!14406 e!37521)))

(declare-fun c!16296 () Bool)

(assert (=> b!69323 (= c!16296 (or lt!14405 (is-Implies!54 (f!4206 f!3853))))))

(declare-fun lt!14404 () Formula!49)

(declare-fun e!37525 () Formula!49)

(assert (=> b!69323 (= lt!14404 e!37525)))

(declare-fun c!16301 () Bool)

(assert (=> b!69323 (= c!16301 (or lt!14405 (is-Implies!54 (f!4206 f!3853)) (is-Not!54 (f!4206 f!3853))))))

(assert (=> b!69323 (= lt!14405 (is-Or!54 (f!4206 f!3853)))))

(declare-fun b!69324 () Bool)

(declare-fun e!37522 () Formula!49)

(declare-fun res!33712 () Formula!49)

(assert (=> b!69324 (= e!37522 res!33712)))

(assert (=> b!69324 true))

(declare-fun b!69325 () Bool)

(declare-fun res!33711 () Formula!49)

(assert (=> b!69325 (= e!37525 res!33711)))

(assert (=> b!69325 true))

(declare-fun b!69326 () Bool)

(declare-fun e!37523 () Formula!49)

(declare-fun res!33713 () Formula!49)

(assert (=> b!69326 (= e!37523 res!33713)))

(assert (=> b!69326 true))

(assert (=> b!69326 true))

(declare-fun b!69327 () Bool)

(declare-fun res!33714 () Formula!49)

(assert (=> b!69327 (= e!37521 res!33714)))

(assert (=> b!69327 true))

(declare-fun d!53622 () Bool)

(declare-fun lt!14409 () Formula!49)

(assert (=> d!53622 (isSimplified!1 lt!14409)))

(assert (=> d!53622 (= lt!14409 e!37526)))

(declare-fun c!16299 () Bool)

(declare-fun lt!14411 () Bool)

(assert (=> d!53622 (= c!16299 lt!14411)))

(declare-fun lt!14407 () Formula!49)

(declare-fun e!37524 () Formula!49)

(assert (=> d!53622 (= lt!14407 e!37524)))

(declare-fun c!16297 () Bool)

(assert (=> d!53622 (= c!16297 (or lt!14411 (is-Or!54 (f!4206 f!3853)) (is-Implies!54 (f!4206 f!3853))))))

(declare-fun lt!14410 () Formula!49)

(assert (=> d!53622 (= lt!14410 e!37522)))

(declare-fun c!16295 () Bool)

(assert (=> d!53622 (= c!16295 (or lt!14411 (is-Or!54 (f!4206 f!3853)) (is-Implies!54 (f!4206 f!3853)) (is-Not!54 (f!4206 f!3853))))))

(assert (=> d!53622 (= lt!14411 (is-And!54 (f!4206 f!3853)))))

(assert (=> d!53622 (= (simplify!1 (f!4206 f!3853)) lt!14409)))

(declare-fun b!69328 () Bool)

(assert (=> b!69328 (= e!37523 lt!14404)))

(declare-fun b!69329 () Bool)

(assert (=> b!69329 (= e!37521 lt!14407)))

(declare-fun b!69330 () Bool)

(assert (=> b!69330 (= e!37522 (simplify!1 (ite lt!14411 (lhs!950 (f!4206 f!3853)) (ite (is-Or!54 (f!4206 f!3853)) (lhs!952 (f!4206 f!3853)) (ite (is-Implies!54 (f!4206 f!3853)) (lhs!951 (f!4206 f!3853)) (f!4206 (f!4206 f!3853)))))))))

(declare-fun lt!14412 () Formula!49)

(declare-fun lt!14408 () Bool)

(declare-fun b!69331 () Bool)

(assert (=> b!69331 (= e!37520 (ite lt!14408 (Or!54 (Not!54 lt!14412) lt!14406) (ite (is-Not!54 (f!4206 f!3853)) (Not!54 lt!14412) (f!4206 f!3853))))))

(assert (=> b!69331 (= lt!14412 e!37523)))

(declare-fun c!16298 () Bool)

(assert (=> b!69331 (= c!16298 (or lt!14408 (is-Not!54 (f!4206 f!3853))))))

(assert (=> b!69331 (= lt!14408 (is-Implies!54 (f!4206 f!3853)))))

(declare-fun b!69332 () Bool)

(assert (=> b!69332 (= e!37524 (simplify!1 (ite lt!14411 (rhs!950 (f!4206 f!3853)) (ite (is-Or!54 (f!4206 f!3853)) (rhs!952 (f!4206 f!3853)) (rhs!951 (f!4206 f!3853))))))))

(declare-fun b!69333 () Bool)

(assert (=> b!69333 (= e!37520 (Or!54 lt!14404 lt!14406))))

(declare-fun b!69334 () Bool)

(declare-fun res!33710 () Formula!49)

(assert (=> b!69334 (= e!37524 res!33710)))

(assert (=> b!69334 true))

(declare-fun b!69335 () Bool)

(assert (=> b!69335 (= e!37526 (And!54 lt!14410 lt!14407))))

(declare-fun b!69336 () Bool)

(assert (=> b!69336 (= e!37525 lt!14410)))

(assert (= (and d!53622 c!16295) b!69330))

(assert (= (and d!53622 (not c!16295)) b!69324))

(assert (= (and d!53622 c!16297) b!69332))

(assert (= (and d!53622 (not c!16297)) b!69334))

(assert (= (and b!69323 c!16301) b!69336))

(assert (= (and b!69323 (not c!16301)) b!69325))

(assert (= (and b!69323 c!16296) b!69329))

(assert (= (and b!69323 (not c!16296)) b!69327))

(assert (= (and b!69331 c!16298) b!69328))

(assert (= (and b!69331 (not c!16298)) b!69326))

(assert (= (and b!69323 c!16300) b!69333))

(assert (= (and b!69323 (not c!16300)) b!69331))

(assert (= (and d!53622 c!16299) b!69335))

(assert (= (and d!53622 (not c!16299)) b!69323))

(declare-fun m!70443 () Bool)

(assert (=> d!53622 m!70443))

(declare-fun m!70445 () Bool)

(assert (=> b!69330 m!70445))

(declare-fun m!70447 () Bool)

(assert (=> b!69332 m!70447))

(assert (=> b!69254 d!53622))

(push 1)

(assert (not b!69332))

(assert (not b!69330))

(assert (not b!69288))

(assert (not b!69286))

(assert (not d!53622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

