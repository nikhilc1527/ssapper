; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10182 () Bool)

(assert start!10182)

(declare-fun res!35902 () Bool)

(declare-fun e!39594 () Bool)

(assert (=> start!10182 (=> (not res!35902) (not e!39594))))

(declare-datatypes () ((Formula!68 (Implies!72 (lhs!1317 Formula!68) (rhs!1317 Formula!68)) (And!72 (lhs!1318 Formula!68) (rhs!1318 Formula!68)) (Or!72 (lhs!1319 Formula!68) (rhs!1319 Formula!68)) (Literal!66 (id!4929 (_ BitVec 32))) (Not!72 (f!4658 Formula!68)))))

(declare-fun f!4611 () Formula!68)

(declare-fun isNNF!0 (Formula!68) Bool)

(assert (=> start!10182 (= res!35902 (isNNF!0 f!4611))))

(assert (=> start!10182 e!39594))

(assert (=> start!10182 true))

(declare-fun b!73264 () Bool)

(declare-fun res!35899 () Bool)

(assert (=> b!73264 (=> (not res!35899) (not e!39594))))

(assert (=> b!73264 (= res!35899 (is-Implies!72 f!4611))))

(declare-fun b!73266 () Bool)

(declare-fun res!35900 () Bool)

(assert (=> b!73266 (=> (not res!35900) (not e!39594))))

(declare-fun f!4618 () Formula!68)

(assert (=> b!73266 (= res!35900 (= f!4618 (lhs!1317 f!4611)))))

(declare-fun b!73265 () Bool)

(declare-fun res!35901 () Bool)

(assert (=> b!73265 (=> (not res!35901) (not e!39594))))

(declare-fun inductVal!737 () Bool)

(declare-fun nnfIsStable!0 (Formula!68) Bool)

(assert (=> b!73265 (= res!35901 (= inductVal!737 (nnfIsStable!0 (rhs!1317 f!4611))))))

(declare-fun b!73267 () Bool)

(assert (=> b!73267 (= e!39594 (not (isNNF!0 f!4618)))))

(assert (= (and start!10182 res!35902) b!73264))

(assert (= (and b!73264 res!35899) b!73265))

(assert (= (and b!73265 res!35901) b!73266))

(assert (= (and b!73266 res!35900) b!73267))

(declare-fun m!72782 () Bool)

(assert (=> start!10182 m!72782))

(declare-fun m!72784 () Bool)

(assert (=> b!73265 m!72784))

(declare-fun m!72786 () Bool)

(assert (=> b!73267 m!72786))

(push 1)

(assert (not start!10182))

(assert (not b!73265))

