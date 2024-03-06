; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10188 () Bool)

(assert start!10188)

(declare-fun res!35994 () Bool)

(declare-fun e!39671 () Bool)

(assert (=> start!10188 (=> (not res!35994) (not e!39671))))

(declare-datatypes () ((Formula!69 (Implies!73 (lhs!1320 Formula!69) (rhs!1320 Formula!69)) (And!73 (lhs!1321 Formula!69) (rhs!1321 Formula!69)) (Or!73 (lhs!1322 Formula!69) (rhs!1322 Formula!69)) (Literal!67 (id!4930 (_ BitVec 32))) (Not!73 (f!4661 Formula!69)))))

(declare-fun f!4611 () Formula!69)

(declare-fun isNNF!0 (Formula!69) Bool)

(assert (=> start!10188 (= res!35994 (isNNF!0 f!4611))))

(assert (=> start!10188 e!39671))

(assert (=> start!10188 true))

(declare-fun b!73404 () Bool)

(declare-fun res!35995 () Bool)

(assert (=> b!73404 (=> (not res!35995) (not e!39671))))

(declare-fun f!4622 () Formula!69)

(assert (=> b!73404 (= res!35995 (and (not (is-Implies!73 f!4611)) (is-And!73 f!4611) (= f!4622 (rhs!1321 f!4611))))))

(declare-fun b!73405 () Bool)

(assert (=> b!73405 (= e!39671 (not (isNNF!0 f!4622)))))

(assert (= (and start!10188 res!35994) b!73404))

(assert (= (and b!73404 res!35995) b!73405))

(declare-fun m!72804 () Bool)

(assert (=> start!10188 m!72804))

(declare-fun m!72806 () Bool)

(assert (=> b!73405 m!72806))

(push 1)

(assert (not start!10188))

