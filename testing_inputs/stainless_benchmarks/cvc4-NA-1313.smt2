; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9246 () Bool)

(assert start!9246)

(declare-fun b!65492 () Bool)

(declare-fun e!35527 () Bool)

(declare-datatypes () ((Formula!15 (And!20 (lhs!848 Formula!15) (rhs!848 Formula!15)) (Literal!14 (id!4795 Int)) (Implies!20 (lhs!849 Formula!15) (rhs!849 Formula!15)) (Or!20 (lhs!850 Formula!15) (rhs!850 Formula!15)) (Not!20 (f!4103 Formula!15)))))

(declare-fun f!3797 () Formula!15)

(declare-fun isNNF!1 (Formula!15) Bool)

(assert (=> b!65492 (= e!35527 (not (isNNF!1 f!3797)))))

(declare-fun b!65491 () Bool)

(declare-fun res!30824 () Bool)

(assert (=> b!65491 (=> (not res!30824) (not e!35527))))

(declare-fun f!3790 () Formula!15)

(assert (=> b!65491 (= res!30824 (= f!3797 (lhs!848 f!3790)))))

(declare-fun res!30823 () Bool)

(assert (=> start!9246 (=> (not res!30823) (not e!35527))))

(assert (=> start!9246 (= res!30823 (isNNF!1 f!3790))))

(assert (=> start!9246 e!35527))

(assert (=> start!9246 true))

(declare-fun b!65490 () Bool)

(declare-fun res!30825 () Bool)

(assert (=> b!65490 (=> (not res!30825) (not e!35527))))

(declare-fun inductVal!308 () Bool)

(declare-fun nnfIsStable!1 (Formula!15) Bool)

(assert (=> b!65490 (= res!30825 (= inductVal!308 (nnfIsStable!1 (rhs!848 f!3790))))))

(declare-fun b!65489 () Bool)

(declare-fun res!30826 () Bool)

(assert (=> b!65489 (=> (not res!30826) (not e!35527))))

(assert (=> b!65489 (= res!30826 (is-And!20 f!3790))))

(assert (= (and start!9246 res!30823) b!65489))

(assert (= (and b!65489 res!30826) b!65490))

(assert (= (and b!65490 res!30825) b!65491))

(assert (= (and b!65491 res!30824) b!65492))

(declare-fun m!69455 () Bool)

(assert (=> b!65492 m!69455))

(declare-fun m!69457 () Bool)

(assert (=> start!9246 m!69457))

(declare-fun m!69459 () Bool)

(assert (=> b!65490 m!69459))

(push 1)

(assert (not b!65490))

(assert (not b!65492))

