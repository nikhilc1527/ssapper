; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10270 () Bool)

(assert start!10270)

(declare-fun res!37375 () Bool)

(declare-fun e!40733 () Bool)

(assert (=> start!10270 (=> (not res!37375) (not e!40733))))

(declare-datatypes () ((Formula!83 (Implies!87 (lhs!1362 Formula!83) (rhs!1362 Formula!83)) (And!87 (lhs!1363 Formula!83) (rhs!1363 Formula!83)) (Or!87 (lhs!1364 Formula!83) (rhs!1364 Formula!83)) (Literal!81 (id!4944 (_ BitVec 32))) (Not!87 (f!4697 Formula!83)))))

(declare-fun f!4460 () Formula!83)

(declare-fun isSimplified!0 (Formula!83) Bool)

(assert (=> start!10270 (= res!37375 (isSimplified!0 f!4460))))

(assert (=> start!10270 e!40733))

(assert (=> start!10270 true))

(declare-fun b!75385 () Bool)

(declare-fun res!37376 () Bool)

(assert (=> b!75385 (=> (not res!37376) (not e!40733))))

(declare-fun f!4483 () Formula!83)

(assert (=> b!75385 (= res!37376 (and (not (is-Implies!87 f!4460)) (not (is-And!87 f!4460)) (is-Or!87 f!4460) (= f!4483 (rhs!1364 f!4460))))))

(declare-fun b!75386 () Bool)

(assert (=> b!75386 (= e!40733 (not (isSimplified!0 f!4483)))))

(assert (= (and start!10270 res!37375) b!75385))

(assert (= (and b!75385 res!37376) b!75386))

(declare-fun m!73092 () Bool)

(assert (=> start!10270 m!73092))

(declare-fun m!73094 () Bool)

(assert (=> b!75386 m!73094))

(push 1)

(assert (not b!75386))

