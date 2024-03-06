; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9476 () Bool)

(assert start!9476)

(declare-fun res!33754 () Bool)

(declare-fun e!37556 () Bool)

(assert (=> start!9476 (=> (not res!33754) (not e!37556))))

(declare-datatypes () ((Formula!51 (And!56 (lhs!956 Formula!51) (rhs!956 Formula!51)) (Literal!50 (id!4831 Int)) (Implies!56 (lhs!957 Formula!51) (rhs!957 Formula!51)) (Or!56 (lhs!958 Formula!51) (rhs!958 Formula!51)) (Not!56 (f!4211 Formula!51)))))

(declare-fun formula!50 () Formula!51)

(assert (=> start!9476 (= res!33754 (is-And!56 formula!50))))

(assert (=> start!9476 e!37556))

(assert (=> start!9476 true))

(declare-fun b!69383 () Bool)

(declare-fun res!33755 () Bool)

(assert (=> b!69383 (=> (not res!33755) (not e!37556))))

(declare-fun x$2!358 () Formula!51)

(declare-fun nnf!1 (Formula!51) Formula!51)

(assert (=> b!69383 (= res!33755 (= x$2!358 (And!56 (nnf!1 (lhs!956 formula!50)) (nnf!1 (rhs!956 formula!50)))))))

(declare-fun b!69384 () Bool)

(declare-fun isNNF!1 (Formula!51) Bool)

(assert (=> b!69384 (= e!37556 (not (isNNF!1 x$2!358)))))

(assert (= (and start!9476 res!33754) b!69383))

(assert (= (and b!69383 res!33755) b!69384))

(declare-fun m!70455 () Bool)

(assert (=> b!69383 m!70455))

(declare-fun m!70457 () Bool)

(assert (=> b!69383 m!70457))

(declare-fun m!70459 () Bool)

(assert (=> b!69384 m!70459))

(push 1)

(assert (not b!69384))

