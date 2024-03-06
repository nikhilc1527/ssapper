; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10274 () Bool)

(assert start!10274)

(declare-fun b!75448 () Bool)

(declare-fun res!37424 () Bool)

(declare-fun e!40768 () Bool)

(assert (=> b!75448 (=> (not res!37424) (not e!40768))))

(declare-fun inductVal!713 () Bool)

(declare-datatypes () ((Formula!84 (Implies!88 (lhs!1365 Formula!84) (rhs!1365 Formula!84)) (And!88 (lhs!1366 Formula!84) (rhs!1366 Formula!84)) (Or!88 (lhs!1367 Formula!84) (rhs!1367 Formula!84)) (Literal!82 (id!4945 (_ BitVec 32))) (Not!88 (f!4699 Formula!84)))))

(declare-fun f!4460 () Formula!84)

(declare-fun simplifyIsStable!0 (Formula!84) Bool)

(assert (=> b!75448 (= res!37424 (= inductVal!713 (simplifyIsStable!0 (rhs!1367 f!4460))))))

(declare-fun b!75447 () Bool)

(declare-fun res!37426 () Bool)

(assert (=> b!75447 (=> (not res!37426) (not e!40768))))

(assert (=> b!75447 (= res!37426 (and (not (is-Implies!88 f!4460)) (not (is-And!88 f!4460)) (is-Or!88 f!4460)))))

(declare-fun b!75449 () Bool)

(declare-fun res!37425 () Bool)

(assert (=> b!75449 (=> (not res!37425) (not e!40768))))

(declare-fun f!4486 () Formula!84)

(assert (=> b!75449 (= res!37425 (= f!4486 (lhs!1367 f!4460)))))

(declare-fun res!37427 () Bool)

(assert (=> start!10274 (=> (not res!37427) (not e!40768))))

(declare-fun isSimplified!0 (Formula!84) Bool)

(assert (=> start!10274 (= res!37427 (isSimplified!0 f!4460))))

(assert (=> start!10274 e!40768))

(assert (=> start!10274 true))

(declare-fun b!75450 () Bool)

(assert (=> b!75450 (= e!40768 (not (isSimplified!0 f!4486)))))

(assert (= (and start!10274 res!37427) b!75447))

(assert (= (and b!75447 res!37426) b!75448))

(assert (= (and b!75448 res!37424) b!75449))

(assert (= (and b!75449 res!37425) b!75450))

(declare-fun m!73104 () Bool)

(assert (=> b!75448 m!73104))

(declare-fun m!73106 () Bool)

(assert (=> start!10274 m!73106))

(declare-fun m!73108 () Bool)

(assert (=> b!75450 m!73108))

(push 1)

(assert (not b!75448))

(assert (not b!75450))

