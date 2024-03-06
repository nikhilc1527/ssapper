; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9220 () Bool)

(assert start!9220)

(declare-fun res!30625 () Bool)

(declare-fun e!35376 () Bool)

(assert (=> start!9220 (=> (not res!30625) (not e!35376))))

(declare-datatypes () ((Formula!9 (And!14 (lhs!830 Formula!9) (rhs!830 Formula!9)) (Literal!8 (id!4789 Int)) (Implies!14 (lhs!831 Formula!9) (rhs!831 Formula!9)) (Or!14 (lhs!832 Formula!9) (rhs!832 Formula!9)) (Not!14 (f!4091 Formula!9)))))

(declare-fun f!3787 () Formula!9)

(declare-fun f!3786 () Formula!9)

(declare-fun nnf!1 (Formula!9) Formula!9)

(assert (=> start!9220 (= res!30625 (= f!3787 (nnf!1 f!3786)))))

(assert (=> start!9220 e!35376))

(assert (=> start!9220 true))

(declare-fun b!65209 () Bool)

(declare-fun isNNF!1 (Formula!9) Bool)

(assert (=> b!65209 (= e!35376 (not (isNNF!1 f!3787)))))

(assert (= (and start!9220 res!30625) b!65209))

(declare-fun m!69387 () Bool)

(assert (=> start!9220 m!69387))

(declare-fun m!69389 () Bool)

(assert (=> b!65209 m!69389))

(push 1)

(assert (not start!9220))