(assert (not b!69383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53626 () Bool)

(declare-fun c!16325 () Bool)

(declare-fun lt!14440 () Bool)

(assert (=> d!53626 (= c!16325 (or lt!14440 (is-Or!56 x$2!358)))))

(declare-fun lt!14441 () Bool)

(declare-fun lt!14442 () Bool)

(assert (=> d!53626 (= lt!14441 (and lt!14440 lt!14442))))

(declare-fun e!37568 () Bool)

(assert (=> d!53626 (= lt!14442 e!37568)))

(declare-fun c!16323 () Bool)

(assert (=> d!53626 (= c!16323 (or lt!14440 (is-Or!56 x$2!358)))))

(assert (=> d!53626 (= lt!14440 (is-And!56 x$2!358))))

(declare-fun e!37567 () Bool)

(assert (=> d!53626 (= (isNNF!1 x$2!358) e!37567)))

(declare-fun b!69399 () Bool)

(declare-fun e!37565 () Bool)

(assert (=> b!69399 (= e!37565 (isNNF!1 (ite lt!14441 (rhs!956 x$2!358) (rhs!958 x$2!358))))))

(declare-fun b!69400 () Bool)

(assert (=> b!69400 (= e!37567 (and (not (is-Implies!56 x$2!358)) (or (and (is-Not!56 x$2!358) (is-Literal!50 (f!4211 x$2!358))) (not (is-Not!56 x$2!358)))))))

(declare-fun b!69401 () Bool)

(declare-fun res!33770 () Bool)

(assert (=> b!69401 (= e!37568 res!33770)))

(assert (=> b!69401 true))

(declare-fun b!69402 () Bool)

(declare-fun e!37566 () Bool)

(assert (=> b!69402 (= e!37567 e!37566)))

(declare-fun res!33768 () Bool)

(assert (=> b!69402 (=> (not res!33768) (not e!37566))))

(assert (=> b!69402 (= res!33768 lt!14442)))

(declare-fun b!69403 () Bool)

(assert (=> b!69403 (= e!37566 e!37565)))

(declare-fun c!16324 () Bool)

(assert (=> b!69403 (= c!16324 (or lt!14441 (and (not lt!14440) (is-Or!56 x$2!358) lt!14442)))))

(declare-fun b!69404 () Bool)

(declare-fun res!33769 () Bool)

(assert (=> b!69404 (= e!37565 res!33769)))

(assert (=> b!69404 true))

(assert (=> b!69404 true))

(declare-fun b!69405 () Bool)

(assert (=> b!69405 (= e!37568 (isNNF!1 (ite lt!14440 (lhs!956 x$2!358) (lhs!958 x$2!358))))))

(assert (= (and d!53626 c!16323) b!69405))

(assert (= (and d!53626 (not c!16323)) b!69401))

(assert (= (and b!69402 res!33768) b!69403))

(assert (= (and b!69403 c!16324) b!69399))

(assert (= (and b!69403 (not c!16324)) b!69404))

(assert (= (and d!53626 c!16325) b!69402))

(assert (= (and d!53626 (not c!16325)) b!69400))

(declare-fun m!70461 () Bool)

(assert (=> b!69399 m!70461))

(declare-fun m!70463 () Bool)

(assert (=> b!69405 m!70463))

(assert (=> b!69384 d!53626))

(declare-fun b!69466 () Bool)

(declare-fun e!37600 () Formula!51)

(declare-fun lt!14484 () Formula!51)

(assert (=> b!69466 (= e!37600 lt!14484)))

(declare-fun b!69467 () Bool)

(declare-fun e!37606 () Formula!51)

(declare-fun lt!14489 () Formula!51)

(declare-fun lt!14478 () Formula!51)

(assert (=> b!69467 (= e!37606 (And!56 lt!14489 lt!14478))))

(declare-fun b!69468 () Bool)

(declare-fun e!37602 () Formula!51)

(declare-fun lt!14483 () Bool)

(assert (=> b!69468 (= e!37602 (nnf!1 (ite lt!14483 (lhs!956 (lhs!956 formula!50)) (ite (is-Or!56 (lhs!956 formula!50)) (lhs!958 (lhs!956 formula!50)) (ite (is-Implies!56 (lhs!956 formula!50)) (Or!56 (Not!56 (lhs!957 (lhs!956 formula!50))) (rhs!957 (lhs!956 formula!50))) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (Not!56 (lhs!956 (f!4211 (lhs!956 formula!50)))) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (Not!56 (lhs!958 (f!4211 (lhs!956 formula!50)))) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (lhs!957 (f!4211 (lhs!956 formula!50))) (f!4211 (f!4211 (lhs!956 formula!50)))))))))))))

(declare-fun b!69469 () Bool)

(declare-fun e!37611 () Formula!51)

(declare-fun lt!14487 () Formula!51)

(assert (=> b!69469 (= e!37611 lt!14487)))

(declare-fun b!69470 () Bool)

(declare-fun e!37612 () Formula!51)

(declare-fun lt!14492 () Formula!51)

(declare-fun lt!14482 () Formula!51)

(assert (=> b!69470 (= e!37612 (Or!56 lt!14492 lt!14482))))

(declare-fun d!53628 () Bool)

(declare-fun lt!14485 () Formula!51)

(assert (=> d!53628 (isNNF!1 lt!14485)))

(declare-fun e!37599 () Formula!51)

(assert (=> d!53628 (= lt!14485 e!37599)))

(declare-fun c!16368 () Bool)

(assert (=> d!53628 (= c!16368 lt!14483)))

(declare-fun e!37604 () Formula!51)

(assert (=> d!53628 (= lt!14487 e!37604)))

(declare-fun c!16357 () Bool)

(assert (=> d!53628 (= c!16357 (or lt!14483 (is-Or!56 (lhs!956 formula!50)) (and (not (is-Implies!56 (lhs!956 formula!50))) (or (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50))))))))))

