; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10334 () Bool)

(assert start!10334)

(declare-fun res!38200 () Bool)

(declare-fun e!41296 () Bool)

(assert (=> start!10334 (=> (not res!38200) (not e!41296))))

(declare-datatypes () ((Formula!93 (Implies!97 (lhs!1392 Formula!93) (rhs!1392 Formula!93)) (And!97 (lhs!1393 Formula!93) (rhs!1393 Formula!93)) (Or!97 (lhs!1394 Formula!93) (rhs!1394 Formula!93)) (Literal!91 (id!4954 (_ BitVec 32))) (Not!97 (f!4729 Formula!93)))))

(declare-fun f!4516 () Formula!93)

(assert (=> start!10334 (= res!38200 (and (not (is-And!97 f!4516)) (not (is-Or!97 f!4516)) (is-Implies!97 f!4516)))))

(assert (=> start!10334 e!41296))

(assert (=> start!10334 true))

(declare-fun b!76439 () Bool)

(declare-fun res!38201 () Bool)

(assert (=> b!76439 (=> (not res!38201) (not e!41296))))

(declare-fun x$1!1029 () Formula!93)

(declare-fun simplify!0 (Formula!93) Formula!93)

(assert (=> b!76439 (= res!38201 (= x$1!1029 (Or!97 (Not!97 (simplify!0 (lhs!1392 f!4516))) (simplify!0 (rhs!1392 f!4516)))))))

(declare-fun b!76440 () Bool)

(declare-fun isSimplified!0 (Formula!93) Bool)

(assert (=> b!76440 (= e!41296 (not (isSimplified!0 x$1!1029)))))

(assert (= (and start!10334 res!38200) b!76439))

(assert (= (and b!76439 res!38201) b!76440))

(declare-fun m!73322 () Bool)

(assert (=> b!76439 m!73322))

(declare-fun m!73324 () Bool)

(assert (=> b!76439 m!73324))

(declare-fun m!73326 () Bool)

(assert (=> b!76440 m!73326))

(push 1)

(assert (not b!76440))

(assert (not b!76439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76467 () Bool)

(declare-fun e!41315 () Bool)

(declare-fun res!38233 () Bool)

(assert (=> b!76467 (= e!41315 res!38233)))

(assert (=> b!76467 true))

(declare-fun b!76468 () Bool)

(declare-fun lt!16975 () Bool)

(assert (=> b!76468 (= e!41315 (isSimplified!0 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))

(declare-fun b!76469 () Bool)

(declare-fun e!41317 () Bool)

(declare-fun lt!16973 () Bool)

(assert (=> b!76469 (= e!41317 (isSimplified!0 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))

(declare-fun lt!16969 () Bool)

(declare-fun lt!16974 () Bool)

(declare-fun e!41313 () Bool)

(declare-fun lt!16972 () Bool)

(declare-fun b!76470 () Bool)

(assert (=> b!76470 (= e!41313 (ite lt!16972 (and lt!16974 lt!16969) (and (not (is-Implies!97 x$1!1029)) (or (not (is-Not!97 x$1!1029)) lt!16974))))))

(declare-fun e!41319 () Bool)

(assert (=> b!76470 (= lt!16974 e!41319)))

(declare-fun c!18976 () Bool)

(assert (=> b!76470 (= c!18976 (or lt!16972 (and (not (is-Implies!97 x$1!1029)) (is-Not!97 x$1!1029))))))

(assert (=> b!76470 (= lt!16972 (is-Or!97 x$1!1029))))

(declare-fun b!76471 () Bool)

(declare-fun e!41320 () Bool)

(declare-fun e!41314 () Bool)

(assert (=> b!76471 (= e!41320 e!41314)))

(declare-fun res!38232 () Bool)

(assert (=> b!76471 (=> (not res!38232) (not e!41314))))

(assert (=> b!76471 (= res!38232 (not lt!16975))))

(declare-fun b!76472 () Bool)

(declare-fun res!38231 () Bool)

(assert (=> b!76472 (= e!41317 res!38231)))

(assert (=> b!76472 true))

(declare-fun d!54905 () Bool)

(declare-fun c!18975 () Bool)

(assert (=> d!54905 (= c!18975 lt!16975)))

(assert (=> d!54905 (= lt!16969 e!41317)))

(declare-fun c!18978 () Bool)

(assert (=> d!54905 (= c!18978 e!41320)))

(declare-fun res!38227 () Bool)

(assert (=> d!54905 (=> res!38227 e!41320)))

(assert (=> d!54905 (= res!38227 lt!16973)))

(declare-fun lt!16970 () Bool)

(assert (=> d!54905 (= lt!16973 (and lt!16975 lt!16970))))

(assert (=> d!54905 (= lt!16970 e!41315)))

(declare-fun c!18977 () Bool)

(assert (=> d!54905 (= c!18977 (or lt!16975 (is-Or!97 x$1!1029) (and (not (is-Implies!97 x$1!1029)) (is-Not!97 x$1!1029))))))

(assert (=> d!54905 (= lt!16975 (is-And!97 x$1!1029))))

(assert (=> d!54905 (= (isSimplified!0 x$1!1029) e!41313)))

(declare-fun b!76473 () Bool)

(declare-fun e!41318 () Bool)

(declare-fun res!38228 () Bool)

(assert (=> b!76473 (= e!41318 res!38228)))

(assert (=> b!76473 true))

(declare-fun b!76474 () Bool)

(assert (=> b!76474 (= e!41319 lt!16970)))

(declare-fun b!76475 () Bool)

(declare-fun e!41316 () Bool)

(assert (=> b!76475 (= e!41316 e!41318)))

(declare-fun c!18974 () Bool)

(declare-fun lt!16971 () Bool)

(assert (=> b!76475 (= c!18974 (or lt!16971 (and (not (is-Implies!97 x$1!1029)) (is-Not!97 x$1!1029))))))

(declare-fun b!76476 () Bool)

(declare-fun res!38230 () Bool)

(assert (=> b!76476 (= e!41319 res!38230)))

(assert (=> b!76476 true))

(assert (=> b!76476 true))

(declare-fun b!76477 () Bool)

(assert (=> b!76477 (= e!41313 (and lt!16970 lt!16969))))

(declare-fun b!76478 () Bool)

(assert (=> b!76478 (= e!41314 e!41316)))

(declare-fun res!38229 () Bool)

(assert (=> b!76478 (=> (not res!38229) (not e!41316))))

(assert (=> b!76478 (= res!38229 lt!16971)))

(assert (=> b!76478 (= lt!16971 (is-Or!97 x$1!1029))))

(declare-fun b!76479 () Bool)

(assert (=> b!76479 (= e!41318 lt!16970)))

(assert (= (and d!54905 c!18977) b!76468))

(assert (= (and d!54905 (not c!18977)) b!76467))

(assert (= (and d!54905 (not res!38227)) b!76471))

(assert (= (and b!76471 res!38232) b!76478))

(assert (= (and b!76478 res!38229) b!76475))

(assert (= (and b!76475 c!18974) b!76479))

(assert (= (and b!76475 (not c!18974)) b!76473))

(assert (= (and d!54905 c!18978) b!76469))

(assert (= (and d!54905 (not c!18978)) b!76472))

(assert (= (and b!76470 c!18976) b!76474))

(assert (= (and b!76470 (not c!18976)) b!76476))

(assert (= (and d!54905 c!18975) b!76477))

(assert (= (and d!54905 (not c!18975)) b!76470))

(declare-fun m!73328 () Bool)

(assert (=> b!76468 m!73328))

(declare-fun m!73330 () Bool)

(assert (=> b!76469 m!73330))

(assert (=> b!76440 d!54905))

(declare-fun b!76508 () Bool)

(declare-fun e!41335 () Formula!93)

(declare-fun lt!16999 () Bool)

(assert (=> b!76508 (= e!41335 (simplify!0 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))))))

(declare-fun b!76509 () Bool)

(declare-fun res!38263 () Formula!93)

(assert (=> b!76509 (= e!41335 res!38263)))

(assert (=> b!76509 true))

(declare-fun b!76510 () Bool)

(declare-fun e!41340 () Formula!93)

(declare-fun lt!17001 () Formula!93)

(assert (=> b!76510 (= e!41340 lt!17001)))

(declare-fun b!76511 () Bool)

(declare-fun e!41339 () Formula!93)

(declare-fun res!38260 () Formula!93)

(assert (=> b!76511 (= e!41339 res!38260)))

(assert (=> b!76511 true))

(declare-fun b!76512 () Bool)

(declare-fun e!41338 () Formula!93)

(declare-fun res!38259 () Formula!93)

(assert (=> b!76512 (= e!41338 res!38259)))

(assert (=> b!76512 true))

(declare-fun b!76513 () Bool)

(declare-fun e!41341 () Formula!93)

(declare-fun res!38262 () Formula!93)

(assert (=> b!76513 (= e!41341 res!38262)))

(assert (=> b!76513 true))

(declare-fun b!76514 () Bool)

(assert (=> b!76514 (= e!41339 (simplify!0 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))))))

(declare-fun b!76515 () Bool)

(declare-fun lt!16994 () Formula!93)

(assert (=> b!76515 (= e!41341 lt!16994)))

(declare-fun b!76516 () Bool)

(declare-fun e!41336 () Formula!93)

(declare-fun lt!16997 () Formula!93)

(assert (=> b!76516 (= e!41336 (And!97 lt!16994 lt!16997))))

(declare-fun b!76517 () Bool)

(declare-fun e!41337 () Formula!93)

(assert (=> b!76517 (= e!41336 e!41337)))

(declare-fun c!18995 () Bool)

(declare-fun lt!17002 () Bool)

(assert (=> b!76517 (= c!18995 lt!17002)))

(declare-fun lt!16995 () Formula!93)

(assert (=> b!76517 (= lt!16995 e!41338)))

(declare-fun c!18997 () Bool)

(assert (=> b!76517 (= c!18997 (or lt!17002 (is-Implies!97 (lhs!1392 f!4516))))))

(assert (=> b!76517 (= lt!17001 e!41341)))

(declare-fun c!18999 () Bool)

(assert (=> b!76517 (= c!18999 (or lt!17002 (is-Implies!97 (lhs!1392 f!4516)) (is-Not!97 (lhs!1392 f!4516))))))

(assert (=> b!76517 (= lt!17002 (is-Or!97 (lhs!1392 f!4516)))))

(declare-fun lt!16998 () Bool)

(declare-fun lt!16996 () Formula!93)

(declare-fun b!76518 () Bool)

(assert (=> b!76518 (= e!41337 (ite lt!16998 (Or!97 (Not!97 lt!16996) lt!16995) (ite (is-Not!97 (lhs!1392 f!4516)) (Not!97 lt!16996) (lhs!1392 f!4516))))))

(assert (=> b!76518 (= lt!16996 e!41340)))

(declare-fun c!18998 () Bool)

(assert (=> b!76518 (= c!18998 (or lt!16998 (is-Not!97 (lhs!1392 f!4516))))))

(assert (=> b!76518 (= lt!16998 (is-Implies!97 (lhs!1392 f!4516)))))

(declare-fun b!76519 () Bool)

(assert (=> b!76519 (= e!41338 lt!16997)))

(declare-fun d!54907 () Bool)

(declare-fun lt!17000 () Formula!93)

(assert (=> d!54907 (isSimplified!0 lt!17000)))

(assert (=> d!54907 (= lt!17000 e!41336)))

(declare-fun c!18996 () Bool)

(assert (=> d!54907 (= c!18996 lt!16999)))

(assert (=> d!54907 (= lt!16997 e!41339)))

(declare-fun c!18993 () Bool)

(assert (=> d!54907 (= c!18993 (or lt!16999 (is-Or!97 (lhs!1392 f!4516)) (is-Implies!97 (lhs!1392 f!4516))))))

(assert (=> d!54907 (= lt!16994 e!41335)))

(declare-fun c!18994 () Bool)

(assert (=> d!54907 (= c!18994 (or lt!16999 (is-Or!97 (lhs!1392 f!4516)) (is-Implies!97 (lhs!1392 f!4516)) (is-Not!97 (lhs!1392 f!4516))))))

(assert (=> d!54907 (= lt!16999 (is-And!97 (lhs!1392 f!4516)))))

(assert (=> d!54907 (= (simplify!0 (lhs!1392 f!4516)) lt!17000)))

(declare-fun b!76520 () Bool)

(assert (=> b!76520 (= e!41337 (Or!97 lt!17001 lt!16995))))

(declare-fun b!76521 () Bool)

(declare-fun res!38261 () Formula!93)

(assert (=> b!76521 (= e!41340 res!38261)))

(assert (=> b!76521 true))

(assert (=> b!76521 true))

(assert (= (and d!54907 c!18994) b!76508))

(assert (= (and d!54907 (not c!18994)) b!76509))

(assert (= (and d!54907 c!18993) b!76514))

(assert (= (and d!54907 (not c!18993)) b!76511))

(assert (= (and b!76517 c!18999) b!76515))

(assert (= (and b!76517 (not c!18999)) b!76513))

(assert (= (and b!76517 c!18997) b!76519))

(assert (= (and b!76517 (not c!18997)) b!76512))

(assert (= (and b!76518 c!18998) b!76510))

(assert (= (and b!76518 (not c!18998)) b!76521))

(assert (= (and b!76517 c!18995) b!76520))

(assert (= (and b!76517 (not c!18995)) b!76518))

(assert (= (and d!54907 c!18996) b!76516))

(assert (= (and d!54907 (not c!18996)) b!76517))

(declare-fun m!73332 () Bool)

(assert (=> b!76508 m!73332))

(declare-fun m!73334 () Bool)

(assert (=> b!76514 m!73334))

(declare-fun m!73336 () Bool)

(assert (=> d!54907 m!73336))

(assert (=> b!76439 d!54907))

(declare-fun b!76522 () Bool)

(declare-fun e!41342 () Formula!93)

(declare-fun lt!17008 () Bool)

(assert (=> b!76522 (= e!41342 (simplify!0 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))))))