(assert (not b!65209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65270 () Bool)

(declare-fun e!35420 () Formula!9)

(declare-fun lt!12496 () Formula!9)

(assert (=> b!65270 (= e!35420 lt!12496)))

(declare-fun b!65271 () Bool)

(declare-fun e!35408 () Formula!9)

(declare-fun res!30684 () Formula!9)

(assert (=> b!65271 (= e!35408 res!30684)))

(assert (=> b!65271 true))

(assert (=> b!65271 true))

(declare-fun b!65272 () Bool)

(declare-fun e!35410 () Formula!9)

(declare-fun lt!12507 () Formula!9)

(assert (=> b!65272 (= e!35410 lt!12507)))

(declare-fun b!65273 () Bool)

(declare-fun e!35418 () Formula!9)

(declare-fun lt!12506 () Formula!9)

(assert (=> b!65273 (= e!35418 lt!12506)))

(declare-fun b!65274 () Bool)

(declare-fun lt!12494 () Formula!9)

(assert (=> b!65274 (= e!35408 lt!12494)))

(declare-fun b!65275 () Bool)

(declare-fun e!35412 () Formula!9)

(declare-fun res!30683 () Formula!9)

(assert (=> b!65275 (= e!35412 res!30683)))

(assert (=> b!65275 true))

(declare-fun b!65276 () Bool)

(declare-fun e!35415 () Formula!9)

(declare-fun lt!12497 () Bool)

(assert (=> b!65276 (= e!35415 (nnf!1 (ite lt!12497 (rhs!830 f!3786) (ite (is-Or!14 f!3786) (rhs!832 f!3786) (ite (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (Not!14 (rhs!830 (f!4091 f!3786))) (ite (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (Not!14 (rhs!832 (f!4091 f!3786))) (Not!14 (rhs!831 (f!4091 f!3786)))))))))))

(declare-fun b!65277 () Bool)

(declare-fun e!35419 () Formula!9)

(declare-fun lt!12500 () Formula!9)

(assert (=> b!65277 (= e!35419 lt!12500)))

(declare-fun b!65278 () Bool)

(declare-fun res!30685 () Formula!9)

(assert (=> b!65278 (= e!35419 res!30685)))

(assert (=> b!65278 true))

(declare-fun b!65279 () Bool)

(declare-fun e!35421 () Formula!9)

(assert (=> b!65279 (= e!35421 (nnf!1 (ite lt!12497 (lhs!830 f!3786) (ite (is-Or!14 f!3786) (lhs!832 f!3786) (ite (is-Implies!14 f!3786) (Or!14 (Not!14 (lhs!831 f!3786)) (rhs!831 f!3786)) (ite (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (Not!14 (lhs!830 (f!4091 f!3786))) (ite (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (Not!14 (lhs!832 (f!4091 f!3786))) (ite (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (lhs!831 (f!4091 f!3786)) (f!4091 (f!4091 f!3786))))))))))))

(declare-fun b!65280 () Bool)

(declare-fun e!35411 () Formula!9)

(declare-fun res!30678 () Formula!9)

(assert (=> b!65280 (= e!35411 res!30678)))

(assert (=> b!65280 true))

(declare-fun b!65281 () Bool)

(declare-fun res!30682 () Formula!9)

(assert (=> b!65281 (= e!35420 res!30682)))

(assert (=> b!65281 true))

(declare-fun b!65282 () Bool)

(declare-fun e!35414 () Formula!9)

(declare-fun e!35413 () Formula!9)

(assert (=> b!65282 (= e!35414 e!35413)))

(declare-fun c!14600 () Bool)

(declare-fun lt!12504 () Bool)

(assert (=> b!65282 (= c!14600 lt!12504)))

(assert (=> b!65282 (= lt!12496 e!35418)))

(declare-fun c!14592 () Bool)

(assert (=> b!65282 (= c!14592 (or lt!12504 (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786)))))))

(assert (=> b!65282 (= lt!12500 e!35410)))

(declare-fun c!14596 () Bool)

(assert (=> b!65282 (= c!14596 (or lt!12504 (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> b!65282 (= lt!12504 (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))))))

(declare-fun b!65283 () Bool)

(declare-fun res!30677 () Formula!9)

(assert (=> b!65283 (= e!35410 res!30677)))

(assert (=> b!65283 true))

(declare-fun b!65284 () Bool)

(declare-fun e!35416 () Formula!9)

(declare-fun lt!12498 () Formula!9)

(assert (=> b!65284 (= e!35416 (And!14 lt!12494 lt!12498))))

(declare-fun b!65285 () Bool)

(declare-fun e!35409 () Formula!9)

(declare-fun res!30676 () Formula!9)

(assert (=> b!65285 (= e!35409 res!30676)))

(assert (=> b!65285 true))

(declare-fun b!65286 () Bool)

(declare-fun res!30681 () Formula!9)

(assert (=> b!65286 (= e!35418 res!30681)))

(assert (=> b!65286 true))

(declare-fun lt!12503 () Formula!9)

(declare-fun lt!12501 () Bool)

(declare-fun b!65287 () Bool)

(assert (=> b!65287 (= e!35416 (ite lt!12501 (And!14 lt!12503 lt!12498) (ite (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786))) lt!12503 f!3786)))))

(assert (=> b!65287 (= lt!12503 e!35408)))

(declare-fun c!14591 () Bool)

(assert (=> b!65287 (= c!14591 (or lt!12501 (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> b!65287 (= lt!12501 (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))))))

(declare-fun b!65288 () Bool)

(declare-fun res!30679 () Formula!9)

(assert (=> b!65288 (= e!35421 res!30679)))

(assert (=> b!65288 true))

(declare-fun b!65289 () Bool)

(declare-fun lt!12492 () Formula!9)

(assert (=> b!65289 (= e!35412 lt!12492)))

(declare-fun b!65290 () Bool)

(assert (=> b!65290 (= e!35413 e!35416)))

(declare-fun c!14603 () Bool)

(declare-fun lt!12493 () Bool)

(assert (=> b!65290 (= c!14603 lt!12493)))

(assert (=> b!65290 (= lt!12498 e!35420)))

(declare-fun c!14599 () Bool)

(assert (=> b!65290 (= c!14599 (or lt!12493 (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786)))))))

(assert (=> b!65290 (= lt!12494 e!35419)))

(declare-fun c!14601 () Bool)

(assert (=> b!65290 (= c!14601 (or lt!12493 (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> b!65290 (= lt!12493 (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))))))

(declare-fun b!65291 () Bool)

(declare-fun e!35417 () Formula!9)

(declare-fun lt!12499 () Formula!9)

(assert (=> b!65291 (= e!35417 (And!14 lt!12499 lt!12492))))

(declare-fun b!65292 () Bool)

(declare-fun res!30680 () Formula!9)

(assert (=> b!65292 (= e!35415 res!30680)))

(assert (=> b!65292 true))

(declare-fun b!65293 () Bool)

(assert (=> b!65293 (= e!35411 lt!12499)))

(declare-fun b!65294 () Bool)

(declare-fun lt!12505 () Formula!9)

(assert (=> b!65294 (= e!35409 lt!12505)))

(declare-fun b!65295 () Bool)

(declare-fun e!35407 () Formula!9)

(assert (=> b!65295 (= e!35407 e!35414)))

(declare-fun c!14597 () Bool)

(declare-fun lt!12502 () Bool)

(assert (=> b!65295 (= c!14597 lt!12502)))

(assert (=> b!65295 (= lt!12507 e!35409)))

(declare-fun c!14602 () Bool)

(assert (=> b!65295 (= c!14602 (or lt!12502 (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> b!65295 (= lt!12502 (is-Implies!14 f!3786))))

(declare-fun d!53342 () Bool)

(declare-fun lt!12495 () Formula!9)

(assert (=> d!53342 (isNNF!1 lt!12495)))

(assert (=> d!53342 (= lt!12495 e!35417)))

(declare-fun c!14593 () Bool)

(assert (=> d!53342 (= c!14593 lt!12497)))

(assert (=> d!53342 (= lt!12492 e!35415)))

(declare-fun c!14589 () Bool)

(assert (=> d!53342 (= c!14589 (or lt!12497 (is-Or!14 f!3786) (and (not (is-Implies!14 f!3786)) (or (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786)))))))))

(assert (=> d!53342 (= lt!12499 e!35421)))

(declare-fun c!14598 () Bool)

(assert (=> d!53342 (= c!14598 (or lt!12497 (is-Or!14 f!3786) (is-Implies!14 f!3786) (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> d!53342 (= lt!12497 (is-And!14 f!3786))))

(assert (=> d!53342 (= (nnf!1 f!3786) lt!12495)))

(declare-fun b!65296 () Bool)

(assert (=> b!65296 (= e!35414 lt!12507)))

(declare-fun b!65297 () Bool)

(assert (=> b!65297 (= e!35413 (Or!14 lt!12500 lt!12496))))

(declare-fun b!65298 () Bool)

(assert (=> b!65298 (= e!35417 e!35407)))

(declare-fun c!14590 () Bool)

(declare-fun lt!12508 () Bool)

(assert (=> b!65298 (= c!14590 lt!12508)))

(assert (=> b!65298 (= lt!12506 e!35412)))

(declare-fun c!14595 () Bool)

(assert (=> b!65298 (= c!14595 (or lt!12508 (and (not (is-Implies!14 f!3786)) (or (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786)))))))))

(assert (=> b!65298 (= lt!12505 e!35411)))

(declare-fun c!14594 () Bool)

(assert (=> b!65298 (= c!14594 (or lt!12508 (is-Implies!14 f!3786) (and (is-Not!14 f!3786) (is-And!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Or!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Implies!14 (f!4091 f!3786))) (and (is-Not!14 f!3786) (is-Not!14 (f!4091 f!3786)))))))

(assert (=> b!65298 (= lt!12508 (is-Or!14 f!3786))))

(declare-fun b!65299 () Bool)

(assert (=> b!65299 (= e!35407 (Or!14 lt!12505 lt!12506))))

(assert (= (and d!53342 c!14598) b!65279))

(assert (= (and d!53342 (not c!14598)) b!65288))

(assert (= (and d!53342 c!14589) b!65276))

(assert (= (and d!53342 (not c!14589)) b!65292))

(assert (= (and b!65298 c!14594) b!65293))

(assert (= (and b!65298 (not c!14594)) b!65280))

(assert (= (and b!65298 c!14595) b!65289))

(assert (= (and b!65298 (not c!14595)) b!65275))

(assert (= (and b!65295 c!14602) b!65294))

(assert (= (and b!65295 (not c!14602)) b!65285))

(assert (= (and b!65282 c!14596) b!65272))

(assert (= (and b!65282 (not c!14596)) b!65283))

(assert (= (and b!65282 c!14592) b!65273))

(assert (= (and b!65282 (not c!14592)) b!65286))

(assert (= (and b!65290 c!14601) b!65277))

(assert (= (and b!65290 (not c!14601)) b!65278))

(assert (= (and b!65290 c!14599) b!65270))

(assert (= (and b!65290 (not c!14599)) b!65281))

(assert (= (and b!65287 c!14591) b!65274))

(assert (= (and b!65287 (not c!14591)) b!65271))

(assert (= (and b!65290 c!14603) b!65284))

(assert (= (and b!65290 (not c!14603)) b!65287))

(assert (= (and b!65282 c!14600) b!65297))

(assert (= (and b!65282 (not c!14600)) b!65290))

(assert (= (and b!65295 c!14597) b!65296))

(assert (= (and b!65295 (not c!14597)) b!65282))

(assert (= (and b!65298 c!14590) b!65299))

(assert (= (and b!65298 (not c!14590)) b!65295))

(assert (= (and d!53342 c!14593) b!65291))

(assert (= (and d!53342 (not c!14593)) b!65298))

(declare-fun m!69391 () Bool)

(assert (=> b!65276 m!69391))

(declare-fun m!69393 () Bool)

(assert (=> b!65279 m!69393))

(declare-fun m!69395 () Bool)

(assert (=> d!53342 m!69395))

(assert (=> start!9220 d!53342))

(declare-fun b!65314 () Bool)

(declare-fun e!35430 () Bool)

(assert (=> b!65314 (= e!35430 (and (not (is-Implies!14 f!3787)) (or (and (is-Not!14 f!3787) (is-Literal!8 (f!4091 f!3787))) (not (is-Not!14 f!3787)))))))

(declare-fun b!65315 () Bool)

(declare-fun e!35431 () Bool)

(declare-fun res!30699 () Bool)

(assert (=> b!65315 (= e!35431 res!30699)))

(assert (=> b!65315 true))

(assert (=> b!65315 true))

(declare-fun b!65316 () Bool)

(declare-fun e!35433 () Bool)

(assert (=> b!65316 (= e!35430 e!35433)))

(declare-fun res!30698 () Bool)

(assert (=> b!65316 (=> (not res!30698) (not e!35433))))

(declare-fun lt!12515 () Bool)

(assert (=> b!65316 (= res!30698 lt!12515)))

(declare-fun b!65317 () Bool)

(declare-fun lt!12516 () Bool)

(assert (=> b!65317 (= e!35431 (isNNF!1 (ite lt!12516 (rhs!830 f!3787) (rhs!832 f!3787))))))

(declare-fun d!53344 () Bool)

(declare-fun c!14611 () Bool)

(declare-fun lt!12517 () Bool)

(assert (=> d!53344 (= c!14611 (or lt!12517 (is-Or!14 f!3787)))))

(assert (=> d!53344 (= lt!12516 (and lt!12517 lt!12515))))

(declare-fun e!35432 () Bool)

(assert (=> d!53344 (= lt!12515 e!35432)))

(declare-fun c!14612 () Bool)

(assert (=> d!53344 (= c!14612 (or lt!12517 (is-Or!14 f!3787)))))

(assert (=> d!53344 (= lt!12517 (is-And!14 f!3787))))

(assert (=> d!53344 (= (isNNF!1 f!3787) e!35430)))

(declare-fun b!65318 () Bool)

(assert (=> b!65318 (= e!35432 (isNNF!1 (ite lt!12517 (lhs!830 f!3787) (lhs!832 f!3787))))))

(declare-fun b!65319 () Bool)

(declare-fun res!30700 () Bool)

(assert (=> b!65319 (= e!35432 res!30700)))

(assert (=> b!65319 true))

(declare-fun b!65320 () Bool)

(assert (=> b!65320 (= e!35433 e!35431)))

(declare-fun c!14610 () Bool)

(assert (=> b!65320 (= c!14610 (or lt!12516 (and (not lt!12517) (is-Or!14 f!3787) lt!12515)))))

(assert (= (and d!53344 c!14612) b!65318))

(assert (= (and d!53344 (not c!14612)) b!65319))

(assert (= (and b!65316 res!30698) b!65320))

(assert (= (and b!65320 c!14610) b!65317))

(assert (= (and b!65320 (not c!14610)) b!65315))

(assert (= (and d!53344 c!14611) b!65316))

(assert (= (and d!53344 (not c!14611)) b!65314))

(declare-fun m!69397 () Bool)

(assert (=> b!65317 m!69397))

(declare-fun m!69399 () Bool)

(assert (=> b!65318 m!69399))

(assert (=> b!65209 d!53344))

(push 1)

(assert (not b!65279))

(assert (not b!65318))

(assert (not b!65317))

(assert (not d!53342))

(assert (not b!65276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

