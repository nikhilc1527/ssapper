; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10408 () Bool)

(assert start!10408)

(declare-fun res!39452 () Bool)

(declare-fun e!42414 () Bool)

(assert (=> start!10408 (=> (not res!39452) (not e!42414))))

(declare-datatypes () ((Formula!108 (Implies!112 (lhs!1437 Formula!108) (rhs!1437 Formula!108)) (And!112 (lhs!1438 Formula!108) (rhs!1438 Formula!108)) (Or!112 (lhs!1439 Formula!108) (rhs!1439 Formula!108)) (Literal!106 (id!4969 (_ BitVec 32))) (Not!112 (f!4761 Formula!108)))))

(declare-fun formula!94 () Formula!108)

(assert (=> start!10408 (= res!39452 (and (not (is-And!112 formula!94)) (not (is-Or!112 formula!94)) (not (is-Implies!112 formula!94)) (or (not (is-Not!112 formula!94)) (not (is-And!112 (f!4761 formula!94)))) (is-Not!112 formula!94) (is-Or!112 (f!4761 formula!94))))))

(assert (=> start!10408 e!42414))

(assert (=> start!10408 true))

(declare-fun b!78459 () Bool)

(declare-fun res!39453 () Bool)

(assert (=> b!78459 (=> (not res!39453) (not e!42414))))

(declare-fun x$2!425 () Formula!108)

(declare-fun nnf!0 (Formula!108) Formula!108)