(declare-fun lt!14479 () Formula!51)

(assert (=> d!53628 (= lt!14479 e!37602)))

(declare-fun c!16358 () Bool)

(assert (=> d!53628 (= c!16358 (or lt!14483 (is-Or!56 (lhs!956 formula!50)) (is-Implies!56 (lhs!956 formula!50)) (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> d!53628 (= lt!14483 (is-And!56 (lhs!956 formula!50)))))

(assert (=> d!53628 (= (nnf!1 (lhs!956 formula!50)) lt!14485)))

(declare-fun b!69471 () Bool)

(declare-fun res!33830 () Formula!51)

(assert (=> b!69471 (= e!37611 res!33830)))

(assert (=> b!69471 true))

(declare-fun b!69472 () Bool)

(declare-fun e!37613 () Formula!51)

(assert (=> b!69472 (= e!37613 lt!14492)))

(declare-fun b!69473 () Bool)

(assert (=> b!69473 (= e!37604 (nnf!1 (ite lt!14483 (rhs!956 (lhs!956 formula!50)) (ite (is-Or!56 (lhs!956 formula!50)) (rhs!958 (lhs!956 formula!50)) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (Not!56 (rhs!956 (f!4211 (lhs!956 formula!50)))) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (Not!56 (rhs!958 (f!4211 (lhs!956 formula!50)))) (Not!56 (rhs!957 (f!4211 (lhs!956 formula!50))))))))))))

(declare-fun b!69474 () Bool)

(declare-fun e!37605 () Formula!51)

(assert (=> b!69474 (= e!37599 e!37605)))

(declare-fun c!16365 () Bool)

(declare-fun lt!14477 () Bool)

(assert (=> b!69474 (= c!16365 lt!14477)))

(assert (=> b!69474 (= lt!14484 e!37611)))

(declare-fun c!16356 () Bool)

(assert (=> b!69474 (= c!16356 (or lt!14477 (and (not (is-Implies!56 (lhs!956 formula!50))) (or (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50))))))))))

(declare-fun lt!14481 () Formula!51)

(declare-fun e!37610 () Formula!51)

(assert (=> b!69474 (= lt!14481 e!37610)))

(declare-fun c!16366 () Bool)

