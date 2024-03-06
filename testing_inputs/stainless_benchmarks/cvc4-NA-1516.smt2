; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10280 () Bool)

(assert start!10280)

(declare-fun res!37504 () Bool)

(declare-fun e!40821 () Bool)

(assert (=> start!10280 (=> (not res!37504) (not e!40821))))

(declare-datatypes () ((Formula!85 (Implies!89 (lhs!1368 Formula!85) (rhs!1368 Formula!85)) (And!89 (lhs!1369 Formula!85) (rhs!1369 Formula!85)) (Or!89 (lhs!1370 Formula!85) (rhs!1370 Formula!85)) (Literal!83 (id!4946 (_ BitVec 32))) (Not!89 (f!4702 Formula!85)))))

(declare-fun f!4460 () Formula!85)

(declare-fun isSimplified!0 (Formula!85) Bool)

(assert (=> start!10280 (= res!37504 (isSimplified!0 f!4460))))

(assert (=> start!10280 e!40821))

(assert (=> start!10280 true))

(declare-fun b!75543 () Bool)

(declare-fun res!37505 () Bool)

(assert (=> b!75543 (=> (not res!37505) (not e!40821))))

(declare-fun f!4495 () Formula!85)

(assert (=> b!75543 (= res!37505 (and (not (is-Implies!89 f!4460)) (not (is-And!89 f!4460)) (not (is-Or!89 f!4460)) (not (is-Literal!83 f!4460)) (= f!4495 (f!4702 f!4460))))))

(declare-fun b!75544 () Bool)

(assert (=> b!75544 (= e!40821 (not (isSimplified!0 f!4495)))))

(assert (= (and start!10280 res!37504) b!75543))

(assert (= (and b!75543 res!37505) b!75544))

(declare-fun m!73126 () Bool)

(assert (=> start!10280 m!73126))

(declare-fun m!73128 () Bool)

(assert (=> b!75544 m!73128))

(push 1)

(assert (not start!10280))

