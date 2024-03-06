; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10264 () Bool)

(assert start!10264)

(declare-fun res!37295 () Bool)

(declare-fun e!40680 () Bool)

(assert (=> start!10264 (=> (not res!37295) (not e!40680))))

(declare-datatypes () ((Formula!82 (Implies!86 (lhs!1359 Formula!82) (rhs!1359 Formula!82)) (And!86 (lhs!1360 Formula!82) (rhs!1360 Formula!82)) (Or!86 (lhs!1361 Formula!82) (rhs!1361 Formula!82)) (Literal!80 (id!4943 (_ BitVec 32))) (Not!86 (f!4694 Formula!82)))))

(declare-fun f!4460 () Formula!82)

(declare-fun isSimplified!0 (Formula!82) Bool)

(assert (=> start!10264 (= res!37295 (isSimplified!0 f!4460))))

(assert (=> start!10264 e!40680))

(assert (=> start!10264 true))

(declare-fun b!75289 () Bool)

(declare-fun res!37298 () Bool)

(assert (=> b!75289 (=> (not res!37298) (not e!40680))))

(assert (=> b!75289 (= res!37298 (and (not (is-Implies!86 f!4460)) (is-And!86 f!4460)))))

(declare-fun b!75291 () Bool)

(declare-fun res!37296 () Bool)

(assert (=> b!75291 (=> (not res!37296) (not e!40680))))

(declare-fun f!4477 () Formula!82)

(assert (=> b!75291 (= res!37296 (= f!4477 (lhs!1360 f!4460)))))

(declare-fun b!75292 () Bool)

(assert (=> b!75292 (= e!40680 (not (isSimplified!0 f!4477)))))

(declare-fun b!75290 () Bool)

(declare-fun res!37297 () Bool)

(assert (=> b!75290 (=> (not res!37297) (not e!40680))))

(declare-fun inductVal!697 () Bool)

(declare-fun simplifyIsStable!0 (Formula!82) Bool)

(assert (=> b!75290 (= res!37297 (= inductVal!697 (simplifyIsStable!0 (rhs!1360 f!4460))))))

(assert (= (and start!10264 res!37295) b!75289))

(assert (= (and b!75289 res!37298) b!75290))

(assert (= (and b!75290 res!37297) b!75291))

(assert (= (and b!75291 res!37296) b!75292))

(declare-fun m!73070 () Bool)

(assert (=> start!10264 m!73070))

(declare-fun m!73072 () Bool)

(assert (=> b!75292 m!73072))

(declare-fun m!73074 () Bool)

(assert (=> b!75290 m!73074))

(push 1)

(assert (not b!75290))

(assert (not b!75292))