(assert (=> b!69474 (= c!16366 (or lt!14477 (is-Implies!56 (lhs!956 formula!50)) (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69474 (= lt!14477 (is-Or!56 (lhs!956 formula!50)))))

(declare-fun b!69475 () Bool)

(declare-fun res!33822 () Formula!51)

(assert (=> b!69475 (= e!37613 res!33822)))

(assert (=> b!69475 true))

(declare-fun b!69476 () Bool)

(declare-fun e!37601 () Formula!51)

(assert (=> b!69476 (= e!37601 lt!14482)))

(declare-fun b!69477 () Bool)

(declare-fun res!33825 () Formula!51)

(assert (=> b!69477 (= e!37601 res!33825)))

(assert (=> b!69477 true))

(declare-fun b!69478 () Bool)

(declare-fun e!37603 () Formula!51)

(declare-fun res!33821 () Formula!51)

(assert (=> b!69478 (= e!37603 res!33821)))

(assert (=> b!69478 true))

(declare-fun b!69479 () Bool)

(assert (=> b!69479 (= e!37605 (Or!56 lt!14481 lt!14484))))

(declare-fun b!69480 () Bool)

(declare-fun res!33824 () Formula!51)

(assert (=> b!69480 (= e!37604 res!33824)))

(assert (=> b!69480 true))

(declare-fun b!69481 () Bool)

(declare-fun e!37607 () Formula!51)

(assert (=> b!69481 (= e!37605 e!37607)))

(declare-fun c!16359 () Bool)

(declare-fun lt!14486 () Bool)

(assert (=> b!69481 (= c!16359 lt!14486)))

(declare-fun lt!14490 () Formula!51)

(declare-fun e!37609 () Formula!51)

(assert (=> b!69481 (= lt!14490 e!37609)))

(declare-fun c!16363 () Bool)

(assert (=> b!69481 (= c!16363 (or lt!14486 (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69481 (= lt!14486 (is-Implies!56 (lhs!956 formula!50)))))

(declare-fun b!69482 () Bool)

(declare-fun e!37608 () Formula!51)

(declare-fun res!33826 () Formula!51)

(assert (=> b!69482 (= e!37608 res!33826)))

(assert (=> b!69482 true))

(assert (=> b!69482 true))

(declare-fun b!69483 () Bool)

(declare-fun res!33827 () Formula!51)

(assert (=> b!69483 (= e!37602 res!33827)))

(assert (=> b!69483 true))

(declare-fun b!69484 () Bool)

(assert (=> b!69484 (= e!37609 lt!14481)))

(declare-fun b!69485 () Bool)

(declare-fun res!33828 () Formula!51)

(assert (=> b!69485 (= e!37609 res!33828)))

(assert (=> b!69485 true))

(declare-fun b!69486 () Bool)

(assert (=> b!69486 (= e!37607 lt!14490)))

(declare-fun b!69487 () Bool)

(declare-fun res!33823 () Formula!51)

(assert (=> b!69487 (= e!37600 res!33823)))

(assert (=> b!69487 true))

(declare-fun b!69488 () Bool)

(assert (=> b!69488 (= e!37599 (And!56 lt!14479 lt!14487))))

(declare-fun b!69489 () Bool)

(assert (=> b!69489 (= e!37612 e!37606)))

(declare-fun c!16370 () Bool)

(declare-fun lt!14488 () Bool)

(assert (=> b!69489 (= c!16370 lt!14488)))

(assert (=> b!69489 (= lt!14478 e!37601)))

(declare-fun c!16361 () Bool)

(assert (=> b!69489 (= c!16361 (or lt!14488 (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69489 (= lt!14489 e!37613)))

(declare-fun c!16364 () Bool)

(assert (=> b!69489 (= c!16364 (or lt!14488 (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69489 (= lt!14488 (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))))))

(declare-fun b!69490 () Bool)

(assert (=> b!69490 (= e!37608 lt!14489)))

(declare-fun b!69491 () Bool)

(declare-fun res!33829 () Formula!51)

(assert (=> b!69491 (= e!37610 res!33829)))

(assert (=> b!69491 true))

(declare-fun b!69492 () Bool)

(assert (=> b!69492 (= e!37607 e!37612)))

(declare-fun c!16369 () Bool)

(declare-fun lt!14491 () Bool)

(assert (=> b!69492 (= c!16369 lt!14491)))

(assert (=> b!69492 (= lt!14482 e!37600)))

(declare-fun c!16360 () Bool)

(assert (=> b!69492 (= c!16360 (or lt!14491 (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69492 (= lt!14492 e!37603)))

(declare-fun c!16367 () Bool)

(assert (=> b!69492 (= c!16367 (or lt!14491 (and (is-Not!56 (lhs!956 formula!50)) (is-Or!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))) (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69492 (= lt!14491 (and (is-Not!56 (lhs!956 formula!50)) (is-And!56 (f!4211 (lhs!956 formula!50)))))))

(declare-fun b!69493 () Bool)

(assert (=> b!69493 (= e!37610 lt!14479)))

(declare-fun b!69494 () Bool)

(assert (=> b!69494 (= e!37603 lt!14490)))

(declare-fun lt!14480 () Bool)

(declare-fun b!69495 () Bool)

(declare-fun lt!14493 () Formula!51)

(assert (=> b!69495 (= e!37606 (ite lt!14480 (And!56 lt!14493 lt!14478) (ite (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50)))) lt!14493 (lhs!956 formula!50))))))

(assert (=> b!69495 (= lt!14493 e!37608)))

(declare-fun c!16362 () Bool)

(assert (=> b!69495 (= c!16362 (or lt!14480 (and (is-Not!56 (lhs!956 formula!50)) (is-Not!56 (f!4211 (lhs!956 formula!50))))))))

(assert (=> b!69495 (= lt!14480 (and (is-Not!56 (lhs!956 formula!50)) (is-Implies!56 (f!4211 (lhs!956 formula!50)))))))

(assert (= (and d!53628 c!16358) b!69468))

(assert (= (and d!53628 (not c!16358)) b!69483))

(assert (= (and d!53628 c!16357) b!69473))

(assert (= (and d!53628 (not c!16357)) b!69480))

(assert (= (and b!69474 c!16366) b!69493))

(assert (= (and b!69474 (not c!16366)) b!69491))

(assert (= (and b!69474 c!16356) b!69469))

(assert (= (and b!69474 (not c!16356)) b!69471))

(assert (= (and b!69481 c!16363) b!69484))

(assert (= (and b!69481 (not c!16363)) b!69485))

(assert (= (and b!69492 c!16367) b!69494))

(assert (= (and b!69492 (not c!16367)) b!69478))

(assert (= (and b!69492 c!16360) b!69466))

(assert (= (and b!69492 (not c!16360)) b!69487))

(assert (= (and b!69489 c!16364) b!69472))

(assert (= (and b!69489 (not c!16364)) b!69475))

(assert (= (and b!69489 c!16361) b!69476))

(assert (= (and b!69489 (not c!16361)) b!69477))

(assert (= (and b!69495 c!16362) b!69490))

(assert (= (and b!69495 (not c!16362)) b!69482))

(assert (= (and b!69489 c!16370) b!69467))

(assert (= (and b!69489 (not c!16370)) b!69495))

(assert (= (and b!69492 c!16369) b!69470))

(assert (= (and b!69492 (not c!16369)) b!69489))

(assert (= (and b!69481 c!16359) b!69486))

(assert (= (and b!69481 (not c!16359)) b!69492))

(assert (= (and b!69474 c!16365) b!69479))

(assert (= (and b!69474 (not c!16365)) b!69481))

(assert (= (and d!53628 c!16368) b!69488))

(assert (= (and d!53628 (not c!16368)) b!69474))

(declare-fun m!70465 () Bool)

(assert (=> b!69468 m!70465))

(declare-fun m!70467 () Bool)

(assert (=> d!53628 m!70467))

(declare-fun m!70469 () Bool)

(assert (=> b!69473 m!70469))

(assert (=> b!69383 d!53628))

(declare-fun b!69496 () Bool)

(declare-fun e!37615 () Formula!51)

(declare-fun lt!14501 () Formula!51)

(assert (=> b!69496 (= e!37615 lt!14501)))

(declare-fun b!69497 () Bool)

(declare-fun e!37621 () Formula!51)

(declare-fun lt!14506 () Formula!51)

(declare-fun lt!14495 () Formula!51)

(assert (=> b!69497 (= e!37621 (And!56 lt!14506 lt!14495))))

(declare-fun b!69498 () Bool)

(declare-fun e!37617 () Formula!51)

(declare-fun lt!14500 () Bool)

(assert (=> b!69498 (= e!37617 (nnf!1 (ite lt!14500 (lhs!956 (rhs!956 formula!50)) (ite (is-Or!56 (rhs!956 formula!50)) (lhs!958 (rhs!956 formula!50)) (ite (is-Implies!56 (rhs!956 formula!50)) (Or!56 (Not!56 (lhs!957 (rhs!956 formula!50))) (rhs!957 (rhs!956 formula!50))) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (Not!56 (lhs!956 (f!4211 (rhs!956 formula!50)))) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (Not!56 (lhs!958 (f!4211 (rhs!956 formula!50)))) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (lhs!957 (f!4211 (rhs!956 formula!50))) (f!4211 (f!4211 (rhs!956 formula!50)))))))))))))

(declare-fun b!69499 () Bool)

(declare-fun e!37626 () Formula!51)

(declare-fun lt!14504 () Formula!51)

(assert (=> b!69499 (= e!37626 lt!14504)))

(declare-fun b!69500 () Bool)

(declare-fun e!37627 () Formula!51)

(declare-fun lt!14509 () Formula!51)

(declare-fun lt!14499 () Formula!51)

(assert (=> b!69500 (= e!37627 (Or!56 lt!14509 lt!14499))))

(declare-fun d!53630 () Bool)

(declare-fun lt!14502 () Formula!51)

(assert (=> d!53630 (isNNF!1 lt!14502)))

(declare-fun e!37614 () Formula!51)

(assert (=> d!53630 (= lt!14502 e!37614)))

(declare-fun c!16383 () Bool)

(assert (=> d!53630 (= c!16383 lt!14500)))

(declare-fun e!37619 () Formula!51)

(assert (=> d!53630 (= lt!14504 e!37619)))

(declare-fun c!16372 () Bool)

(assert (=> d!53630 (= c!16372 (or lt!14500 (is-Or!56 (rhs!956 formula!50)) (and (not (is-Implies!56 (rhs!956 formula!50))) (or (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50))))))))))

(declare-fun lt!14496 () Formula!51)

(assert (=> d!53630 (= lt!14496 e!37617)))

(declare-fun c!16373 () Bool)

(assert (=> d!53630 (= c!16373 (or lt!14500 (is-Or!56 (rhs!956 formula!50)) (is-Implies!56 (rhs!956 formula!50)) (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> d!53630 (= lt!14500 (is-And!56 (rhs!956 formula!50)))))

(assert (=> d!53630 (= (nnf!1 (rhs!956 formula!50)) lt!14502)))

(declare-fun b!69501 () Bool)

(declare-fun res!33840 () Formula!51)

(assert (=> b!69501 (= e!37626 res!33840)))

(assert (=> b!69501 true))

(declare-fun b!69502 () Bool)

(declare-fun e!37628 () Formula!51)

(assert (=> b!69502 (= e!37628 lt!14509)))

(declare-fun b!69503 () Bool)

(assert (=> b!69503 (= e!37619 (nnf!1 (ite lt!14500 (rhs!956 (rhs!956 formula!50)) (ite (is-Or!56 (rhs!956 formula!50)) (rhs!958 (rhs!956 formula!50)) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (Not!56 (rhs!956 (f!4211 (rhs!956 formula!50)))) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (Not!56 (rhs!958 (f!4211 (rhs!956 formula!50)))) (Not!56 (rhs!957 (f!4211 (rhs!956 formula!50))))))))))))

(declare-fun b!69504 () Bool)

(declare-fun e!37620 () Formula!51)

(assert (=> b!69504 (= e!37614 e!37620)))

(declare-fun c!16380 () Bool)

(declare-fun lt!14494 () Bool)

(assert (=> b!69504 (= c!16380 lt!14494)))

(assert (=> b!69504 (= lt!14501 e!37626)))

(declare-fun c!16371 () Bool)

(assert (=> b!69504 (= c!16371 (or lt!14494 (and (not (is-Implies!56 (rhs!956 formula!50))) (or (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50))))))))))

(declare-fun lt!14498 () Formula!51)

(declare-fun e!37625 () Formula!51)

(assert (=> b!69504 (= lt!14498 e!37625)))

(declare-fun c!16381 () Bool)

(assert (=> b!69504 (= c!16381 (or lt!14494 (is-Implies!56 (rhs!956 formula!50)) (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69504 (= lt!14494 (is-Or!56 (rhs!956 formula!50)))))

(declare-fun b!69505 () Bool)

(declare-fun res!33832 () Formula!51)

(assert (=> b!69505 (= e!37628 res!33832)))

(assert (=> b!69505 true))

(declare-fun b!69506 () Bool)

(declare-fun e!37616 () Formula!51)

(assert (=> b!69506 (= e!37616 lt!14499)))

(declare-fun b!69507 () Bool)

(declare-fun res!33835 () Formula!51)

(assert (=> b!69507 (= e!37616 res!33835)))

(assert (=> b!69507 true))

(declare-fun b!69508 () Bool)

(declare-fun e!37618 () Formula!51)

(declare-fun res!33831 () Formula!51)

(assert (=> b!69508 (= e!37618 res!33831)))

(assert (=> b!69508 true))

(declare-fun b!69509 () Bool)

(assert (=> b!69509 (= e!37620 (Or!56 lt!14498 lt!14501))))

(declare-fun b!69510 () Bool)

(declare-fun res!33834 () Formula!51)

(assert (=> b!69510 (= e!37619 res!33834)))

(assert (=> b!69510 true))

(declare-fun b!69511 () Bool)

(declare-fun e!37622 () Formula!51)

(assert (=> b!69511 (= e!37620 e!37622)))

(declare-fun c!16374 () Bool)

(declare-fun lt!14503 () Bool)

(assert (=> b!69511 (= c!16374 lt!14503)))

(declare-fun lt!14507 () Formula!51)

(declare-fun e!37624 () Formula!51)

(assert (=> b!69511 (= lt!14507 e!37624)))

(declare-fun c!16378 () Bool)

(assert (=> b!69511 (= c!16378 (or lt!14503 (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69511 (= lt!14503 (is-Implies!56 (rhs!956 formula!50)))))

(declare-fun b!69512 () Bool)

(declare-fun e!37623 () Formula!51)

(declare-fun res!33836 () Formula!51)

(assert (=> b!69512 (= e!37623 res!33836)))

(assert (=> b!69512 true))

(assert (=> b!69512 true))

(declare-fun b!69513 () Bool)

(declare-fun res!33837 () Formula!51)

(assert (=> b!69513 (= e!37617 res!33837)))

(assert (=> b!69513 true))

(declare-fun b!69514 () Bool)

(assert (=> b!69514 (= e!37624 lt!14498)))

(declare-fun b!69515 () Bool)

(declare-fun res!33838 () Formula!51)

(assert (=> b!69515 (= e!37624 res!33838)))

(assert (=> b!69515 true))

(declare-fun b!69516 () Bool)

(assert (=> b!69516 (= e!37622 lt!14507)))

(declare-fun b!69517 () Bool)

(declare-fun res!33833 () Formula!51)

(assert (=> b!69517 (= e!37615 res!33833)))

(assert (=> b!69517 true))

(declare-fun b!69518 () Bool)

(assert (=> b!69518 (= e!37614 (And!56 lt!14496 lt!14504))))

(declare-fun b!69519 () Bool)

(assert (=> b!69519 (= e!37627 e!37621)))

(declare-fun c!16385 () Bool)

(declare-fun lt!14505 () Bool)

(assert (=> b!69519 (= c!16385 lt!14505)))

(assert (=> b!69519 (= lt!14495 e!37616)))

(declare-fun c!16376 () Bool)

(assert (=> b!69519 (= c!16376 (or lt!14505 (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69519 (= lt!14506 e!37628)))

(declare-fun c!16379 () Bool)

(assert (=> b!69519 (= c!16379 (or lt!14505 (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69519 (= lt!14505 (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))))))

(declare-fun b!69520 () Bool)

(assert (=> b!69520 (= e!37623 lt!14506)))

(declare-fun b!69521 () Bool)

(declare-fun res!33839 () Formula!51)

(assert (=> b!69521 (= e!37625 res!33839)))

(assert (=> b!69521 true))

(declare-fun b!69522 () Bool)

(assert (=> b!69522 (= e!37622 e!37627)))

(declare-fun c!16384 () Bool)

(declare-fun lt!14508 () Bool)

(assert (=> b!69522 (= c!16384 lt!14508)))

(assert (=> b!69522 (= lt!14499 e!37615)))

(declare-fun c!16375 () Bool)

(assert (=> b!69522 (= c!16375 (or lt!14508 (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69522 (= lt!14509 e!37618)))

(declare-fun c!16382 () Bool)

(assert (=> b!69522 (= c!16382 (or lt!14508 (and (is-Not!56 (rhs!956 formula!50)) (is-Or!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))) (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69522 (= lt!14508 (and (is-Not!56 (rhs!956 formula!50)) (is-And!56 (f!4211 (rhs!956 formula!50)))))))

(declare-fun b!69523 () Bool)

(assert (=> b!69523 (= e!37625 lt!14496)))

(declare-fun b!69524 () Bool)

(assert (=> b!69524 (= e!37618 lt!14507)))

(declare-fun lt!14497 () Bool)

(declare-fun lt!14510 () Formula!51)

(declare-fun b!69525 () Bool)

(assert (=> b!69525 (= e!37621 (ite lt!14497 (And!56 lt!14510 lt!14495) (ite (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50)))) lt!14510 (rhs!956 formula!50))))))

(assert (=> b!69525 (= lt!14510 e!37623)))

(declare-fun c!16377 () Bool)

(assert (=> b!69525 (= c!16377 (or lt!14497 (and (is-Not!56 (rhs!956 formula!50)) (is-Not!56 (f!4211 (rhs!956 formula!50))))))))

(assert (=> b!69525 (= lt!14497 (and (is-Not!56 (rhs!956 formula!50)) (is-Implies!56 (f!4211 (rhs!956 formula!50)))))))

(assert (= (and d!53630 c!16373) b!69498))

(assert (= (and d!53630 (not c!16373)) b!69513))

(assert (= (and d!53630 c!16372) b!69503))

(assert (= (and d!53630 (not c!16372)) b!69510))

(assert (= (and b!69504 c!16381) b!69523))

(assert (= (and b!69504 (not c!16381)) b!69521))

(assert (= (and b!69504 c!16371) b!69499))

(assert (= (and b!69504 (not c!16371)) b!69501))

(assert (= (and b!69511 c!16378) b!69514))

(assert (= (and b!69511 (not c!16378)) b!69515))

(assert (= (and b!69522 c!16382) b!69524))

(assert (= (and b!69522 (not c!16382)) b!69508))

(assert (= (and b!69522 c!16375) b!69496))

(assert (= (and b!69522 (not c!16375)) b!69517))

(assert (= (and b!69519 c!16379) b!69502))

(assert (= (and b!69519 (not c!16379)) b!69505))

(assert (= (and b!69519 c!16376) b!69506))

(assert (= (and b!69519 (not c!16376)) b!69507))

(assert (= (and b!69525 c!16377) b!69520))

(assert (= (and b!69525 (not c!16377)) b!69512))

(assert (= (and b!69519 c!16385) b!69497))

(assert (= (and b!69519 (not c!16385)) b!69525))

(assert (= (and b!69522 c!16384) b!69500))

(assert (= (and b!69522 (not c!16384)) b!69519))

(assert (= (and b!69511 c!16374) b!69516))

(assert (= (and b!69511 (not c!16374)) b!69522))

(assert (= (and b!69504 c!16380) b!69509))

(assert (= (and b!69504 (not c!16380)) b!69511))

(assert (= (and d!53630 c!16383) b!69518))

(assert (= (and d!53630 (not c!16383)) b!69504))

(declare-fun m!70471 () Bool)

(assert (=> b!69498 m!70471))

(declare-fun m!70473 () Bool)

(assert (=> d!53630 m!70473))

(declare-fun m!70475 () Bool)

(assert (=> b!69503 m!70475))

(assert (=> b!69383 d!53630))

(push 1)

(assert (not d!53630))

(assert (not b!69473))

(assert (not b!69498))

(assert (not b!69399))

(assert (not d!53628))

(assert (not b!69468))

(assert (not b!69503))

(assert (not b!69405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