(assert (=> b!78459 (= res!39453 (= x$2!425 (And!112 (nnf!0 (Not!112 (lhs!1439 (f!4761 formula!94)))) (nnf!0 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78460 () Bool)

(declare-fun isNNF!0 (Formula!108) Bool)

(assert (=> b!78460 (= e!42414 (not (isNNF!0 x$2!425)))))

(assert (= (and start!10408 res!39452) b!78459))

(assert (= (and b!78459 res!39453) b!78460))

(declare-fun m!73584 () Bool)

(assert (=> b!78459 m!73584))

(declare-fun m!73586 () Bool)

(assert (=> b!78459 m!73586))

(declare-fun m!73588 () Bool)

(assert (=> b!78460 m!73588))

(push 1)

(assert (not b!78459))

(assert (not b!78460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!78525 () Bool)

(declare-fun e!42459 () Formula!108)

(declare-fun res!39514 () Formula!108)

(assert (=> b!78525 (= e!42459 res!39514)))

(assert (=> b!78525 true))

(declare-fun b!78526 () Bool)

(declare-fun e!42460 () Formula!108)

(declare-fun e!42462 () Formula!108)

(assert (=> b!78526 (= e!42460 e!42462)))

(declare-fun c!19867 () Bool)

(declare-fun lt!17915 () Bool)

(assert (=> b!78526 (= c!19867 lt!17915)))

(declare-fun lt!17916 () Formula!108)

(declare-fun e!42455 () Formula!108)

(assert (=> b!78526 (= lt!17916 e!42455)))

(declare-fun c!19872 () Bool)

(assert (=> b!78526 (= c!19872 (or lt!17915 (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17903 () Formula!108)

(declare-fun e!42454 () Formula!108)

(assert (=> b!78526 (= lt!17903 e!42454)))

(declare-fun c!19866 () Bool)

(assert (=> b!78526 (= c!19866 (or lt!17915 (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78526 (= lt!17915 (is-Or!112 (Not!112 (lhs!1439 (f!4761 formula!94)))))))

(declare-fun b!78527 () Bool)

(declare-fun lt!17906 () Formula!108)

(declare-fun lt!17913 () Formula!108)

(assert (=> b!78527 (= e!42460 (And!112 lt!17906 lt!17913))))

(declare-fun b!78528 () Bool)

(declare-fun e!42452 () Formula!108)

(declare-fun e!42456 () Formula!108)

(assert (=> b!78528 (= e!42452 e!42456)))

(declare-fun c!19874 () Bool)

(declare-fun lt!17909 () Bool)

(assert (=> b!78528 (= c!19874 lt!17909)))

(declare-fun lt!17912 () Formula!108)

(declare-fun e!42451 () Formula!108)

(assert (=> b!78528 (= lt!17912 e!42451)))

(declare-fun c!19871 () Bool)

(assert (=> b!78528 (= c!19871 (or lt!17909 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17907 () Formula!108)

(declare-fun e!42448 () Formula!108)

(assert (=> b!78528 (= lt!17907 e!42448)))

(declare-fun c!19869 () Bool)

(assert (=> b!78528 (= c!19869 (or lt!17909 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78528 (= lt!17909 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78529 () Bool)

(assert (=> b!78529 (= e!42455 lt!17913)))

(declare-fun b!78530 () Bool)

(declare-fun e!42458 () Formula!108)

(declare-fun res!39515 () Formula!108)

(assert (=> b!78530 (= e!42458 res!39515)))

(assert (=> b!78530 true))

(declare-fun b!78531 () Bool)

(declare-fun e!42450 () Formula!108)

(assert (=> b!78531 (= e!42450 e!42452)))

(declare-fun c!19870 () Bool)

(declare-fun lt!17904 () Bool)

(assert (=> b!78531 (= c!19870 lt!17904)))

(declare-fun lt!17911 () Formula!108)

(declare-fun e!42457 () Formula!108)

(assert (=> b!78531 (= lt!17911 e!42457)))

(declare-fun c!19865 () Bool)

(assert (=> b!78531 (= c!19865 (or lt!17904 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17918 () Formula!108)

(assert (=> b!78531 (= lt!17918 e!42459)))

(declare-fun c!19877 () Bool)

(assert (=> b!78531 (= c!19877 (or lt!17904 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78531 (= lt!17904 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78532 () Bool)

(declare-fun e!42447 () Formula!108)

(assert (=> b!78532 (= e!42447 lt!17916)))

(declare-fun b!78533 () Bool)

(declare-fun res!39510 () Formula!108)

(assert (=> b!78533 (= e!42451 res!39510)))

(assert (=> b!78533 true))

(declare-fun b!78534 () Bool)

(assert (=> b!78534 (= e!42452 (Or!112 lt!17918 lt!17911))))

(declare-fun b!78535 () Bool)

(assert (=> b!78535 (= e!42451 lt!17911)))

(declare-fun b!78536 () Bool)

(declare-fun e!42461 () Formula!108)

(declare-fun res!39512 () Formula!108)

(assert (=> b!78536 (= e!42461 res!39512)))

(assert (=> b!78536 true))

(declare-fun b!78537 () Bool)

(declare-fun lt!17914 () Bool)

(assert (=> b!78537 (= e!42458 (nnf!0 (ite lt!17914 (rhs!1438 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (is-Or!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (rhs!1439 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (rhs!1437 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1438 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1439 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1437 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))))))))))))

(declare-fun b!78538 () Bool)

(assert (=> b!78538 (= e!42448 lt!17918)))

(declare-fun b!78539 () Bool)

(declare-fun lt!17917 () Formula!108)

(declare-fun lt!17908 () Formula!108)

(assert (=> b!78539 (= e!42450 (Implies!112 lt!17917 lt!17908))))

(declare-fun b!78540 () Bool)

(assert (=> b!78540 (= e!42457 lt!17908)))

(declare-fun b!78541 () Bool)

(declare-fun res!39513 () Formula!108)

(assert (=> b!78541 (= e!42457 res!39513)))

(assert (=> b!78541 true))

(declare-fun b!78542 () Bool)

(declare-fun e!42449 () Formula!108)

(declare-fun res!39518 () Formula!108)

(assert (=> b!78542 (= e!42449 res!39518)))

(assert (=> b!78542 true))

(assert (=> b!78542 true))

(declare-fun b!78543 () Bool)

(assert (=> b!78543 (= e!42462 (Or!112 lt!17903 lt!17916))))

(declare-fun d!54987 () Bool)

(declare-fun lt!17910 () Formula!108)

(assert (=> d!54987 (isNNF!0 lt!17910)))

(assert (=> d!54987 (= lt!17910 e!42460)))

(declare-fun c!19876 () Bool)

(assert (=> d!54987 (= c!19876 lt!17914)))

(assert (=> d!54987 (= lt!17913 e!42458)))

(declare-fun c!19873 () Bool)

(assert (=> d!54987 (= c!19873 (or lt!17914 (is-Or!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(declare-fun e!42453 () Formula!108)

(assert (=> d!54987 (= lt!17906 e!42453)))

(declare-fun c!19875 () Bool)

(assert (=> d!54987 (= c!19875 (or lt!17914 (is-Or!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> d!54987 (= lt!17914 (is-And!112 (Not!112 (lhs!1439 (f!4761 formula!94)))))))

(assert (=> d!54987 (= (nnf!0 (Not!112 (lhs!1439 (f!4761 formula!94)))) lt!17910)))

(declare-fun b!78544 () Bool)

(declare-fun lt!17905 () Formula!108)

(declare-fun lt!17902 () Bool)

(assert (=> b!78544 (= e!42456 (ite lt!17902 (And!112 lt!17905 lt!17912) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) lt!17905 (Not!112 (lhs!1439 (f!4761 formula!94))))))))

(assert (=> b!78544 (= lt!17905 e!42449)))

(declare-fun c!19863 () Bool)

(assert (=> b!78544 (= c!19863 (or lt!17902 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78544 (= lt!17902 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78545 () Bool)

(assert (=> b!78545 (= e!42462 e!42450)))

(declare-fun c!19868 () Bool)

(declare-fun lt!17901 () Bool)

(assert (=> b!78545 (= c!19868 lt!17901)))

(assert (=> b!78545 (= lt!17908 e!42447)))

(declare-fun c!19864 () Bool)

(assert (=> b!78545 (= c!19864 (or lt!17901 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78545 (= lt!17917 e!42461)))

(declare-fun c!19862 () Bool)

(assert (=> b!78545 (= c!19862 (or lt!17901 (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78545 (= lt!17901 (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))))))

(declare-fun b!78546 () Bool)

(assert (=> b!78546 (= e!42453 (nnf!0 (ite lt!17914 (lhs!1438 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (is-Or!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (lhs!1439 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (is-Implies!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (lhs!1437 (Not!112 (lhs!1439 (f!4761 formula!94)))) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (Not!112 (lhs!1438 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (Not!112 (lhs!1439 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (lhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))) (lhs!1437 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94))))) (f!4761 (f!4761 (Not!112 (lhs!1439 (f!4761 formula!94)))))))))))))))

(declare-fun b!78547 () Bool)

(declare-fun res!39516 () Formula!108)

(assert (=> b!78547 (= e!42448 res!39516)))

(assert (=> b!78547 true))

(declare-fun b!78548 () Bool)

(assert (=> b!78548 (= e!42456 (And!112 lt!17907 lt!17912))))

(declare-fun b!78549 () Bool)

(assert (=> b!78549 (= e!42461 lt!17903)))

(declare-fun b!78550 () Bool)

(declare-fun res!39509 () Formula!108)

(assert (=> b!78550 (= e!42447 res!39509)))

(assert (=> b!78550 true))

(declare-fun b!78551 () Bool)

(assert (=> b!78551 (= e!42449 lt!17907)))

(declare-fun b!78552 () Bool)

(assert (=> b!78552 (= e!42459 lt!17917)))

(declare-fun b!78553 () Bool)

(declare-fun res!39517 () Formula!108)

(assert (=> b!78553 (= e!42454 res!39517)))

(assert (=> b!78553 true))

(declare-fun b!78554 () Bool)

(declare-fun res!39511 () Formula!108)

(assert (=> b!78554 (= e!42453 res!39511)))

(assert (=> b!78554 true))

(declare-fun b!78555 () Bool)

(declare-fun res!39519 () Formula!108)

(assert (=> b!78555 (= e!42455 res!39519)))

(assert (=> b!78555 true))

(declare-fun b!78556 () Bool)

(assert (=> b!78556 (= e!42454 lt!17906)))

(assert (= (and d!54987 c!19875) b!78546))

(assert (= (and d!54987 (not c!19875)) b!78554))

(assert (= (and d!54987 c!19873) b!78537))

(assert (= (and d!54987 (not c!19873)) b!78530))

(assert (= (and b!78526 c!19866) b!78556))

(assert (= (and b!78526 (not c!19866)) b!78553))

(assert (= (and b!78526 c!19872) b!78529))

(assert (= (and b!78526 (not c!19872)) b!78555))

(assert (= (and b!78545 c!19862) b!78549))

(assert (= (and b!78545 (not c!19862)) b!78536))

(assert (= (and b!78545 c!19864) b!78532))

(assert (= (and b!78545 (not c!19864)) b!78550))

(assert (= (and b!78531 c!19877) b!78552))

(assert (= (and b!78531 (not c!19877)) b!78525))

(assert (= (and b!78531 c!19865) b!78540))

(assert (= (and b!78531 (not c!19865)) b!78541))

(assert (= (and b!78528 c!19869) b!78538))

(assert (= (and b!78528 (not c!19869)) b!78547))

(assert (= (and b!78528 c!19871) b!78535))

(assert (= (and b!78528 (not c!19871)) b!78533))

(assert (= (and b!78544 c!19863) b!78551))

(assert (= (and b!78544 (not c!19863)) b!78542))

(assert (= (and b!78528 c!19874) b!78548))

(assert (= (and b!78528 (not c!19874)) b!78544))

(assert (= (and b!78531 c!19870) b!78534))

(assert (= (and b!78531 (not c!19870)) b!78528))

(assert (= (and b!78545 c!19868) b!78539))

(assert (= (and b!78545 (not c!19868)) b!78531))

(assert (= (and b!78526 c!19867) b!78543))

(assert (= (and b!78526 (not c!19867)) b!78545))

(assert (= (and d!54987 c!19876) b!78527))

(assert (= (and d!54987 (not c!19876)) b!78526))

(declare-fun m!73590 () Bool)

(assert (=> b!78537 m!73590))

(declare-fun m!73592 () Bool)

(assert (=> d!54987 m!73592))

(declare-fun m!73594 () Bool)

(assert (=> b!78546 m!73594))

(assert (=> b!78459 d!54987))

(declare-fun b!78557 () Bool)

(declare-fun e!42475 () Formula!108)

(declare-fun res!39525 () Formula!108)

(assert (=> b!78557 (= e!42475 res!39525)))

(assert (=> b!78557 true))

(declare-fun b!78558 () Bool)

(declare-fun e!42476 () Formula!108)

(declare-fun e!42478 () Formula!108)

(assert (=> b!78558 (= e!42476 e!42478)))

(declare-fun c!19883 () Bool)

(declare-fun lt!17933 () Bool)

(assert (=> b!78558 (= c!19883 lt!17933)))

(declare-fun lt!17934 () Formula!108)

(declare-fun e!42471 () Formula!108)

(assert (=> b!78558 (= lt!17934 e!42471)))

(declare-fun c!19888 () Bool)

(assert (=> b!78558 (= c!19888 (or lt!17933 (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17921 () Formula!108)

(declare-fun e!42470 () Formula!108)

(assert (=> b!78558 (= lt!17921 e!42470)))

(declare-fun c!19882 () Bool)

(assert (=> b!78558 (= c!19882 (or lt!17933 (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78558 (= lt!17933 (is-Or!112 (Not!112 (rhs!1439 (f!4761 formula!94)))))))

(declare-fun b!78559 () Bool)

(declare-fun lt!17924 () Formula!108)

(declare-fun lt!17931 () Formula!108)

(assert (=> b!78559 (= e!42476 (And!112 lt!17924 lt!17931))))

(declare-fun b!78560 () Bool)

(declare-fun e!42468 () Formula!108)

(declare-fun e!42472 () Formula!108)

(assert (=> b!78560 (= e!42468 e!42472)))

(declare-fun c!19890 () Bool)

(declare-fun lt!17927 () Bool)

(assert (=> b!78560 (= c!19890 lt!17927)))

(declare-fun lt!17930 () Formula!108)

(declare-fun e!42467 () Formula!108)

(assert (=> b!78560 (= lt!17930 e!42467)))

(declare-fun c!19887 () Bool)

(assert (=> b!78560 (= c!19887 (or lt!17927 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17925 () Formula!108)

(declare-fun e!42464 () Formula!108)

(assert (=> b!78560 (= lt!17925 e!42464)))

(declare-fun c!19885 () Bool)

(assert (=> b!78560 (= c!19885 (or lt!17927 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78560 (= lt!17927 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78561 () Bool)

(assert (=> b!78561 (= e!42471 lt!17931)))

(declare-fun b!78562 () Bool)

(declare-fun e!42474 () Formula!108)

(declare-fun res!39526 () Formula!108)

(assert (=> b!78562 (= e!42474 res!39526)))

(assert (=> b!78562 true))

(declare-fun b!78563 () Bool)

(declare-fun e!42466 () Formula!108)

(assert (=> b!78563 (= e!42466 e!42468)))

(declare-fun c!19886 () Bool)

(declare-fun lt!17922 () Bool)

(assert (=> b!78563 (= c!19886 lt!17922)))

(declare-fun lt!17929 () Formula!108)

(declare-fun e!42473 () Formula!108)

(assert (=> b!78563 (= lt!17929 e!42473)))

(declare-fun c!19881 () Bool)

(assert (=> b!78563 (= c!19881 (or lt!17922 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(declare-fun lt!17936 () Formula!108)

(assert (=> b!78563 (= lt!17936 e!42475)))

(declare-fun c!19893 () Bool)

(assert (=> b!78563 (= c!19893 (or lt!17922 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78563 (= lt!17922 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78564 () Bool)

(declare-fun e!42463 () Formula!108)

(assert (=> b!78564 (= e!42463 lt!17934)))

(declare-fun b!78565 () Bool)

(declare-fun res!39521 () Formula!108)

(assert (=> b!78565 (= e!42467 res!39521)))

(assert (=> b!78565 true))

(declare-fun b!78566 () Bool)

(assert (=> b!78566 (= e!42468 (Or!112 lt!17936 lt!17929))))

(declare-fun b!78567 () Bool)

(assert (=> b!78567 (= e!42467 lt!17929)))

(declare-fun b!78568 () Bool)

(declare-fun e!42477 () Formula!108)

(declare-fun res!39523 () Formula!108)

(assert (=> b!78568 (= e!42477 res!39523)))

(assert (=> b!78568 true))

(declare-fun b!78569 () Bool)

(declare-fun lt!17932 () Bool)

(assert (=> b!78569 (= e!42474 (nnf!0 (ite lt!17932 (rhs!1438 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (is-Or!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (rhs!1439 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (rhs!1437 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1438 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1439 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (Not!112 (rhs!1437 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))))))))

(declare-fun b!78570 () Bool)

(assert (=> b!78570 (= e!42464 lt!17936)))

(declare-fun b!78571 () Bool)

(declare-fun lt!17935 () Formula!108)

(declare-fun lt!17926 () Formula!108)

(assert (=> b!78571 (= e!42466 (Implies!112 lt!17935 lt!17926))))

(declare-fun b!78572 () Bool)

(assert (=> b!78572 (= e!42473 lt!17926)))

(declare-fun b!78573 () Bool)

(declare-fun res!39524 () Formula!108)

(assert (=> b!78573 (= e!42473 res!39524)))

(assert (=> b!78573 true))

(declare-fun b!78574 () Bool)

(declare-fun e!42465 () Formula!108)

(declare-fun res!39529 () Formula!108)

(assert (=> b!78574 (= e!42465 res!39529)))

(assert (=> b!78574 true))

(assert (=> b!78574 true))

(declare-fun b!78575 () Bool)

(assert (=> b!78575 (= e!42478 (Or!112 lt!17921 lt!17934))))

(declare-fun d!54989 () Bool)

(declare-fun lt!17928 () Formula!108)

(assert (=> d!54989 (isNNF!0 lt!17928)))

(assert (=> d!54989 (= lt!17928 e!42476)))

(declare-fun c!19892 () Bool)

(assert (=> d!54989 (= c!19892 lt!17932)))

(assert (=> d!54989 (= lt!17931 e!42474)))

(declare-fun c!19889 () Bool)

(assert (=> d!54989 (= c!19889 (or lt!17932 (is-Or!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(declare-fun e!42469 () Formula!108)

(assert (=> d!54989 (= lt!17924 e!42469)))

(declare-fun c!19891 () Bool)

(assert (=> d!54989 (= c!19891 (or lt!17932 (is-Or!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> d!54989 (= lt!17932 (is-And!112 (Not!112 (rhs!1439 (f!4761 formula!94)))))))

(assert (=> d!54989 (= (nnf!0 (Not!112 (rhs!1439 (f!4761 formula!94)))) lt!17928)))

(declare-fun lt!17923 () Formula!108)

(declare-fun b!78576 () Bool)

(declare-fun lt!17920 () Bool)

(assert (=> b!78576 (= e!42472 (ite lt!17920 (And!112 lt!17923 lt!17930) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) lt!17923 (Not!112 (rhs!1439 (f!4761 formula!94))))))))

(assert (=> b!78576 (= lt!17923 e!42465)))

(declare-fun c!19879 () Bool)

(assert (=> b!78576 (= c!19879 (or lt!17920 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78576 (= lt!17920 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))

(declare-fun b!78577 () Bool)

(assert (=> b!78577 (= e!42478 e!42466)))

(declare-fun c!19884 () Bool)

(declare-fun lt!17919 () Bool)

(assert (=> b!78577 (= c!19884 lt!17919)))

(assert (=> b!78577 (= lt!17926 e!42463)))

(declare-fun c!19880 () Bool)

(assert (=> b!78577 (= c!19880 (or lt!17919 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78577 (= lt!17935 e!42477)))

(declare-fun c!19878 () Bool)

(assert (=> b!78577 (= c!19878 (or lt!17919 (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Not!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))))))))

(assert (=> b!78577 (= lt!17919 (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))))))

(declare-fun b!78578 () Bool)

(assert (=> b!78578 (= e!42469 (nnf!0 (ite lt!17932 (lhs!1438 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (is-Or!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (lhs!1439 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (is-Implies!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (lhs!1437 (Not!112 (rhs!1439 (f!4761 formula!94)))) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-And!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (Not!112 (lhs!1438 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Or!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (Not!112 (lhs!1439 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (ite (and (is-Not!112 (Not!112 (rhs!1439 (f!4761 formula!94)))) (is-Implies!112 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))) (lhs!1437 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94))))) (f!4761 (f!4761 (Not!112 (rhs!1439 (f!4761 formula!94)))))))))))))))

(declare-fun b!78579 () Bool)

(declare-fun res!39527 () Formula!108)

(assert (=> b!78579 (= e!42464 res!39527)))

(assert (=> b!78579 true))

(declare-fun b!78580 () Bool)

(assert (=> b!78580 (= e!42472 (And!112 lt!17925 lt!17930))))

(declare-fun b!78581 () Bool)

(assert (=> b!78581 (= e!42477 lt!17921)))

(declare-fun b!78582 () Bool)

(declare-fun res!39520 () Formula!108)

(assert (=> b!78582 (= e!42463 res!39520)))

(assert (=> b!78582 true))

(declare-fun b!78583 () Bool)

(assert (=> b!78583 (= e!42465 lt!17925)))

(declare-fun b!78584 () Bool)

(assert (=> b!78584 (= e!42475 lt!17935)))

(declare-fun b!78585 () Bool)

(declare-fun res!39528 () Formula!108)

(assert (=> b!78585 (= e!42470 res!39528)))

(assert (=> b!78585 true))

(declare-fun b!78586 () Bool)

(declare-fun res!39522 () Formula!108)

(assert (=> b!78586 (= e!42469 res!39522)))

(assert (=> b!78586 true))

(declare-fun b!78587 () Bool)

(declare-fun res!39530 () Formula!108)

(assert (=> b!78587 (= e!42471 res!39530)))

(assert (=> b!78587 true))

(declare-fun b!78588 () Bool)

(assert (=> b!78588 (= e!42470 lt!17924)))

(assert (= (and d!54989 c!19891) b!78578))

(assert (= (and d!54989 (not c!19891)) b!78586))

(assert (= (and d!54989 c!19889) b!78569))

(assert (= (and d!54989 (not c!19889)) b!78562))

(assert (= (and b!78558 c!19882) b!78588))

(assert (= (and b!78558 (not c!19882)) b!78585))

(assert (= (and b!78558 c!19888) b!78561))

(assert (= (and b!78558 (not c!19888)) b!78587))

(assert (= (and b!78577 c!19878) b!78581))

(assert (= (and b!78577 (not c!19878)) b!78568))

(assert (= (and b!78577 c!19880) b!78564))

(assert (= (and b!78577 (not c!19880)) b!78582))

(assert (= (and b!78563 c!19893) b!78584))

(assert (= (and b!78563 (not c!19893)) b!78557))

(assert (= (and b!78563 c!19881) b!78572))

(assert (= (and b!78563 (not c!19881)) b!78573))

(assert (= (and b!78560 c!19885) b!78570))

(assert (= (and b!78560 (not c!19885)) b!78579))

(assert (= (and b!78560 c!19887) b!78567))

(assert (= (and b!78560 (not c!19887)) b!78565))

(assert (= (and b!78576 c!19879) b!78583))

(assert (= (and b!78576 (not c!19879)) b!78574))

(assert (= (and b!78560 c!19890) b!78580))

(assert (= (and b!78560 (not c!19890)) b!78576))

(assert (= (and b!78563 c!19886) b!78566))

(assert (= (and b!78563 (not c!19886)) b!78560))

(assert (= (and b!78577 c!19884) b!78571))

(assert (= (and b!78577 (not c!19884)) b!78563))

(assert (= (and b!78558 c!19883) b!78575))

(assert (= (and b!78558 (not c!19883)) b!78577))

(assert (= (and d!54989 c!19892) b!78559))

(assert (= (and d!54989 (not c!19892)) b!78558))

(declare-fun m!73596 () Bool)

(assert (=> b!78569 m!73596))

(declare-fun m!73598 () Bool)

(assert (=> d!54989 m!73598))

(declare-fun m!73600 () Bool)

(assert (=> b!78578 m!73600))

(assert (=> b!78459 d!54989))

(declare-fun b!78637 () Bool)

(declare-fun e!42514 () Bool)

(declare-fun e!42518 () Bool)

(assert (=> b!78637 (= e!42514 e!42518)))

(declare-fun c!19918 () Bool)

(declare-fun lt!17956 () Bool)

(assert (=> b!78637 (= c!19918 (or lt!17956 (is-Implies!112 x$2!425)))))

(declare-fun b!78638 () Bool)

(declare-fun e!42509 () Bool)

(declare-fun res!39566 () Bool)

(assert (=> b!78638 (= e!42509 res!39566)))

(assert (=> b!78638 true))

(declare-fun b!78639 () Bool)

(declare-fun e!42510 () Bool)

(declare-fun e!42515 () Bool)

(assert (=> b!78639 (= e!42510 e!42515)))

(declare-fun res!39572 () Bool)

(assert (=> b!78639 (=> (not res!39572) (not e!42515))))

(declare-fun lt!17962 () Bool)

(assert (=> b!78639 (= res!39572 lt!17962)))

(declare-fun d!54991 () Bool)

(declare-fun c!19919 () Bool)

(declare-fun lt!17960 () Bool)

(assert (=> d!54991 (= c!19919 lt!17960)))

(declare-fun lt!17957 () Bool)

(declare-fun e!42517 () Bool)

(assert (=> d!54991 (= lt!17957 e!42517)))

(declare-fun c!19922 () Bool)

(declare-fun e!42520 () Bool)

(assert (=> d!54991 (= c!19922 e!42520)))

(declare-fun res!39570 () Bool)

(assert (=> d!54991 (=> res!39570 e!42520)))

(declare-fun lt!17961 () Bool)

(assert (=> d!54991 (= res!39570 lt!17961)))

(declare-fun lt!17959 () Bool)

(assert (=> d!54991 (= lt!17961 (and lt!17960 lt!17959))))

(declare-fun e!42512 () Bool)

(assert (=> d!54991 (= lt!17959 e!42512)))

(declare-fun c!19921 () Bool)

(assert (=> d!54991 (= c!19921 (or lt!17960 (is-Or!112 x$2!425) (is-Implies!112 x$2!425)))))

(assert (=> d!54991 (= lt!17960 (is-And!112 x$2!425))))

(declare-fun e!42519 () Bool)

(assert (=> d!54991 (= (isNNF!0 x$2!425) e!42519)))

(declare-fun b!78640 () Bool)

(declare-fun e!42511 () Formula!108)

(assert (=> b!78640 (= e!42511 (rhs!1438 x$2!425))))

(declare-fun b!78641 () Bool)

(assert (=> b!78641 (= e!42518 lt!17959)))

(declare-fun b!78642 () Bool)

(declare-fun e!42507 () Bool)

(assert (=> b!78642 (= e!42507 lt!17959)))

(declare-fun b!78643 () Bool)

(declare-fun e!42508 () Bool)

(assert (=> b!78643 (= e!42520 e!42508)))

(declare-fun res!39567 () Bool)

(assert (=> b!78643 (=> (not res!39567) (not e!42508))))

(assert (=> b!78643 (= res!39567 (not lt!17960))))

(declare-fun b!78644 () Bool)

(declare-fun res!39569 () Bool)

(assert (=> b!78644 (= e!42512 res!39569)))

(assert (=> b!78644 true))

(declare-fun b!78645 () Bool)

(declare-fun e!42516 () Formula!108)

(assert (=> b!78645 (= e!42516 (rhs!1437 x$2!425))))

(declare-fun b!78646 () Bool)

(assert (=> b!78646 (= e!42512 (isNNF!0 (ite lt!17960 (lhs!1438 x$2!425) (ite (is-Or!112 x$2!425) (lhs!1439 x$2!425) (lhs!1437 x$2!425)))))))

(declare-fun b!78647 () Bool)

(declare-fun e!42513 () Bool)

(declare-fun res!39571 () Bool)

(assert (=> b!78647 (= e!42513 res!39571)))

(assert (=> b!78647 true))

(assert (=> b!78647 true))

(declare-fun lt!17963 () Bool)

(declare-fun lt!17955 () Bool)

(declare-fun b!78648 () Bool)

(assert (=> b!78648 (= e!42508 (or (and lt!17955 lt!17963) (and (not lt!17955) (is-Implies!112 x$2!425) lt!17963)))))

(assert (=> b!78648 (= lt!17963 e!42507)))

(declare-fun c!19920 () Bool)

(assert (=> b!78648 (= c!19920 (or lt!17955 (is-Implies!112 x$2!425)))))

(assert (=> b!78648 (= lt!17955 (is-Or!112 x$2!425))))

(declare-fun b!78649 () Bool)

(declare-fun res!39573 () Bool)

(assert (=> b!78649 (= e!42507 res!39573)))

(assert (=> b!78649 true))

(declare-fun b!78650 () Bool)

(assert (=> b!78650 (= e!42519 (and lt!17959 lt!17957))))

(declare-fun b!78651 () Bool)

(declare-fun res!39568 () Bool)

(assert (=> b!78651 (= e!42518 res!39568)))

(assert (=> b!78651 true))

(declare-fun b!78652 () Bool)

(assert (=> b!78652 (= e!42511 e!42516)))

(declare-fun c!19915 () Bool)

(assert (=> b!78652 (= c!19915 e!42514)))

(declare-fun res!39565 () Bool)

(assert (=> b!78652 (=> (not res!39565) (not e!42514))))

(assert (=> b!78652 (= res!39565 lt!17956)))

(assert (=> b!78652 (= lt!17956 (is-Or!112 x$2!425))))

(declare-fun b!78653 () Bool)

(assert (=> b!78653 (= e!42515 e!42513)))

(declare-fun lt!17958 () Bool)

(declare-fun c!19916 () Bool)

(assert (=> b!78653 (= c!19916 (or (and lt!17958 lt!17962) (and (not lt!17958) (is-Implies!112 x$2!425) lt!17962)))))

(declare-fun b!78654 () Bool)

(assert (=> b!78654 (= e!42519 e!42510)))

(declare-fun c!19923 () Bool)

(assert (=> b!78654 (= c!19923 (or lt!17958 (is-Implies!112 x$2!425)))))

(assert (=> b!78654 (= lt!17962 e!42509)))

(declare-fun c!19917 () Bool)

(assert (=> b!78654 (= c!19917 (or lt!17958 (is-Implies!112 x$2!425)))))

(assert (=> b!78654 (= lt!17958 (is-Or!112 x$2!425))))

(declare-fun b!78655 () Bool)

(assert (=> b!78655 (= e!42509 lt!17959)))

(declare-fun b!78656 () Bool)

(declare-fun res!39574 () Bool)

(assert (=> b!78656 (= e!42517 res!39574)))

(assert (=> b!78656 true))

(declare-fun b!78657 () Bool)

(assert (=> b!78657 (= e!42516 (rhs!1439 x$2!425))))

(declare-fun b!78658 () Bool)

(assert (=> b!78658 (= e!42513 lt!17957)))

(declare-fun b!78659 () Bool)

(assert (=> b!78659 (= e!42510 (or (and (is-Not!112 x$2!425) (is-Literal!106 (f!4761 x$2!425))) (not (is-Not!112 x$2!425))))))

(declare-fun b!78660 () Bool)

(assert (=> b!78660 (= e!42517 (isNNF!0 e!42511))))

(declare-fun c!19914 () Bool)

(assert (=> b!78660 (= c!19914 lt!17961)))

(assert (= (and d!54991 c!19921) b!78646))

(assert (= (and d!54991 (not c!19921)) b!78644))

(assert (= (and d!54991 (not res!39570)) b!78643))

(assert (= (and b!78643 res!39567) b!78648))

(assert (= (and b!78648 c!19920) b!78642))

(assert (= (and b!78648 (not c!19920)) b!78649))

(assert (= (and b!78652 res!39565) b!78637))

(assert (= (and b!78637 c!19918) b!78641))

(assert (= (and b!78637 (not c!19918)) b!78651))

(assert (= (and b!78652 c!19915) b!78657))

(assert (= (and b!78652 (not c!19915)) b!78645))

(assert (= (and b!78660 c!19914) b!78640))

(assert (= (and b!78660 (not c!19914)) b!78652))

(assert (= (and d!54991 c!19922) b!78660))

(assert (= (and d!54991 (not c!19922)) b!78656))

(assert (= (and b!78654 c!19917) b!78655))

(assert (= (and b!78654 (not c!19917)) b!78638))

(assert (= (and b!78639 res!39572) b!78653))

(assert (= (and b!78653 c!19916) b!78658))

(assert (= (and b!78653 (not c!19916)) b!78647))

(assert (= (and b!78654 c!19923) b!78639))

(assert (= (and b!78654 (not c!19923)) b!78659))

(assert (= (and d!54991 c!19919) b!78650))

(assert (= (and d!54991 (not c!19919)) b!78654))

(declare-fun m!73602 () Bool)

(assert (=> b!78646 m!73602))

(declare-fun m!73604 () Bool)

(assert (=> b!78660 m!73604))

(assert (=> b!78460 d!54991))

(push 1)

(assert (not b!78646))

(assert (not b!78537))

(assert (not b!78546))

(assert (not d!54987))

(assert (not b!78578))

(assert (not b!78660))

(assert (not b!78569))

(assert (not d!54989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