(declare-fun b!76523 () Bool)

(declare-fun res!38268 () Formula!93)

(assert (=> b!76523 (= e!41342 res!38268)))

(assert (=> b!76523 true))

(declare-fun b!76524 () Bool)

(declare-fun e!41347 () Formula!93)

(declare-fun lt!17010 () Formula!93)

(assert (=> b!76524 (= e!41347 lt!17010)))

(declare-fun b!76525 () Bool)

(declare-fun e!41346 () Formula!93)

(declare-fun res!38265 () Formula!93)

(assert (=> b!76525 (= e!41346 res!38265)))

(assert (=> b!76525 true))

(declare-fun b!76526 () Bool)

(declare-fun e!41345 () Formula!93)

(declare-fun res!38264 () Formula!93)

(assert (=> b!76526 (= e!41345 res!38264)))

(assert (=> b!76526 true))

(declare-fun b!76527 () Bool)

(declare-fun e!41348 () Formula!93)

(declare-fun res!38267 () Formula!93)

(assert (=> b!76527 (= e!41348 res!38267)))

(assert (=> b!76527 true))

(declare-fun b!76528 () Bool)

(assert (=> b!76528 (= e!41346 (simplify!0 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))))))

(declare-fun b!76529 () Bool)

(declare-fun lt!17003 () Formula!93)

(assert (=> b!76529 (= e!41348 lt!17003)))

(declare-fun b!76530 () Bool)

(declare-fun e!41343 () Formula!93)

(declare-fun lt!17006 () Formula!93)

(assert (=> b!76530 (= e!41343 (And!97 lt!17003 lt!17006))))

(declare-fun b!76531 () Bool)

(declare-fun e!41344 () Formula!93)

(assert (=> b!76531 (= e!41343 e!41344)))

(declare-fun c!19002 () Bool)

(declare-fun lt!17011 () Bool)

(assert (=> b!76531 (= c!19002 lt!17011)))

(declare-fun lt!17004 () Formula!93)

(assert (=> b!76531 (= lt!17004 e!41345)))

(declare-fun c!19004 () Bool)

(assert (=> b!76531 (= c!19004 (or lt!17011 (is-Implies!97 (rhs!1392 f!4516))))))

(assert (=> b!76531 (= lt!17010 e!41348)))

(declare-fun c!19006 () Bool)

(assert (=> b!76531 (= c!19006 (or lt!17011 (is-Implies!97 (rhs!1392 f!4516)) (is-Not!97 (rhs!1392 f!4516))))))

(assert (=> b!76531 (= lt!17011 (is-Or!97 (rhs!1392 f!4516)))))

(declare-fun b!76532 () Bool)

(declare-fun lt!17005 () Formula!93)

(declare-fun lt!17007 () Bool)

(assert (=> b!76532 (= e!41344 (ite lt!17007 (Or!97 (Not!97 lt!17005) lt!17004) (ite (is-Not!97 (rhs!1392 f!4516)) (Not!97 lt!17005) (rhs!1392 f!4516))))))

(assert (=> b!76532 (= lt!17005 e!41347)))

