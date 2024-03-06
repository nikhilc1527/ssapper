; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4648 () Bool)

(assert start!4648)

(declare-fun res!16372 () Bool)

(declare-fun e!17924 () Bool)

(assert (=> start!4648 (=> (not res!16372) (not e!17924))))

(declare-datatypes () ((Expr!3 (And!4 (lhs!198 Expr!3) (rhs!198 Expr!3)) (Implies!4 (lhs!199 Expr!3) (rhs!199 Expr!3)) (BoolLiteral!1 (i!413 Int)) (Or!4 (lhs!200 Expr!3) (rhs!200 Expr!3)) (Not!4 (e!17926 Expr!3)))))

(declare-fun e!17837 () Expr!3)

(assert (=> start!4648 (= res!16372 (is-And!4 e!17837))))

(assert (=> start!4648 e!17924))

(assert (=> start!4648 true))

(declare-fun b!35298 () Bool)

(declare-fun res!16374 () Bool)

(assert (=> b!35298 (=> (not res!16374) (not e!17924))))

(declare-fun out!47 () Expr!3)

(declare-fun desugar!0 (Expr!3) Expr!3)

(assert (=> b!35298 (= res!16374 (= out!47 (And!4 (desugar!0 (lhs!198 e!17837)) (desugar!0 (rhs!198 e!17837)))))))

(declare-fun b!35299 () Bool)

(declare-fun e!17925 () Bool)

(assert (=> b!35299 (= e!17924 e!17925)))

(declare-fun res!16373 () Bool)

(assert (=> b!35299 (=> res!16373 e!17925)))

(declare-fun existsImplies!0 (Expr!3) Bool)

(assert (=> b!35299 (= res!16373 (existsImplies!0 out!47))))

(declare-fun b!35300 () Bool)

(declare-fun lambda!4183 () Int)

(declare-fun exists!6 (Expr!3 Int) Bool)

(assert (=> b!35300 (= e!17925 (exists!6 out!47 lambda!4183))))

(assert (= (and start!4648 res!16372) b!35298))

(assert (= (and b!35298 res!16374) b!35299))

(assert (= (and b!35299 (not res!16373)) b!35300))

(declare-fun m!38081 () Bool)

(assert (=> b!35298 m!38081))

(declare-fun m!38083 () Bool)

(assert (=> b!35298 m!38083))

(declare-fun m!38085 () Bool)

(assert (=> b!35299 m!38085))

(declare-fun m!38087 () Bool)

(assert (=> b!35300 m!38087))

(push 1)

(assert (not b!35298))

(assert (not b!35300))