(assert (not start!10270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75413 () Bool)

(declare-fun e!40751 () Bool)

(declare-fun e!40753 () Bool)

(assert (=> b!75413 (= e!40751 e!40753)))

(declare-fun res!37406 () Bool)

(assert (=> b!75413 (=> (not res!37406) (not e!40753))))

(declare-fun lt!16443 () Bool)

(assert (=> b!75413 (= res!37406 (not lt!16443))))

(declare-fun b!75414 () Bool)

(declare-fun e!40757 () Bool)

(declare-fun lt!16445 () Bool)

(declare-fun lt!16441 () Bool)

(assert (=> b!75414 (= e!40757 (and lt!16445 lt!16441))))

(declare-fun b!75415 () Bool)

(declare-fun e!40756 () Bool)

(declare-fun res!37403 () Bool)

(assert (=> b!75415 (= e!40756 res!37403)))

(assert (=> b!75415 true))

(declare-fun b!75416 () Bool)

(declare-fun e!40755 () Bool)

(assert (=> b!75416 (= e!40755 lt!16445)))

(declare-fun b!75417 () Bool)

(declare-fun e!40752 () Bool)

(assert (=> b!75417 (= e!40752 e!40756)))

(declare-fun c!18541 () Bool)

(declare-fun lt!16442 () Bool)

(assert (=> b!75417 (= c!18541 (or lt!16442 (and (not (is-Implies!87 f!4483)) (is-Not!87 f!4483))))))

(declare-fun b!75418 () Bool)

(declare-fun res!37404 () Bool)

(assert (=> b!75418 (= e!40755 res!37404)))

(assert (=> b!75418 true))

(assert (=> b!75418 true))

(declare-fun b!75419 () Bool)

(declare-fun e!40750 () Bool)

(declare-fun res!37405 () Bool)

(assert (=> b!75419 (= e!40750 res!37405)))

(assert (=> b!75419 true))

(declare-fun b!75420 () Bool)

(assert (=> b!75420 (= e!40750 (isSimplified!0 (ite lt!16443 (lhs!1363 f!4483) (ite (is-Or!87 f!4483) (lhs!1364 f!4483) (f!4697 f!4483)))))))

(declare-fun b!75421 () Bool)

(declare-fun e!40754 () Bool)

(declare-fun res!37402 () Bool)

(assert (=> b!75421 (= e!40754 res!37402)))

(assert (=> b!75421 true))

(declare-fun b!75422 () Bool)

(assert (=> b!75422 (= e!40756 lt!16445)))

(declare-fun b!75423 () Bool)

(declare-fun lt!16447 () Bool)

(assert (=> b!75423 (= e!40754 (isSimplified!0 (ite lt!16447 (rhs!1363 f!4483) (rhs!1364 f!4483))))))

(declare-fun lt!16446 () Bool)

(declare-fun lt!16444 () Bool)

(declare-fun b!75424 () Bool)

(assert (=> b!75424 (= e!40757 (ite lt!16444 (and lt!16446 lt!16441) (and (not (is-Implies!87 f!4483)) (or (not (is-Not!87 f!4483)) lt!16446))))))

(assert (=> b!75424 (= lt!16446 e!40755)))

(declare-fun c!18542 () Bool)

(assert (=> b!75424 (= c!18542 (or lt!16444 (and (not (is-Implies!87 f!4483)) (is-Not!87 f!4483))))))

(assert (=> b!75424 (= lt!16444 (is-Or!87 f!4483))))

(declare-fun d!54845 () Bool)

(declare-fun c!18543 () Bool)

(assert (=> d!54845 (= c!18543 lt!16443)))

(assert (=> d!54845 (= lt!16441 e!40754)))

(declare-fun c!18540 () Bool)

(assert (=> d!54845 (= c!18540 e!40751)))

(declare-fun res!37407 () Bool)

(assert (=> d!54845 (=> res!37407 e!40751)))

(assert (=> d!54845 (= res!37407 lt!16447)))

(assert (=> d!54845 (= lt!16447 (and lt!16443 lt!16445))))

(assert (=> d!54845 (= lt!16445 e!40750)))

(declare-fun c!18544 () Bool)

(assert (=> d!54845 (= c!18544 (or lt!16443 (is-Or!87 f!4483) (and (not (is-Implies!87 f!4483)) (is-Not!87 f!4483))))))

(assert (=> d!54845 (= lt!16443 (is-And!87 f!4483))))

(assert (=> d!54845 (= (isSimplified!0 f!4483) e!40757)))

(declare-fun b!75425 () Bool)

(assert (=> b!75425 (= e!40753 e!40752)))

(declare-fun res!37408 () Bool)

(assert (=> b!75425 (=> (not res!37408) (not e!40752))))

(assert (=> b!75425 (= res!37408 lt!16442)))

(assert (=> b!75425 (= lt!16442 (is-Or!87 f!4483))))

(assert (= (and d!54845 c!18544) b!75420))

(assert (= (and d!54845 (not c!18544)) b!75419))

(assert (= (and d!54845 (not res!37407)) b!75413))

(assert (= (and b!75413 res!37406) b!75425))

(assert (= (and b!75425 res!37408) b!75417))

(assert (= (and b!75417 c!18541) b!75422))

(assert (= (and b!75417 (not c!18541)) b!75415))

(assert (= (and d!54845 c!18540) b!75423))

(assert (= (and d!54845 (not c!18540)) b!75421))

(assert (= (and b!75424 c!18542) b!75416))

(assert (= (and b!75424 (not c!18542)) b!75418))

(assert (= (and d!54845 c!18543) b!75414))

(assert (= (and d!54845 (not c!18543)) b!75424))

(declare-fun m!73096 () Bool)

(assert (=> b!75420 m!73096))

(declare-fun m!73098 () Bool)

(assert (=> b!75423 m!73098))

(assert (=> b!75386 d!54845))

(declare-fun b!75426 () Bool)

(declare-fun e!40759 () Bool)

(declare-fun e!40761 () Bool)

(assert (=> b!75426 (= e!40759 e!40761)))

(declare-fun res!37413 () Bool)

(assert (=> b!75426 (=> (not res!37413) (not e!40761))))

(declare-fun lt!16450 () Bool)

(assert (=> b!75426 (= res!37413 (not lt!16450))))

(declare-fun b!75427 () Bool)

(declare-fun e!40765 () Bool)

(declare-fun lt!16452 () Bool)

(declare-fun lt!16448 () Bool)

(assert (=> b!75427 (= e!40765 (and lt!16452 lt!16448))))

(declare-fun b!75428 () Bool)

(declare-fun e!40764 () Bool)

(declare-fun res!37410 () Bool)

(assert (=> b!75428 (= e!40764 res!37410)))

(assert (=> b!75428 true))

(declare-fun b!75429 () Bool)

(declare-fun e!40763 () Bool)

(assert (=> b!75429 (= e!40763 lt!16452)))

(declare-fun b!75430 () Bool)

(declare-fun e!40760 () Bool)

(assert (=> b!75430 (= e!40760 e!40764)))

(declare-fun c!18546 () Bool)

(declare-fun lt!16449 () Bool)

(assert (=> b!75430 (= c!18546 (or lt!16449 (and (not (is-Implies!87 f!4460)) (is-Not!87 f!4460))))))

(declare-fun b!75431 () Bool)

(declare-fun res!37411 () Bool)

(assert (=> b!75431 (= e!40763 res!37411)))

(assert (=> b!75431 true))

(assert (=> b!75431 true))

(declare-fun b!75432 () Bool)

(declare-fun e!40758 () Bool)

(declare-fun res!37412 () Bool)

(assert (=> b!75432 (= e!40758 res!37412)))

(assert (=> b!75432 true))

(declare-fun b!75433 () Bool)

(assert (=> b!75433 (= e!40758 (isSimplified!0 (ite lt!16450 (lhs!1363 f!4460) (ite (is-Or!87 f!4460) (lhs!1364 f!4460) (f!4697 f!4460)))))))

(declare-fun b!75434 () Bool)

(declare-fun e!40762 () Bool)

(declare-fun res!37409 () Bool)

(assert (=> b!75434 (= e!40762 res!37409)))

(assert (=> b!75434 true))

(declare-fun b!75435 () Bool)

(assert (=> b!75435 (= e!40764 lt!16452)))

(declare-fun b!75436 () Bool)

(declare-fun lt!16454 () Bool)

(assert (=> b!75436 (= e!40762 (isSimplified!0 (ite lt!16454 (rhs!1363 f!4460) (rhs!1364 f!4460))))))

(declare-fun b!75437 () Bool)

(declare-fun lt!16451 () Bool)

(declare-fun lt!16453 () Bool)

(assert (=> b!75437 (= e!40765 (ite lt!16451 (and lt!16453 lt!16448) (and (not (is-Implies!87 f!4460)) (or (not (is-Not!87 f!4460)) lt!16453))))))

(assert (=> b!75437 (= lt!16453 e!40763)))

(declare-fun c!18547 () Bool)

(assert (=> b!75437 (= c!18547 (or lt!16451 (and (not (is-Implies!87 f!4460)) (is-Not!87 f!4460))))))

(assert (=> b!75437 (= lt!16451 (is-Or!87 f!4460))))

(declare-fun d!54847 () Bool)

(declare-fun c!18548 () Bool)

(assert (=> d!54847 (= c!18548 lt!16450)))

(assert (=> d!54847 (= lt!16448 e!40762)))

(declare-fun c!18545 () Bool)

(assert (=> d!54847 (= c!18545 e!40759)))

(declare-fun res!37414 () Bool)

(assert (=> d!54847 (=> res!37414 e!40759)))

(assert (=> d!54847 (= res!37414 lt!16454)))

(assert (=> d!54847 (= lt!16454 (and lt!16450 lt!16452))))

(assert (=> d!54847 (= lt!16452 e!40758)))

(declare-fun c!18549 () Bool)

(assert (=> d!54847 (= c!18549 (or lt!16450 (is-Or!87 f!4460) (and (not (is-Implies!87 f!4460)) (is-Not!87 f!4460))))))

(assert (=> d!54847 (= lt!16450 (is-And!87 f!4460))))

(assert (=> d!54847 (= (isSimplified!0 f!4460) e!40765)))

(declare-fun b!75438 () Bool)

(assert (=> b!75438 (= e!40761 e!40760)))

(declare-fun res!37415 () Bool)

(assert (=> b!75438 (=> (not res!37415) (not e!40760))))

(assert (=> b!75438 (= res!37415 lt!16449)))

(assert (=> b!75438 (= lt!16449 (is-Or!87 f!4460))))

(assert (= (and d!54847 c!18549) b!75433))

(assert (= (and d!54847 (not c!18549)) b!75432))

(assert (= (and d!54847 (not res!37414)) b!75426))

(assert (= (and b!75426 res!37413) b!75438))

(assert (= (and b!75438 res!37415) b!75430))

(assert (= (and b!75430 c!18546) b!75435))

(assert (= (and b!75430 (not c!18546)) b!75428))

(assert (= (and d!54847 c!18545) b!75436))

(assert (= (and d!54847 (not c!18545)) b!75434))

(assert (= (and b!75437 c!18547) b!75429))

(assert (= (and b!75437 (not c!18547)) b!75431))

(assert (= (and d!54847 c!18548) b!75427))

(assert (= (and d!54847 (not c!18548)) b!75437))

(declare-fun m!73100 () Bool)

(assert (=> b!75433 m!73100))

(declare-fun m!73102 () Bool)

(assert (=> b!75436 m!73102))

(assert (=> start!10270 d!54847))

(push 1)

(assert (not b!75436))

(assert (not b!75433))

(assert (not b!75423))

(assert (not b!75420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