(assert (not b!73267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73316 () Bool)

(declare-fun e!39629 () Bool)

(declare-fun res!35940 () Bool)

(assert (=> b!73316 (= e!39629 res!35940)))

(assert (=> b!73316 true))

(declare-fun b!73317 () Bool)

(declare-fun e!39636 () Bool)

(declare-fun e!39632 () Bool)

(assert (=> b!73317 (= e!39636 e!39632)))

(declare-fun res!35944 () Bool)

(assert (=> b!73317 (=> (not res!35944) (not e!39632))))

(declare-fun lt!15565 () Bool)

(assert (=> b!73317 (= res!35944 lt!15565)))

(declare-fun b!73318 () Bool)

(declare-fun e!39630 () Bool)

(declare-fun lt!15564 () Bool)

(declare-fun lt!15563 () Bool)

(assert (=> b!73318 (= e!39630 (or (and lt!15564 lt!15563) (and (not lt!15564) (is-Implies!72 f!4611) lt!15563)))))

(declare-fun e!39635 () Bool)

(assert (=> b!73318 (= lt!15563 e!39635)))

(declare-fun c!17660 () Bool)

(assert (=> b!73318 (= c!17660 (or lt!15564 (is-Implies!72 f!4611)))))

(assert (=> b!73318 (= lt!15564 (is-Or!72 f!4611))))

(declare-fun d!54761 () Bool)

(declare-fun c!17663 () Bool)

(declare-fun lt!15567 () Bool)

(assert (=> d!54761 (= c!17663 lt!15567)))

(declare-fun lt!15570 () Bool)

(assert (=> d!54761 (= lt!15570 e!39629)))

(declare-fun c!17668 () Bool)

(declare-fun e!39626 () Bool)

(assert (=> d!54761 (= c!17668 e!39626)))

(declare-fun res!35939 () Bool)

(assert (=> d!54761 (=> res!35939 e!39626)))

(declare-fun lt!15568 () Bool)

(assert (=> d!54761 (= res!35939 lt!15568)))

(declare-fun lt!15562 () Bool)

(assert (=> d!54761 (= lt!15568 (and lt!15567 lt!15562))))

(declare-fun e!39631 () Bool)

(assert (=> d!54761 (= lt!15562 e!39631)))

(declare-fun c!17665 () Bool)

(assert (=> d!54761 (= c!17665 (or lt!15567 (is-Or!72 f!4611) (is-Implies!72 f!4611)))))

(assert (=> d!54761 (= lt!15567 (is-And!72 f!4611))))

(declare-fun e!39625 () Bool)

(assert (=> d!54761 (= (isNNF!0 f!4611) e!39625)))

(declare-fun b!73319 () Bool)

(declare-fun e!39633 () Formula!68)

(assert (=> b!73319 (= e!39633 (rhs!1319 f!4611))))

(declare-fun b!73320 () Bool)

(assert (=> b!73320 (= e!39626 e!39630)))

(declare-fun res!35937 () Bool)

(assert (=> b!73320 (=> (not res!35937) (not e!39630))))

(assert (=> b!73320 (= res!35937 (not lt!15567))))

(declare-fun b!73321 () Bool)

(declare-fun res!35946 () Bool)

(assert (=> b!73321 (= e!39635 res!35946)))

(assert (=> b!73321 true))

(declare-fun b!73322 () Bool)

(declare-fun e!39627 () Formula!68)

(assert (=> b!73322 (= e!39629 (isNNF!0 e!39627))))

(declare-fun c!17666 () Bool)

(assert (=> b!73322 (= c!17666 lt!15568)))

(declare-fun b!73323 () Bool)

(declare-fun e!39634 () Bool)

(assert (=> b!73323 (= e!39634 lt!15570)))

(declare-fun b!73324 () Bool)

(declare-fun res!35942 () Bool)

(assert (=> b!73324 (= e!39631 res!35942)))

(assert (=> b!73324 true))

(declare-fun b!73325 () Bool)

(assert (=> b!73325 (= e!39633 (rhs!1317 f!4611))))

(declare-fun b!73326 () Bool)

(declare-fun e!39628 () Bool)

(assert (=> b!73326 (= e!39628 lt!15562)))

(declare-fun b!73327 () Bool)

(assert (=> b!73327 (= e!39632 e!39634)))

(declare-fun lt!15566 () Bool)

(declare-fun c!17664 () Bool)

(assert (=> b!73327 (= c!17664 (or (and lt!15566 lt!15565) (and (not lt!15566) (is-Implies!72 f!4611) lt!15565)))))

(declare-fun b!73328 () Bool)

(assert (=> b!73328 (= e!39627 (rhs!1318 f!4611))))

(declare-fun b!73329 () Bool)

(assert (=> b!73329 (= e!39636 (or (and (is-Not!72 f!4611) (is-Literal!66 (f!4658 f!4611))) (not (is-Not!72 f!4611))))))

(declare-fun b!73330 () Bool)

(assert (=> b!73330 (= e!39627 e!39633)))

(declare-fun c!17669 () Bool)

(declare-fun e!39623 () Bool)

(assert (=> b!73330 (= c!17669 e!39623)))

(declare-fun res!35938 () Bool)

(assert (=> b!73330 (=> (not res!35938) (not e!39623))))

(declare-fun lt!15569 () Bool)

(assert (=> b!73330 (= res!35938 lt!15569)))

(assert (=> b!73330 (= lt!15569 (is-Or!72 f!4611))))

(declare-fun b!73331 () Bool)

(assert (=> b!73331 (= e!39631 (isNNF!0 (ite lt!15567 (lhs!1318 f!4611) (ite (is-Or!72 f!4611) (lhs!1319 f!4611) (lhs!1317 f!4611)))))))

(declare-fun b!73332 () Bool)

(declare-fun e!39624 () Bool)

(declare-fun res!35945 () Bool)

(assert (=> b!73332 (= e!39624 res!35945)))

(assert (=> b!73332 true))

(declare-fun b!73333 () Bool)

(declare-fun res!35941 () Bool)

(assert (=> b!73333 (= e!39634 res!35941)))

(assert (=> b!73333 true))

(assert (=> b!73333 true))

(declare-fun b!73334 () Bool)

(declare-fun res!35943 () Bool)

(assert (=> b!73334 (= e!39628 res!35943)))

(assert (=> b!73334 true))

(declare-fun b!73335 () Bool)

(assert (=> b!73335 (= e!39625 (and lt!15562 lt!15570))))

(declare-fun b!73336 () Bool)

(assert (=> b!73336 (= e!39623 e!39624)))

(declare-fun c!17662 () Bool)

(assert (=> b!73336 (= c!17662 (or lt!15569 (is-Implies!72 f!4611)))))

(declare-fun b!73337 () Bool)

(assert (=> b!73337 (= e!39624 lt!15562)))

(declare-fun b!73338 () Bool)

(assert (=> b!73338 (= e!39625 e!39636)))

(declare-fun c!17667 () Bool)

(assert (=> b!73338 (= c!17667 (or lt!15566 (is-Implies!72 f!4611)))))

(assert (=> b!73338 (= lt!15565 e!39628)))

(declare-fun c!17661 () Bool)

(assert (=> b!73338 (= c!17661 (or lt!15566 (is-Implies!72 f!4611)))))

(assert (=> b!73338 (= lt!15566 (is-Or!72 f!4611))))

(declare-fun b!73339 () Bool)

(assert (=> b!73339 (= e!39635 lt!15562)))

(assert (= (and d!54761 c!17665) b!73331))

(assert (= (and d!54761 (not c!17665)) b!73324))

(assert (= (and d!54761 (not res!35939)) b!73320))

(assert (= (and b!73320 res!35937) b!73318))

(assert (= (and b!73318 c!17660) b!73339))

(assert (= (and b!73318 (not c!17660)) b!73321))

(assert (= (and b!73330 res!35938) b!73336))

(assert (= (and b!73336 c!17662) b!73337))

(assert (= (and b!73336 (not c!17662)) b!73332))

(assert (= (and b!73330 c!17669) b!73319))

(assert (= (and b!73330 (not c!17669)) b!73325))

(assert (= (and b!73322 c!17666) b!73328))

(assert (= (and b!73322 (not c!17666)) b!73330))

(assert (= (and d!54761 c!17668) b!73322))

(assert (= (and d!54761 (not c!17668)) b!73316))

(assert (= (and b!73338 c!17661) b!73326))

(assert (= (and b!73338 (not c!17661)) b!73334))

(assert (= (and b!73317 res!35944) b!73327))

(assert (= (and b!73327 c!17664) b!73323))

(assert (= (and b!73327 (not c!17664)) b!73333))

(assert (= (and b!73338 c!17667) b!73317))

(assert (= (and b!73338 (not c!17667)) b!73329))

(assert (= (and d!54761 c!17663) b!73335))

(assert (= (and d!54761 (not c!17663)) b!73338))

(declare-fun m!72788 () Bool)

(assert (=> b!73322 m!72788))

(declare-fun m!72790 () Bool)

(assert (=> b!73331 m!72790))

(assert (=> start!10182 d!54761))

(declare-fun b!73364 () Bool)

(declare-fun e!39650 () Bool)

(declare-fun nnf!0 (Formula!68) Formula!68)

(assert (=> b!73364 (= e!39650 (= (nnf!0 (rhs!1317 f!4611)) (rhs!1317 f!4611)))))

(declare-fun b!73365 () Bool)

(declare-fun e!39652 () Bool)

(assert (=> b!73365 (= e!39652 e!39650)))

(declare-fun c!17682 () Bool)

(declare-fun lt!15585 () Bool)

(assert (=> b!73365 (= c!17682 (or lt!15585 (is-Or!72 (rhs!1317 f!4611))))))

(assert (=> b!73365 (= lt!15585 (is-And!72 (rhs!1317 f!4611)))))

(declare-fun b!73366 () Bool)

(declare-fun e!39654 () Formula!68)

(declare-fun res!35979 () Formula!68)

(assert (=> b!73366 (= e!39654 res!35979)))

(assert (=> b!73366 true))

(assert (=> b!73366 true))

(declare-fun b!73367 () Bool)

(declare-fun e!39649 () Bool)

(declare-fun lt!15582 () Bool)

(assert (=> b!73367 (= e!39649 (nnfIsStable!0 (ite lt!15582 (lhs!1317 (rhs!1317 f!4611)) (ite (is-And!72 (rhs!1317 f!4611)) (lhs!1318 (rhs!1317 f!4611)) (lhs!1319 (rhs!1317 f!4611))))))))

(declare-fun b!73368 () Bool)

(declare-fun e!39653 () Bool)

(declare-fun res!35977 () Bool)

(assert (=> b!73368 (= e!39653 res!35977)))

(assert (=> b!73368 true))

(declare-fun b!73369 () Bool)

(declare-fun lt!15584 () Formula!68)

(assert (=> b!73369 (= e!39652 (= lt!15584 (rhs!1317 f!4611)))))

(declare-fun b!73370 () Bool)

(assert (=> b!73370 (= e!39654 lt!15584)))

(declare-fun b!73371 () Bool)

(assert (=> b!73371 (= e!39650 (= e!39654 (rhs!1317 f!4611)))))

(declare-fun c!17687 () Bool)

(assert (=> b!73371 (= c!17687 (or lt!15585 (is-Or!72 (rhs!1317 f!4611))))))

(declare-fun d!54763 () Bool)

(assert (=> d!54763 e!39652))

(declare-fun c!17683 () Bool)

(assert (=> d!54763 (= c!17683 lt!15582)))

(declare-fun e!39651 () Formula!68)

(assert (=> d!54763 (= lt!15584 e!39651)))

(declare-fun c!17686 () Bool)

(assert (=> d!54763 (= c!17686 (or lt!15582 (is-And!72 (rhs!1317 f!4611)) (is-Or!72 (rhs!1317 f!4611))))))

(declare-fun lt!15583 () Bool)

(assert (=> d!54763 (= lt!15583 e!39649)))

(declare-fun c!17685 () Bool)

(assert (=> d!54763 (= c!17685 (or lt!15582 (is-And!72 (rhs!1317 f!4611)) (is-Or!72 (rhs!1317 f!4611))))))

(declare-fun lt!15581 () Bool)

(assert (=> d!54763 (= lt!15581 e!39653)))

(declare-fun c!17684 () Bool)

(assert (=> d!54763 (= c!17684 (or lt!15582 (is-And!72 (rhs!1317 f!4611)) (is-Or!72 (rhs!1317 f!4611)) (not (is-Literal!66 (rhs!1317 f!4611)))))))

(assert (=> d!54763 (= lt!15582 (is-Implies!72 (rhs!1317 f!4611)))))

(assert (=> d!54763 (isNNF!0 (rhs!1317 f!4611))))

(assert (=> d!54763 (= (nnfIsStable!0 (rhs!1317 f!4611)) true)))

(declare-fun b!73372 () Bool)

(declare-fun res!35978 () Bool)

(assert (=> b!73372 (= e!39649 res!35978)))

(assert (=> b!73372 true))

(declare-fun b!73373 () Bool)

(declare-fun res!35976 () Formula!68)

(assert (=> b!73373 (= e!39651 res!35976)))

(assert (=> b!73373 true))

(declare-fun b!73374 () Bool)

(assert (=> b!73374 (= e!39653 (nnfIsStable!0 (ite lt!15582 (rhs!1317 (rhs!1317 f!4611)) (ite (is-And!72 (rhs!1317 f!4611)) (rhs!1318 (rhs!1317 f!4611)) (ite (is-Or!72 (rhs!1317 f!4611)) (rhs!1319 (rhs!1317 f!4611)) (f!4658 (rhs!1317 f!4611)))))))))

(declare-fun b!73375 () Bool)

(assert (=> b!73375 (= e!39651 (nnf!0 (rhs!1317 f!4611)))))

(assert (= (and d!54763 c!17684) b!73374))

(assert (= (and d!54763 (not c!17684)) b!73368))

(assert (= (and d!54763 c!17685) b!73367))

(assert (= (and d!54763 (not c!17685)) b!73372))

(assert (= (and d!54763 c!17686) b!73375))

(assert (= (and d!54763 (not c!17686)) b!73373))

(assert (= (and b!73371 c!17687) b!73370))

(assert (= (and b!73371 (not c!17687)) b!73366))

(assert (= (and b!73365 c!17682) b!73371))

(assert (= (and b!73365 (not c!17682)) b!73364))

(assert (= (and d!54763 c!17683) b!73369))

(assert (= (and d!54763 (not c!17683)) b!73365))

(declare-fun m!72792 () Bool)

(assert (=> d!54763 m!72792))

(declare-fun m!72794 () Bool)

(assert (=> b!73374 m!72794))

(declare-fun m!72796 () Bool)

(assert (=> b!73364 m!72796))

(assert (=> b!73375 m!72796))

(declare-fun m!72798 () Bool)

(assert (=> b!73367 m!72798))

(assert (=> b!73265 d!54763))

(declare-fun b!73376 () Bool)

(declare-fun e!39661 () Bool)

(declare-fun res!35983 () Bool)

(assert (=> b!73376 (= e!39661 res!35983)))

(assert (=> b!73376 true))

(declare-fun b!73377 () Bool)

(declare-fun e!39668 () Bool)

(declare-fun e!39664 () Bool)

(assert (=> b!73377 (= e!39668 e!39664)))

(declare-fun res!35987 () Bool)

(assert (=> b!73377 (=> (not res!35987) (not e!39664))))

(declare-fun lt!15589 () Bool)

(assert (=> b!73377 (= res!35987 lt!15589)))

(declare-fun b!73378 () Bool)

(declare-fun e!39662 () Bool)

(declare-fun lt!15588 () Bool)

(declare-fun lt!15587 () Bool)

(assert (=> b!73378 (= e!39662 (or (and lt!15588 lt!15587) (and (not lt!15588) (is-Implies!72 f!4618) lt!15587)))))

(declare-fun e!39667 () Bool)

(assert (=> b!73378 (= lt!15587 e!39667)))

(declare-fun c!17688 () Bool)

(assert (=> b!73378 (= c!17688 (or lt!15588 (is-Implies!72 f!4618)))))

(assert (=> b!73378 (= lt!15588 (is-Or!72 f!4618))))

(declare-fun d!54765 () Bool)

(declare-fun c!17691 () Bool)

(declare-fun lt!15591 () Bool)

(assert (=> d!54765 (= c!17691 lt!15591)))

(declare-fun lt!15594 () Bool)

(assert (=> d!54765 (= lt!15594 e!39661)))

(declare-fun c!17696 () Bool)

(declare-fun e!39658 () Bool)

(assert (=> d!54765 (= c!17696 e!39658)))

(declare-fun res!35982 () Bool)

(assert (=> d!54765 (=> res!35982 e!39658)))

(declare-fun lt!15592 () Bool)

(assert (=> d!54765 (= res!35982 lt!15592)))

(declare-fun lt!15586 () Bool)

(assert (=> d!54765 (= lt!15592 (and lt!15591 lt!15586))))

(declare-fun e!39663 () Bool)

(assert (=> d!54765 (= lt!15586 e!39663)))

(declare-fun c!17693 () Bool)

(assert (=> d!54765 (= c!17693 (or lt!15591 (is-Or!72 f!4618) (is-Implies!72 f!4618)))))

(assert (=> d!54765 (= lt!15591 (is-And!72 f!4618))))

(declare-fun e!39657 () Bool)

(assert (=> d!54765 (= (isNNF!0 f!4618) e!39657)))

(declare-fun b!73379 () Bool)

(declare-fun e!39665 () Formula!68)

(assert (=> b!73379 (= e!39665 (rhs!1319 f!4618))))

(declare-fun b!73380 () Bool)

(assert (=> b!73380 (= e!39658 e!39662)))

(declare-fun res!35980 () Bool)

(assert (=> b!73380 (=> (not res!35980) (not e!39662))))

(assert (=> b!73380 (= res!35980 (not lt!15591))))

(declare-fun b!73381 () Bool)

(declare-fun res!35989 () Bool)

(assert (=> b!73381 (= e!39667 res!35989)))

(assert (=> b!73381 true))

(declare-fun b!73382 () Bool)

(declare-fun e!39659 () Formula!68)

(assert (=> b!73382 (= e!39661 (isNNF!0 e!39659))))

(declare-fun c!17694 () Bool)

(assert (=> b!73382 (= c!17694 lt!15592)))

(declare-fun b!73383 () Bool)

(declare-fun e!39666 () Bool)

(assert (=> b!73383 (= e!39666 lt!15594)))

(declare-fun b!73384 () Bool)

(declare-fun res!35985 () Bool)

(assert (=> b!73384 (= e!39663 res!35985)))

(assert (=> b!73384 true))

(declare-fun b!73385 () Bool)

(assert (=> b!73385 (= e!39665 (rhs!1317 f!4618))))

(declare-fun b!73386 () Bool)

(declare-fun e!39660 () Bool)

(assert (=> b!73386 (= e!39660 lt!15586)))

(declare-fun b!73387 () Bool)

(assert (=> b!73387 (= e!39664 e!39666)))

(declare-fun lt!15590 () Bool)

(declare-fun c!17692 () Bool)

(assert (=> b!73387 (= c!17692 (or (and lt!15590 lt!15589) (and (not lt!15590) (is-Implies!72 f!4618) lt!15589)))))

(declare-fun b!73388 () Bool)

(assert (=> b!73388 (= e!39659 (rhs!1318 f!4618))))

(declare-fun b!73389 () Bool)

(assert (=> b!73389 (= e!39668 (or (and (is-Not!72 f!4618) (is-Literal!66 (f!4658 f!4618))) (not (is-Not!72 f!4618))))))

(declare-fun b!73390 () Bool)

(assert (=> b!73390 (= e!39659 e!39665)))

(declare-fun c!17697 () Bool)

(declare-fun e!39655 () Bool)

(assert (=> b!73390 (= c!17697 e!39655)))

(declare-fun res!35981 () Bool)

(assert (=> b!73390 (=> (not res!35981) (not e!39655))))

(declare-fun lt!15593 () Bool)

(assert (=> b!73390 (= res!35981 lt!15593)))

(assert (=> b!73390 (= lt!15593 (is-Or!72 f!4618))))

(declare-fun b!73391 () Bool)

(assert (=> b!73391 (= e!39663 (isNNF!0 (ite lt!15591 (lhs!1318 f!4618) (ite (is-Or!72 f!4618) (lhs!1319 f!4618) (lhs!1317 f!4618)))))))

(declare-fun b!73392 () Bool)

(declare-fun e!39656 () Bool)

(declare-fun res!35988 () Bool)

(assert (=> b!73392 (= e!39656 res!35988)))

(assert (=> b!73392 true))

(declare-fun b!73393 () Bool)

(declare-fun res!35984 () Bool)

(assert (=> b!73393 (= e!39666 res!35984)))

(assert (=> b!73393 true))

(assert (=> b!73393 true))

(declare-fun b!73394 () Bool)

(declare-fun res!35986 () Bool)

(assert (=> b!73394 (= e!39660 res!35986)))

(assert (=> b!73394 true))

(declare-fun b!73395 () Bool)

(assert (=> b!73395 (= e!39657 (and lt!15586 lt!15594))))

(declare-fun b!73396 () Bool)

(assert (=> b!73396 (= e!39655 e!39656)))

(declare-fun c!17690 () Bool)

(assert (=> b!73396 (= c!17690 (or lt!15593 (is-Implies!72 f!4618)))))

(declare-fun b!73397 () Bool)

(assert (=> b!73397 (= e!39656 lt!15586)))

(declare-fun b!73398 () Bool)

(assert (=> b!73398 (= e!39657 e!39668)))

(declare-fun c!17695 () Bool)

(assert (=> b!73398 (= c!17695 (or lt!15590 (is-Implies!72 f!4618)))))

(assert (=> b!73398 (= lt!15589 e!39660)))

(declare-fun c!17689 () Bool)

(assert (=> b!73398 (= c!17689 (or lt!15590 (is-Implies!72 f!4618)))))

(assert (=> b!73398 (= lt!15590 (is-Or!72 f!4618))))

(declare-fun b!73399 () Bool)

(assert (=> b!73399 (= e!39667 lt!15586)))

(assert (= (and d!54765 c!17693) b!73391))

(assert (= (and d!54765 (not c!17693)) b!73384))

(assert (= (and d!54765 (not res!35982)) b!73380))

(assert (= (and b!73380 res!35980) b!73378))

(assert (= (and b!73378 c!17688) b!73399))

(assert (= (and b!73378 (not c!17688)) b!73381))

(assert (= (and b!73390 res!35981) b!73396))

(assert (= (and b!73396 c!17690) b!73397))

(assert (= (and b!73396 (not c!17690)) b!73392))

(assert (= (and b!73390 c!17697) b!73379))

(assert (= (and b!73390 (not c!17697)) b!73385))

(assert (= (and b!73382 c!17694) b!73388))

(assert (= (and b!73382 (not c!17694)) b!73390))

(assert (= (and d!54765 c!17696) b!73382))

(assert (= (and d!54765 (not c!17696)) b!73376))

(assert (= (and b!73398 c!17689) b!73386))

(assert (= (and b!73398 (not c!17689)) b!73394))

(assert (= (and b!73377 res!35987) b!73387))

(assert (= (and b!73387 c!17692) b!73383))

(assert (= (and b!73387 (not c!17692)) b!73393))

(assert (= (and b!73398 c!17695) b!73377))

(assert (= (and b!73398 (not c!17695)) b!73389))

(assert (= (and d!54765 c!17691) b!73395))

(assert (= (and d!54765 (not c!17691)) b!73398))

(declare-fun m!72800 () Bool)

(assert (=> b!73382 m!72800))

(declare-fun m!72802 () Bool)

(assert (=> b!73391 m!72802))

(assert (=> b!73267 d!54765))

(push 1)

(assert (not b!73382))

(assert (not b!73367))

(assert (not d!54763))

(assert (not b!73322))

(assert (not b!73364))

(assert (not b!73374))

(assert (not b!73391))

(assert (not b!73331))

(assert (not b!73375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