(assert (not b!35299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11300 () Bool)

(declare-fun b!35345 () Bool)

(assert (= bs!11300 (and b!35345 b!35300)))

(declare-fun lambda!4186 () Int)

(assert (=> bs!11300 (= lambda!4186 lambda!4183)))

(declare-fun b!35331 () Bool)

(declare-fun e!17949 () Expr!3)

(declare-fun res!16405 () Expr!3)

(assert (=> b!35331 (= e!17949 res!16405)))

(assert (=> b!35331 true))

(declare-fun b!35332 () Bool)

(declare-fun e!17948 () Expr!3)

(declare-fun res!16404 () Expr!3)

(assert (=> b!35332 (= e!17948 res!16404)))

(assert (=> b!35332 true))

(assert (=> b!35332 true))

(declare-fun b!35333 () Bool)

(declare-fun e!17951 () Expr!3)

(declare-fun lt!6737 () Bool)

(assert (=> b!35333 (= e!17951 (desugar!0 (ite lt!6737 (rhs!198 (lhs!198 e!17837)) (ite (is-Or!4 (lhs!198 e!17837)) (rhs!200 (lhs!198 e!17837)) (rhs!199 (lhs!198 e!17837))))))))

(declare-fun b!35334 () Bool)

(declare-fun e!17944 () Expr!3)

(declare-fun lt!6736 () Expr!3)

(assert (=> b!35334 (= e!17944 lt!6736)))

(declare-fun b!35335 () Bool)

(declare-fun lt!6729 () Expr!3)

(declare-fun lt!6735 () Bool)

(declare-fun e!17947 () Expr!3)

(declare-fun lt!6730 () Expr!3)

(assert (=> b!35335 (= e!17947 (ite lt!6735 (Or!4 (Not!4 lt!6730) lt!6729) (ite (is-Not!4 (lhs!198 e!17837)) (Not!4 lt!6730) (lhs!198 e!17837))))))

(assert (=> b!35335 (= lt!6730 e!17948)))

(declare-fun c!7509 () Bool)

(assert (=> b!35335 (= c!7509 (or lt!6735 (is-Not!4 (lhs!198 e!17837))))))

(assert (=> b!35335 (= lt!6735 (is-Implies!4 (lhs!198 e!17837)))))

(declare-fun b!35336 () Bool)

(assert (=> b!35336 (= e!17949 (desugar!0 (ite lt!6737 (lhs!198 (lhs!198 e!17837)) (ite (is-Or!4 (lhs!198 e!17837)) (lhs!200 (lhs!198 e!17837)) (ite (is-Implies!4 (lhs!198 e!17837)) (lhs!199 (lhs!198 e!17837)) (e!17926 (lhs!198 e!17837)))))))))

(declare-fun b!35337 () Bool)

(declare-fun e!17945 () Expr!3)

(declare-fun lt!6732 () Expr!3)

(assert (=> b!35337 (= e!17945 lt!6732)))

(declare-fun b!35338 () Bool)

(declare-fun lt!6731 () Expr!3)

(assert (=> b!35338 (= e!17948 lt!6731)))

(declare-fun b!35339 () Bool)

(declare-fun res!16402 () Expr!3)

(assert (=> b!35339 (= e!17944 res!16402)))

(assert (=> b!35339 true))

(declare-fun b!35340 () Bool)

(declare-fun e!17946 () Expr!3)

(assert (=> b!35340 (= e!17946 (And!4 lt!6732 lt!6736))))

(declare-fun b!35341 () Bool)

(assert (=> b!35341 (= e!17947 (Or!4 lt!6731 lt!6729))))

(declare-fun b!35342 () Bool)

(declare-fun res!16406 () Expr!3)

(assert (=> b!35342 (= e!17945 res!16406)))

(assert (=> b!35342 true))

(declare-fun b!35343 () Bool)

(declare-fun res!16403 () Expr!3)

(assert (=> b!35343 (= e!17951 res!16403)))

(assert (=> b!35343 true))

(declare-fun b!35344 () Bool)

(assert (=> b!35344 (= e!17946 e!17947)))

(declare-fun c!7505 () Bool)

(declare-fun lt!6733 () Bool)

(assert (=> b!35344 (= c!7505 lt!6733)))

(assert (=> b!35344 (= lt!6729 e!17944)))

(declare-fun c!7504 () Bool)

(assert (=> b!35344 (= c!7504 (or lt!6733 (is-Implies!4 (lhs!198 e!17837))))))

(assert (=> b!35344 (= lt!6731 e!17945)))

(declare-fun c!7510 () Bool)

(assert (=> b!35344 (= c!7510 (or lt!6733 (is-Implies!4 (lhs!198 e!17837)) (is-Not!4 (lhs!198 e!17837))))))

(assert (=> b!35344 (= lt!6733 (is-Or!4 (lhs!198 e!17837)))))

(declare-fun e!17950 () Bool)

(declare-fun lt!6734 () Expr!3)

(assert (=> b!35345 (= e!17950 (not (exists!6 lt!6734 lambda!4186)))))

(declare-fun d!18498 () Bool)

(assert (=> d!18498 e!17950))

(declare-fun res!16407 () Bool)

(assert (=> d!18498 (=> (not res!16407) (not e!17950))))

(assert (=> d!18498 (= res!16407 (not (existsImplies!0 lt!6734)))))

(assert (=> d!18498 (= lt!6734 e!17946)))

(declare-fun c!7507 () Bool)

(assert (=> d!18498 (= c!7507 lt!6737)))

(assert (=> d!18498 (= lt!6736 e!17951)))

(declare-fun c!7506 () Bool)

(assert (=> d!18498 (= c!7506 (or lt!6737 (is-Or!4 (lhs!198 e!17837)) (is-Implies!4 (lhs!198 e!17837))))))

(assert (=> d!18498 (= lt!6732 e!17949)))

(declare-fun c!7508 () Bool)

(assert (=> d!18498 (= c!7508 (or lt!6737 (is-Or!4 (lhs!198 e!17837)) (is-Implies!4 (lhs!198 e!17837)) (is-Not!4 (lhs!198 e!17837))))))

(assert (=> d!18498 (= lt!6737 (is-And!4 (lhs!198 e!17837)))))

(assert (=> d!18498 (= (desugar!0 (lhs!198 e!17837)) lt!6734)))

(assert (= (and d!18498 c!7508) b!35336))

(assert (= (and d!18498 (not c!7508)) b!35331))

(assert (= (and d!18498 c!7506) b!35333))

(assert (= (and d!18498 (not c!7506)) b!35343))

(assert (= (and b!35344 c!7510) b!35337))

(assert (= (and b!35344 (not c!7510)) b!35342))

(assert (= (and b!35344 c!7504) b!35334))

(assert (= (and b!35344 (not c!7504)) b!35339))

(assert (= (and b!35335 c!7509) b!35338))

(assert (= (and b!35335 (not c!7509)) b!35332))

(assert (= (and b!35344 c!7505) b!35341))

(assert (= (and b!35344 (not c!7505)) b!35335))

(assert (= (and d!18498 c!7507) b!35340))

(assert (= (and d!18498 (not c!7507)) b!35344))

(assert (= (and d!18498 res!16407) b!35345))

(declare-fun m!38089 () Bool)

(assert (=> b!35333 m!38089))

(declare-fun m!38091 () Bool)

(assert (=> b!35336 m!38091))

(declare-fun m!38093 () Bool)

(assert (=> b!35345 m!38093))

(declare-fun m!38095 () Bool)

(assert (=> d!18498 m!38095))

(assert (=> b!35298 d!18498))

(declare-fun bs!11301 () Bool)

(declare-fun b!35360 () Bool)

(assert (= bs!11301 (and b!35360 b!35300)))

(declare-fun lambda!4187 () Int)

(assert (=> bs!11301 (= lambda!4187 lambda!4183)))

(declare-fun bs!11302 () Bool)

(assert (= bs!11302 (and b!35360 b!35345)))

(assert (=> bs!11302 (= lambda!4187 lambda!4186)))

(declare-fun b!35346 () Bool)

(declare-fun e!17957 () Expr!3)

(declare-fun res!16411 () Expr!3)

(assert (=> b!35346 (= e!17957 res!16411)))

(assert (=> b!35346 true))

(declare-fun b!35347 () Bool)

(declare-fun e!17956 () Expr!3)

(declare-fun res!16410 () Expr!3)

(assert (=> b!35347 (= e!17956 res!16410)))

(assert (=> b!35347 true))

(assert (=> b!35347 true))

(declare-fun b!35348 () Bool)

(declare-fun e!17959 () Expr!3)

(declare-fun lt!6746 () Bool)

(assert (=> b!35348 (= e!17959 (desugar!0 (ite lt!6746 (rhs!198 (rhs!198 e!17837)) (ite (is-Or!4 (rhs!198 e!17837)) (rhs!200 (rhs!198 e!17837)) (rhs!199 (rhs!198 e!17837))))))))

(declare-fun b!35349 () Bool)

(declare-fun e!17952 () Expr!3)

(declare-fun lt!6745 () Expr!3)

(assert (=> b!35349 (= e!17952 lt!6745)))

(declare-fun b!35350 () Bool)

(declare-fun lt!6738 () Expr!3)

(declare-fun lt!6744 () Bool)

(declare-fun e!17955 () Expr!3)

(declare-fun lt!6739 () Expr!3)

(assert (=> b!35350 (= e!17955 (ite lt!6744 (Or!4 (Not!4 lt!6739) lt!6738) (ite (is-Not!4 (rhs!198 e!17837)) (Not!4 lt!6739) (rhs!198 e!17837))))))

(assert (=> b!35350 (= lt!6739 e!17956)))

(declare-fun c!7516 () Bool)

(assert (=> b!35350 (= c!7516 (or lt!6744 (is-Not!4 (rhs!198 e!17837))))))

(assert (=> b!35350 (= lt!6744 (is-Implies!4 (rhs!198 e!17837)))))

(declare-fun b!35351 () Bool)

(assert (=> b!35351 (= e!17957 (desugar!0 (ite lt!6746 (lhs!198 (rhs!198 e!17837)) (ite (is-Or!4 (rhs!198 e!17837)) (lhs!200 (rhs!198 e!17837)) (ite (is-Implies!4 (rhs!198 e!17837)) (lhs!199 (rhs!198 e!17837)) (e!17926 (rhs!198 e!17837)))))))))

(declare-fun b!35352 () Bool)

(declare-fun e!17953 () Expr!3)

(declare-fun lt!6741 () Expr!3)

(assert (=> b!35352 (= e!17953 lt!6741)))

(declare-fun b!35353 () Bool)

(declare-fun lt!6740 () Expr!3)

(assert (=> b!35353 (= e!17956 lt!6740)))

(declare-fun b!35354 () Bool)

(declare-fun res!16408 () Expr!3)

(assert (=> b!35354 (= e!17952 res!16408)))

(assert (=> b!35354 true))

(declare-fun b!35355 () Bool)

(declare-fun e!17954 () Expr!3)

(assert (=> b!35355 (= e!17954 (And!4 lt!6741 lt!6745))))

(declare-fun b!35356 () Bool)

(assert (=> b!35356 (= e!17955 (Or!4 lt!6740 lt!6738))))

(declare-fun b!35357 () Bool)

(declare-fun res!16412 () Expr!3)

(assert (=> b!35357 (= e!17953 res!16412)))

(assert (=> b!35357 true))

(declare-fun b!35358 () Bool)

(declare-fun res!16409 () Expr!3)

(assert (=> b!35358 (= e!17959 res!16409)))

(assert (=> b!35358 true))

(declare-fun b!35359 () Bool)

(assert (=> b!35359 (= e!17954 e!17955)))

(declare-fun c!7512 () Bool)

(declare-fun lt!6742 () Bool)

(assert (=> b!35359 (= c!7512 lt!6742)))

(assert (=> b!35359 (= lt!6738 e!17952)))

(declare-fun c!7511 () Bool)

(assert (=> b!35359 (= c!7511 (or lt!6742 (is-Implies!4 (rhs!198 e!17837))))))

(assert (=> b!35359 (= lt!6740 e!17953)))

(declare-fun c!7517 () Bool)

(assert (=> b!35359 (= c!7517 (or lt!6742 (is-Implies!4 (rhs!198 e!17837)) (is-Not!4 (rhs!198 e!17837))))))

(assert (=> b!35359 (= lt!6742 (is-Or!4 (rhs!198 e!17837)))))

(declare-fun e!17958 () Bool)

(declare-fun lt!6743 () Expr!3)

(assert (=> b!35360 (= e!17958 (not (exists!6 lt!6743 lambda!4187)))))

(declare-fun d!18500 () Bool)

(assert (=> d!18500 e!17958))

(declare-fun res!16413 () Bool)

(assert (=> d!18500 (=> (not res!16413) (not e!17958))))

(assert (=> d!18500 (= res!16413 (not (existsImplies!0 lt!6743)))))

(assert (=> d!18500 (= lt!6743 e!17954)))

(declare-fun c!7514 () Bool)

(assert (=> d!18500 (= c!7514 lt!6746)))

(assert (=> d!18500 (= lt!6745 e!17959)))

(declare-fun c!7513 () Bool)

(assert (=> d!18500 (= c!7513 (or lt!6746 (is-Or!4 (rhs!198 e!17837)) (is-Implies!4 (rhs!198 e!17837))))))

(assert (=> d!18500 (= lt!6741 e!17957)))

(declare-fun c!7515 () Bool)

(assert (=> d!18500 (= c!7515 (or lt!6746 (is-Or!4 (rhs!198 e!17837)) (is-Implies!4 (rhs!198 e!17837)) (is-Not!4 (rhs!198 e!17837))))))

(assert (=> d!18500 (= lt!6746 (is-And!4 (rhs!198 e!17837)))))

(assert (=> d!18500 (= (desugar!0 (rhs!198 e!17837)) lt!6743)))

(assert (= (and d!18500 c!7515) b!35351))

(assert (= (and d!18500 (not c!7515)) b!35346))

(assert (= (and d!18500 c!7513) b!35348))

(assert (= (and d!18500 (not c!7513)) b!35358))

(assert (= (and b!35359 c!7517) b!35352))

(assert (= (and b!35359 (not c!7517)) b!35357))

(assert (= (and b!35359 c!7511) b!35349))

(assert (= (and b!35359 (not c!7511)) b!35354))

(assert (= (and b!35350 c!7516) b!35353))

(assert (= (and b!35350 (not c!7516)) b!35347))

(assert (= (and b!35359 c!7512) b!35356))

(assert (= (and b!35359 (not c!7512)) b!35350))

(assert (= (and d!18500 c!7514) b!35355))

(assert (= (and d!18500 (not c!7514)) b!35359))

(assert (= (and d!18500 res!16413) b!35360))

(declare-fun m!38097 () Bool)

(assert (=> b!35348 m!38097))

(declare-fun m!38099 () Bool)

(assert (=> b!35351 m!38099))

(declare-fun m!38101 () Bool)

(assert (=> b!35360 m!38101))

(declare-fun m!38103 () Bool)

(assert (=> d!18500 m!38103))

(assert (=> b!35298 d!18500))

(declare-fun b!35433 () Bool)

(declare-fun e!18018 () Bool)

(declare-fun lt!6777 () Bool)

(assert (=> b!35433 (= e!18018 lt!6777)))

(declare-fun b!35434 () Bool)

(declare-fun e!18011 () Bool)

(declare-fun lt!6775 () Bool)

(assert (=> b!35434 (= e!18011 lt!6775)))

(declare-fun b!35435 () Bool)

(declare-fun e!18014 () Bool)

(declare-fun res!16476 () Bool)

(assert (=> b!35435 (= e!18014 res!16476)))

(assert (=> b!35435 true))

(declare-fun b!35436 () Bool)

(declare-fun e!18012 () Bool)

(declare-fun lt!6779 () Bool)

(assert (=> b!35436 (= e!18012 lt!6779)))

(declare-fun b!35437 () Bool)

(declare-fun res!16483 () Bool)

(assert (=> b!35437 (= e!18012 res!16483)))

(assert (=> b!35437 true))

(declare-fun lt!6781 () Bool)

(declare-fun e!18027 () Bool)

(declare-fun b!35438 () Bool)

(assert (=> b!35438 (= e!18027 (exists!6 (ite lt!6781 (lhs!198 out!47) (ite (is-Or!4 out!47) (lhs!200 out!47) (ite (is-Implies!4 out!47) (lhs!199 out!47) (e!17926 out!47)))) lambda!4183))))

(declare-fun b!35439 () Bool)

(declare-fun e!18008 () Bool)

(declare-fun lt!6776 () Bool)

(assert (=> b!35439 (= e!18008 (or lt!6775 lt!6776))))

(declare-fun b!35440 () Bool)

(declare-fun e!18017 () Bool)

(declare-fun e!18007 () Bool)

(assert (=> b!35440 (= e!18017 e!18007)))

(declare-fun res!16486 () Bool)

(assert (=> b!35440 (=> res!16486 e!18007)))

(declare-fun lt!6782 () Bool)

(assert (=> b!35440 (= res!16486 (and lt!6782 (not lt!6777)))))

(declare-fun e!18020 () Bool)

(assert (=> b!35440 (= lt!6777 e!18020)))

(declare-fun c!7547 () Bool)

(assert (=> b!35440 (= c!7547 (or lt!6782 (is-Implies!4 out!47) (is-Not!4 out!47)))))

(assert (=> b!35440 (= lt!6782 (is-Or!4 out!47))))

(declare-fun b!35441 () Bool)

(declare-fun e!18021 () Bool)

(assert (=> b!35441 (= e!18021 e!18008)))

(declare-fun c!7548 () Bool)

(declare-fun lt!6786 () Bool)

(assert (=> b!35441 (= c!7548 lt!6786)))

(assert (=> b!35441 (= lt!6776 e!18012)))

(declare-fun c!7552 () Bool)

(declare-fun e!18029 () Bool)

(assert (=> b!35441 (= c!7552 e!18029)))

(declare-fun res!16491 () Bool)

(assert (=> b!35441 (=> res!16491 e!18029)))

(assert (=> b!35441 (= res!16491 (and lt!6786 (not lt!6775)))))

(assert (=> b!35441 (= lt!6775 e!18014)))

(declare-fun c!7549 () Bool)

(assert (=> b!35441 (= c!7549 (or lt!6786 (is-Implies!4 out!47) (is-Not!4 out!47)))))

(assert (=> b!35441 (= lt!6786 (is-Or!4 out!47))))

(declare-fun lt!6778 () Bool)

(declare-fun b!35442 () Bool)

(declare-fun lt!6788 () Bool)

(assert (=> b!35442 (= e!18008 (ite lt!6788 (or lt!6778 lt!6776) (and (is-Not!4 out!47) lt!6778)))))

(declare-fun e!18025 () Bool)

(assert (=> b!35442 (= lt!6778 e!18025)))

(declare-fun c!7556 () Bool)

(assert (=> b!35442 (= c!7556 (or lt!6788 (is-Not!4 out!47)))))

(assert (=> b!35442 (= lt!6788 (is-Implies!4 out!47))))

(declare-fun b!35443 () Bool)

(declare-fun lt!6787 () Bool)

(assert (=> b!35443 (= e!18021 (or lt!6787 lt!6779))))

(declare-fun b!35444 () Bool)

(declare-fun e!18024 () Bool)

(assert (=> b!35444 (= e!18007 e!18024)))

(declare-fun res!16489 () Bool)

(assert (=> b!35444 (=> (not res!16489) (not e!18024))))

(assert (=> b!35444 (= res!16489 (not lt!6782))))

(declare-fun d!18502 () Bool)

(declare-fun res!16484 () Bool)

(declare-fun e!18019 () Bool)

(assert (=> d!18502 (=> res!16484 e!18019)))

(declare-fun dynLambda!645 (Int Expr!3) Bool)

(assert (=> d!18502 (= res!16484 (dynLambda!645 lambda!4183 out!47))))

(assert (=> d!18502 (= (exists!6 out!47 lambda!4183) e!18019)))

(declare-fun b!35445 () Bool)

(declare-fun res!16477 () Bool)

(assert (=> b!35445 (= e!18027 res!16477)))

(assert (=> b!35445 true))

(declare-fun b!35446 () Bool)

(assert (=> b!35446 (= e!18020 lt!6787)))

(declare-fun b!35447 () Bool)

(declare-fun res!16480 () Bool)

(assert (=> b!35447 (= e!18018 res!16480)))

(assert (=> b!35447 true))

(declare-fun b!35448 () Bool)

(declare-fun e!18009 () Expr!3)

(assert (=> b!35448 (= e!18009 (rhs!198 out!47))))

(declare-fun b!35449 () Bool)

(declare-fun e!18010 () Bool)

(declare-fun e!18016 () Bool)

(assert (=> b!35449 (= e!18010 e!18016)))

(declare-fun res!16481 () Bool)

(assert (=> b!35449 (=> (not res!16481) (not e!18016))))

(declare-fun lt!6784 () Bool)

(assert (=> b!35449 (= res!16481 lt!6784)))

(assert (=> b!35449 (= lt!6784 (is-Implies!4 out!47))))

(declare-fun b!35450 () Bool)

(declare-fun e!18013 () Expr!3)

(assert (=> b!35450 (= e!18013 (rhs!199 out!47))))

(declare-fun b!35451 () Bool)

(assert (=> b!35451 (= e!18009 e!18013)))

(declare-fun c!7555 () Bool)

(declare-fun e!18015 () Bool)

(assert (=> b!35451 (= c!7555 e!18015)))

(declare-fun res!16492 () Bool)

(assert (=> b!35451 (=> (not res!16492) (not e!18015))))

(declare-fun lt!6785 () Bool)

(assert (=> b!35451 (= res!16492 lt!6785)))

(assert (=> b!35451 (= lt!6785 (is-Or!4 out!47))))

(declare-fun b!35452 () Bool)

(declare-fun e!18028 () Bool)

(assert (=> b!35452 (= e!18028 (exists!6 e!18009 lambda!4183))))

(declare-fun c!7544 () Bool)

(declare-fun lt!6780 () Bool)

(assert (=> b!35452 (= c!7544 lt!6780)))

(declare-fun b!35453 () Bool)

(declare-fun e!18026 () Bool)

(assert (=> b!35453 (= e!18026 lt!6787)))

(declare-fun b!35454 () Bool)

(declare-fun e!18022 () Bool)

(assert (=> b!35454 (= e!18024 e!18022)))

(declare-fun res!16482 () Bool)

(assert (=> b!35454 (=> (not res!16482) (not e!18022))))

(declare-fun lt!6783 () Bool)

(assert (=> b!35454 (= res!16482 lt!6783)))

(assert (=> b!35454 (= lt!6783 (is-Implies!4 out!47))))

(declare-fun b!35455 () Bool)

(declare-fun res!16475 () Bool)

(assert (=> b!35455 (= e!18011 res!16475)))

(assert (=> b!35455 true))

(declare-fun b!35456 () Bool)

(assert (=> b!35456 (= e!18014 lt!6787)))

(declare-fun b!35457 () Bool)

(assert (=> b!35457 (= e!18022 (not e!18018))))

(declare-fun c!7554 () Bool)

(assert (=> b!35457 (= c!7554 (or lt!6783 (is-Not!4 out!47)))))

(declare-fun b!35458 () Bool)

(declare-fun res!16478 () Bool)

(assert (=> b!35458 (= e!18028 res!16478)))

(assert (=> b!35458 true))

(declare-fun b!35459 () Bool)

(declare-fun e!18023 () Bool)

(assert (=> b!35459 (= e!18023 e!18017)))

(declare-fun res!16488 () Bool)

(assert (=> b!35459 (=> (not res!16488) (not e!18017))))

(assert (=> b!35459 (= res!16488 (not lt!6781))))

(declare-fun b!35460 () Bool)

(assert (=> b!35460 (= e!18013 (rhs!200 out!47))))

(declare-fun b!35461 () Bool)

(declare-fun res!16479 () Bool)

(assert (=> b!35461 (= e!18026 res!16479)))

(assert (=> b!35461 true))

(declare-fun b!35462 () Bool)

(assert (=> b!35462 (= e!18025 lt!6775)))

(declare-fun b!35463 () Bool)

(assert (=> b!35463 (= e!18015 (not e!18026))))

(declare-fun c!7545 () Bool)

(assert (=> b!35463 (= c!7545 (or lt!6785 (is-Implies!4 out!47) (is-Not!4 out!47)))))

(declare-fun b!35464 () Bool)

(assert (=> b!35464 (= e!18029 e!18010)))

(declare-fun res!16474 () Bool)

(assert (=> b!35464 (=> (not res!16474) (not e!18010))))

(assert (=> b!35464 (= res!16474 (not lt!6786))))

(declare-fun b!35465 () Bool)

(declare-fun res!16487 () Bool)

(assert (=> b!35465 (= e!18020 res!16487)))

(assert (=> b!35465 true))

(declare-fun b!35466 () Bool)

(declare-fun res!16485 () Bool)

(assert (=> b!35466 (= e!18025 res!16485)))

(assert (=> b!35466 true))

(assert (=> b!35466 true))

(declare-fun b!35467 () Bool)

(assert (=> b!35467 (= e!18016 (not e!18011))))

(declare-fun c!7546 () Bool)

(assert (=> b!35467 (= c!7546 (or lt!6784 (is-Not!4 out!47)))))

(declare-fun b!35468 () Bool)

(assert (=> b!35468 (= e!18019 e!18021)))

(declare-fun c!7553 () Bool)

(assert (=> b!35468 (= c!7553 lt!6781)))

(assert (=> b!35468 (= lt!6779 e!18028)))

(declare-fun c!7550 () Bool)

(assert (=> b!35468 (= c!7550 e!18023)))

(declare-fun res!16490 () Bool)

(assert (=> b!35468 (=> res!16490 e!18023)))

(assert (=> b!35468 (= res!16490 lt!6780)))

(assert (=> b!35468 (= lt!6780 (and lt!6781 (not lt!6787)))))

(assert (=> b!35468 (= lt!6787 e!18027)))

(declare-fun c!7551 () Bool)

(assert (=> b!35468 (= c!7551 (or lt!6781 (is-Or!4 out!47) (is-Implies!4 out!47) (is-Not!4 out!47)))))

(assert (=> b!35468 (= lt!6781 (is-And!4 out!47))))

(assert (= (and d!18502 (not res!16484)) b!35468))

(assert (= (and b!35468 c!7551) b!35438))

(assert (= (and b!35468 (not c!7551)) b!35445))

(assert (= (and b!35468 (not res!16490)) b!35459))

(assert (= (and b!35459 res!16488) b!35440))

(assert (= (and b!35440 c!7547) b!35446))

(assert (= (and b!35440 (not c!7547)) b!35465))

(assert (= (and b!35440 (not res!16486)) b!35444))

(assert (= (and b!35444 res!16489) b!35454))

(assert (= (and b!35454 res!16482) b!35457))

(assert (= (and b!35457 c!7554) b!35433))

(assert (= (and b!35457 (not c!7554)) b!35447))

(assert (= (and b!35451 res!16492) b!35463))

(assert (= (and b!35463 c!7545) b!35453))

(assert (= (and b!35463 (not c!7545)) b!35461))

(assert (= (and b!35451 c!7555) b!35460))

(assert (= (and b!35451 (not c!7555)) b!35450))

(assert (= (and b!35452 c!7544) b!35448))

(assert (= (and b!35452 (not c!7544)) b!35451))

(assert (= (and b!35468 c!7550) b!35452))

(assert (= (and b!35468 (not c!7550)) b!35458))

(assert (= (and b!35441 c!7549) b!35456))

(assert (= (and b!35441 (not c!7549)) b!35435))

(assert (= (and b!35441 (not res!16491)) b!35464))

(assert (= (and b!35464 res!16474) b!35449))

(assert (= (and b!35449 res!16481) b!35467))

(assert (= (and b!35467 c!7546) b!35434))

(assert (= (and b!35467 (not c!7546)) b!35455))

(assert (= (and b!35441 c!7552) b!35436))

(assert (= (and b!35441 (not c!7552)) b!35437))

(assert (= (and b!35442 c!7556) b!35462))

(assert (= (and b!35442 (not c!7556)) b!35466))

(assert (= (and b!35441 c!7548) b!35439))

(assert (= (and b!35441 (not c!7548)) b!35442))

(assert (= (and b!35468 c!7553) b!35443))

(assert (= (and b!35468 (not c!7553)) b!35441))

(declare-fun b_lambda!9583 () Bool)

(assert (=> (not b_lambda!9583) (not d!18502)))

(declare-fun m!38105 () Bool)

(assert (=> b!35438 m!38105))

(declare-fun m!38107 () Bool)

(assert (=> d!18502 m!38107))

(declare-fun m!38109 () Bool)

(assert (=> b!35452 m!38109))

(assert (=> b!35300 d!18502))

(declare-fun b!35541 () Bool)

(declare-fun e!18099 () Bool)

(declare-fun lt!6827 () Bool)

(assert (=> b!35541 (= e!18099 lt!6827)))

(declare-fun b!35542 () Bool)

(declare-fun e!18084 () Bool)

(declare-fun res!16558 () Bool)

(assert (=> b!35542 (= e!18084 res!16558)))

(assert (=> b!35542 true))

(assert (=> b!35542 true))

(declare-fun b!35543 () Bool)

(declare-fun e!18097 () Bool)

(declare-fun e!18083 () Bool)

(assert (=> b!35543 (= e!18097 e!18083)))

(declare-fun res!16566 () Bool)

(assert (=> b!35543 (=> (not res!16566) (not e!18083))))

(declare-fun lt!6828 () Bool)

(assert (=> b!35543 (= res!16566 (not lt!6828))))

(declare-fun b!35544 () Bool)

(declare-fun e!18080 () Bool)

(declare-fun res!16568 () Bool)

(assert (=> b!35544 (= e!18080 res!16568)))

(assert (=> b!35544 true))

(declare-fun b!35545 () Bool)

(declare-fun lt!6824 () Bool)

(assert (=> b!35545 (= e!18084 lt!6824)))

(declare-fun b!35546 () Bool)

(declare-fun res!16554 () Bool)

(assert (=> b!35546 (= e!18099 res!16554)))

(assert (=> b!35546 true))

(declare-fun b!35547 () Bool)

(declare-fun e!18078 () Bool)

(declare-fun e!18092 () Bool)

(assert (=> b!35547 (= e!18078 (not e!18092))))

(declare-fun c!7585 () Bool)

(declare-fun lt!6829 () Bool)

(assert (=> b!35547 (= c!7585 (or lt!6829 (is-Not!4 out!47)))))

(declare-fun b!35548 () Bool)

(declare-fun e!18082 () Bool)

(declare-fun e!18091 () Bool)

(assert (=> b!35548 (= e!18082 e!18091)))

(declare-fun res!16552 () Bool)

(assert (=> b!35548 (=> (not res!16552) (not e!18091))))

(declare-fun lt!6823 () Bool)

(assert (=> b!35548 (= res!16552 (not lt!6823))))

(declare-fun b!35549 () Bool)

(declare-fun e!18088 () Expr!3)

(assert (=> b!35549 (= e!18088 (rhs!199 out!47))))

(declare-fun b!35550 () Bool)

(declare-fun lt!6826 () Bool)

(assert (=> b!35550 (= e!18080 lt!6826)))

(declare-fun b!35551 () Bool)

(declare-fun e!18090 () Bool)

(assert (=> b!35551 (= e!18090 (not e!18099))))

(declare-fun c!7590 () Bool)

(declare-fun lt!6818 () Bool)

(assert (=> b!35551 (= c!7590 (or lt!6818 (is-Not!4 out!47)))))

(declare-fun b!35552 () Bool)

(declare-fun e!18089 () Bool)

(declare-fun lt!6821 () Bool)

(assert (=> b!35552 (= e!18089 (or lt!6824 lt!6821))))

(declare-fun b!35553 () Bool)

(assert (=> b!35553 (= e!18088 (rhs!200 out!47))))

(declare-fun b!35554 () Bool)

(declare-fun e!18077 () Bool)

(assert (=> b!35554 (= e!18077 (not e!18080))))

(declare-fun c!7593 () Bool)

(declare-fun lt!6830 () Bool)

(assert (=> b!35554 (= c!7593 (or lt!6830 (is-Not!4 out!47)))))

(declare-fun b!35555 () Bool)

(declare-fun e!18095 () Bool)

(assert (=> b!35555 (= e!18095 e!18077)))

(declare-fun res!16564 () Bool)

(assert (=> b!35555 (=> (not res!16564) (not e!18077))))

(assert (=> b!35555 (= res!16564 lt!6830)))

(assert (=> b!35555 (= lt!6830 false)))

(declare-fun b!35556 () Bool)

(declare-fun e!18094 () Bool)

(declare-fun res!16553 () Bool)

(assert (=> b!35556 (= e!18094 res!16553)))

(assert (=> b!35556 true))

(declare-fun b!35557 () Bool)

(declare-fun e!18079 () Bool)

(declare-fun lt!6822 () Bool)

(assert (=> b!35557 (= e!18079 (or lt!6827 lt!6822))))

(declare-fun b!35558 () Bool)

(assert (=> b!35558 (= e!18091 e!18078)))

(declare-fun res!16563 () Bool)

(assert (=> b!35558 (=> (not res!16563) (not e!18078))))

(assert (=> b!35558 (= res!16563 lt!6829)))

(assert (=> b!35558 (= lt!6829 false)))

(declare-fun b!35559 () Bool)

(assert (=> b!35559 (= e!18092 lt!6824)))

(declare-fun b!35560 () Bool)

(declare-fun e!18096 () Bool)

(assert (=> b!35560 (= e!18096 e!18079)))

(declare-fun c!7588 () Bool)

(assert (=> b!35560 (= c!7588 lt!6828)))

(declare-fun e!18093 () Bool)

(assert (=> b!35560 (= lt!6822 e!18093)))

(declare-fun c!7583 () Bool)

(assert (=> b!35560 (= c!7583 e!18097)))

(declare-fun res!16557 () Bool)

(assert (=> b!35560 (=> res!16557 e!18097)))

(declare-fun lt!6820 () Bool)

(assert (=> b!35560 (= res!16557 lt!6820)))

(assert (=> b!35560 (= lt!6820 (and lt!6828 (not lt!6827)))))

(assert (=> b!35560 (= lt!6827 e!18094)))

(declare-fun c!7589 () Bool)

(assert (=> b!35560 (= c!7589 (or lt!6828 (is-Or!4 out!47) (is-Not!4 out!47)))))

(assert (=> b!35560 (= lt!6828 (is-And!4 out!47))))

(declare-fun d!18504 () Bool)

(declare-fun res!16559 () Bool)

(assert (=> d!18504 (=> res!16559 e!18096)))

(assert (=> d!18504 (= res!16559 (is-Implies!4 out!47))))

(assert (=> d!18504 (= (existsImplies!0 out!47) e!18096)))

(declare-fun b!35561 () Bool)

(declare-fun e!18085 () Bool)

(assert (=> b!35561 (= e!18085 e!18095)))

(declare-fun res!16555 () Bool)

(assert (=> b!35561 (=> (not res!16555) (not e!18095))))

(declare-fun lt!6819 () Bool)

(assert (=> b!35561 (= res!16555 (not lt!6819))))

(declare-fun b!35562 () Bool)

(declare-fun e!18086 () Bool)

(assert (=> b!35562 (= e!18086 lt!6822)))

(declare-fun b!35563 () Bool)

(declare-fun e!18081 () Expr!3)

(assert (=> b!35563 (= e!18081 e!18088)))

(declare-fun c!7586 () Bool)

(assert (=> b!35563 (= c!7586 e!18090)))

(declare-fun res!16562 () Bool)

(assert (=> b!35563 (=> (not res!16562) (not e!18090))))

(assert (=> b!35563 (= res!16562 lt!6818)))

(assert (=> b!35563 (= lt!6818 (is-Or!4 out!47))))

(declare-fun b!35564 () Bool)

(declare-fun lt!6825 () Bool)

(declare-fun lt!6817 () Bool)

(assert (=> b!35564 (= e!18089 (ite lt!6817 (or lt!6825 lt!6821) (and (is-Not!4 out!47) lt!6825)))))

(assert (=> b!35564 (= lt!6825 e!18084)))

(declare-fun c!7594 () Bool)

(assert (=> b!35564 (= c!7594 (or lt!6817 (is-Not!4 out!47)))))

(assert (=> b!35564 (= lt!6817 false)))

(declare-fun b!35565 () Bool)

(declare-fun res!16569 () Bool)

(assert (=> b!35565 (= e!18086 res!16569)))

(assert (=> b!35565 true))

(declare-fun b!35566 () Bool)

(declare-fun e!18098 () Bool)

(assert (=> b!35566 (= e!18098 lt!6827)))

(declare-fun b!35567 () Bool)

(declare-fun res!16551 () Bool)

(assert (=> b!35567 (= e!18098 res!16551)))

(assert (=> b!35567 true))

(declare-fun b!35568 () Bool)

(declare-fun e!18087 () Bool)

(assert (=> b!35568 (= e!18087 lt!6827)))

(declare-fun b!35569 () Bool)

(assert (=> b!35569 (= e!18079 e!18089)))

(declare-fun c!7584 () Bool)

(assert (=> b!35569 (= c!7584 lt!6823)))

(assert (=> b!35569 (= lt!6821 e!18086)))

(declare-fun c!7587 () Bool)

(assert (=> b!35569 (= c!7587 e!18082)))

(declare-fun res!16565 () Bool)

(assert (=> b!35569 (=> res!16565 e!18082)))

(assert (=> b!35569 (= res!16565 (and lt!6823 (not lt!6824)))))

(assert (=> b!35569 (= lt!6824 e!18087)))

(declare-fun c!7591 () Bool)

(assert (=> b!35569 (= c!7591 (or lt!6823 (is-Not!4 out!47)))))

(assert (=> b!35569 (= lt!6823 (is-Or!4 out!47))))

(declare-fun b!35570 () Bool)

(assert (=> b!35570 (= e!18094 (existsImplies!0 (ite lt!6828 (lhs!198 out!47) (ite (is-Or!4 out!47) (lhs!200 out!47) (ite false (lhs!199 out!47) (e!17926 out!47))))))))

(declare-fun b!35571 () Bool)

(assert (=> b!35571 (= e!18083 e!18085)))

(declare-fun res!16561 () Bool)

(assert (=> b!35571 (=> res!16561 e!18085)))

(assert (=> b!35571 (= res!16561 (and lt!6819 (not lt!6826)))))

(assert (=> b!35571 (= lt!6826 e!18098)))

(declare-fun c!7592 () Bool)

(assert (=> b!35571 (= c!7592 (or lt!6819 (is-Not!4 out!47)))))

(assert (=> b!35571 (= lt!6819 (is-Or!4 out!47))))

(declare-fun b!35572 () Bool)

(assert (=> b!35572 (= e!18093 (existsImplies!0 e!18081))))

(declare-fun c!7595 () Bool)

(assert (=> b!35572 (= c!7595 lt!6820)))

(declare-fun b!35573 () Bool)

(assert (=> b!35573 (= e!18081 (rhs!198 out!47))))

(declare-fun b!35574 () Bool)

(declare-fun res!16560 () Bool)

(assert (=> b!35574 (= e!18093 res!16560)))

(assert (=> b!35574 true))

(declare-fun b!35575 () Bool)

(declare-fun res!16556 () Bool)

(assert (=> b!35575 (= e!18087 res!16556)))

(assert (=> b!35575 true))

(declare-fun b!35576 () Bool)

(declare-fun res!16567 () Bool)

(assert (=> b!35576 (= e!18092 res!16567)))

(assert (=> b!35576 true))

(assert (= (and d!18504 (not res!16559)) b!35560))

(assert (= (and b!35560 c!7589) b!35570))

(assert (= (and b!35560 (not c!7589)) b!35556))

(assert (= (and b!35560 (not res!16557)) b!35543))

(assert (= (and b!35543 res!16566) b!35571))

(assert (= (and b!35571 c!7592) b!35566))

(assert (= (and b!35571 (not c!7592)) b!35567))

(assert (= (and b!35571 (not res!16561)) b!35561))

(assert (= (and b!35561 res!16555) b!35555))

(assert (= (and b!35555 res!16564) b!35554))

(assert (= (and b!35554 c!7593) b!35550))

(assert (= (and b!35554 (not c!7593)) b!35544))

(assert (= (and b!35563 res!16562) b!35551))

(assert (= (and b!35551 c!7590) b!35541))

(assert (= (and b!35551 (not c!7590)) b!35546))

(assert (= (and b!35563 c!7586) b!35553))

(assert (= (and b!35563 (not c!7586)) b!35549))

(assert (= (and b!35572 c!7595) b!35573))

(assert (= (and b!35572 (not c!7595)) b!35563))

(assert (= (and b!35560 c!7583) b!35572))

(assert (= (and b!35560 (not c!7583)) b!35574))

(assert (= (and b!35569 c!7591) b!35568))

(assert (= (and b!35569 (not c!7591)) b!35575))

(assert (= (and b!35569 (not res!16565)) b!35548))

(assert (= (and b!35548 res!16552) b!35558))

(assert (= (and b!35558 res!16563) b!35547))

(assert (= (and b!35547 c!7585) b!35559))

(assert (= (and b!35547 (not c!7585)) b!35576))

(assert (= (and b!35569 c!7587) b!35562))

(assert (= (and b!35569 (not c!7587)) b!35565))

(assert (= (and b!35564 c!7594) b!35545))

(assert (= (and b!35564 (not c!7594)) b!35542))

(assert (= (and b!35569 c!7584) b!35552))

(assert (= (and b!35569 (not c!7584)) b!35564))

(assert (= (and b!35560 c!7588) b!35557))

(assert (= (and b!35560 (not c!7588)) b!35569))

(declare-fun m!38111 () Bool)

(assert (=> b!35570 m!38111))

(declare-fun m!38113 () Bool)

(assert (=> b!35572 m!38113))

(assert (=> b!35299 d!18504))

(declare-fun b_lambda!9585 () Bool)

(assert (= b_lambda!9583 (or b!35300 b_lambda!9585)))

(declare-fun bs!11303 () Bool)

(declare-fun d!18506 () Bool)

(assert (= bs!11303 (and d!18506 b!35300)))

(assert (=> bs!11303 (= (dynLambda!645 lambda!4183 out!47) (is-Implies!4 out!47))))

(assert (=> d!18502 d!18506))

(push 1)

(assert (not b!35570))

(assert (not b!35572))

(assert (not b!35438))

(assert (not b!35345))

(assert (not b_lambda!9585))

(assert (not d!18498))

(assert (not b!35336))

(assert (not b!35351))

(assert (not b!35333))

(assert (not d!18500))

(assert (not b!35452))

(assert (not b!35360))

(assert (not b!35348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