(declare-fun c!19005 () Bool)

(assert (=> b!76532 (= c!19005 (or lt!17007 (is-Not!97 (rhs!1392 f!4516))))))

(assert (=> b!76532 (= lt!17007 (is-Implies!97 (rhs!1392 f!4516)))))

(declare-fun b!76533 () Bool)

(assert (=> b!76533 (= e!41345 lt!17006)))

(declare-fun d!54909 () Bool)

(declare-fun lt!17009 () Formula!93)

(assert (=> d!54909 (isSimplified!0 lt!17009)))

(assert (=> d!54909 (= lt!17009 e!41343)))

(declare-fun c!19003 () Bool)

(assert (=> d!54909 (= c!19003 lt!17008)))

(assert (=> d!54909 (= lt!17006 e!41346)))

(declare-fun c!19000 () Bool)

(assert (=> d!54909 (= c!19000 (or lt!17008 (is-Or!97 (rhs!1392 f!4516)) (is-Implies!97 (rhs!1392 f!4516))))))

(assert (=> d!54909 (= lt!17003 e!41342)))

(declare-fun c!19001 () Bool)

(assert (=> d!54909 (= c!19001 (or lt!17008 (is-Or!97 (rhs!1392 f!4516)) (is-Implies!97 (rhs!1392 f!4516)) (is-Not!97 (rhs!1392 f!4516))))))

(assert (=> d!54909 (= lt!17008 (is-And!97 (rhs!1392 f!4516)))))

(assert (=> d!54909 (= (simplify!0 (rhs!1392 f!4516)) lt!17009)))

(declare-fun b!76534 () Bool)

(assert (=> b!76534 (= e!41344 (Or!97 lt!17010 lt!17004))))

(declare-fun b!76535 () Bool)

(declare-fun res!38266 () Formula!93)

(assert (=> b!76535 (= e!41347 res!38266)))

(assert (=> b!76535 true))

(assert (=> b!76535 true))

(assert (= (and d!54909 c!19001) b!76522))

(assert (= (and d!54909 (not c!19001)) b!76523))

(assert (= (and d!54909 c!19000) b!76528))

(assert (= (and d!54909 (not c!19000)) b!76525))

(assert (= (and b!76531 c!19006) b!76529))

(assert (= (and b!76531 (not c!19006)) b!76527))

(assert (= (and b!76531 c!19004) b!76533))

(assert (= (and b!76531 (not c!19004)) b!76526))

(assert (= (and b!76532 c!19005) b!76524))

(assert (= (and b!76532 (not c!19005)) b!76535))

(assert (= (and b!76531 c!19002) b!76534))

(assert (= (and b!76531 (not c!19002)) b!76532))

(assert (= (and d!54909 c!19003) b!76530))

(assert (= (and d!54909 (not c!19003)) b!76531))

(declare-fun m!73338 () Bool)

(assert (=> b!76522 m!73338))

(declare-fun m!73340 () Bool)

(assert (=> b!76528 m!73340))

(declare-fun m!73342 () Bool)

(assert (=> d!54909 m!73342))

(assert (=> b!76439 d!54909))

(push 1)

(assert (not b!76528))

(assert (not b!76508))

(assert (not d!54907))

(assert (not b!76522))

(assert (not b!76514))

(assert (not d!54909))

(assert (not b!76469))