(assert (not b!73405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73454 () Bool)

(declare-fun e!39708 () Bool)

(declare-fun lt!15620 () Bool)

(assert (=> b!73454 (= e!39708 lt!15620)))

(declare-fun b!73455 () Bool)

(declare-fun e!39712 () Bool)

(assert (=> b!73455 (= e!39712 lt!15620)))

(declare-fun b!73456 () Bool)

(declare-fun e!39703 () Bool)

(assert (=> b!73456 (= e!39703 e!39708)))

(declare-fun c!17718 () Bool)

(declare-fun lt!15619 () Bool)

(assert (=> b!73456 (= c!17718 (or lt!15619 (is-Implies!73 f!4611)))))

(declare-fun e!39705 () Bool)

(declare-fun lt!15614 () Bool)

(declare-fun b!73457 () Bool)

(declare-fun lt!15615 () Bool)

(assert (=> b!73457 (= e!39705 (or (and lt!15614 lt!15615) (and (not lt!15614) (is-Implies!73 f!4611) lt!15615)))))

(declare-fun e!39701 () Bool)

(assert (=> b!73457 (= lt!15615 e!39701)))

(declare-fun c!17727 () Bool)

(assert (=> b!73457 (= c!17727 (or lt!15614 (is-Implies!73 f!4611)))))

(assert (=> b!73457 (= lt!15614 (is-Or!73 f!4611))))

(declare-fun b!73458 () Bool)

(declare-fun e!39709 () Formula!69)

(assert (=> b!73458 (= e!39709 (rhs!1322 f!4611))))

(declare-fun b!73459 () Bool)

(declare-fun e!39710 () Bool)

(declare-fun e!39711 () Bool)

(assert (=> b!73459 (= e!39710 e!39711)))

(declare-fun lt!15616 () Bool)

(declare-fun c!17725 () Bool)

(declare-fun lt!15613 () Bool)

(assert (=> b!73459 (= c!17725 (or (and lt!15616 lt!15613) (and (not lt!15616) (is-Implies!73 f!4611) lt!15613)))))

(declare-fun b!73460 () Bool)

(declare-fun e!39704 () Bool)

(declare-fun lt!15617 () Bool)

(assert (=> b!73460 (= e!39704 (and lt!15620 lt!15617))))

(declare-fun b!73461 () Bool)

(declare-fun e!39700 () Bool)

(assert (=> b!73461 (= e!39704 e!39700)))

(declare-fun c!17723 () Bool)

(assert (=> b!73461 (= c!17723 (or lt!15616 (is-Implies!73 f!4611)))))

(assert (=> b!73461 (= lt!15613 e!39712)))

(declare-fun c!17722 () Bool)

(assert (=> b!73461 (= c!17722 (or lt!15616 (is-Implies!73 f!4611)))))

(assert (=> b!73461 (= lt!15616 (is-Or!73 f!4611))))

(declare-fun b!73462 () Bool)

(assert (=> b!73462 (= e!39709 (rhs!1320 f!4611))))

(declare-fun b!73463 () Bool)

(assert (=> b!73463 (= e!39701 lt!15620)))

(declare-fun b!73464 () Bool)

(declare-fun res!36039 () Bool)

(assert (=> b!73464 (= e!39708 res!36039)))

(assert (=> b!73464 true))

(declare-fun b!73465 () Bool)

(declare-fun e!39707 () Bool)

(declare-fun e!39713 () Formula!69)

(assert (=> b!73465 (= e!39707 (isNNF!0 e!39713))))

(declare-fun c!17724 () Bool)

(declare-fun lt!15618 () Bool)

(assert (=> b!73465 (= c!17724 lt!15618)))

(declare-fun b!73466 () Bool)

(assert (=> b!73466 (= e!39700 e!39710)))

(declare-fun res!36036 () Bool)

(assert (=> b!73466 (=> (not res!36036) (not e!39710))))

(assert (=> b!73466 (= res!36036 lt!15613)))

(declare-fun b!73467 () Bool)

(declare-fun res!36033 () Bool)

(assert (=> b!73467 (= e!39711 res!36033)))

(assert (=> b!73467 true))

(assert (=> b!73467 true))

(declare-fun b!73468 () Bool)

(assert (=> b!73468 (= e!39711 lt!15617)))

(declare-fun b!73469 () Bool)

(assert (=> b!73469 (= e!39700 (or (and (is-Not!73 f!4611) (is-Literal!67 (f!4661 f!4611))) (not (is-Not!73 f!4611))))))

(declare-fun b!73470 () Bool)

(declare-fun res!36032 () Bool)

(assert (=> b!73470 (= e!39701 res!36032)))

(assert (=> b!73470 true))

(declare-fun b!73471 () Bool)

(declare-fun e!39702 () Bool)

(declare-fun lt!15621 () Bool)

(assert (=> b!73471 (= e!39702 (isNNF!0 (ite lt!15621 (lhs!1321 f!4611) (ite (is-Or!73 f!4611) (lhs!1322 f!4611) (lhs!1320 f!4611)))))))

(declare-fun b!73472 () Bool)

(declare-fun res!36030 () Bool)

(assert (=> b!73472 (= e!39712 res!36030)))

(assert (=> b!73472 true))

(declare-fun b!73473 () Bool)

(assert (=> b!73473 (= e!39713 e!39709)))

(declare-fun c!17726 () Bool)

(assert (=> b!73473 (= c!17726 e!39703)))

(declare-fun res!36034 () Bool)

(assert (=> b!73473 (=> (not res!36034) (not e!39703))))

(assert (=> b!73473 (= res!36034 lt!15619)))

(assert (=> b!73473 (= lt!15619 (is-Or!73 f!4611))))

(declare-fun b!73474 () Bool)

(declare-fun res!36038 () Bool)

(assert (=> b!73474 (= e!39702 res!36038)))

(assert (=> b!73474 true))

(declare-fun b!73475 () Bool)

(declare-fun res!36035 () Bool)

(assert (=> b!73475 (= e!39707 res!36035)))

(assert (=> b!73475 true))

(declare-fun d!54767 () Bool)

(declare-fun c!17720 () Bool)

(assert (=> d!54767 (= c!17720 lt!15621)))

(assert (=> d!54767 (= lt!15617 e!39707)))

(declare-fun c!17719 () Bool)

(declare-fun e!39706 () Bool)

(assert (=> d!54767 (= c!17719 e!39706)))

(declare-fun res!36031 () Bool)

(assert (=> d!54767 (=> res!36031 e!39706)))

(assert (=> d!54767 (= res!36031 lt!15618)))

(assert (=> d!54767 (= lt!15618 (and lt!15621 lt!15620))))

(assert (=> d!54767 (= lt!15620 e!39702)))

(declare-fun c!17721 () Bool)

(assert (=> d!54767 (= c!17721 (or lt!15621 (is-Or!73 f!4611) (is-Implies!73 f!4611)))))

(assert (=> d!54767 (= lt!15621 (is-And!73 f!4611))))

(assert (=> d!54767 (= (isNNF!0 f!4611) e!39704)))

(declare-fun b!73476 () Bool)

(assert (=> b!73476 (= e!39713 (rhs!1321 f!4611))))

(declare-fun b!73477 () Bool)

(assert (=> b!73477 (= e!39706 e!39705)))

(declare-fun res!36037 () Bool)

(assert (=> b!73477 (=> (not res!36037) (not e!39705))))

(assert (=> b!73477 (= res!36037 (not lt!15621))))

(assert (= (and d!54767 c!17721) b!73471))

(assert (= (and d!54767 (not c!17721)) b!73474))

(assert (= (and d!54767 (not res!36031)) b!73477))

(assert (= (and b!73477 res!36037) b!73457))

(assert (= (and b!73457 c!17727) b!73463))

(assert (= (and b!73457 (not c!17727)) b!73470))

(assert (= (and b!73473 res!36034) b!73456))

(assert (= (and b!73456 c!17718) b!73454))

(assert (= (and b!73456 (not c!17718)) b!73464))

(assert (= (and b!73473 c!17726) b!73458))

(assert (= (and b!73473 (not c!17726)) b!73462))

(assert (= (and b!73465 c!17724) b!73476))

(assert (= (and b!73465 (not c!17724)) b!73473))

(assert (= (and d!54767 c!17719) b!73465))

(assert (= (and d!54767 (not c!17719)) b!73475))

(assert (= (and b!73461 c!17722) b!73455))

(assert (= (and b!73461 (not c!17722)) b!73472))

(assert (= (and b!73466 res!36036) b!73459))

(assert (= (and b!73459 c!17725) b!73468))

(assert (= (and b!73459 (not c!17725)) b!73467))

(assert (= (and b!73461 c!17723) b!73466))

(assert (= (and b!73461 (not c!17723)) b!73469))

(assert (= (and d!54767 c!17720) b!73460))

(assert (= (and d!54767 (not c!17720)) b!73461))

(declare-fun m!72808 () Bool)

(assert (=> b!73465 m!72808))

(declare-fun m!72810 () Bool)

(assert (=> b!73471 m!72810))

(assert (=> start!10188 d!54767))

(declare-fun b!73478 () Bool)

(declare-fun e!39722 () Bool)

(declare-fun lt!15629 () Bool)

(assert (=> b!73478 (= e!39722 lt!15629)))

(declare-fun b!73479 () Bool)

(declare-fun e!39726 () Bool)

(assert (=> b!73479 (= e!39726 lt!15629)))

(declare-fun b!73480 () Bool)

(declare-fun e!39717 () Bool)

(assert (=> b!73480 (= e!39717 e!39722)))

(declare-fun c!17728 () Bool)

(declare-fun lt!15628 () Bool)

(assert (=> b!73480 (= c!17728 (or lt!15628 (is-Implies!73 f!4622)))))

(declare-fun b!73481 () Bool)

(declare-fun lt!15624 () Bool)

(declare-fun e!39719 () Bool)

(declare-fun lt!15623 () Bool)

(assert (=> b!73481 (= e!39719 (or (and lt!15623 lt!15624) (and (not lt!15623) (is-Implies!73 f!4622) lt!15624)))))

(declare-fun e!39715 () Bool)

(assert (=> b!73481 (= lt!15624 e!39715)))

(declare-fun c!17737 () Bool)

(assert (=> b!73481 (= c!17737 (or lt!15623 (is-Implies!73 f!4622)))))

(assert (=> b!73481 (= lt!15623 (is-Or!73 f!4622))))

(declare-fun b!73482 () Bool)

(declare-fun e!39723 () Formula!69)

(assert (=> b!73482 (= e!39723 (rhs!1322 f!4622))))

(declare-fun b!73483 () Bool)

(declare-fun e!39724 () Bool)

(declare-fun e!39725 () Bool)

(assert (=> b!73483 (= e!39724 e!39725)))

(declare-fun lt!15622 () Bool)

(declare-fun c!17735 () Bool)

(declare-fun lt!15625 () Bool)

(assert (=> b!73483 (= c!17735 (or (and lt!15625 lt!15622) (and (not lt!15625) (is-Implies!73 f!4622) lt!15622)))))

(declare-fun b!73484 () Bool)

(declare-fun e!39718 () Bool)

(declare-fun lt!15626 () Bool)

(assert (=> b!73484 (= e!39718 (and lt!15629 lt!15626))))

(declare-fun b!73485 () Bool)

(declare-fun e!39714 () Bool)

(assert (=> b!73485 (= e!39718 e!39714)))

(declare-fun c!17733 () Bool)

(assert (=> b!73485 (= c!17733 (or lt!15625 (is-Implies!73 f!4622)))))

(assert (=> b!73485 (= lt!15622 e!39726)))

(declare-fun c!17732 () Bool)

(assert (=> b!73485 (= c!17732 (or lt!15625 (is-Implies!73 f!4622)))))

(assert (=> b!73485 (= lt!15625 (is-Or!73 f!4622))))

(declare-fun b!73486 () Bool)

(assert (=> b!73486 (= e!39723 (rhs!1320 f!4622))))

(declare-fun b!73487 () Bool)

(assert (=> b!73487 (= e!39715 lt!15629)))

(declare-fun b!73488 () Bool)

(declare-fun res!36049 () Bool)

(assert (=> b!73488 (= e!39722 res!36049)))

(assert (=> b!73488 true))

(declare-fun b!73489 () Bool)

(declare-fun e!39721 () Bool)

(declare-fun e!39727 () Formula!69)

(assert (=> b!73489 (= e!39721 (isNNF!0 e!39727))))

(declare-fun c!17734 () Bool)

(declare-fun lt!15627 () Bool)

(assert (=> b!73489 (= c!17734 lt!15627)))

(declare-fun b!73490 () Bool)

(assert (=> b!73490 (= e!39714 e!39724)))

(declare-fun res!36046 () Bool)

(assert (=> b!73490 (=> (not res!36046) (not e!39724))))

(assert (=> b!73490 (= res!36046 lt!15622)))

(declare-fun b!73491 () Bool)

(declare-fun res!36043 () Bool)

(assert (=> b!73491 (= e!39725 res!36043)))

(assert (=> b!73491 true))

(assert (=> b!73491 true))

(declare-fun b!73492 () Bool)

(assert (=> b!73492 (= e!39725 lt!15626)))

(declare-fun b!73493 () Bool)

(assert (=> b!73493 (= e!39714 (or (and (is-Not!73 f!4622) (is-Literal!67 (f!4661 f!4622))) (not (is-Not!73 f!4622))))))

(declare-fun b!73494 () Bool)

(declare-fun res!36042 () Bool)

(assert (=> b!73494 (= e!39715 res!36042)))

(assert (=> b!73494 true))

(declare-fun b!73495 () Bool)

(declare-fun e!39716 () Bool)

(declare-fun lt!15630 () Bool)

(assert (=> b!73495 (= e!39716 (isNNF!0 (ite lt!15630 (lhs!1321 f!4622) (ite (is-Or!73 f!4622) (lhs!1322 f!4622) (lhs!1320 f!4622)))))))

(declare-fun b!73496 () Bool)

(declare-fun res!36040 () Bool)

(assert (=> b!73496 (= e!39726 res!36040)))

(assert (=> b!73496 true))

(declare-fun b!73497 () Bool)

(assert (=> b!73497 (= e!39727 e!39723)))

(declare-fun c!17736 () Bool)

(assert (=> b!73497 (= c!17736 e!39717)))

(declare-fun res!36044 () Bool)

(assert (=> b!73497 (=> (not res!36044) (not e!39717))))

(assert (=> b!73497 (= res!36044 lt!15628)))

(assert (=> b!73497 (= lt!15628 (is-Or!73 f!4622))))

(declare-fun b!73498 () Bool)

(declare-fun res!36048 () Bool)

(assert (=> b!73498 (= e!39716 res!36048)))

(assert (=> b!73498 true))

(declare-fun b!73499 () Bool)

(declare-fun res!36045 () Bool)

(assert (=> b!73499 (= e!39721 res!36045)))

(assert (=> b!73499 true))

(declare-fun d!54769 () Bool)

(declare-fun c!17730 () Bool)

(assert (=> d!54769 (= c!17730 lt!15630)))

(assert (=> d!54769 (= lt!15626 e!39721)))

(declare-fun c!17729 () Bool)

(declare-fun e!39720 () Bool)

(assert (=> d!54769 (= c!17729 e!39720)))

(declare-fun res!36041 () Bool)

(assert (=> d!54769 (=> res!36041 e!39720)))

(assert (=> d!54769 (= res!36041 lt!15627)))

(assert (=> d!54769 (= lt!15627 (and lt!15630 lt!15629))))

(assert (=> d!54769 (= lt!15629 e!39716)))

(declare-fun c!17731 () Bool)

(assert (=> d!54769 (= c!17731 (or lt!15630 (is-Or!73 f!4622) (is-Implies!73 f!4622)))))

(assert (=> d!54769 (= lt!15630 (is-And!73 f!4622))))

(assert (=> d!54769 (= (isNNF!0 f!4622) e!39718)))

(declare-fun b!73500 () Bool)

(assert (=> b!73500 (= e!39727 (rhs!1321 f!4622))))

(declare-fun b!73501 () Bool)

(assert (=> b!73501 (= e!39720 e!39719)))

(declare-fun res!36047 () Bool)

(assert (=> b!73501 (=> (not res!36047) (not e!39719))))

(assert (=> b!73501 (= res!36047 (not lt!15630))))

(assert (= (and d!54769 c!17731) b!73495))

(assert (= (and d!54769 (not c!17731)) b!73498))

(assert (= (and d!54769 (not res!36041)) b!73501))

(assert (= (and b!73501 res!36047) b!73481))

(assert (= (and b!73481 c!17737) b!73487))

(assert (= (and b!73481 (not c!17737)) b!73494))

(assert (= (and b!73497 res!36044) b!73480))

(assert (= (and b!73480 c!17728) b!73478))

(assert (= (and b!73480 (not c!17728)) b!73488))

(assert (= (and b!73497 c!17736) b!73482))

(assert (= (and b!73497 (not c!17736)) b!73486))

(assert (= (and b!73489 c!17734) b!73500))

(assert (= (and b!73489 (not c!17734)) b!73497))

(assert (= (and d!54769 c!17729) b!73489))

(assert (= (and d!54769 (not c!17729)) b!73499))

(assert (= (and b!73485 c!17732) b!73479))

(assert (= (and b!73485 (not c!17732)) b!73496))

(assert (= (and b!73490 res!36046) b!73483))

(assert (= (and b!73483 c!17735) b!73492))

(assert (= (and b!73483 (not c!17735)) b!73491))

(assert (= (and b!73485 c!17733) b!73490))

(assert (= (and b!73485 (not c!17733)) b!73493))

(assert (= (and d!54769 c!17730) b!73484))

(assert (= (and d!54769 (not c!17730)) b!73485))

(declare-fun m!72812 () Bool)

(assert (=> b!73489 m!72812))

(declare-fun m!72814 () Bool)

(assert (=> b!73495 m!72814))

(assert (=> b!73405 d!54769))

(push 1)

(assert (not b!73489))

(assert (not b!73465))

(assert (not b!73471))

(assert (not b!73495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