(assert (not start!10274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75475 () Bool)

(declare-fun e!40786 () Bool)

(declare-fun e!40781 () Formula!84)

(assert (=> b!75475 (= e!40786 (= e!40781 (rhs!1367 f!4460)))))

(declare-fun c!18564 () Bool)

(declare-fun lt!16466 () Bool)

(assert (=> b!75475 (= c!18564 (or lt!16466 (is-Or!88 (rhs!1367 f!4460))))))

(declare-fun b!75476 () Bool)

(declare-fun e!40782 () Bool)

(assert (=> b!75476 (= e!40782 e!40786)))

(declare-fun c!18562 () Bool)

(assert (=> b!75476 (= c!18562 (or lt!16466 (is-Or!88 (rhs!1367 f!4460))))))

(assert (=> b!75476 (= lt!16466 (is-And!88 (rhs!1367 f!4460)))))

(declare-fun b!75477 () Bool)

(declare-fun e!40784 () Bool)

(declare-fun lt!16468 () Bool)

(assert (=> b!75477 (= e!40784 (simplifyIsStable!0 (ite lt!16468 (lhs!1365 (rhs!1367 f!4460)) (ite (is-And!88 (rhs!1367 f!4460)) (lhs!1366 (rhs!1367 f!4460)) (lhs!1367 (rhs!1367 f!4460))))))))

(declare-fun b!75478 () Bool)

(declare-fun lt!16469 () Formula!84)

(assert (=> b!75478 (= e!40782 (= lt!16469 (rhs!1367 f!4460)))))

(declare-fun b!75479 () Bool)

(declare-fun res!37458 () Bool)

(assert (=> b!75479 (= e!40784 res!37458)))

(assert (=> b!75479 true))

(declare-fun b!75480 () Bool)

(declare-fun e!40783 () Formula!84)

(declare-fun simplify!0 (Formula!84) Formula!84)

(assert (=> b!75480 (= e!40783 (simplify!0 (rhs!1367 f!4460)))))

(declare-fun b!75481 () Bool)

(assert (=> b!75481 (= e!40781 lt!16469)))

(declare-fun b!75482 () Bool)

(declare-fun e!40785 () Bool)

(assert (=> b!75482 (= e!40785 (simplifyIsStable!0 (ite lt!16468 (rhs!1365 (rhs!1367 f!4460)) (ite (is-And!88 (rhs!1367 f!4460)) (rhs!1366 (rhs!1367 f!4460)) (ite (is-Or!88 (rhs!1367 f!4460)) (rhs!1367 (rhs!1367 f!4460)) (f!4699 (rhs!1367 f!4460)))))))))

(declare-fun b!75483 () Bool)

(declare-fun res!37457 () Bool)

(assert (=> b!75483 (= e!40785 res!37457)))

(assert (=> b!75483 true))

(declare-fun b!75484 () Bool)

(assert (=> b!75484 (= e!40786 (= (simplify!0 (rhs!1367 f!4460)) (rhs!1367 f!4460)))))

(declare-fun d!54849 () Bool)

(assert (=> d!54849 e!40782))

(declare-fun c!18566 () Bool)

(assert (=> d!54849 (= c!18566 lt!16468)))

(assert (=> d!54849 (= lt!16469 e!40783)))

(declare-fun c!18563 () Bool)

(assert (=> d!54849 (= c!18563 (or lt!16468 (is-And!88 (rhs!1367 f!4460)) (is-Or!88 (rhs!1367 f!4460))))))

(declare-fun lt!16465 () Bool)

(assert (=> d!54849 (= lt!16465 e!40784)))

(declare-fun c!18565 () Bool)

(assert (=> d!54849 (= c!18565 (or lt!16468 (is-And!88 (rhs!1367 f!4460)) (is-Or!88 (rhs!1367 f!4460))))))

(declare-fun lt!16467 () Bool)

(assert (=> d!54849 (= lt!16467 e!40785)))

(declare-fun c!18567 () Bool)

(assert (=> d!54849 (= c!18567 (or lt!16468 (is-And!88 (rhs!1367 f!4460)) (is-Or!88 (rhs!1367 f!4460)) (not (is-Literal!82 (rhs!1367 f!4460)))))))

(assert (=> d!54849 (= lt!16468 (is-Implies!88 (rhs!1367 f!4460)))))

(assert (=> d!54849 (isSimplified!0 (rhs!1367 f!4460))))

(assert (=> d!54849 (= (simplifyIsStable!0 (rhs!1367 f!4460)) true)))

(declare-fun b!75485 () Bool)

(declare-fun res!37460 () Formula!84)

(assert (=> b!75485 (= e!40781 res!37460)))

(assert (=> b!75485 true))

(assert (=> b!75485 true))

(declare-fun b!75486 () Bool)

(declare-fun res!37459 () Formula!84)

(assert (=> b!75486 (= e!40783 res!37459)))

(assert (=> b!75486 true))

(assert (= (and d!54849 c!18567) b!75482))

(assert (= (and d!54849 (not c!18567)) b!75483))

(assert (= (and d!54849 c!18565) b!75477))

(assert (= (and d!54849 (not c!18565)) b!75479))

(assert (= (and d!54849 c!18563) b!75480))

(assert (= (and d!54849 (not c!18563)) b!75486))

(assert (= (and b!75475 c!18564) b!75481))

(assert (= (and b!75475 (not c!18564)) b!75485))

(assert (= (and b!75476 c!18562) b!75475))

(assert (= (and b!75476 (not c!18562)) b!75484))

(assert (= (and d!54849 c!18566) b!75478))

(assert (= (and d!54849 (not c!18566)) b!75476))

(declare-fun m!73110 () Bool)

(assert (=> b!75484 m!73110))

(declare-fun m!73112 () Bool)

(assert (=> b!75482 m!73112))

(declare-fun m!73114 () Bool)

(assert (=> d!54849 m!73114))

(declare-fun m!73116 () Bool)

(assert (=> b!75477 m!73116))

(assert (=> b!75480 m!73110))

(assert (=> b!75448 d!54849))

(declare-fun b!75513 () Bool)

(declare-fun e!40806 () Bool)

(declare-fun res!37492 () Bool)

(assert (=> b!75513 (= e!40806 res!37492)))

(assert (=> b!75513 true))

(declare-fun b!75514 () Bool)

(declare-fun e!40807 () Bool)

(assert (=> b!75514 (= e!40807 e!40806)))

(declare-fun c!18582 () Bool)

(declare-fun lt!16486 () Bool)

(assert (=> b!75514 (= c!18582 (or lt!16486 (and (not (is-Implies!88 f!4486)) (is-Not!88 f!4486))))))

(declare-fun b!75515 () Bool)

(declare-fun e!40805 () Bool)

(declare-fun lt!16488 () Bool)

(assert (=> b!75515 (= e!40805 lt!16488)))

(declare-fun b!75516 () Bool)

(declare-fun e!40810 () Bool)

(declare-fun res!37487 () Bool)

(assert (=> b!75516 (= e!40810 res!37487)))

(assert (=> b!75516 true))

(declare-fun b!75517 () Bool)

(declare-fun e!40808 () Bool)

(declare-fun lt!16487 () Bool)

(assert (=> b!75517 (= e!40808 (isSimplified!0 (ite lt!16487 (lhs!1366 f!4486) (ite (is-Or!88 f!4486) (lhs!1367 f!4486) (f!4699 f!4486)))))))

(declare-fun e!40803 () Bool)

(declare-fun lt!16490 () Bool)

(declare-fun lt!16485 () Bool)

(declare-fun b!75518 () Bool)

(declare-fun lt!16484 () Bool)

(assert (=> b!75518 (= e!40803 (ite lt!16485 (and lt!16490 lt!16484) (and (not (is-Implies!88 f!4486)) (or (not (is-Not!88 f!4486)) lt!16490))))))

(assert (=> b!75518 (= lt!16490 e!40805)))

(declare-fun c!18579 () Bool)

(assert (=> b!75518 (= c!18579 (or lt!16485 (and (not (is-Implies!88 f!4486)) (is-Not!88 f!4486))))))

(assert (=> b!75518 (= lt!16485 (is-Or!88 f!4486))))

(declare-fun b!75519 () Bool)

(declare-fun res!37491 () Bool)

(assert (=> b!75519 (= e!40805 res!37491)))

(assert (=> b!75519 true))

(assert (=> b!75519 true))

(declare-fun b!75520 () Bool)

(declare-fun e!40809 () Bool)

(declare-fun e!40804 () Bool)

(assert (=> b!75520 (= e!40809 e!40804)))

(declare-fun res!37489 () Bool)

(assert (=> b!75520 (=> (not res!37489) (not e!40804))))

(assert (=> b!75520 (= res!37489 (not lt!16487))))

(declare-fun b!75521 () Bool)

(assert (=> b!75521 (= e!40804 e!40807)))

(declare-fun res!37490 () Bool)

(assert (=> b!75521 (=> (not res!37490) (not e!40807))))

(assert (=> b!75521 (= res!37490 lt!16486)))

(assert (=> b!75521 (= lt!16486 (is-Or!88 f!4486))))

(declare-fun b!75522 () Bool)

(declare-fun res!37486 () Bool)

(assert (=> b!75522 (= e!40808 res!37486)))

(assert (=> b!75522 true))

(declare-fun b!75523 () Bool)

(declare-fun lt!16489 () Bool)

(assert (=> b!75523 (= e!40810 (isSimplified!0 (ite lt!16489 (rhs!1366 f!4486) (rhs!1367 f!4486))))))

(declare-fun b!75524 () Bool)

(assert (=> b!75524 (= e!40806 lt!16488)))

(declare-fun d!54851 () Bool)

(declare-fun c!18578 () Bool)

(assert (=> d!54851 (= c!18578 lt!16487)))

(assert (=> d!54851 (= lt!16484 e!40810)))

(declare-fun c!18580 () Bool)

(assert (=> d!54851 (= c!18580 e!40809)))

(declare-fun res!37488 () Bool)

(assert (=> d!54851 (=> res!37488 e!40809)))

(assert (=> d!54851 (= res!37488 lt!16489)))

(assert (=> d!54851 (= lt!16489 (and lt!16487 lt!16488))))

(assert (=> d!54851 (= lt!16488 e!40808)))

(declare-fun c!18581 () Bool)

(assert (=> d!54851 (= c!18581 (or lt!16487 (is-Or!88 f!4486) (and (not (is-Implies!88 f!4486)) (is-Not!88 f!4486))))))

(assert (=> d!54851 (= lt!16487 (is-And!88 f!4486))))

(assert (=> d!54851 (= (isSimplified!0 f!4486) e!40803)))

(declare-fun b!75525 () Bool)

(assert (=> b!75525 (= e!40803 (and lt!16488 lt!16484))))

(assert (= (and d!54851 c!18581) b!75517))

(assert (= (and d!54851 (not c!18581)) b!75522))

(assert (= (and d!54851 (not res!37488)) b!75520))

(assert (= (and b!75520 res!37489) b!75521))

(assert (= (and b!75521 res!37490) b!75514))

(assert (= (and b!75514 c!18582) b!75524))

(assert (= (and b!75514 (not c!18582)) b!75513))

(assert (= (and d!54851 c!18580) b!75523))

(assert (= (and d!54851 (not c!18580)) b!75516))

(assert (= (and b!75518 c!18579) b!75515))

(assert (= (and b!75518 (not c!18579)) b!75519))

(assert (= (and d!54851 c!18578) b!75525))

(assert (= (and d!54851 (not c!18578)) b!75518))

(declare-fun m!73118 () Bool)

(assert (=> b!75517 m!73118))

(declare-fun m!73120 () Bool)

(assert (=> b!75523 m!73120))

(assert (=> b!75450 d!54851))

(declare-fun b!75526 () Bool)

(declare-fun e!40814 () Bool)

(declare-fun res!37499 () Bool)

(assert (=> b!75526 (= e!40814 res!37499)))

(assert (=> b!75526 true))

(declare-fun b!75527 () Bool)

(declare-fun e!40815 () Bool)

(assert (=> b!75527 (= e!40815 e!40814)))

(declare-fun c!18587 () Bool)

(declare-fun lt!16493 () Bool)

(assert (=> b!75527 (= c!18587 (or lt!16493 (and (not (is-Implies!88 f!4460)) (is-Not!88 f!4460))))))

(declare-fun b!75528 () Bool)

(declare-fun e!40813 () Bool)

(declare-fun lt!16495 () Bool)

(assert (=> b!75528 (= e!40813 lt!16495)))

(declare-fun b!75529 () Bool)

(declare-fun e!40818 () Bool)

(declare-fun res!37494 () Bool)

(assert (=> b!75529 (= e!40818 res!37494)))

(assert (=> b!75529 true))

(declare-fun b!75530 () Bool)

(declare-fun e!40816 () Bool)

(declare-fun lt!16494 () Bool)

(assert (=> b!75530 (= e!40816 (isSimplified!0 (ite lt!16494 (lhs!1366 f!4460) (ite (is-Or!88 f!4460) (lhs!1367 f!4460) (f!4699 f!4460)))))))

(declare-fun lt!16492 () Bool)

(declare-fun b!75531 () Bool)

(declare-fun lt!16491 () Bool)

(declare-fun lt!16497 () Bool)

(declare-fun e!40811 () Bool)

(assert (=> b!75531 (= e!40811 (ite lt!16492 (and lt!16497 lt!16491) (and (not (is-Implies!88 f!4460)) (or (not (is-Not!88 f!4460)) lt!16497))))))

(assert (=> b!75531 (= lt!16497 e!40813)))

(declare-fun c!18584 () Bool)

(assert (=> b!75531 (= c!18584 (or lt!16492 (and (not (is-Implies!88 f!4460)) (is-Not!88 f!4460))))))

(assert (=> b!75531 (= lt!16492 (is-Or!88 f!4460))))

(declare-fun b!75532 () Bool)

(declare-fun res!37498 () Bool)

(assert (=> b!75532 (= e!40813 res!37498)))

(assert (=> b!75532 true))

(assert (=> b!75532 true))

(declare-fun b!75533 () Bool)

(declare-fun e!40817 () Bool)

(declare-fun e!40812 () Bool)

(assert (=> b!75533 (= e!40817 e!40812)))

(declare-fun res!37496 () Bool)

(assert (=> b!75533 (=> (not res!37496) (not e!40812))))

(assert (=> b!75533 (= res!37496 (not lt!16494))))

(declare-fun b!75534 () Bool)

(assert (=> b!75534 (= e!40812 e!40815)))

(declare-fun res!37497 () Bool)

(assert (=> b!75534 (=> (not res!37497) (not e!40815))))

(assert (=> b!75534 (= res!37497 lt!16493)))

(assert (=> b!75534 (= lt!16493 (is-Or!88 f!4460))))

(declare-fun b!75535 () Bool)

(declare-fun res!37493 () Bool)

(assert (=> b!75535 (= e!40816 res!37493)))

(assert (=> b!75535 true))

(declare-fun b!75536 () Bool)

(declare-fun lt!16496 () Bool)

(assert (=> b!75536 (= e!40818 (isSimplified!0 (ite lt!16496 (rhs!1366 f!4460) (rhs!1367 f!4460))))))

(declare-fun b!75537 () Bool)

(assert (=> b!75537 (= e!40814 lt!16495)))

(declare-fun d!54853 () Bool)

(declare-fun c!18583 () Bool)

(assert (=> d!54853 (= c!18583 lt!16494)))

(assert (=> d!54853 (= lt!16491 e!40818)))

(declare-fun c!18585 () Bool)

(assert (=> d!54853 (= c!18585 e!40817)))

(declare-fun res!37495 () Bool)

(assert (=> d!54853 (=> res!37495 e!40817)))

(assert (=> d!54853 (= res!37495 lt!16496)))

(assert (=> d!54853 (= lt!16496 (and lt!16494 lt!16495))))

(assert (=> d!54853 (= lt!16495 e!40816)))

(declare-fun c!18586 () Bool)

(assert (=> d!54853 (= c!18586 (or lt!16494 (is-Or!88 f!4460) (and (not (is-Implies!88 f!4460)) (is-Not!88 f!4460))))))

(assert (=> d!54853 (= lt!16494 (is-And!88 f!4460))))

(assert (=> d!54853 (= (isSimplified!0 f!4460) e!40811)))

(declare-fun b!75538 () Bool)

(assert (=> b!75538 (= e!40811 (and lt!16495 lt!16491))))

(assert (= (and d!54853 c!18586) b!75530))

(assert (= (and d!54853 (not c!18586)) b!75535))

(assert (= (and d!54853 (not res!37495)) b!75533))

(assert (= (and b!75533 res!37496) b!75534))

(assert (= (and b!75534 res!37497) b!75527))

(assert (= (and b!75527 c!18587) b!75537))

(assert (= (and b!75527 (not c!18587)) b!75526))

(assert (= (and d!54853 c!18585) b!75536))

(assert (= (and d!54853 (not c!18585)) b!75529))

(assert (= (and b!75531 c!18584) b!75528))

(assert (= (and b!75531 (not c!18584)) b!75532))

(assert (= (and d!54853 c!18583) b!75538))

(assert (= (and d!54853 (not c!18583)) b!75531))

(declare-fun m!73122 () Bool)

(assert (=> b!75530 m!73122))

(declare-fun m!73124 () Bool)

(assert (=> b!75536 m!73124))

(assert (=> start!10274 d!54853))

(push 1)

(assert (not b!75480))

(assert (not d!54849))

(assert (not b!75530))

(assert (not b!75536))

(assert (not b!75482))

(assert (not b!75523))

(assert (not b!75477))

(assert (not b!75484))

(assert (not b!75517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