(assert (not b!76468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76536 () Bool)

(declare-fun e!41349 () Formula!93)

(declare-fun lt!17017 () Bool)

(assert (=> b!76536 (= e!41349 (simplify!0 (ite lt!17017 (lhs!1393 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (ite (is-Or!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (lhs!1394 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (ite (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (lhs!1392 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (f!4729 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))))))))))

(declare-fun b!76537 () Bool)

(declare-fun res!38273 () Formula!93)

(assert (=> b!76537 (= e!41349 res!38273)))

(assert (=> b!76537 true))

(declare-fun b!76538 () Bool)

(declare-fun e!41354 () Formula!93)

(declare-fun lt!17019 () Formula!93)

(assert (=> b!76538 (= e!41354 lt!17019)))

(declare-fun b!76539 () Bool)

(declare-fun e!41353 () Formula!93)

(declare-fun res!38270 () Formula!93)

(assert (=> b!76539 (= e!41353 res!38270)))

(assert (=> b!76539 true))

(declare-fun b!76540 () Bool)

(declare-fun e!41352 () Formula!93)

(declare-fun res!38269 () Formula!93)

(assert (=> b!76540 (= e!41352 res!38269)))

(assert (=> b!76540 true))

(declare-fun b!76541 () Bool)

(declare-fun e!41355 () Formula!93)

(declare-fun res!38272 () Formula!93)

(assert (=> b!76541 (= e!41355 res!38272)))

(assert (=> b!76541 true))

(declare-fun b!76542 () Bool)

(assert (=> b!76542 (= e!41353 (simplify!0 (ite lt!17017 (rhs!1393 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (ite (is-Or!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (rhs!1394 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (rhs!1392 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))))

(declare-fun b!76543 () Bool)

(declare-fun lt!17012 () Formula!93)

(assert (=> b!76543 (= e!41355 lt!17012)))

(declare-fun b!76544 () Bool)

(declare-fun e!41350 () Formula!93)

(declare-fun lt!17015 () Formula!93)

(assert (=> b!76544 (= e!41350 (And!97 lt!17012 lt!17015))))

(declare-fun b!76545 () Bool)

(declare-fun e!41351 () Formula!93)

(assert (=> b!76545 (= e!41350 e!41351)))

(declare-fun c!19009 () Bool)

(declare-fun lt!17020 () Bool)

(assert (=> b!76545 (= c!19009 lt!17020)))

(declare-fun lt!17013 () Formula!93)

(assert (=> b!76545 (= lt!17013 e!41352)))

(declare-fun c!19011 () Bool)

(assert (=> b!76545 (= c!19011 (or lt!17020 (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> b!76545 (= lt!17019 e!41355)))

(declare-fun c!19013 () Bool)

(assert (=> b!76545 (= c!19013 (or lt!17020 (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (is-Not!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> b!76545 (= lt!17020 (is-Or!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))))))

(declare-fun lt!17014 () Formula!93)

(declare-fun b!76546 () Bool)

(declare-fun lt!17016 () Bool)

(assert (=> b!76546 (= e!41351 (ite lt!17016 (Or!97 (Not!97 lt!17014) lt!17013) (ite (is-Not!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (Not!97 lt!17014) (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> b!76546 (= lt!17014 e!41354)))

(declare-fun c!19012 () Bool)

(assert (=> b!76546 (= c!19012 (or lt!17016 (is-Not!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> b!76546 (= lt!17016 (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))))))

(declare-fun b!76547 () Bool)

(assert (=> b!76547 (= e!41352 lt!17015)))

(declare-fun d!54911 () Bool)

(declare-fun lt!17018 () Formula!93)

(assert (=> d!54911 (isSimplified!0 lt!17018)))

(assert (=> d!54911 (= lt!17018 e!41350)))

(declare-fun c!19010 () Bool)

(assert (=> d!54911 (= c!19010 lt!17017)))

(assert (=> d!54911 (= lt!17015 e!41353)))

(declare-fun c!19007 () Bool)

(assert (=> d!54911 (= c!19007 (or lt!17017 (is-Or!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> d!54911 (= lt!17012 e!41349)))

(declare-fun c!19008 () Bool)

(assert (=> d!54911 (= c!19008 (or lt!17017 (is-Or!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (is-Implies!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) (is-Not!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516))))))))))

(assert (=> d!54911 (= lt!17017 (is-And!97 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))))))

(assert (=> d!54911 (= (simplify!0 (ite lt!17008 (lhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (lhs!1394 (rhs!1392 f!4516)) (ite (is-Implies!97 (rhs!1392 f!4516)) (lhs!1392 (rhs!1392 f!4516)) (f!4729 (rhs!1392 f!4516)))))) lt!17018)))

(declare-fun b!76548 () Bool)

(assert (=> b!76548 (= e!41351 (Or!97 lt!17019 lt!17013))))

(declare-fun b!76549 () Bool)

(declare-fun res!38271 () Formula!93)

(assert (=> b!76549 (= e!41354 res!38271)))

(assert (=> b!76549 true))

(assert (=> b!76549 true))

(assert (= (and d!54911 c!19008) b!76536))

(assert (= (and d!54911 (not c!19008)) b!76537))

(assert (= (and d!54911 c!19007) b!76542))

(assert (= (and d!54911 (not c!19007)) b!76539))

(assert (= (and b!76545 c!19013) b!76543))

(assert (= (and b!76545 (not c!19013)) b!76541))

(assert (= (and b!76545 c!19011) b!76547))

(assert (= (and b!76545 (not c!19011)) b!76540))

(assert (= (and b!76546 c!19012) b!76538))

(assert (= (and b!76546 (not c!19012)) b!76549))

(assert (= (and b!76545 c!19009) b!76548))

(assert (= (and b!76545 (not c!19009)) b!76546))

(assert (= (and d!54911 c!19010) b!76544))

(assert (= (and d!54911 (not c!19010)) b!76545))

(declare-fun m!73344 () Bool)

(assert (=> b!76536 m!73344))

(declare-fun m!73346 () Bool)

(assert (=> b!76542 m!73346))

(declare-fun m!73348 () Bool)

(assert (=> d!54911 m!73348))

(assert (=> b!76522 d!54911))

(declare-fun b!76550 () Bool)

(declare-fun lt!17026 () Bool)

(declare-fun e!41356 () Formula!93)

(assert (=> b!76550 (= e!41356 (simplify!0 (ite lt!17026 (lhs!1393 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (ite (is-Or!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (lhs!1394 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (ite (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (lhs!1392 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (f!4729 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))))))))))

(declare-fun b!76551 () Bool)

(declare-fun res!38278 () Formula!93)

(assert (=> b!76551 (= e!41356 res!38278)))

(assert (=> b!76551 true))

(declare-fun b!76552 () Bool)

(declare-fun e!41361 () Formula!93)

(declare-fun lt!17028 () Formula!93)

(assert (=> b!76552 (= e!41361 lt!17028)))

(declare-fun b!76553 () Bool)

(declare-fun e!41360 () Formula!93)

(declare-fun res!38275 () Formula!93)

(assert (=> b!76553 (= e!41360 res!38275)))

(assert (=> b!76553 true))

(declare-fun b!76554 () Bool)

(declare-fun e!41359 () Formula!93)

(declare-fun res!38274 () Formula!93)

(assert (=> b!76554 (= e!41359 res!38274)))

(assert (=> b!76554 true))

(declare-fun b!76555 () Bool)

(declare-fun e!41362 () Formula!93)

(declare-fun res!38277 () Formula!93)

(assert (=> b!76555 (= e!41362 res!38277)))

(assert (=> b!76555 true))

(declare-fun b!76556 () Bool)

(assert (=> b!76556 (= e!41360 (simplify!0 (ite lt!17026 (rhs!1393 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (ite (is-Or!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (rhs!1394 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (rhs!1392 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))))

(declare-fun b!76557 () Bool)

(declare-fun lt!17021 () Formula!93)

(assert (=> b!76557 (= e!41362 lt!17021)))

(declare-fun b!76558 () Bool)

(declare-fun e!41357 () Formula!93)

(declare-fun lt!17024 () Formula!93)

(assert (=> b!76558 (= e!41357 (And!97 lt!17021 lt!17024))))

(declare-fun b!76559 () Bool)

(declare-fun e!41358 () Formula!93)

(assert (=> b!76559 (= e!41357 e!41358)))

(declare-fun c!19016 () Bool)

(declare-fun lt!17029 () Bool)

(assert (=> b!76559 (= c!19016 lt!17029)))

(declare-fun lt!17022 () Formula!93)

(assert (=> b!76559 (= lt!17022 e!41359)))

(declare-fun c!19018 () Bool)

(assert (=> b!76559 (= c!19018 (or lt!17029 (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> b!76559 (= lt!17028 e!41362)))

(declare-fun c!19020 () Bool)

(assert (=> b!76559 (= c!19020 (or lt!17029 (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (is-Not!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> b!76559 (= lt!17029 (is-Or!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))))))

(declare-fun b!76560 () Bool)

(declare-fun lt!17025 () Bool)

(declare-fun lt!17023 () Formula!93)

(assert (=> b!76560 (= e!41358 (ite lt!17025 (Or!97 (Not!97 lt!17023) lt!17022) (ite (is-Not!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (Not!97 lt!17023) (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> b!76560 (= lt!17023 e!41361)))

(declare-fun c!19019 () Bool)

(assert (=> b!76560 (= c!19019 (or lt!17025 (is-Not!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> b!76560 (= lt!17025 (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))))))

(declare-fun b!76561 () Bool)

(assert (=> b!76561 (= e!41359 lt!17024)))

(declare-fun d!54913 () Bool)

(declare-fun lt!17027 () Formula!93)

(assert (=> d!54913 (isSimplified!0 lt!17027)))

(assert (=> d!54913 (= lt!17027 e!41357)))

(declare-fun c!19017 () Bool)

(assert (=> d!54913 (= c!19017 lt!17026)))

(assert (=> d!54913 (= lt!17024 e!41360)))

(declare-fun c!19014 () Bool)

(assert (=> d!54913 (= c!19014 (or lt!17026 (is-Or!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> d!54913 (= lt!17021 e!41356)))

(declare-fun c!19015 () Bool)

(assert (=> d!54913 (= c!19015 (or lt!17026 (is-Or!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (is-Implies!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) (is-Not!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516)))))))))

(assert (=> d!54913 (= lt!17026 (is-And!97 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))))))

(assert (=> d!54913 (= (simplify!0 (ite lt!16999 (rhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (rhs!1394 (lhs!1392 f!4516)) (rhs!1392 (lhs!1392 f!4516))))) lt!17027)))

(declare-fun b!76562 () Bool)

(assert (=> b!76562 (= e!41358 (Or!97 lt!17028 lt!17022))))

(declare-fun b!76563 () Bool)

(declare-fun res!38276 () Formula!93)

(assert (=> b!76563 (= e!41361 res!38276)))

(assert (=> b!76563 true))

(assert (=> b!76563 true))

(assert (= (and d!54913 c!19015) b!76550))

(assert (= (and d!54913 (not c!19015)) b!76551))

(assert (= (and d!54913 c!19014) b!76556))

(assert (= (and d!54913 (not c!19014)) b!76553))

(assert (= (and b!76559 c!19020) b!76557))

(assert (= (and b!76559 (not c!19020)) b!76555))

(assert (= (and b!76559 c!19018) b!76561))

(assert (= (and b!76559 (not c!19018)) b!76554))

(assert (= (and b!76560 c!19019) b!76552))

(assert (= (and b!76560 (not c!19019)) b!76563))

(assert (= (and b!76559 c!19016) b!76562))

(assert (= (and b!76559 (not c!19016)) b!76560))

(assert (= (and d!54913 c!19017) b!76558))

(assert (= (and d!54913 (not c!19017)) b!76559))

(declare-fun m!73350 () Bool)

(assert (=> b!76550 m!73350))

(declare-fun m!73352 () Bool)

(assert (=> b!76556 m!73352))

(declare-fun m!73354 () Bool)

(assert (=> d!54913 m!73354))

(assert (=> b!76514 d!54913))

(declare-fun b!76564 () Bool)

(declare-fun e!41365 () Bool)

(declare-fun res!38285 () Bool)

(assert (=> b!76564 (= e!41365 res!38285)))

(assert (=> b!76564 true))

(declare-fun b!76565 () Bool)

(declare-fun lt!17036 () Bool)

(assert (=> b!76565 (= e!41365 (isSimplified!0 (ite lt!17036 (lhs!1393 lt!17000) (ite (is-Or!97 lt!17000) (lhs!1394 lt!17000) (f!4729 lt!17000)))))))

(declare-fun b!76566 () Bool)

(declare-fun e!41367 () Bool)

(declare-fun lt!17034 () Bool)

(assert (=> b!76566 (= e!41367 (isSimplified!0 (ite lt!17034 (rhs!1393 lt!17000) (rhs!1394 lt!17000))))))

(declare-fun b!76567 () Bool)

(declare-fun lt!17033 () Bool)

(declare-fun lt!17030 () Bool)

(declare-fun lt!17035 () Bool)

(declare-fun e!41363 () Bool)

(assert (=> b!76567 (= e!41363 (ite lt!17033 (and lt!17035 lt!17030) (and (not (is-Implies!97 lt!17000)) (or (not (is-Not!97 lt!17000)) lt!17035))))))

(declare-fun e!41369 () Bool)

(assert (=> b!76567 (= lt!17035 e!41369)))

(declare-fun c!19023 () Bool)

(assert (=> b!76567 (= c!19023 (or lt!17033 (and (not (is-Implies!97 lt!17000)) (is-Not!97 lt!17000))))))

(assert (=> b!76567 (= lt!17033 (is-Or!97 lt!17000))))

(declare-fun b!76568 () Bool)

(declare-fun e!41370 () Bool)

(declare-fun e!41364 () Bool)

(assert (=> b!76568 (= e!41370 e!41364)))

(declare-fun res!38284 () Bool)

(assert (=> b!76568 (=> (not res!38284) (not e!41364))))

(assert (=> b!76568 (= res!38284 (not lt!17036))))

(declare-fun b!76569 () Bool)

(declare-fun res!38283 () Bool)

(assert (=> b!76569 (= e!41367 res!38283)))

(assert (=> b!76569 true))

(declare-fun d!54915 () Bool)

(declare-fun c!19022 () Bool)

(assert (=> d!54915 (= c!19022 lt!17036)))

(assert (=> d!54915 (= lt!17030 e!41367)))

(declare-fun c!19025 () Bool)

(assert (=> d!54915 (= c!19025 e!41370)))

(declare-fun res!38279 () Bool)

(assert (=> d!54915 (=> res!38279 e!41370)))

(assert (=> d!54915 (= res!38279 lt!17034)))

(declare-fun lt!17031 () Bool)

(assert (=> d!54915 (= lt!17034 (and lt!17036 lt!17031))))

(assert (=> d!54915 (= lt!17031 e!41365)))

(declare-fun c!19024 () Bool)

(assert (=> d!54915 (= c!19024 (or lt!17036 (is-Or!97 lt!17000) (and (not (is-Implies!97 lt!17000)) (is-Not!97 lt!17000))))))

(assert (=> d!54915 (= lt!17036 (is-And!97 lt!17000))))

(assert (=> d!54915 (= (isSimplified!0 lt!17000) e!41363)))

(declare-fun b!76570 () Bool)

(declare-fun e!41368 () Bool)

(declare-fun res!38280 () Bool)

(assert (=> b!76570 (= e!41368 res!38280)))

(assert (=> b!76570 true))

(declare-fun b!76571 () Bool)

(assert (=> b!76571 (= e!41369 lt!17031)))

(declare-fun b!76572 () Bool)

(declare-fun e!41366 () Bool)

(assert (=> b!76572 (= e!41366 e!41368)))

(declare-fun c!19021 () Bool)

(declare-fun lt!17032 () Bool)

(assert (=> b!76572 (= c!19021 (or lt!17032 (and (not (is-Implies!97 lt!17000)) (is-Not!97 lt!17000))))))

(declare-fun b!76573 () Bool)

(declare-fun res!38282 () Bool)

(assert (=> b!76573 (= e!41369 res!38282)))

(assert (=> b!76573 true))

(assert (=> b!76573 true))

(declare-fun b!76574 () Bool)

(assert (=> b!76574 (= e!41363 (and lt!17031 lt!17030))))

(declare-fun b!76575 () Bool)

(assert (=> b!76575 (= e!41364 e!41366)))

(declare-fun res!38281 () Bool)

(assert (=> b!76575 (=> (not res!38281) (not e!41366))))

(assert (=> b!76575 (= res!38281 lt!17032)))

(assert (=> b!76575 (= lt!17032 (is-Or!97 lt!17000))))

(declare-fun b!76576 () Bool)

(assert (=> b!76576 (= e!41368 lt!17031)))

(assert (= (and d!54915 c!19024) b!76565))

(assert (= (and d!54915 (not c!19024)) b!76564))

(assert (= (and d!54915 (not res!38279)) b!76568))

(assert (= (and b!76568 res!38284) b!76575))

(assert (= (and b!76575 res!38281) b!76572))

(assert (= (and b!76572 c!19021) b!76576))

(assert (= (and b!76572 (not c!19021)) b!76570))

(assert (= (and d!54915 c!19025) b!76566))

(assert (= (and d!54915 (not c!19025)) b!76569))

(assert (= (and b!76567 c!19023) b!76571))

(assert (= (and b!76567 (not c!19023)) b!76573))

(assert (= (and d!54915 c!19022) b!76574))

(assert (= (and d!54915 (not c!19022)) b!76567))

(declare-fun m!73356 () Bool)

(assert (=> b!76565 m!73356))

(declare-fun m!73358 () Bool)

(assert (=> b!76566 m!73358))

(assert (=> d!54907 d!54915))

(declare-fun b!76577 () Bool)

(declare-fun e!41373 () Bool)

(declare-fun res!38292 () Bool)

(assert (=> b!76577 (= e!41373 res!38292)))

(assert (=> b!76577 true))

(declare-fun b!76578 () Bool)

(declare-fun lt!17043 () Bool)

(assert (=> b!76578 (= e!41373 (isSimplified!0 (ite lt!17043 (lhs!1393 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) (ite (is-Or!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) (lhs!1394 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) (f!4729 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))))))))

(declare-fun e!41375 () Bool)

(declare-fun b!76579 () Bool)

(declare-fun lt!17041 () Bool)

(assert (=> b!76579 (= e!41375 (isSimplified!0 (ite lt!17041 (rhs!1393 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) (rhs!1394 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))))

(declare-fun e!41371 () Bool)

(declare-fun lt!17042 () Bool)

(declare-fun lt!17037 () Bool)

(declare-fun b!76580 () Bool)

(declare-fun lt!17040 () Bool)

(assert (=> b!76580 (= e!41371 (ite lt!17040 (and lt!17042 lt!17037) (and (not (is-Implies!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))) (or (not (is-Not!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))) lt!17042))))))

(declare-fun e!41377 () Bool)

(assert (=> b!76580 (= lt!17042 e!41377)))

(declare-fun c!19028 () Bool)

(assert (=> b!76580 (= c!19028 (or lt!17040 (and (not (is-Implies!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))) (is-Not!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))))

(assert (=> b!76580 (= lt!17040 (is-Or!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))

(declare-fun b!76581 () Bool)

(declare-fun e!41378 () Bool)

(declare-fun e!41372 () Bool)

(assert (=> b!76581 (= e!41378 e!41372)))

(declare-fun res!38291 () Bool)

(assert (=> b!76581 (=> (not res!38291) (not e!41372))))

(assert (=> b!76581 (= res!38291 (not lt!17043))))

(declare-fun b!76582 () Bool)

(declare-fun res!38290 () Bool)

(assert (=> b!76582 (= e!41375 res!38290)))

(assert (=> b!76582 true))

(declare-fun d!54917 () Bool)

(declare-fun c!19027 () Bool)

(assert (=> d!54917 (= c!19027 lt!17043)))

(assert (=> d!54917 (= lt!17037 e!41375)))

(declare-fun c!19030 () Bool)

(assert (=> d!54917 (= c!19030 e!41378)))

(declare-fun res!38286 () Bool)

(assert (=> d!54917 (=> res!38286 e!41378)))

(assert (=> d!54917 (= res!38286 lt!17041)))

(declare-fun lt!17038 () Bool)

(assert (=> d!54917 (= lt!17041 (and lt!17043 lt!17038))))

(assert (=> d!54917 (= lt!17038 e!41373)))

(declare-fun c!19029 () Bool)

(assert (=> d!54917 (= c!19029 (or lt!17043 (is-Or!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) (and (not (is-Implies!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))) (is-Not!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))))

(assert (=> d!54917 (= lt!17043 (is-And!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))

(assert (=> d!54917 (= (isSimplified!0 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))) e!41371)))

(declare-fun b!76583 () Bool)

(declare-fun e!41376 () Bool)

(declare-fun res!38287 () Bool)

(assert (=> b!76583 (= e!41376 res!38287)))

(assert (=> b!76583 true))

(declare-fun b!76584 () Bool)

(assert (=> b!76584 (= e!41377 lt!17038)))

(declare-fun b!76585 () Bool)

(declare-fun e!41374 () Bool)

(assert (=> b!76585 (= e!41374 e!41376)))

(declare-fun lt!17039 () Bool)

(declare-fun c!19026 () Bool)

(assert (=> b!76585 (= c!19026 (or lt!17039 (and (not (is-Implies!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029))))) (is-Not!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))))

(declare-fun b!76586 () Bool)

(declare-fun res!38289 () Bool)

(assert (=> b!76586 (= e!41377 res!38289)))

(assert (=> b!76586 true))

(assert (=> b!76586 true))

(declare-fun b!76587 () Bool)

(assert (=> b!76587 (= e!41371 (and lt!17038 lt!17037))))

(declare-fun b!76588 () Bool)

(assert (=> b!76588 (= e!41372 e!41374)))

(declare-fun res!38288 () Bool)

(assert (=> b!76588 (=> (not res!38288) (not e!41374))))

(assert (=> b!76588 (= res!38288 lt!17039)))

(assert (=> b!76588 (= lt!17039 (is-Or!97 (ite lt!16975 (lhs!1393 x$1!1029) (ite (is-Or!97 x$1!1029) (lhs!1394 x$1!1029) (f!4729 x$1!1029)))))))

(declare-fun b!76589 () Bool)

(assert (=> b!76589 (= e!41376 lt!17038)))

(assert (= (and d!54917 c!19029) b!76578))

(assert (= (and d!54917 (not c!19029)) b!76577))

(assert (= (and d!54917 (not res!38286)) b!76581))

(assert (= (and b!76581 res!38291) b!76588))

(assert (= (and b!76588 res!38288) b!76585))

(assert (= (and b!76585 c!19026) b!76589))

(assert (= (and b!76585 (not c!19026)) b!76583))

(assert (= (and d!54917 c!19030) b!76579))

(assert (= (and d!54917 (not c!19030)) b!76582))

(assert (= (and b!76580 c!19028) b!76584))

(assert (= (and b!76580 (not c!19028)) b!76586))

(assert (= (and d!54917 c!19027) b!76587))

(assert (= (and d!54917 (not c!19027)) b!76580))

(declare-fun m!73360 () Bool)

(assert (=> b!76578 m!73360))

(declare-fun m!73362 () Bool)

(assert (=> b!76579 m!73362))

(assert (=> b!76468 d!54917))

(declare-fun b!76590 () Bool)

(declare-fun e!41381 () Bool)

(declare-fun res!38299 () Bool)

(assert (=> b!76590 (= e!41381 res!38299)))

(assert (=> b!76590 true))

(declare-fun b!76591 () Bool)

(declare-fun lt!17050 () Bool)

(assert (=> b!76591 (= e!41381 (isSimplified!0 (ite lt!17050 (lhs!1393 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) (ite (is-Or!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) (lhs!1394 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) (f!4729 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))))))))

(declare-fun lt!17048 () Bool)

(declare-fun e!41383 () Bool)

(declare-fun b!76592 () Bool)

(assert (=> b!76592 (= e!41383 (isSimplified!0 (ite lt!17048 (rhs!1393 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) (rhs!1394 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))))

(declare-fun b!76593 () Bool)

(declare-fun lt!17049 () Bool)

(declare-fun lt!17047 () Bool)

(declare-fun e!41379 () Bool)

(declare-fun lt!17044 () Bool)

(assert (=> b!76593 (= e!41379 (ite lt!17047 (and lt!17049 lt!17044) (and (not (is-Implies!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))) (or (not (is-Not!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))) lt!17049))))))

(declare-fun e!41385 () Bool)

(assert (=> b!76593 (= lt!17049 e!41385)))

(declare-fun c!19033 () Bool)

(assert (=> b!76593 (= c!19033 (or lt!17047 (and (not (is-Implies!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))) (is-Not!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))))

(assert (=> b!76593 (= lt!17047 (is-Or!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))

(declare-fun b!76594 () Bool)

(declare-fun e!41386 () Bool)

(declare-fun e!41380 () Bool)

(assert (=> b!76594 (= e!41386 e!41380)))

(declare-fun res!38298 () Bool)

(assert (=> b!76594 (=> (not res!38298) (not e!41380))))

(assert (=> b!76594 (= res!38298 (not lt!17050))))

(declare-fun b!76595 () Bool)

(declare-fun res!38297 () Bool)

(assert (=> b!76595 (= e!41383 res!38297)))

(assert (=> b!76595 true))

(declare-fun d!54919 () Bool)

(declare-fun c!19032 () Bool)

(assert (=> d!54919 (= c!19032 lt!17050)))

(assert (=> d!54919 (= lt!17044 e!41383)))

(declare-fun c!19035 () Bool)

(assert (=> d!54919 (= c!19035 e!41386)))

(declare-fun res!38293 () Bool)

(assert (=> d!54919 (=> res!38293 e!41386)))

(assert (=> d!54919 (= res!38293 lt!17048)))

(declare-fun lt!17045 () Bool)

(assert (=> d!54919 (= lt!17048 (and lt!17050 lt!17045))))

(assert (=> d!54919 (= lt!17045 e!41381)))

(declare-fun c!19034 () Bool)

(assert (=> d!54919 (= c!19034 (or lt!17050 (is-Or!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) (and (not (is-Implies!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))) (is-Not!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))))

(assert (=> d!54919 (= lt!17050 (is-And!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))

(assert (=> d!54919 (= (isSimplified!0 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))) e!41379)))

(declare-fun b!76596 () Bool)

(declare-fun e!41384 () Bool)

(declare-fun res!38294 () Bool)

(assert (=> b!76596 (= e!41384 res!38294)))

(assert (=> b!76596 true))

(declare-fun b!76597 () Bool)

(assert (=> b!76597 (= e!41385 lt!17045)))

(declare-fun b!76598 () Bool)

(declare-fun e!41382 () Bool)

(assert (=> b!76598 (= e!41382 e!41384)))

(declare-fun c!19031 () Bool)

(declare-fun lt!17046 () Bool)

(assert (=> b!76598 (= c!19031 (or lt!17046 (and (not (is-Implies!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029)))) (is-Not!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))))

(declare-fun b!76599 () Bool)

(declare-fun res!38296 () Bool)

(assert (=> b!76599 (= e!41385 res!38296)))

(assert (=> b!76599 true))

(assert (=> b!76599 true))

(declare-fun b!76600 () Bool)

(assert (=> b!76600 (= e!41379 (and lt!17045 lt!17044))))

(declare-fun b!76601 () Bool)

(assert (=> b!76601 (= e!41380 e!41382)))

(declare-fun res!38295 () Bool)

(assert (=> b!76601 (=> (not res!38295) (not e!41382))))

(assert (=> b!76601 (= res!38295 lt!17046)))

(assert (=> b!76601 (= lt!17046 (is-Or!97 (ite lt!16973 (rhs!1393 x$1!1029) (rhs!1394 x$1!1029))))))

(declare-fun b!76602 () Bool)

(assert (=> b!76602 (= e!41384 lt!17045)))

(assert (= (and d!54919 c!19034) b!76591))

(assert (= (and d!54919 (not c!19034)) b!76590))

(assert (= (and d!54919 (not res!38293)) b!76594))

(assert (= (and b!76594 res!38298) b!76601))

(assert (= (and b!76601 res!38295) b!76598))

(assert (= (and b!76598 c!19031) b!76602))

(assert (= (and b!76598 (not c!19031)) b!76596))

(assert (= (and d!54919 c!19035) b!76592))

(assert (= (and d!54919 (not c!19035)) b!76595))

(assert (= (and b!76593 c!19033) b!76597))

(assert (= (and b!76593 (not c!19033)) b!76599))

(assert (= (and d!54919 c!19032) b!76600))

(assert (= (and d!54919 (not c!19032)) b!76593))

(declare-fun m!73364 () Bool)

(assert (=> b!76591 m!73364))

(declare-fun m!73366 () Bool)

(assert (=> b!76592 m!73366))

(assert (=> b!76469 d!54919))

(declare-fun lt!17056 () Bool)

(declare-fun b!76603 () Bool)

(declare-fun e!41387 () Formula!93)

(assert (=> b!76603 (= e!41387 (simplify!0 (ite lt!17056 (lhs!1393 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (ite (is-Or!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (lhs!1394 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (ite (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (lhs!1392 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (f!4729 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))))))))))

(declare-fun b!76604 () Bool)

(declare-fun res!38304 () Formula!93)

(assert (=> b!76604 (= e!41387 res!38304)))

(assert (=> b!76604 true))

(declare-fun b!76605 () Bool)

(declare-fun e!41392 () Formula!93)

(declare-fun lt!17058 () Formula!93)

(assert (=> b!76605 (= e!41392 lt!17058)))

(declare-fun b!76606 () Bool)

(declare-fun e!41391 () Formula!93)

(declare-fun res!38301 () Formula!93)

(assert (=> b!76606 (= e!41391 res!38301)))

(assert (=> b!76606 true))

(declare-fun b!76607 () Bool)

(declare-fun e!41390 () Formula!93)

(declare-fun res!38300 () Formula!93)

(assert (=> b!76607 (= e!41390 res!38300)))

(assert (=> b!76607 true))

(declare-fun b!76608 () Bool)

(declare-fun e!41393 () Formula!93)

(declare-fun res!38303 () Formula!93)

(assert (=> b!76608 (= e!41393 res!38303)))

(assert (=> b!76608 true))

(declare-fun b!76609 () Bool)

(assert (=> b!76609 (= e!41391 (simplify!0 (ite lt!17056 (rhs!1393 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (ite (is-Or!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (rhs!1394 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (rhs!1392 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))))

(declare-fun b!76610 () Bool)

(declare-fun lt!17051 () Formula!93)

(assert (=> b!76610 (= e!41393 lt!17051)))

(declare-fun b!76611 () Bool)

(declare-fun e!41388 () Formula!93)

(declare-fun lt!17054 () Formula!93)

(assert (=> b!76611 (= e!41388 (And!97 lt!17051 lt!17054))))

(declare-fun b!76612 () Bool)

(declare-fun e!41389 () Formula!93)

(assert (=> b!76612 (= e!41388 e!41389)))

(declare-fun c!19038 () Bool)

(declare-fun lt!17059 () Bool)

(assert (=> b!76612 (= c!19038 lt!17059)))

(declare-fun lt!17052 () Formula!93)

(assert (=> b!76612 (= lt!17052 e!41390)))

(declare-fun c!19040 () Bool)

(assert (=> b!76612 (= c!19040 (or lt!17059 (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> b!76612 (= lt!17058 e!41393)))

(declare-fun c!19042 () Bool)

(assert (=> b!76612 (= c!19042 (or lt!17059 (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (is-Not!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> b!76612 (= lt!17059 (is-Or!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))))))

(declare-fun lt!17055 () Bool)

(declare-fun b!76613 () Bool)

(declare-fun lt!17053 () Formula!93)

(assert (=> b!76613 (= e!41389 (ite lt!17055 (Or!97 (Not!97 lt!17053) lt!17052) (ite (is-Not!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (Not!97 lt!17053) (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> b!76613 (= lt!17053 e!41392)))

(declare-fun c!19041 () Bool)

(assert (=> b!76613 (= c!19041 (or lt!17055 (is-Not!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> b!76613 (= lt!17055 (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))))))

(declare-fun b!76614 () Bool)

(assert (=> b!76614 (= e!41390 lt!17054)))

(declare-fun d!54921 () Bool)

(declare-fun lt!17057 () Formula!93)

(assert (=> d!54921 (isSimplified!0 lt!17057)))

(assert (=> d!54921 (= lt!17057 e!41388)))

(declare-fun c!19039 () Bool)

(assert (=> d!54921 (= c!19039 lt!17056)))

(assert (=> d!54921 (= lt!17054 e!41391)))

(declare-fun c!19036 () Bool)

(assert (=> d!54921 (= c!19036 (or lt!17056 (is-Or!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> d!54921 (= lt!17051 e!41387)))

(declare-fun c!19037 () Bool)

(assert (=> d!54921 (= c!19037 (or lt!17056 (is-Or!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (is-Implies!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) (is-Not!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516))))))))))

(assert (=> d!54921 (= lt!17056 (is-And!97 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))))))

(assert (=> d!54921 (= (simplify!0 (ite lt!16999 (lhs!1393 (lhs!1392 f!4516)) (ite (is-Or!97 (lhs!1392 f!4516)) (lhs!1394 (lhs!1392 f!4516)) (ite (is-Implies!97 (lhs!1392 f!4516)) (lhs!1392 (lhs!1392 f!4516)) (f!4729 (lhs!1392 f!4516)))))) lt!17057)))

(declare-fun b!76615 () Bool)

(assert (=> b!76615 (= e!41389 (Or!97 lt!17058 lt!17052))))

(declare-fun b!76616 () Bool)

(declare-fun res!38302 () Formula!93)

(assert (=> b!76616 (= e!41392 res!38302)))

(assert (=> b!76616 true))

(assert (=> b!76616 true))

(assert (= (and d!54921 c!19037) b!76603))

(assert (= (and d!54921 (not c!19037)) b!76604))

(assert (= (and d!54921 c!19036) b!76609))

(assert (= (and d!54921 (not c!19036)) b!76606))

(assert (= (and b!76612 c!19042) b!76610))

(assert (= (and b!76612 (not c!19042)) b!76608))

(assert (= (and b!76612 c!19040) b!76614))

(assert (= (and b!76612 (not c!19040)) b!76607))

(assert (= (and b!76613 c!19041) b!76605))

(assert (= (and b!76613 (not c!19041)) b!76616))

(assert (= (and b!76612 c!19038) b!76615))

(assert (= (and b!76612 (not c!19038)) b!76613))

(assert (= (and d!54921 c!19039) b!76611))

(assert (= (and d!54921 (not c!19039)) b!76612))

(declare-fun m!73368 () Bool)

(assert (=> b!76603 m!73368))

(declare-fun m!73370 () Bool)

(assert (=> b!76609 m!73370))

(declare-fun m!73372 () Bool)

(assert (=> d!54921 m!73372))

(assert (=> b!76508 d!54921))

(declare-fun b!76617 () Bool)

(declare-fun e!41396 () Bool)

(declare-fun res!38311 () Bool)

(assert (=> b!76617 (= e!41396 res!38311)))

(assert (=> b!76617 true))

(declare-fun b!76618 () Bool)

(declare-fun lt!17066 () Bool)

(assert (=> b!76618 (= e!41396 (isSimplified!0 (ite lt!17066 (lhs!1393 lt!17009) (ite (is-Or!97 lt!17009) (lhs!1394 lt!17009) (f!4729 lt!17009)))))))

(declare-fun b!76619 () Bool)

(declare-fun e!41398 () Bool)

(declare-fun lt!17064 () Bool)

(assert (=> b!76619 (= e!41398 (isSimplified!0 (ite lt!17064 (rhs!1393 lt!17009) (rhs!1394 lt!17009))))))

(declare-fun b!76620 () Bool)

(declare-fun lt!17063 () Bool)

(declare-fun lt!17060 () Bool)

(declare-fun lt!17065 () Bool)

(declare-fun e!41394 () Bool)

(assert (=> b!76620 (= e!41394 (ite lt!17063 (and lt!17065 lt!17060) (and (not (is-Implies!97 lt!17009)) (or (not (is-Not!97 lt!17009)) lt!17065))))))

(declare-fun e!41400 () Bool)

(assert (=> b!76620 (= lt!17065 e!41400)))

(declare-fun c!19045 () Bool)

(assert (=> b!76620 (= c!19045 (or lt!17063 (and (not (is-Implies!97 lt!17009)) (is-Not!97 lt!17009))))))

(assert (=> b!76620 (= lt!17063 (is-Or!97 lt!17009))))

(declare-fun b!76621 () Bool)

(declare-fun e!41401 () Bool)

(declare-fun e!41395 () Bool)

(assert (=> b!76621 (= e!41401 e!41395)))

(declare-fun res!38310 () Bool)

(assert (=> b!76621 (=> (not res!38310) (not e!41395))))

(assert (=> b!76621 (= res!38310 (not lt!17066))))

(declare-fun b!76622 () Bool)

(declare-fun res!38309 () Bool)

(assert (=> b!76622 (= e!41398 res!38309)))

(assert (=> b!76622 true))

(declare-fun d!54923 () Bool)

(declare-fun c!19044 () Bool)

(assert (=> d!54923 (= c!19044 lt!17066)))

(assert (=> d!54923 (= lt!17060 e!41398)))

(declare-fun c!19047 () Bool)

(assert (=> d!54923 (= c!19047 e!41401)))

(declare-fun res!38305 () Bool)

(assert (=> d!54923 (=> res!38305 e!41401)))

(assert (=> d!54923 (= res!38305 lt!17064)))

(declare-fun lt!17061 () Bool)

(assert (=> d!54923 (= lt!17064 (and lt!17066 lt!17061))))

(assert (=> d!54923 (= lt!17061 e!41396)))

(declare-fun c!19046 () Bool)

(assert (=> d!54923 (= c!19046 (or lt!17066 (is-Or!97 lt!17009) (and (not (is-Implies!97 lt!17009)) (is-Not!97 lt!17009))))))

(assert (=> d!54923 (= lt!17066 (is-And!97 lt!17009))))

(assert (=> d!54923 (= (isSimplified!0 lt!17009) e!41394)))

(declare-fun b!76623 () Bool)

(declare-fun e!41399 () Bool)

(declare-fun res!38306 () Bool)

(assert (=> b!76623 (= e!41399 res!38306)))

(assert (=> b!76623 true))

(declare-fun b!76624 () Bool)

(assert (=> b!76624 (= e!41400 lt!17061)))

(declare-fun b!76625 () Bool)

(declare-fun e!41397 () Bool)

(assert (=> b!76625 (= e!41397 e!41399)))

(declare-fun c!19043 () Bool)

(declare-fun lt!17062 () Bool)

(assert (=> b!76625 (= c!19043 (or lt!17062 (and (not (is-Implies!97 lt!17009)) (is-Not!97 lt!17009))))))

(declare-fun b!76626 () Bool)

(declare-fun res!38308 () Bool)

(assert (=> b!76626 (= e!41400 res!38308)))

(assert (=> b!76626 true))

(assert (=> b!76626 true))

(declare-fun b!76627 () Bool)

(assert (=> b!76627 (= e!41394 (and lt!17061 lt!17060))))

(declare-fun b!76628 () Bool)

(assert (=> b!76628 (= e!41395 e!41397)))

(declare-fun res!38307 () Bool)

(assert (=> b!76628 (=> (not res!38307) (not e!41397))))

(assert (=> b!76628 (= res!38307 lt!17062)))

(assert (=> b!76628 (= lt!17062 (is-Or!97 lt!17009))))

(declare-fun b!76629 () Bool)

(assert (=> b!76629 (= e!41399 lt!17061)))

(assert (= (and d!54923 c!19046) b!76618))

(assert (= (and d!54923 (not c!19046)) b!76617))

(assert (= (and d!54923 (not res!38305)) b!76621))

(assert (= (and b!76621 res!38310) b!76628))

(assert (= (and b!76628 res!38307) b!76625))

(assert (= (and b!76625 c!19043) b!76629))

(assert (= (and b!76625 (not c!19043)) b!76623))

(assert (= (and d!54923 c!19047) b!76619))

(assert (= (and d!54923 (not c!19047)) b!76622))

(assert (= (and b!76620 c!19045) b!76624))

(assert (= (and b!76620 (not c!19045)) b!76626))

(assert (= (and d!54923 c!19044) b!76627))

(assert (= (and d!54923 (not c!19044)) b!76620))

(declare-fun m!73374 () Bool)

(assert (=> b!76618 m!73374))

(declare-fun m!73376 () Bool)

(assert (=> b!76619 m!73376))

(assert (=> d!54909 d!54923))

(declare-fun b!76630 () Bool)

(declare-fun lt!17072 () Bool)

(declare-fun e!41402 () Formula!93)

(assert (=> b!76630 (= e!41402 (simplify!0 (ite lt!17072 (lhs!1393 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (ite (is-Or!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (lhs!1394 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (ite (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (lhs!1392 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (f!4729 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))))))))))

(declare-fun b!76631 () Bool)

(declare-fun res!38316 () Formula!93)

(assert (=> b!76631 (= e!41402 res!38316)))

(assert (=> b!76631 true))

(declare-fun b!76632 () Bool)

(declare-fun e!41407 () Formula!93)

(declare-fun lt!17074 () Formula!93)

(assert (=> b!76632 (= e!41407 lt!17074)))

(declare-fun b!76633 () Bool)

(declare-fun e!41406 () Formula!93)

(declare-fun res!38313 () Formula!93)

(assert (=> b!76633 (= e!41406 res!38313)))

(assert (=> b!76633 true))

(declare-fun b!76634 () Bool)

(declare-fun e!41405 () Formula!93)

(declare-fun res!38312 () Formula!93)

(assert (=> b!76634 (= e!41405 res!38312)))

(assert (=> b!76634 true))

(declare-fun b!76635 () Bool)

(declare-fun e!41408 () Formula!93)

(declare-fun res!38315 () Formula!93)

(assert (=> b!76635 (= e!41408 res!38315)))

(assert (=> b!76635 true))

(declare-fun b!76636 () Bool)

(assert (=> b!76636 (= e!41406 (simplify!0 (ite lt!17072 (rhs!1393 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (ite (is-Or!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (rhs!1394 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (rhs!1392 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))))

(declare-fun b!76637 () Bool)

(declare-fun lt!17067 () Formula!93)

(assert (=> b!76637 (= e!41408 lt!17067)))

(declare-fun b!76638 () Bool)

(declare-fun e!41403 () Formula!93)

(declare-fun lt!17070 () Formula!93)

(assert (=> b!76638 (= e!41403 (And!97 lt!17067 lt!17070))))

(declare-fun b!76639 () Bool)

(declare-fun e!41404 () Formula!93)

(assert (=> b!76639 (= e!41403 e!41404)))

(declare-fun c!19050 () Bool)

(declare-fun lt!17075 () Bool)

(assert (=> b!76639 (= c!19050 lt!17075)))

(declare-fun lt!17068 () Formula!93)

(assert (=> b!76639 (= lt!17068 e!41405)))

(declare-fun c!19052 () Bool)

(assert (=> b!76639 (= c!19052 (or lt!17075 (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> b!76639 (= lt!17074 e!41408)))

(declare-fun c!19054 () Bool)

(assert (=> b!76639 (= c!19054 (or lt!17075 (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (is-Not!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> b!76639 (= lt!17075 (is-Or!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))))))

(declare-fun lt!17071 () Bool)

(declare-fun b!76640 () Bool)

(declare-fun lt!17069 () Formula!93)

(assert (=> b!76640 (= e!41404 (ite lt!17071 (Or!97 (Not!97 lt!17069) lt!17068) (ite (is-Not!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (Not!97 lt!17069) (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> b!76640 (= lt!17069 e!41407)))

(declare-fun c!19053 () Bool)

(assert (=> b!76640 (= c!19053 (or lt!17071 (is-Not!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> b!76640 (= lt!17071 (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))))))

(declare-fun b!76641 () Bool)

(assert (=> b!76641 (= e!41405 lt!17070)))

(declare-fun d!54925 () Bool)

(declare-fun lt!17073 () Formula!93)

(assert (=> d!54925 (isSimplified!0 lt!17073)))

(assert (=> d!54925 (= lt!17073 e!41403)))

(declare-fun c!19051 () Bool)

(assert (=> d!54925 (= c!19051 lt!17072)))

(assert (=> d!54925 (= lt!17070 e!41406)))

(declare-fun c!19048 () Bool)

(assert (=> d!54925 (= c!19048 (or lt!17072 (is-Or!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> d!54925 (= lt!17067 e!41402)))

(declare-fun c!19049 () Bool)

(assert (=> d!54925 (= c!19049 (or lt!17072 (is-Or!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (is-Implies!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) (is-Not!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516)))))))))

(assert (=> d!54925 (= lt!17072 (is-And!97 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))))))

(assert (=> d!54925 (= (simplify!0 (ite lt!17008 (rhs!1393 (rhs!1392 f!4516)) (ite (is-Or!97 (rhs!1392 f!4516)) (rhs!1394 (rhs!1392 f!4516)) (rhs!1392 (rhs!1392 f!4516))))) lt!17073)))

(declare-fun b!76642 () Bool)

(assert (=> b!76642 (= e!41404 (Or!97 lt!17074 lt!17068))))

(declare-fun b!76643 () Bool)

(declare-fun res!38314 () Formula!93)

(assert (=> b!76643 (= e!41407 res!38314)))

(assert (=> b!76643 true))

(assert (=> b!76643 true))

(assert (= (and d!54925 c!19049) b!76630))

(assert (= (and d!54925 (not c!19049)) b!76631))

(assert (= (and d!54925 c!19048) b!76636))

(assert (= (and d!54925 (not c!19048)) b!76633))

(assert (= (and b!76639 c!19054) b!76637))

(assert (= (and b!76639 (not c!19054)) b!76635))

(assert (= (and b!76639 c!19052) b!76641))

(assert (= (and b!76639 (not c!19052)) b!76634))

(assert (= (and b!76640 c!19053) b!76632))

(assert (= (and b!76640 (not c!19053)) b!76643))

(assert (= (and b!76639 c!19050) b!76642))

(assert (= (and b!76639 (not c!19050)) b!76640))

(assert (= (and d!54925 c!19051) b!76638))

(assert (= (and d!54925 (not c!19051)) b!76639))

(declare-fun m!73378 () Bool)

(assert (=> b!76630 m!73378))

(declare-fun m!73380 () Bool)

(assert (=> b!76636 m!73380))

(declare-fun m!73382 () Bool)

(assert (=> d!54925 m!73382))

(assert (=> b!76528 d!54925))

(push 1)

(assert (not d!54911))

(assert (not b!76536))

(assert (not d!54925))

(assert (not b!76630))

(assert (not b!76618))

(assert (not b!76565))

(assert (not b!76591))

(assert (not b!76609))

(assert (not d!54913))

(assert (not b!76579))

(assert (not b!76619))

(assert (not b!76592))

(assert (not b!76636))

(assert (not b!76566))

(assert (not b!76603))

(assert (not b!76542))

(assert (not b!76550))

(assert (not d!54921))

(assert (not b!76556))

(assert (not b!76578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