(assert (not b!75544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75571 () Bool)

(declare-fun e!40840 () Bool)

(declare-fun e!40841 () Bool)

(assert (=> b!75571 (= e!40840 e!40841)))

(declare-fun res!37537 () Bool)

(assert (=> b!75571 (=> (not res!37537) (not e!40841))))

(declare-fun lt!16516 () Bool)

(assert (=> b!75571 (= res!37537 (not lt!16516))))

(declare-fun b!75572 () Bool)

(declare-fun e!40842 () Bool)

(assert (=> b!75572 (= e!40842 (isSimplified!0 (ite lt!16516 (lhs!1369 f!4460) (ite (is-Or!89 f!4460) (lhs!1370 f!4460) (f!4702 f!4460)))))))

(declare-fun b!75573 () Bool)

(declare-fun e!40843 () Bool)

(assert (=> b!75573 (= e!40841 e!40843)))

(declare-fun res!37535 () Bool)

(assert (=> b!75573 (=> (not res!37535) (not e!40843))))

(declare-fun lt!16517 () Bool)

(assert (=> b!75573 (= res!37535 lt!16517)))

(assert (=> b!75573 (= lt!16517 (is-Or!89 f!4460))))

(declare-fun b!75574 () Bool)

(declare-fun e!40838 () Bool)

(declare-fun res!37534 () Bool)

(assert (=> b!75574 (= e!40838 res!37534)))

(assert (=> b!75574 true))

(assert (=> b!75574 true))

(declare-fun e!40844 () Bool)

(declare-fun b!75575 () Bool)

(declare-fun lt!16512 () Bool)

(declare-fun lt!16518 () Bool)

(declare-fun lt!16514 () Bool)

(assert (=> b!75575 (= e!40844 (ite lt!16518 (and lt!16514 lt!16512) (and (not (is-Implies!89 f!4460)) (or (not (is-Not!89 f!4460)) lt!16514))))))

(assert (=> b!75575 (= lt!16514 e!40838)))

(declare-fun c!18600 () Bool)

(assert (=> b!75575 (= c!18600 (or lt!16518 (and (not (is-Implies!89 f!4460)) (is-Not!89 f!4460))))))

(assert (=> b!75575 (= lt!16518 (is-Or!89 f!4460))))

(declare-fun b!75576 () Bool)

(declare-fun lt!16513 () Bool)

(assert (=> b!75576 (= e!40838 lt!16513)))

(declare-fun b!75577 () Bool)

(declare-fun e!40839 () Bool)

(assert (=> b!75577 (= e!40839 lt!16513)))

(declare-fun b!75578 () Bool)

(assert (=> b!75578 (= e!40843 e!40839)))

(declare-fun c!18602 () Bool)

(assert (=> b!75578 (= c!18602 (or lt!16517 (and (not (is-Implies!89 f!4460)) (is-Not!89 f!4460))))))

(declare-fun b!75579 () Bool)

(declare-fun e!40845 () Bool)

(declare-fun lt!16515 () Bool)

(assert (=> b!75579 (= e!40845 (isSimplified!0 (ite lt!16515 (rhs!1369 f!4460) (rhs!1370 f!4460))))))

(declare-fun b!75580 () Bool)

(declare-fun res!37532 () Bool)

(assert (=> b!75580 (= e!40839 res!37532)))

(assert (=> b!75580 true))

(declare-fun d!54855 () Bool)

(declare-fun c!18601 () Bool)

(assert (=> d!54855 (= c!18601 lt!16516)))

(assert (=> d!54855 (= lt!16512 e!40845)))

(declare-fun c!18599 () Bool)

(assert (=> d!54855 (= c!18599 e!40840)))

(declare-fun res!37536 () Bool)

(assert (=> d!54855 (=> res!37536 e!40840)))

(assert (=> d!54855 (= res!37536 lt!16515)))

(assert (=> d!54855 (= lt!16515 (and lt!16516 lt!16513))))

(assert (=> d!54855 (= lt!16513 e!40842)))

(declare-fun c!18598 () Bool)

(assert (=> d!54855 (= c!18598 (or lt!16516 (is-Or!89 f!4460) (and (not (is-Implies!89 f!4460)) (is-Not!89 f!4460))))))

(assert (=> d!54855 (= lt!16516 (is-And!89 f!4460))))

(assert (=> d!54855 (= (isSimplified!0 f!4460) e!40844)))

(declare-fun b!75581 () Bool)

(declare-fun res!37531 () Bool)

(assert (=> b!75581 (= e!40845 res!37531)))

(assert (=> b!75581 true))

(declare-fun b!75582 () Bool)

(declare-fun res!37533 () Bool)

(assert (=> b!75582 (= e!40842 res!37533)))

(assert (=> b!75582 true))

(declare-fun b!75583 () Bool)

(assert (=> b!75583 (= e!40844 (and lt!16513 lt!16512))))

(assert (= (and d!54855 c!18598) b!75572))

(assert (= (and d!54855 (not c!18598)) b!75582))

(assert (= (and d!54855 (not res!37536)) b!75571))

(assert (= (and b!75571 res!37537) b!75573))

(assert (= (and b!75573 res!37535) b!75578))

(assert (= (and b!75578 c!18602) b!75577))

(assert (= (and b!75578 (not c!18602)) b!75580))

(assert (= (and d!54855 c!18599) b!75579))

(assert (= (and d!54855 (not c!18599)) b!75581))

(assert (= (and b!75575 c!18600) b!75576))

(assert (= (and b!75575 (not c!18600)) b!75574))

(assert (= (and d!54855 c!18601) b!75583))

(assert (= (and d!54855 (not c!18601)) b!75575))

(declare-fun m!73130 () Bool)

(assert (=> b!75572 m!73130))

(declare-fun m!73132 () Bool)

(assert (=> b!75579 m!73132))

(assert (=> start!10280 d!54855))

(declare-fun b!75584 () Bool)

(declare-fun e!40848 () Bool)

(declare-fun e!40849 () Bool)

(assert (=> b!75584 (= e!40848 e!40849)))

(declare-fun res!37544 () Bool)

(assert (=> b!75584 (=> (not res!37544) (not e!40849))))

(declare-fun lt!16523 () Bool)

(assert (=> b!75584 (= res!37544 (not lt!16523))))

(declare-fun b!75585 () Bool)

(declare-fun e!40850 () Bool)

(assert (=> b!75585 (= e!40850 (isSimplified!0 (ite lt!16523 (lhs!1369 f!4495) (ite (is-Or!89 f!4495) (lhs!1370 f!4495) (f!4702 f!4495)))))))

(declare-fun b!75586 () Bool)

(declare-fun e!40851 () Bool)

(assert (=> b!75586 (= e!40849 e!40851)))

(declare-fun res!37542 () Bool)

(assert (=> b!75586 (=> (not res!37542) (not e!40851))))

(declare-fun lt!16524 () Bool)

(assert (=> b!75586 (= res!37542 lt!16524)))

(assert (=> b!75586 (= lt!16524 (is-Or!89 f!4495))))

(declare-fun b!75587 () Bool)

(declare-fun e!40846 () Bool)

(declare-fun res!37541 () Bool)

(assert (=> b!75587 (= e!40846 res!37541)))

(assert (=> b!75587 true))

(assert (=> b!75587 true))

(declare-fun b!75588 () Bool)

(declare-fun e!40852 () Bool)

(declare-fun lt!16521 () Bool)

(declare-fun lt!16525 () Bool)

(declare-fun lt!16519 () Bool)

(assert (=> b!75588 (= e!40852 (ite lt!16525 (and lt!16521 lt!16519) (and (not (is-Implies!89 f!4495)) (or (not (is-Not!89 f!4495)) lt!16521))))))

(assert (=> b!75588 (= lt!16521 e!40846)))

(declare-fun c!18605 () Bool)

(assert (=> b!75588 (= c!18605 (or lt!16525 (and (not (is-Implies!89 f!4495)) (is-Not!89 f!4495))))))

(assert (=> b!75588 (= lt!16525 (is-Or!89 f!4495))))

(declare-fun b!75589 () Bool)

(declare-fun lt!16520 () Bool)

(assert (=> b!75589 (= e!40846 lt!16520)))

(declare-fun b!75590 () Bool)

(declare-fun e!40847 () Bool)

(assert (=> b!75590 (= e!40847 lt!16520)))

(declare-fun b!75591 () Bool)

(assert (=> b!75591 (= e!40851 e!40847)))

(declare-fun c!18607 () Bool)

(assert (=> b!75591 (= c!18607 (or lt!16524 (and (not (is-Implies!89 f!4495)) (is-Not!89 f!4495))))))

(declare-fun b!75592 () Bool)

(declare-fun e!40853 () Bool)

(declare-fun lt!16522 () Bool)

(assert (=> b!75592 (= e!40853 (isSimplified!0 (ite lt!16522 (rhs!1369 f!4495) (rhs!1370 f!4495))))))

(declare-fun b!75593 () Bool)

(declare-fun res!37539 () Bool)

(assert (=> b!75593 (= e!40847 res!37539)))

(assert (=> b!75593 true))

(declare-fun d!54857 () Bool)

(declare-fun c!18606 () Bool)

(assert (=> d!54857 (= c!18606 lt!16523)))

(assert (=> d!54857 (= lt!16519 e!40853)))

(declare-fun c!18604 () Bool)

(assert (=> d!54857 (= c!18604 e!40848)))

(declare-fun res!37543 () Bool)

(assert (=> d!54857 (=> res!37543 e!40848)))

(assert (=> d!54857 (= res!37543 lt!16522)))

(assert (=> d!54857 (= lt!16522 (and lt!16523 lt!16520))))

(assert (=> d!54857 (= lt!16520 e!40850)))

(declare-fun c!18603 () Bool)

(assert (=> d!54857 (= c!18603 (or lt!16523 (is-Or!89 f!4495) (and (not (is-Implies!89 f!4495)) (is-Not!89 f!4495))))))

(assert (=> d!54857 (= lt!16523 (is-And!89 f!4495))))

(assert (=> d!54857 (= (isSimplified!0 f!4495) e!40852)))

(declare-fun b!75594 () Bool)

(declare-fun res!37538 () Bool)

(assert (=> b!75594 (= e!40853 res!37538)))

(assert (=> b!75594 true))

(declare-fun b!75595 () Bool)

(declare-fun res!37540 () Bool)

(assert (=> b!75595 (= e!40850 res!37540)))

(assert (=> b!75595 true))

(declare-fun b!75596 () Bool)

(assert (=> b!75596 (= e!40852 (and lt!16520 lt!16519))))

(assert (= (and d!54857 c!18603) b!75585))

(assert (= (and d!54857 (not c!18603)) b!75595))

(assert (= (and d!54857 (not res!37543)) b!75584))

(assert (= (and b!75584 res!37544) b!75586))

(assert (= (and b!75586 res!37542) b!75591))

(assert (= (and b!75591 c!18607) b!75590))

(assert (= (and b!75591 (not c!18607)) b!75593))

(assert (= (and d!54857 c!18604) b!75592))

(assert (= (and d!54857 (not c!18604)) b!75594))

(assert (= (and b!75588 c!18605) b!75589))

(assert (= (and b!75588 (not c!18605)) b!75587))

(assert (= (and d!54857 c!18606) b!75596))

(assert (= (and d!54857 (not c!18606)) b!75588))

(declare-fun m!73134 () Bool)

(assert (=> b!75585 m!73134))

(declare-fun m!73136 () Bool)

(assert (=> b!75592 m!73136))

(assert (=> b!75544 d!54857))

(push 1)

(assert (not b!75585))

(assert (not b!75572))

(assert (not b!75592))

(assert (not b!75579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

