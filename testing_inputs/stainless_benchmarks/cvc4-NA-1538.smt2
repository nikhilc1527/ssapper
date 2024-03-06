; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10402 () Bool)

(assert start!10402)

(declare-fun res!39325 () Bool)

(declare-fun e!42305 () Bool)

(assert (=> start!10402 (=> (not res!39325) (not e!42305))))

(declare-datatypes () ((Formula!107 (Implies!111 (lhs!1434 Formula!107) (rhs!1434 Formula!107)) (And!111 (lhs!1435 Formula!107) (rhs!1435 Formula!107)) (Or!111 (lhs!1436 Formula!107) (rhs!1436 Formula!107)) (Literal!105 (id!4968 (_ BitVec 32))) (Not!111 (f!4759 Formula!107)))))

(declare-fun formula!94 () Formula!107)

(assert (=> start!10402 (= res!39325 (and (not (is-And!111 formula!94)) (not (is-Or!111 formula!94)) (not (is-Implies!111 formula!94)) (is-Not!111 formula!94) (is-And!111 (f!4759 formula!94))))))

(assert (=> start!10402 e!42305))

(assert (=> start!10402 true))

(declare-fun b!78253 () Bool)

(declare-fun res!39326 () Bool)

(assert (=> b!78253 (=> (not res!39326) (not e!42305))))

(declare-fun x$2!422 () Formula!107)

(declare-fun nnf!0 (Formula!107) Formula!107)