(assert (not start!10264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75317 () Bool)

(declare-fun e!40695 () Formula!82)

(declare-fun res!37328 () Formula!82)

(assert (=> b!75317 (= e!40695 res!37328)))

(assert (=> b!75317 true))

(assert (=> b!75317 true))

(declare-fun b!75318 () Bool)

(declare-fun e!40697 () Bool)

(declare-fun lt!16395 () Bool)

(assert (=> b!75318 (= e!40697 (simplifyIsStable!0 (ite lt!16395 (rhs!1359 (rhs!1360 f!4460)) (ite (is-And!86 (rhs!1360 f!4460)) (rhs!1360 (rhs!1360 f!4460)) (ite (is-Or!86 (rhs!1360 f!4460)) (rhs!1361 (rhs!1360 f!4460)) (f!4694 (rhs!1360 f!4460)))))))))

(declare-fun d!54839 () Bool)

(declare-fun e!40696 () Bool)

(assert (=> d!54839 e!40696))

(declare-fun c!18504 () Bool)

(assert (=> d!54839 (= c!18504 lt!16395)))

(declare-fun lt!16396 () Formula!82)

(declare-fun e!40698 () Formula!82)

(assert (=> d!54839 (= lt!16396 e!40698)))

(declare-fun c!18508 () Bool)

(assert (=> d!54839 (= c!18508 (or lt!16395 (is-And!86 (rhs!1360 f!4460)) (is-Or!86 (rhs!1360 f!4460))))))

(declare-fun lt!16398 () Bool)

(declare-fun e!40694 () Bool)

(assert (=> d!54839 (= lt!16398 e!40694)))

(declare-fun c!18506 () Bool)

(assert (=> d!54839 (= c!18506 (or lt!16395 (is-And!86 (rhs!1360 f!4460)) (is-Or!86 (rhs!1360 f!4460))))))

(declare-fun lt!16394 () Bool)

(assert (=> d!54839 (= lt!16394 e!40697)))

(declare-fun c!18507 () Bool)

(assert (=> d!54839 (= c!18507 (or lt!16395 (is-And!86 (rhs!1360 f!4460)) (is-Or!86 (rhs!1360 f!4460)) (not (is-Literal!80 (rhs!1360 f!4460)))))))

(assert (=> d!54839 (= lt!16395 (is-Implies!86 (rhs!1360 f!4460)))))

(assert (=> d!54839 (isSimplified!0 (rhs!1360 f!4460))))

(assert (=> d!54839 (= (simplifyIsStable!0 (rhs!1360 f!4460)) true)))

(declare-fun b!75319 () Bool)

(declare-fun simplify!0 (Formula!82) Formula!82)

(assert (=> b!75319 (= e!40698 (simplify!0 (rhs!1360 f!4460)))))

(declare-fun b!75320 () Bool)

(declare-fun e!40693 () Bool)

(assert (=> b!75320 (= e!40693 (= e!40695 (rhs!1360 f!4460)))))

(declare-fun c!18509 () Bool)

(declare-fun lt!16397 () Bool)

(assert (=> b!75320 (= c!18509 (or lt!16397 (is-Or!86 (rhs!1360 f!4460))))))

(declare-fun b!75321 () Bool)

(assert (=> b!75321 (= e!40694 (simplifyIsStable!0 (ite lt!16395 (lhs!1359 (rhs!1360 f!4460)) (ite (is-And!86 (rhs!1360 f!4460)) (lhs!1360 (rhs!1360 f!4460)) (lhs!1361 (rhs!1360 f!4460))))))))

(declare-fun b!75322 () Bool)

(assert (=> b!75322 (= e!40693 (= (simplify!0 (rhs!1360 f!4460)) (rhs!1360 f!4460)))))

(declare-fun b!75323 () Bool)

(declare-fun res!37330 () Formula!82)

(assert (=> b!75323 (= e!40698 res!37330)))

(assert (=> b!75323 true))

(declare-fun b!75324 () Bool)

(assert (=> b!75324 (= e!40696 (= lt!16396 (rhs!1360 f!4460)))))

(declare-fun b!75325 () Bool)

(assert (=> b!75325 (= e!40695 lt!16396)))

(declare-fun b!75326 () Bool)

(declare-fun res!37331 () Bool)

(assert (=> b!75326 (= e!40694 res!37331)))

(assert (=> b!75326 true))

(declare-fun b!75327 () Bool)

(assert (=> b!75327 (= e!40696 e!40693)))

(declare-fun c!18505 () Bool)

(assert (=> b!75327 (= c!18505 (or lt!16397 (is-Or!86 (rhs!1360 f!4460))))))

(assert (=> b!75327 (= lt!16397 (is-And!86 (rhs!1360 f!4460)))))

(declare-fun b!75328 () Bool)

(declare-fun res!37329 () Bool)

(assert (=> b!75328 (= e!40697 res!37329)))

(assert (=> b!75328 true))

(assert (= (and d!54839 c!18507) b!75318))

(assert (= (and d!54839 (not c!18507)) b!75328))

(assert (= (and d!54839 c!18506) b!75321))

(assert (= (and d!54839 (not c!18506)) b!75326))

(assert (= (and d!54839 c!18508) b!75319))

(assert (= (and d!54839 (not c!18508)) b!75323))

(assert (= (and b!75320 c!18509) b!75325))

(assert (= (and b!75320 (not c!18509)) b!75317))

(assert (= (and b!75327 c!18505) b!75320))

(assert (= (and b!75327 (not c!18505)) b!75322))

(assert (= (and d!54839 c!18504) b!75324))

(assert (= (and d!54839 (not c!18504)) b!75327))

(declare-fun m!73076 () Bool)

(assert (=> b!75322 m!73076))

(declare-fun m!73078 () Bool)

(assert (=> b!75318 m!73078))

(assert (=> b!75319 m!73076))

(declare-fun m!73080 () Bool)

(assert (=> b!75321 m!73080))

(declare-fun m!73082 () Bool)

(assert (=> d!54839 m!73082))

(assert (=> b!75290 d!54839))

(declare-fun b!75355 () Bool)

(declare-fun e!40721 () Bool)

(declare-fun res!37362 () Bool)

(assert (=> b!75355 (= e!40721 res!37362)))

(assert (=> b!75355 true))

(declare-fun b!75356 () Bool)

(declare-fun lt!16413 () Bool)

(assert (=> b!75356 (= e!40721 (isSimplified!0 (ite lt!16413 (rhs!1360 f!4477) (rhs!1361 f!4477))))))

(declare-fun b!75357 () Bool)

(declare-fun e!40716 () Bool)

(declare-fun e!40722 () Bool)

(assert (=> b!75357 (= e!40716 e!40722)))

(declare-fun c!18524 () Bool)

(declare-fun lt!16419 () Bool)

(assert (=> b!75357 (= c!18524 (or lt!16419 (and (not (is-Implies!86 f!4477)) (is-Not!86 f!4477))))))

(declare-fun b!75358 () Bool)

(declare-fun e!40720 () Bool)

(declare-fun e!40719 () Bool)

(assert (=> b!75358 (= e!40720 e!40719)))

(declare-fun res!37358 () Bool)

(assert (=> b!75358 (=> (not res!37358) (not e!40719))))

(declare-fun lt!16415 () Bool)

(assert (=> b!75358 (= res!37358 (not lt!16415))))

(declare-fun b!75359 () Bool)

(declare-fun e!40717 () Bool)

(declare-fun lt!16414 () Bool)

(declare-fun lt!16417 () Bool)

(assert (=> b!75359 (= e!40717 (and lt!16414 lt!16417))))

(declare-fun b!75360 () Bool)

(declare-fun e!40718 () Bool)

(assert (=> b!75360 (= e!40718 (isSimplified!0 (ite lt!16415 (lhs!1360 f!4477) (ite (is-Or!86 f!4477) (lhs!1361 f!4477) (f!4694 f!4477)))))))

(declare-fun b!75361 () Bool)

(declare-fun res!37357 () Bool)

(assert (=> b!75361 (= e!40718 res!37357)))

(assert (=> b!75361 true))

(declare-fun lt!16416 () Bool)

(declare-fun lt!16418 () Bool)

(declare-fun b!75362 () Bool)

(assert (=> b!75362 (= e!40717 (ite lt!16416 (and lt!16418 lt!16417) (and (not (is-Implies!86 f!4477)) (or (not (is-Not!86 f!4477)) lt!16418))))))

(declare-fun e!40715 () Bool)

(assert (=> b!75362 (= lt!16418 e!40715)))

(declare-fun c!18522 () Bool)

(assert (=> b!75362 (= c!18522 (or lt!16416 (and (not (is-Implies!86 f!4477)) (is-Not!86 f!4477))))))

(assert (=> b!75362 (= lt!16416 (is-Or!86 f!4477))))

(declare-fun b!75363 () Bool)

(assert (=> b!75363 (= e!40722 lt!16414)))

(declare-fun d!54841 () Bool)

(declare-fun c!18523 () Bool)

(assert (=> d!54841 (= c!18523 lt!16415)))

(assert (=> d!54841 (= lt!16417 e!40721)))

(declare-fun c!18521 () Bool)

(assert (=> d!54841 (= c!18521 e!40720)))

(declare-fun res!37360 () Bool)

(assert (=> d!54841 (=> res!37360 e!40720)))

(assert (=> d!54841 (= res!37360 lt!16413)))

(assert (=> d!54841 (= lt!16413 (and lt!16415 lt!16414))))

(assert (=> d!54841 (= lt!16414 e!40718)))

(declare-fun c!18520 () Bool)

(assert (=> d!54841 (= c!18520 (or lt!16415 (is-Or!86 f!4477) (and (not (is-Implies!86 f!4477)) (is-Not!86 f!4477))))))

(assert (=> d!54841 (= lt!16415 (is-And!86 f!4477))))

(assert (=> d!54841 (= (isSimplified!0 f!4477) e!40717)))

(declare-fun b!75364 () Bool)

(assert (=> b!75364 (= e!40715 lt!16414)))

(declare-fun b!75365 () Bool)

(declare-fun res!37359 () Bool)

(assert (=> b!75365 (= e!40722 res!37359)))

(assert (=> b!75365 true))

(declare-fun b!75366 () Bool)

(assert (=> b!75366 (= e!40719 e!40716)))

(declare-fun res!37363 () Bool)

(assert (=> b!75366 (=> (not res!37363) (not e!40716))))

(assert (=> b!75366 (= res!37363 lt!16419)))

(assert (=> b!75366 (= lt!16419 (is-Or!86 f!4477))))

(declare-fun b!75367 () Bool)

(declare-fun res!37361 () Bool)

(assert (=> b!75367 (= e!40715 res!37361)))

(assert (=> b!75367 true))

(assert (=> b!75367 true))

(assert (= (and d!54841 c!18520) b!75360))

(assert (= (and d!54841 (not c!18520)) b!75361))

(assert (= (and d!54841 (not res!37360)) b!75358))

(assert (= (and b!75358 res!37358) b!75366))

(assert (= (and b!75366 res!37363) b!75357))

(assert (= (and b!75357 c!18524) b!75363))

(assert (= (and b!75357 (not c!18524)) b!75365))

(assert (= (and d!54841 c!18521) b!75356))

(assert (= (and d!54841 (not c!18521)) b!75355))

(assert (= (and b!75362 c!18522) b!75364))

(assert (= (and b!75362 (not c!18522)) b!75367))

(assert (= (and d!54841 c!18523) b!75359))

(assert (= (and d!54841 (not c!18523)) b!75362))

(declare-fun m!73084 () Bool)

(assert (=> b!75356 m!73084))

(declare-fun m!73086 () Bool)

(assert (=> b!75360 m!73086))

(assert (=> b!75292 d!54841))

(declare-fun b!75368 () Bool)

(declare-fun e!40729 () Bool)

(declare-fun res!37369 () Bool)

(assert (=> b!75368 (= e!40729 res!37369)))

(assert (=> b!75368 true))

(declare-fun b!75369 () Bool)

(declare-fun lt!16420 () Bool)

(assert (=> b!75369 (= e!40729 (isSimplified!0 (ite lt!16420 (rhs!1360 f!4460) (rhs!1361 f!4460))))))

(declare-fun b!75370 () Bool)

(declare-fun e!40724 () Bool)

(declare-fun e!40730 () Bool)

(assert (=> b!75370 (= e!40724 e!40730)))

(declare-fun c!18529 () Bool)

(declare-fun lt!16426 () Bool)

(assert (=> b!75370 (= c!18529 (or lt!16426 (and (not (is-Implies!86 f!4460)) (is-Not!86 f!4460))))))

(declare-fun b!75371 () Bool)

(declare-fun e!40728 () Bool)

(declare-fun e!40727 () Bool)

(assert (=> b!75371 (= e!40728 e!40727)))

(declare-fun res!37365 () Bool)

(assert (=> b!75371 (=> (not res!37365) (not e!40727))))

(declare-fun lt!16422 () Bool)

(assert (=> b!75371 (= res!37365 (not lt!16422))))

(declare-fun b!75372 () Bool)

(declare-fun e!40725 () Bool)

(declare-fun lt!16421 () Bool)

(declare-fun lt!16424 () Bool)

(assert (=> b!75372 (= e!40725 (and lt!16421 lt!16424))))

(declare-fun b!75373 () Bool)

(declare-fun e!40726 () Bool)

(assert (=> b!75373 (= e!40726 (isSimplified!0 (ite lt!16422 (lhs!1360 f!4460) (ite (is-Or!86 f!4460) (lhs!1361 f!4460) (f!4694 f!4460)))))))

(declare-fun b!75374 () Bool)

(declare-fun res!37364 () Bool)

(assert (=> b!75374 (= e!40726 res!37364)))

(assert (=> b!75374 true))

(declare-fun lt!16423 () Bool)

(declare-fun b!75375 () Bool)

(declare-fun lt!16425 () Bool)

(assert (=> b!75375 (= e!40725 (ite lt!16423 (and lt!16425 lt!16424) (and (not (is-Implies!86 f!4460)) (or (not (is-Not!86 f!4460)) lt!16425))))))

(declare-fun e!40723 () Bool)

(assert (=> b!75375 (= lt!16425 e!40723)))

(declare-fun c!18527 () Bool)

(assert (=> b!75375 (= c!18527 (or lt!16423 (and (not (is-Implies!86 f!4460)) (is-Not!86 f!4460))))))

(assert (=> b!75375 (= lt!16423 (is-Or!86 f!4460))))

(declare-fun b!75376 () Bool)

(assert (=> b!75376 (= e!40730 lt!16421)))

(declare-fun d!54843 () Bool)

(declare-fun c!18528 () Bool)

(assert (=> d!54843 (= c!18528 lt!16422)))

(assert (=> d!54843 (= lt!16424 e!40729)))

(declare-fun c!18526 () Bool)

(assert (=> d!54843 (= c!18526 e!40728)))

(declare-fun res!37367 () Bool)

(assert (=> d!54843 (=> res!37367 e!40728)))

(assert (=> d!54843 (= res!37367 lt!16420)))

(assert (=> d!54843 (= lt!16420 (and lt!16422 lt!16421))))

(assert (=> d!54843 (= lt!16421 e!40726)))

(declare-fun c!18525 () Bool)

(assert (=> d!54843 (= c!18525 (or lt!16422 (is-Or!86 f!4460) (and (not (is-Implies!86 f!4460)) (is-Not!86 f!4460))))))

(assert (=> d!54843 (= lt!16422 (is-And!86 f!4460))))

(assert (=> d!54843 (= (isSimplified!0 f!4460) e!40725)))

(declare-fun b!75377 () Bool)

(assert (=> b!75377 (= e!40723 lt!16421)))

(declare-fun b!75378 () Bool)

(declare-fun res!37366 () Bool)

(assert (=> b!75378 (= e!40730 res!37366)))

(assert (=> b!75378 true))

(declare-fun b!75379 () Bool)

(assert (=> b!75379 (= e!40727 e!40724)))

(declare-fun res!37370 () Bool)

(assert (=> b!75379 (=> (not res!37370) (not e!40724))))

(assert (=> b!75379 (= res!37370 lt!16426)))

(assert (=> b!75379 (= lt!16426 (is-Or!86 f!4460))))

(declare-fun b!75380 () Bool)

(declare-fun res!37368 () Bool)

(assert (=> b!75380 (= e!40723 res!37368)))

(assert (=> b!75380 true))

(assert (=> b!75380 true))

(assert (= (and d!54843 c!18525) b!75373))

(assert (= (and d!54843 (not c!18525)) b!75374))

(assert (= (and d!54843 (not res!37367)) b!75371))

(assert (= (and b!75371 res!37365) b!75379))

(assert (= (and b!75379 res!37370) b!75370))

(assert (= (and b!75370 c!18529) b!75376))

(assert (= (and b!75370 (not c!18529)) b!75378))

(assert (= (and d!54843 c!18526) b!75369))

(assert (= (and d!54843 (not c!18526)) b!75368))

(assert (= (and b!75375 c!18527) b!75377))

(assert (= (and b!75375 (not c!18527)) b!75380))

(assert (= (and d!54843 c!18528) b!75372))

(assert (= (and d!54843 (not c!18528)) b!75375))

(declare-fun m!73088 () Bool)

(assert (=> b!75369 m!73088))

(declare-fun m!73090 () Bool)

(assert (=> b!75373 m!73090))

(assert (=> start!10264 d!54843))

(push 1)

(assert (not b!75322))

(assert (not b!75360))

(assert (not b!75319))

(assert (not b!75356))

(assert (not b!75369))

(assert (not b!75318))

(assert (not b!75321))

(assert (not b!75373))

(assert (not d!54839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