(assert (not start!9246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65517 () Bool)

(declare-fun e!35544 () Formula!15)

(declare-fun nnf!1 (Formula!15) Formula!15)

(assert (=> b!65517 (= e!35544 (nnf!1 (rhs!848 f!3790)))))

(declare-fun b!65518 () Bool)

(declare-fun e!35541 () Bool)

(declare-fun res!30858 () Bool)

(assert (=> b!65518 (= e!35541 res!30858)))

(assert (=> b!65518 true))

(declare-fun b!65519 () Bool)

(declare-fun e!35542 () Bool)

(assert (=> b!65519 (= e!35542 (= (nnf!1 (rhs!848 f!3790)) (rhs!848 f!3790)))))

(declare-fun b!65520 () Bool)

(declare-fun e!35545 () Bool)

(assert (=> b!65520 (= e!35545 e!35542)))

(declare-fun c!14686 () Bool)

(declare-fun lt!12590 () Bool)

(assert (=> b!65520 (= c!14686 (or lt!12590 (is-Or!20 (rhs!848 f!3790))))))

(declare-fun lt!12587 () Formula!15)

(declare-fun e!35543 () Formula!15)

(assert (=> b!65520 (= lt!12587 e!35543)))

(declare-fun c!14682 () Bool)

(assert (=> b!65520 (= c!14682 (or lt!12590 (is-Or!20 (rhs!848 f!3790))))))

(assert (=> b!65520 (= lt!12590 (is-Implies!20 (rhs!848 f!3790)))))

(declare-fun b!65521 () Bool)

(declare-fun res!30857 () Formula!15)

(assert (=> b!65521 (= e!35544 res!30857)))

(assert (=> b!65521 true))

(declare-fun b!65522 () Bool)

(declare-fun lt!12589 () Bool)

(assert (=> b!65522 (= e!35541 (nnfIsStable!1 (ite lt!12589 (rhs!848 (rhs!848 f!3790)) (ite (is-Implies!20 (rhs!848 f!3790)) (rhs!849 (rhs!848 f!3790)) (ite (is-Or!20 (rhs!848 f!3790)) (rhs!850 (rhs!848 f!3790)) (f!4103 (rhs!848 f!3790)))))))))

(declare-fun b!65523 () Bool)

(declare-fun lt!12588 () Formula!15)

(assert (=> b!65523 (= e!35545 (= lt!12588 (rhs!848 f!3790)))))

(declare-fun d!53364 () Bool)

(assert (=> d!53364 e!35545))

(declare-fun c!14684 () Bool)

(assert (=> d!53364 (= c!14684 (or lt!12589 (is-Literal!14 (rhs!848 f!3790))))))

(assert (=> d!53364 (= lt!12588 e!35544)))

(declare-fun c!14685 () Bool)

(assert (=> d!53364 (= c!14685 (or lt!12589 (is-Literal!14 (rhs!848 f!3790))))))

(declare-fun lt!12591 () Bool)

(declare-fun e!35540 () Bool)

(assert (=> d!53364 (= lt!12591 e!35540)))

(declare-fun c!14687 () Bool)

(assert (=> d!53364 (= c!14687 (or lt!12589 (and (not (is-Literal!14 (rhs!848 f!3790))) (or (is-Implies!20 (rhs!848 f!3790)) (is-Or!20 (rhs!848 f!3790))))))))

(declare-fun lt!12592 () Bool)

(assert (=> d!53364 (= lt!12592 e!35541)))

(declare-fun c!14683 () Bool)

(assert (=> d!53364 (= c!14683 (or lt!12589 (not (is-Literal!14 (rhs!848 f!3790)))))))

(assert (=> d!53364 (= lt!12589 (is-And!20 (rhs!848 f!3790)))))

(assert (=> d!53364 (isNNF!1 (rhs!848 f!3790))))

(assert (=> d!53364 (= (nnfIsStable!1 (rhs!848 f!3790)) true)))

(declare-fun b!65524 () Bool)

(declare-fun res!30859 () Bool)

(assert (=> b!65524 (= e!35540 res!30859)))

(assert (=> b!65524 true))

(declare-fun b!65525 () Bool)

(assert (=> b!65525 (= e!35543 (nnf!1 (rhs!848 f!3790)))))

(declare-fun b!65526 () Bool)

(declare-fun res!30856 () Formula!15)

(assert (=> b!65526 (= e!35543 res!30856)))

(assert (=> b!65526 true))

(assert (=> b!65526 true))

(declare-fun b!65527 () Bool)

(assert (=> b!65527 (= e!35540 (nnfIsStable!1 (ite lt!12589 (lhs!848 (rhs!848 f!3790)) (ite (is-Implies!20 (rhs!848 f!3790)) (lhs!849 (rhs!848 f!3790)) (lhs!850 (rhs!848 f!3790))))))))

(declare-fun b!65528 () Bool)

(assert (=> b!65528 (= e!35542 (= lt!12587 (rhs!848 f!3790)))))

(assert (= (and d!53364 c!14683) b!65522))

(assert (= (and d!53364 (not c!14683)) b!65518))

(assert (= (and d!53364 c!14687) b!65527))

(assert (= (and d!53364 (not c!14687)) b!65524))

(assert (= (and d!53364 c!14685) b!65517))

(assert (= (and d!53364 (not c!14685)) b!65521))

(assert (= (and b!65520 c!14682) b!65525))

(assert (= (and b!65520 (not c!14682)) b!65526))

(assert (= (and b!65520 c!14686) b!65528))

(assert (= (and b!65520 (not c!14686)) b!65519))

(assert (= (and d!53364 c!14684) b!65523))

(assert (= (and d!53364 (not c!14684)) b!65520))

(declare-fun m!69461 () Bool)

(assert (=> b!65527 m!69461))

(declare-fun m!69463 () Bool)

(assert (=> b!65525 m!69463))

(assert (=> b!65517 m!69463))

(declare-fun m!69465 () Bool)

(assert (=> d!53364 m!69465))

(assert (=> b!65519 m!69463))

(declare-fun m!69467 () Bool)

(assert (=> b!65522 m!69467))

(assert (=> b!65490 d!53364))

(declare-fun b!65543 () Bool)

(declare-fun e!35557 () Bool)

(declare-fun e!35554 () Bool)

(assert (=> b!65543 (= e!35557 e!35554)))

(declare-fun res!30873 () Bool)

(assert (=> b!65543 (=> (not res!30873) (not e!35554))))

(declare-fun lt!12600 () Bool)

(assert (=> b!65543 (= res!30873 lt!12600)))

(declare-fun b!65544 () Bool)

(declare-fun e!35555 () Bool)

(assert (=> b!65544 (= e!35554 e!35555)))

(declare-fun lt!12601 () Bool)

(declare-fun c!14695 () Bool)

(declare-fun lt!12599 () Bool)

(assert (=> b!65544 (= c!14695 (or lt!12601 (and (not lt!12599) (is-Or!20 f!3797) lt!12600)))))

(declare-fun b!65545 () Bool)

(assert (=> b!65545 (= e!35557 (and (not (is-Implies!20 f!3797)) (or (and (is-Not!20 f!3797) (is-Literal!14 (f!4103 f!3797))) (not (is-Not!20 f!3797)))))))

(declare-fun d!53366 () Bool)

(declare-fun c!14694 () Bool)

(assert (=> d!53366 (= c!14694 (or lt!12599 (is-Or!20 f!3797)))))

(assert (=> d!53366 (= lt!12601 (and lt!12599 lt!12600))))

(declare-fun e!35556 () Bool)

(assert (=> d!53366 (= lt!12600 e!35556)))

(declare-fun c!14696 () Bool)

(assert (=> d!53366 (= c!14696 (or lt!12599 (is-Or!20 f!3797)))))

(assert (=> d!53366 (= lt!12599 (is-And!20 f!3797))))

(assert (=> d!53366 (= (isNNF!1 f!3797) e!35557)))

(declare-fun b!65546 () Bool)

(declare-fun res!30872 () Bool)

(assert (=> b!65546 (= e!35555 res!30872)))

(assert (=> b!65546 true))

(assert (=> b!65546 true))

(declare-fun b!65547 () Bool)

(assert (=> b!65547 (= e!35556 (isNNF!1 (ite lt!12599 (lhs!848 f!3797) (lhs!850 f!3797))))))

(declare-fun b!65548 () Bool)

(declare-fun res!30874 () Bool)

(assert (=> b!65548 (= e!35556 res!30874)))

(assert (=> b!65548 true))

(declare-fun b!65549 () Bool)

(assert (=> b!65549 (= e!35555 (isNNF!1 (ite lt!12601 (rhs!848 f!3797) (rhs!850 f!3797))))))

(assert (= (and d!53366 c!14696) b!65547))

(assert (= (and d!53366 (not c!14696)) b!65548))

(assert (= (and b!65543 res!30873) b!65544))

(assert (= (and b!65544 c!14695) b!65549))

(assert (= (and b!65544 (not c!14695)) b!65546))

(assert (= (and d!53366 c!14694) b!65543))

(assert (= (and d!53366 (not c!14694)) b!65545))

(declare-fun m!69469 () Bool)

(assert (=> b!65547 m!69469))

(declare-fun m!69471 () Bool)

(assert (=> b!65549 m!69471))

(assert (=> b!65492 d!53366))

(declare-fun b!65550 () Bool)

(declare-fun e!35561 () Bool)

(declare-fun e!35558 () Bool)

(assert (=> b!65550 (= e!35561 e!35558)))

(declare-fun res!30876 () Bool)

(assert (=> b!65550 (=> (not res!30876) (not e!35558))))

(declare-fun lt!12603 () Bool)

(assert (=> b!65550 (= res!30876 lt!12603)))

(declare-fun b!65551 () Bool)

(declare-fun e!35559 () Bool)

(assert (=> b!65551 (= e!35558 e!35559)))

(declare-fun c!14698 () Bool)

(declare-fun lt!12604 () Bool)

(declare-fun lt!12602 () Bool)

(assert (=> b!65551 (= c!14698 (or lt!12604 (and (not lt!12602) (is-Or!20 f!3790) lt!12603)))))

(declare-fun b!65552 () Bool)

(assert (=> b!65552 (= e!35561 (and (not (is-Implies!20 f!3790)) (or (and (is-Not!20 f!3790) (is-Literal!14 (f!4103 f!3790))) (not (is-Not!20 f!3790)))))))

(declare-fun d!53368 () Bool)

(declare-fun c!14697 () Bool)

(assert (=> d!53368 (= c!14697 (or lt!12602 (is-Or!20 f!3790)))))

(assert (=> d!53368 (= lt!12604 (and lt!12602 lt!12603))))

(declare-fun e!35560 () Bool)

(assert (=> d!53368 (= lt!12603 e!35560)))

(declare-fun c!14699 () Bool)

(assert (=> d!53368 (= c!14699 (or lt!12602 (is-Or!20 f!3790)))))

(assert (=> d!53368 (= lt!12602 (is-And!20 f!3790))))

(assert (=> d!53368 (= (isNNF!1 f!3790) e!35561)))

(declare-fun b!65553 () Bool)

(declare-fun res!30875 () Bool)

(assert (=> b!65553 (= e!35559 res!30875)))

(assert (=> b!65553 true))

(assert (=> b!65553 true))

(declare-fun b!65554 () Bool)

(assert (=> b!65554 (= e!35560 (isNNF!1 (ite lt!12602 (lhs!848 f!3790) (lhs!850 f!3790))))))

(declare-fun b!65555 () Bool)

(declare-fun res!30877 () Bool)

(assert (=> b!65555 (= e!35560 res!30877)))

(assert (=> b!65555 true))

(declare-fun b!65556 () Bool)

(assert (=> b!65556 (= e!35559 (isNNF!1 (ite lt!12604 (rhs!848 f!3790) (rhs!850 f!3790))))))

(assert (= (and d!53368 c!14699) b!65554))

(assert (= (and d!53368 (not c!14699)) b!65555))

(assert (= (and b!65550 res!30876) b!65551))

(assert (= (and b!65551 c!14698) b!65556))

(assert (= (and b!65551 (not c!14698)) b!65553))

(assert (= (and d!53368 c!14697) b!65550))

(assert (= (and d!53368 (not c!14697)) b!65552))

(declare-fun m!69473 () Bool)

(assert (=> b!65554 m!69473))

(declare-fun m!69475 () Bool)

(assert (=> b!65556 m!69475))

(assert (=> start!9246 d!53368))

(push 1)

(assert (not b!65549))

(assert (not b!65527))

(assert (not b!65547))

(assert (not b!65525))

(assert (not b!65554))

(assert (not b!65517))

(assert (not b!65522))

(assert (not d!53364))

(assert (not b!65519))

(assert (not b!65556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