(assert (=> b!78253 (= res!39326 (= x$2!422 (Or!111 (nnf!0 (Not!111 (lhs!1435 (f!4759 formula!94)))) (nnf!0 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))

(declare-fun b!78254 () Bool)

(declare-fun isNNF!0 (Formula!107) Bool)

(assert (=> b!78254 (= e!42305 (not (isNNF!0 x$2!422)))))

(assert (= (and start!10402 res!39325) b!78253))

(assert (= (and b!78253 res!39326) b!78254))

(declare-fun m!73562 () Bool)

(assert (=> b!78253 m!73562))

(declare-fun m!73564 () Bool)

(assert (=> b!78253 m!73564))

(declare-fun m!73566 () Bool)

(assert (=> b!78254 m!73566))

(push 1)

(assert (not b!78254))

(assert (not b!78253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!78303 () Bool)

(declare-fun e!42336 () Bool)

(declare-fun e!42343 () Bool)

(assert (=> b!78303 (= e!42336 e!42343)))

(declare-fun res!39363 () Bool)

(assert (=> b!78303 (=> (not res!39363) (not e!42343))))

(declare-fun lt!17784 () Bool)

(assert (=> b!78303 (= res!39363 lt!17784)))

(declare-fun b!78304 () Bool)

(declare-fun e!42344 () Bool)

(declare-fun lt!17792 () Bool)

(assert (=> b!78304 (= e!42344 (isNNF!0 (ite lt!17792 (lhs!1435 x$2!422) (ite (is-Or!111 x$2!422) (lhs!1436 x$2!422) (lhs!1434 x$2!422)))))))

(declare-fun b!78305 () Bool)

(declare-fun e!42341 () Bool)

(declare-fun res!39365 () Bool)

(assert (=> b!78305 (= e!42341 res!39365)))

(assert (=> b!78305 true))

(declare-fun b!78306 () Bool)

(declare-fun lt!17787 () Bool)

(assert (=> b!78306 (= e!42341 lt!17787)))

(declare-fun b!78307 () Bool)

(declare-fun e!42335 () Formula!107)

(assert (=> b!78307 (= e!42335 (rhs!1434 x$2!422))))

(declare-fun b!78308 () Bool)

(declare-fun e!42339 () Bool)

(assert (=> b!78308 (= e!42339 e!42336)))

(declare-fun c!19765 () Bool)

(declare-fun lt!17789 () Bool)

(assert (=> b!78308 (= c!19765 (or lt!17789 (is-Implies!111 x$2!422)))))

(declare-fun e!42334 () Bool)

(assert (=> b!78308 (= lt!17784 e!42334)))

(declare-fun c!19757 () Bool)

(assert (=> b!78308 (= c!19757 (or lt!17789 (is-Implies!111 x$2!422)))))

(assert (=> b!78308 (= lt!17789 (is-Or!111 x$2!422))))

(declare-fun b!78309 () Bool)

(declare-fun lt!17785 () Bool)

(assert (=> b!78309 (= e!42339 (and lt!17787 lt!17785))))

(declare-fun b!78310 () Bool)

(assert (=> b!78310 (= e!42335 (rhs!1436 x$2!422))))

(declare-fun b!78311 () Bool)

(assert (=> b!78311 (= e!42334 lt!17787)))

(declare-fun b!78312 () Bool)

(declare-fun e!42347 () Bool)

(declare-fun e!42340 () Bool)

(assert (=> b!78312 (= e!42347 e!42340)))

(declare-fun c!19764 () Bool)

(declare-fun lt!17790 () Bool)

(assert (=> b!78312 (= c!19764 (or lt!17790 (is-Implies!111 x$2!422)))))

(declare-fun b!78313 () Bool)

(declare-fun res!39366 () Bool)

(assert (=> b!78313 (= e!42344 res!39366)))

(assert (=> b!78313 true))

(declare-fun b!78314 () Bool)

(declare-fun e!42337 () Bool)

(declare-fun e!42345 () Bool)

(assert (=> b!78314 (= e!42337 e!42345)))

(declare-fun res!39364 () Bool)

(assert (=> b!78314 (=> (not res!39364) (not e!42345))))

(assert (=> b!78314 (= res!39364 (not lt!17792))))

(declare-fun b!78315 () Bool)

(declare-fun e!42338 () Bool)

(assert (=> b!78315 (= e!42343 e!42338)))

(declare-fun c!19759 () Bool)

(assert (=> b!78315 (= c!19759 (or (and lt!17789 lt!17784) (and (not lt!17789) (is-Implies!111 x$2!422) lt!17784)))))

(declare-fun b!78316 () Bool)

(declare-fun res!39369 () Bool)

(assert (=> b!78316 (= e!42340 res!39369)))

(assert (=> b!78316 true))

(declare-fun lt!17788 () Bool)

(declare-fun lt!17786 () Bool)

(declare-fun b!78317 () Bool)

(assert (=> b!78317 (= e!42345 (or (and lt!17788 lt!17786) (and (not lt!17788) (is-Implies!111 x$2!422) lt!17786)))))

(assert (=> b!78317 (= lt!17786 e!42341)))

(declare-fun c!19763 () Bool)

(assert (=> b!78317 (= c!19763 (or lt!17788 (is-Implies!111 x$2!422)))))

(assert (=> b!78317 (= lt!17788 (is-Or!111 x$2!422))))

(declare-fun b!78318 () Bool)

(declare-fun e!42342 () Formula!107)

(assert (=> b!78318 (= e!42342 (rhs!1435 x$2!422))))

(declare-fun d!54981 () Bool)

(declare-fun c!19756 () Bool)

(assert (=> d!54981 (= c!19756 lt!17792)))

(declare-fun e!42346 () Bool)

(assert (=> d!54981 (= lt!17785 e!42346)))

(declare-fun c!19761 () Bool)

(assert (=> d!54981 (= c!19761 e!42337)))

(declare-fun res!39370 () Bool)

(assert (=> d!54981 (=> res!39370 e!42337)))

(declare-fun lt!17791 () Bool)

(assert (=> d!54981 (= res!39370 lt!17791)))

(assert (=> d!54981 (= lt!17791 (and lt!17792 lt!17787))))

(assert (=> d!54981 (= lt!17787 e!42344)))

(declare-fun c!19758 () Bool)

(assert (=> d!54981 (= c!19758 (or lt!17792 (is-Or!111 x$2!422) (is-Implies!111 x$2!422)))))

(assert (=> d!54981 (= lt!17792 (is-And!111 x$2!422))))

(assert (=> d!54981 (= (isNNF!0 x$2!422) e!42339)))

(declare-fun b!78319 () Bool)

(assert (=> b!78319 (= e!42346 (isNNF!0 e!42342))))

(declare-fun c!19762 () Bool)

(assert (=> b!78319 (= c!19762 lt!17791)))

(declare-fun b!78320 () Bool)

(assert (=> b!78320 (= e!42336 (or (and (is-Not!111 x$2!422) (is-Literal!105 (f!4759 x$2!422))) (not (is-Not!111 x$2!422))))))

(declare-fun b!78321 () Bool)

(declare-fun res!39361 () Bool)

(assert (=> b!78321 (= e!42338 res!39361)))

(assert (=> b!78321 true))

(assert (=> b!78321 true))

(declare-fun b!78322 () Bool)

(assert (=> b!78322 (= e!42342 e!42335)))

(declare-fun c!19760 () Bool)

(assert (=> b!78322 (= c!19760 e!42347)))

(declare-fun res!39368 () Bool)

(assert (=> b!78322 (=> (not res!39368) (not e!42347))))

(assert (=> b!78322 (= res!39368 lt!17790)))

(assert (=> b!78322 (= lt!17790 (is-Or!111 x$2!422))))

(declare-fun b!78323 () Bool)

(assert (=> b!78323 (= e!42338 lt!17785)))

(declare-fun b!78324 () Bool)

(declare-fun res!39367 () Bool)

(assert (=> b!78324 (= e!42334 res!39367)))

(assert (=> b!78324 true))

(declare-fun b!78325 () Bool)

(assert (=> b!78325 (= e!42340 lt!17787)))

(declare-fun b!78326 () Bool)

(declare-fun res!39362 () Bool)

(assert (=> b!78326 (= e!42346 res!39362)))

(assert (=> b!78326 true))

(assert (= (and d!54981 c!19758) b!78304))

(assert (= (and d!54981 (not c!19758)) b!78313))

(assert (= (and d!54981 (not res!39370)) b!78314))

(assert (= (and b!78314 res!39364) b!78317))

(assert (= (and b!78317 c!19763) b!78306))

(assert (= (and b!78317 (not c!19763)) b!78305))

(assert (= (and b!78322 res!39368) b!78312))

(assert (= (and b!78312 c!19764) b!78325))

(assert (= (and b!78312 (not c!19764)) b!78316))

(assert (= (and b!78322 c!19760) b!78310))

(assert (= (and b!78322 (not c!19760)) b!78307))

(assert (= (and b!78319 c!19762) b!78318))

(assert (= (and b!78319 (not c!19762)) b!78322))

(assert (= (and d!54981 c!19761) b!78319))

(assert (= (and d!54981 (not c!19761)) b!78326))

(assert (= (and b!78308 c!19757) b!78311))

(assert (= (and b!78308 (not c!19757)) b!78324))

(assert (= (and b!78303 res!39363) b!78315))

(assert (= (and b!78315 c!19759) b!78323))

(assert (= (and b!78315 (not c!19759)) b!78321))

(assert (= (and b!78308 c!19765) b!78303))

(assert (= (and b!78308 (not c!19765)) b!78320))

(assert (= (and d!54981 c!19756) b!78309))

(assert (= (and d!54981 (not c!19756)) b!78308))

(declare-fun m!73568 () Bool)

(assert (=> b!78304 m!73568))

(declare-fun m!73570 () Bool)

(assert (=> b!78319 m!73570))

(assert (=> b!78254 d!54981))

(declare-fun b!78391 () Bool)

(declare-fun e!42395 () Formula!107)

(declare-fun res!39429 () Formula!107)

(assert (=> b!78391 (= e!42395 res!39429)))

(assert (=> b!78391 true))

(declare-fun b!78392 () Bool)

(declare-fun e!42393 () Formula!107)

(declare-fun lt!17839 () Formula!107)

(assert (=> b!78392 (= e!42393 lt!17839)))

(declare-fun b!78393 () Bool)

(declare-fun e!42384 () Formula!107)

(declare-fun lt!17834 () Formula!107)

(assert (=> b!78393 (= e!42384 lt!17834)))

(declare-fun b!78394 () Bool)

(declare-fun e!42387 () Formula!107)

(declare-fun res!39426 () Formula!107)

(assert (=> b!78394 (= e!42387 res!39426)))

(assert (=> b!78394 true))

(declare-fun b!78395 () Bool)

(declare-fun e!42385 () Formula!107)

(declare-fun res!39436 () Formula!107)

(assert (=> b!78395 (= e!42385 res!39436)))

(assert (=> b!78395 true))

(declare-fun b!78396 () Bool)

(declare-fun e!42382 () Formula!107)

(declare-fun res!39432 () Formula!107)

(assert (=> b!78396 (= e!42382 res!39432)))

(assert (=> b!78396 true))

(declare-fun b!78397 () Bool)

(declare-fun e!42381 () Formula!107)

(declare-fun res!39434 () Formula!107)

(assert (=> b!78397 (= e!42381 res!39434)))

(assert (=> b!78397 true))

(declare-fun b!78398 () Bool)

(declare-fun res!39435 () Formula!107)

(assert (=> b!78398 (= e!42393 res!39435)))

(assert (=> b!78398 true))

(declare-fun b!78399 () Bool)

(declare-fun e!42391 () Formula!107)

(declare-fun lt!17830 () Formula!107)

(assert (=> b!78399 (= e!42391 lt!17830)))

(declare-fun b!78400 () Bool)

(declare-fun e!42392 () Formula!107)

(declare-fun e!42388 () Formula!107)

(assert (=> b!78400 (= e!42392 e!42388)))

(declare-fun c!19806 () Bool)

(declare-fun lt!17835 () Bool)

(assert (=> b!78400 (= c!19806 lt!17835)))

(declare-fun lt!17833 () Formula!107)

(assert (=> b!78400 (= lt!17833 e!42393)))

(declare-fun c!19813 () Bool)

(assert (=> b!78400 (= c!19813 (or lt!17835 (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(declare-fun lt!17829 () Formula!107)

(assert (=> b!78400 (= lt!17829 e!42385)))

(declare-fun c!19803 () Bool)

(assert (=> b!78400 (= c!19803 (or lt!17835 (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78400 (= lt!17835 (is-Or!111 (Not!111 (lhs!1435 (f!4759 formula!94)))))))

(declare-fun b!78401 () Bool)

(assert (=> b!78401 (= e!42395 lt!17833)))

(declare-fun b!78402 () Bool)

(declare-fun e!42380 () Formula!107)

(declare-fun lt!17831 () Formula!107)

(assert (=> b!78402 (= e!42380 lt!17831)))

(declare-fun b!78403 () Bool)

(declare-fun lt!17832 () Formula!107)

(assert (=> b!78403 (= e!42381 lt!17832)))

(declare-fun b!78404 () Bool)

(declare-fun e!42383 () Formula!107)

(declare-fun lt!17838 () Bool)

(assert (=> b!78404 (= e!42383 (nnf!0 (ite lt!17838 (lhs!1435 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (is-Or!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (lhs!1436 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (lhs!1434 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (Not!111 (lhs!1435 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (Not!111 (lhs!1436 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (lhs!1434 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))) (f!4759 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))))))))))))

(declare-fun b!78405 () Bool)

(declare-fun lt!17845 () Formula!107)

(assert (=> b!78405 (= e!42385 lt!17845)))

(declare-fun b!78406 () Bool)

(declare-fun e!42389 () Formula!107)

(assert (=> b!78406 (= e!42389 (Or!111 lt!17832 lt!17830))))

(declare-fun b!78407 () Bool)

(declare-fun e!42394 () Formula!107)

(assert (=> b!78407 (= e!42394 lt!17829)))

(declare-fun b!78408 () Bool)

(declare-fun e!42386 () Formula!107)

(declare-fun lt!17841 () Formula!107)

(assert (=> b!78408 (= e!42386 (Implies!111 lt!17834 lt!17841))))

(declare-fun b!78409 () Bool)

(assert (=> b!78409 (= e!42386 e!42389)))

(declare-fun c!19799 () Bool)

(declare-fun lt!17836 () Bool)

(assert (=> b!78409 (= c!19799 lt!17836)))

(assert (=> b!78409 (= lt!17830 e!42382)))

(declare-fun c!19809 () Bool)

(assert (=> b!78409 (= c!19809 (or lt!17836 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78409 (= lt!17832 e!42384)))

(declare-fun c!19802 () Bool)

(assert (=> b!78409 (= c!19802 (or lt!17836 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78409 (= lt!17836 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))))))

(declare-fun d!54983 () Bool)

(declare-fun lt!17846 () Formula!107)

(assert (=> d!54983 (isNNF!0 lt!17846)))

(assert (=> d!54983 (= lt!17846 e!42392)))

(declare-fun c!19805 () Bool)

(assert (=> d!54983 (= c!19805 lt!17838)))

(assert (=> d!54983 (= lt!17839 e!42387)))

(declare-fun c!19798 () Bool)

(assert (=> d!54983 (= c!19798 (or lt!17838 (is-Or!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> d!54983 (= lt!17845 e!42383)))

(declare-fun c!19800 () Bool)

(assert (=> d!54983 (= c!19800 (or lt!17838 (is-Or!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> d!54983 (= lt!17838 (is-And!111 (Not!111 (lhs!1435 (f!4759 formula!94)))))))

(assert (=> d!54983 (= (nnf!0 (Not!111 (lhs!1435 (f!4759 formula!94)))) lt!17846)))

(declare-fun b!78410 () Bool)

(assert (=> b!78410 (= e!42388 (Or!111 lt!17829 lt!17833))))

(declare-fun b!78411 () Bool)

(declare-fun e!42390 () Formula!107)

(declare-fun lt!17844 () Formula!107)

(assert (=> b!78411 (= e!42390 (And!111 lt!17831 lt!17844))))

(declare-fun b!78412 () Bool)

(assert (=> b!78412 (= e!42389 e!42390)))

(declare-fun c!19807 () Bool)

(declare-fun lt!17843 () Bool)

(assert (=> b!78412 (= c!19807 lt!17843)))

(assert (=> b!78412 (= lt!17844 e!42391)))

(declare-fun c!19811 () Bool)

(assert (=> b!78412 (= c!19811 (or lt!17843 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78412 (= lt!17831 e!42381)))

(declare-fun c!19801 () Bool)

(assert (=> b!78412 (= c!19801 (or lt!17843 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78412 (= lt!17843 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))))))

(declare-fun b!78413 () Bool)

(declare-fun res!39428 () Formula!107)

(assert (=> b!78413 (= e!42383 res!39428)))

(assert (=> b!78413 true))

(declare-fun b!78414 () Bool)

(declare-fun res!39431 () Formula!107)

(assert (=> b!78414 (= e!42380 res!39431)))

(assert (=> b!78414 true))

(assert (=> b!78414 true))

(declare-fun b!78415 () Bool)

(declare-fun res!39430 () Formula!107)

(assert (=> b!78415 (= e!42394 res!39430)))

(assert (=> b!78415 true))

(declare-fun b!78416 () Bool)

(assert (=> b!78416 (= e!42388 e!42386)))

(declare-fun c!19812 () Bool)

(declare-fun lt!17837 () Bool)

(assert (=> b!78416 (= c!19812 lt!17837)))

(assert (=> b!78416 (= lt!17841 e!42395)))

(declare-fun c!19804 () Bool)

(assert (=> b!78416 (= c!19804 (or lt!17837 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78416 (= lt!17834 e!42394)))

(declare-fun c!19808 () Bool)

(assert (=> b!78416 (= c!19808 (or lt!17837 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78416 (= lt!17837 (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))))))

(declare-fun b!78417 () Bool)

(declare-fun res!39427 () Formula!107)

(assert (=> b!78417 (= e!42384 res!39427)))

(assert (=> b!78417 true))

(declare-fun b!78418 () Bool)

(assert (=> b!78418 (= e!42387 (nnf!0 (ite lt!17838 (rhs!1435 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (is-Or!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (rhs!1436 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (is-Implies!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (rhs!1434 (Not!111 (lhs!1435 (f!4759 formula!94)))) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1435 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1436 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1434 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))))))))))))

(declare-fun b!78419 () Bool)

(declare-fun res!39433 () Formula!107)

(assert (=> b!78419 (= e!42391 res!39433)))

(assert (=> b!78419 true))

(declare-fun b!78420 () Bool)

(assert (=> b!78420 (= e!42392 (And!111 lt!17845 lt!17839))))

(declare-fun b!78421 () Bool)

(declare-fun lt!17842 () Formula!107)

(declare-fun lt!17840 () Bool)

(assert (=> b!78421 (= e!42390 (ite lt!17840 (And!111 lt!17842 lt!17844) (ite (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))) lt!17842 (Not!111 (lhs!1435 (f!4759 formula!94))))))))

(assert (=> b!78421 (= lt!17842 e!42380)))

(declare-fun c!19810 () Bool)

(assert (=> b!78421 (= c!19810 (or lt!17840 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78421 (= lt!17840 (and (is-Not!111 (Not!111 (lhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (lhs!1435 (f!4759 formula!94)))))))))

(declare-fun b!78422 () Bool)

(assert (=> b!78422 (= e!42382 lt!17841)))

(assert (= (and d!54983 c!19800) b!78404))

(assert (= (and d!54983 (not c!19800)) b!78413))

(assert (= (and d!54983 c!19798) b!78418))

(assert (= (and d!54983 (not c!19798)) b!78394))

(assert (= (and b!78400 c!19803) b!78405))

(assert (= (and b!78400 (not c!19803)) b!78395))

(assert (= (and b!78400 c!19813) b!78392))

(assert (= (and b!78400 (not c!19813)) b!78398))

(assert (= (and b!78416 c!19808) b!78407))

(assert (= (and b!78416 (not c!19808)) b!78415))

(assert (= (and b!78416 c!19804) b!78401))

(assert (= (and b!78416 (not c!19804)) b!78391))

(assert (= (and b!78409 c!19802) b!78393))

(assert (= (and b!78409 (not c!19802)) b!78417))

(assert (= (and b!78409 c!19809) b!78422))

(assert (= (and b!78409 (not c!19809)) b!78396))

(assert (= (and b!78412 c!19801) b!78403))

(assert (= (and b!78412 (not c!19801)) b!78397))

(assert (= (and b!78412 c!19811) b!78399))

(assert (= (and b!78412 (not c!19811)) b!78419))

(assert (= (and b!78421 c!19810) b!78402))

(assert (= (and b!78421 (not c!19810)) b!78414))

(assert (= (and b!78412 c!19807) b!78411))

(assert (= (and b!78412 (not c!19807)) b!78421))

(assert (= (and b!78409 c!19799) b!78406))

(assert (= (and b!78409 (not c!19799)) b!78412))

(assert (= (and b!78416 c!19812) b!78408))

(assert (= (and b!78416 (not c!19812)) b!78409))

(assert (= (and b!78400 c!19806) b!78410))

(assert (= (and b!78400 (not c!19806)) b!78416))

(assert (= (and d!54983 c!19805) b!78420))

(assert (= (and d!54983 (not c!19805)) b!78400))

(declare-fun m!73572 () Bool)

(assert (=> b!78404 m!73572))

(declare-fun m!73574 () Bool)

(assert (=> d!54983 m!73574))

(declare-fun m!73576 () Bool)

(assert (=> b!78418 m!73576))

(assert (=> b!78253 d!54983))

(declare-fun b!78423 () Bool)

(declare-fun e!42411 () Formula!107)

(declare-fun res!39440 () Formula!107)

(assert (=> b!78423 (= e!42411 res!39440)))

(assert (=> b!78423 true))

(declare-fun b!78424 () Bool)

(declare-fun e!42409 () Formula!107)

(declare-fun lt!17857 () Formula!107)

(assert (=> b!78424 (= e!42409 lt!17857)))

(declare-fun b!78425 () Bool)

(declare-fun e!42400 () Formula!107)

(declare-fun lt!17852 () Formula!107)

(assert (=> b!78425 (= e!42400 lt!17852)))

(declare-fun b!78426 () Bool)

(declare-fun e!42403 () Formula!107)

(declare-fun res!39437 () Formula!107)

(assert (=> b!78426 (= e!42403 res!39437)))

(assert (=> b!78426 true))

(declare-fun b!78427 () Bool)

(declare-fun e!42401 () Formula!107)

(declare-fun res!39447 () Formula!107)

(assert (=> b!78427 (= e!42401 res!39447)))

(assert (=> b!78427 true))

(declare-fun b!78428 () Bool)

(declare-fun e!42398 () Formula!107)

(declare-fun res!39443 () Formula!107)

(assert (=> b!78428 (= e!42398 res!39443)))

(assert (=> b!78428 true))

(declare-fun b!78429 () Bool)

(declare-fun e!42397 () Formula!107)

(declare-fun res!39445 () Formula!107)

(assert (=> b!78429 (= e!42397 res!39445)))

(assert (=> b!78429 true))

(declare-fun b!78430 () Bool)

(declare-fun res!39446 () Formula!107)

(assert (=> b!78430 (= e!42409 res!39446)))

(assert (=> b!78430 true))

(declare-fun b!78431 () Bool)

(declare-fun e!42407 () Formula!107)

(declare-fun lt!17848 () Formula!107)

(assert (=> b!78431 (= e!42407 lt!17848)))

(declare-fun b!78432 () Bool)

(declare-fun e!42408 () Formula!107)

(declare-fun e!42404 () Formula!107)

(assert (=> b!78432 (= e!42408 e!42404)))

(declare-fun c!19822 () Bool)

(declare-fun lt!17853 () Bool)

(assert (=> b!78432 (= c!19822 lt!17853)))

(declare-fun lt!17851 () Formula!107)

(assert (=> b!78432 (= lt!17851 e!42409)))

(declare-fun c!19829 () Bool)

(assert (=> b!78432 (= c!19829 (or lt!17853 (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(declare-fun lt!17847 () Formula!107)

(assert (=> b!78432 (= lt!17847 e!42401)))

(declare-fun c!19819 () Bool)

(assert (=> b!78432 (= c!19819 (or lt!17853 (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78432 (= lt!17853 (is-Or!111 (Not!111 (rhs!1435 (f!4759 formula!94)))))))

(declare-fun b!78433 () Bool)

(assert (=> b!78433 (= e!42411 lt!17851)))

(declare-fun b!78434 () Bool)

(declare-fun e!42396 () Formula!107)

(declare-fun lt!17849 () Formula!107)

(assert (=> b!78434 (= e!42396 lt!17849)))

(declare-fun b!78435 () Bool)

(declare-fun lt!17850 () Formula!107)

(assert (=> b!78435 (= e!42397 lt!17850)))

(declare-fun b!78436 () Bool)

(declare-fun e!42399 () Formula!107)

(declare-fun lt!17856 () Bool)

(assert (=> b!78436 (= e!42399 (nnf!0 (ite lt!17856 (lhs!1435 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (is-Or!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (lhs!1436 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (lhs!1434 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (Not!111 (lhs!1435 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (Not!111 (lhs!1436 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (lhs!1434 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))) (f!4759 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))))))))

(declare-fun b!78437 () Bool)

(declare-fun lt!17863 () Formula!107)

(assert (=> b!78437 (= e!42401 lt!17863)))

(declare-fun b!78438 () Bool)

(declare-fun e!42405 () Formula!107)

(assert (=> b!78438 (= e!42405 (Or!111 lt!17850 lt!17848))))

(declare-fun b!78439 () Bool)

(declare-fun e!42410 () Formula!107)

(assert (=> b!78439 (= e!42410 lt!17847)))

(declare-fun b!78440 () Bool)

(declare-fun e!42402 () Formula!107)

(declare-fun lt!17859 () Formula!107)

(assert (=> b!78440 (= e!42402 (Implies!111 lt!17852 lt!17859))))

(declare-fun b!78441 () Bool)

(assert (=> b!78441 (= e!42402 e!42405)))

(declare-fun c!19815 () Bool)

(declare-fun lt!17854 () Bool)

(assert (=> b!78441 (= c!19815 lt!17854)))

(assert (=> b!78441 (= lt!17848 e!42398)))

(declare-fun c!19825 () Bool)

(assert (=> b!78441 (= c!19825 (or lt!17854 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78441 (= lt!17850 e!42400)))

(declare-fun c!19818 () Bool)

(assert (=> b!78441 (= c!19818 (or lt!17854 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78441 (= lt!17854 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))

(declare-fun d!54985 () Bool)

(declare-fun lt!17864 () Formula!107)

(assert (=> d!54985 (isNNF!0 lt!17864)))

(assert (=> d!54985 (= lt!17864 e!42408)))

(declare-fun c!19821 () Bool)

(assert (=> d!54985 (= c!19821 lt!17856)))

(assert (=> d!54985 (= lt!17857 e!42403)))

(declare-fun c!19814 () Bool)

(assert (=> d!54985 (= c!19814 (or lt!17856 (is-Or!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> d!54985 (= lt!17863 e!42399)))

(declare-fun c!19816 () Bool)

(assert (=> d!54985 (= c!19816 (or lt!17856 (is-Or!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> d!54985 (= lt!17856 (is-And!111 (Not!111 (rhs!1435 (f!4759 formula!94)))))))

(assert (=> d!54985 (= (nnf!0 (Not!111 (rhs!1435 (f!4759 formula!94)))) lt!17864)))

(declare-fun b!78442 () Bool)

(assert (=> b!78442 (= e!42404 (Or!111 lt!17847 lt!17851))))

(declare-fun b!78443 () Bool)

(declare-fun e!42406 () Formula!107)

(declare-fun lt!17862 () Formula!107)

(assert (=> b!78443 (= e!42406 (And!111 lt!17849 lt!17862))))

(declare-fun b!78444 () Bool)

(assert (=> b!78444 (= e!42405 e!42406)))

(declare-fun c!19823 () Bool)

(declare-fun lt!17861 () Bool)

(assert (=> b!78444 (= c!19823 lt!17861)))

(assert (=> b!78444 (= lt!17862 e!42407)))

(declare-fun c!19827 () Bool)

(assert (=> b!78444 (= c!19827 (or lt!17861 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78444 (= lt!17849 e!42397)))

(declare-fun c!19817 () Bool)

(assert (=> b!78444 (= c!19817 (or lt!17861 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78444 (= lt!17861 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))

(declare-fun b!78445 () Bool)

(declare-fun res!39439 () Formula!107)

(assert (=> b!78445 (= e!42399 res!39439)))

(assert (=> b!78445 true))

(declare-fun b!78446 () Bool)

(declare-fun res!39442 () Formula!107)

(assert (=> b!78446 (= e!42396 res!39442)))

(assert (=> b!78446 true))

(assert (=> b!78446 true))

(declare-fun b!78447 () Bool)

(declare-fun res!39441 () Formula!107)

(assert (=> b!78447 (= e!42410 res!39441)))

(assert (=> b!78447 true))

(declare-fun b!78448 () Bool)

(assert (=> b!78448 (= e!42404 e!42402)))

(declare-fun c!19828 () Bool)

(declare-fun lt!17855 () Bool)

(assert (=> b!78448 (= c!19828 lt!17855)))

(assert (=> b!78448 (= lt!17859 e!42411)))

(declare-fun c!19820 () Bool)

(assert (=> b!78448 (= c!19820 (or lt!17855 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78448 (= lt!17852 e!42410)))

(declare-fun c!19824 () Bool)

(assert (=> b!78448 (= c!19824 (or lt!17855 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78448 (= lt!17855 (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))))))

(declare-fun b!78449 () Bool)

(declare-fun res!39438 () Formula!107)

(assert (=> b!78449 (= e!42400 res!39438)))

(assert (=> b!78449 true))

(declare-fun b!78450 () Bool)

(assert (=> b!78450 (= e!42403 (nnf!0 (ite lt!17856 (rhs!1435 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (is-Or!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (rhs!1436 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (is-Implies!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (rhs!1434 (Not!111 (rhs!1435 (f!4759 formula!94)))) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-And!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1435 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Or!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1436 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) (Not!111 (rhs!1434 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))))))))

(declare-fun b!78451 () Bool)

(declare-fun res!39444 () Formula!107)

(assert (=> b!78451 (= e!42407 res!39444)))

(assert (=> b!78451 true))

(declare-fun b!78452 () Bool)

(assert (=> b!78452 (= e!42408 (And!111 lt!17863 lt!17857))))

(declare-fun b!78453 () Bool)

(declare-fun lt!17860 () Formula!107)

(declare-fun lt!17858 () Bool)

(assert (=> b!78453 (= e!42406 (ite lt!17858 (And!111 lt!17860 lt!17862) (ite (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))) lt!17860 (Not!111 (rhs!1435 (f!4759 formula!94))))))))

(assert (=> b!78453 (= lt!17860 e!42396)))

(declare-fun c!19826 () Bool)

(assert (=> b!78453 (= c!19826 (or lt!17858 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Not!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94))))))))))

(assert (=> b!78453 (= lt!17858 (and (is-Not!111 (Not!111 (rhs!1435 (f!4759 formula!94)))) (is-Implies!111 (f!4759 (Not!111 (rhs!1435 (f!4759 formula!94)))))))))

(declare-fun b!78454 () Bool)

(assert (=> b!78454 (= e!42398 lt!17859)))

(assert (= (and d!54985 c!19816) b!78436))

(assert (= (and d!54985 (not c!19816)) b!78445))

(assert (= (and d!54985 c!19814) b!78450))

(assert (= (and d!54985 (not c!19814)) b!78426))

(assert (= (and b!78432 c!19819) b!78437))

(assert (= (and b!78432 (not c!19819)) b!78427))

(assert (= (and b!78432 c!19829) b!78424))

(assert (= (and b!78432 (not c!19829)) b!78430))

(assert (= (and b!78448 c!19824) b!78439))

(assert (= (and b!78448 (not c!19824)) b!78447))

(assert (= (and b!78448 c!19820) b!78433))

(assert (= (and b!78448 (not c!19820)) b!78423))

(assert (= (and b!78441 c!19818) b!78425))

(assert (= (and b!78441 (not c!19818)) b!78449))

(assert (= (and b!78441 c!19825) b!78454))

(assert (= (and b!78441 (not c!19825)) b!78428))

(assert (= (and b!78444 c!19817) b!78435))

(assert (= (and b!78444 (not c!19817)) b!78429))

(assert (= (and b!78444 c!19827) b!78431))

(assert (= (and b!78444 (not c!19827)) b!78451))

(assert (= (and b!78453 c!19826) b!78434))

(assert (= (and b!78453 (not c!19826)) b!78446))

(assert (= (and b!78444 c!19823) b!78443))

(assert (= (and b!78444 (not c!19823)) b!78453))

(assert (= (and b!78441 c!19815) b!78438))

(assert (= (and b!78441 (not c!19815)) b!78444))

(assert (= (and b!78448 c!19828) b!78440))

(assert (= (and b!78448 (not c!19828)) b!78441))

(assert (= (and b!78432 c!19822) b!78442))

(assert (= (and b!78432 (not c!19822)) b!78448))

(assert (= (and d!54985 c!19821) b!78452))

(assert (= (and d!54985 (not c!19821)) b!78432))

(declare-fun m!73578 () Bool)

(assert (=> b!78436 m!73578))

(declare-fun m!73580 () Bool)

(assert (=> d!54985 m!73580))

(declare-fun m!73582 () Bool)

(assert (=> b!78450 m!73582))

(assert (=> b!78253 d!54985))

(push 1)

(assert (not d!54983))

(assert (not d!54985))

(assert (not b!78304))

(assert (not b!78436))

(assert (not b!78450))

(assert (not b!78319))

(assert (not b!78404))

(assert (not b!78418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

