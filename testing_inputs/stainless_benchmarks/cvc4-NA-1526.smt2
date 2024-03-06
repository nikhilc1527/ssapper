; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10346 () Bool)

(assert start!10346)

(declare-fun res!38387 () Bool)

(declare-fun e!41459 () Bool)

(assert (=> start!10346 (=> (not res!38387) (not e!41459))))

(declare-datatypes () ((Formula!95 (Implies!99 (lhs!1398 Formula!95) (rhs!1398 Formula!95)) (And!99 (lhs!1399 Formula!95) (rhs!1399 Formula!95)) (Or!99 (lhs!1400 Formula!95) (rhs!1400 Formula!95)) (Literal!93 (id!4956 (_ BitVec 32))) (Not!99 (f!4735 Formula!95)))))

(declare-fun f!4516 () Formula!95)

(declare-fun x$1!1034 () Formula!95)

(assert (=> start!10346 (= res!38387 (and (not (is-And!99 f!4516)) (not (is-Or!99 f!4516)) (not (is-Implies!99 f!4516)) (not (is-Not!99 f!4516)) (= x$1!1034 f!4516)))))

(assert (=> start!10346 e!41459))

(assert (=> start!10346 true))

(declare-fun b!76733 () Bool)

(declare-fun isSimplified!0 (Formula!95) Bool)

(assert (=> b!76733 (= e!41459 (not (isSimplified!0 x$1!1034)))))

(assert (= (and start!10346 res!38387) b!76733))

(declare-fun m!73398 () Bool)

(assert (=> b!76733 m!73398))

(push 1)

(assert (not b!76733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!76760 () Bool)

(declare-fun e!41478 () Bool)

(declare-fun e!41476 () Bool)

(assert (=> b!76760 (= e!41478 e!41476)))

(declare-fun res!38419 () Bool)

(assert (=> b!76760 (=> (not res!38419) (not e!41476))))

(declare-fun lt!17139 () Bool)

(assert (=> b!76760 (= res!38419 (not lt!17139))))

(declare-fun d!54931 () Bool)

(declare-fun c!19104 () Bool)

(assert (=> d!54931 (= c!19104 lt!17139)))

(declare-fun lt!17138 () Bool)

(declare-fun e!41477 () Bool)

(assert (=> d!54931 (= lt!17138 e!41477)))

(declare-fun c!19105 () Bool)

(assert (=> d!54931 (= c!19105 e!41478)))

(declare-fun res!38415 () Bool)

(assert (=> d!54931 (=> res!38415 e!41478)))

(declare-fun lt!17144 () Bool)

(assert (=> d!54931 (= res!38415 lt!17144)))

(declare-fun lt!17142 () Bool)

(assert (=> d!54931 (= lt!17144 (and lt!17139 lt!17142))))

(declare-fun e!41479 () Bool)

(assert (=> d!54931 (= lt!17142 e!41479)))

(declare-fun c!19103 () Bool)

(assert (=> d!54931 (= c!19103 (or lt!17139 (is-Or!99 x$1!1034) (and (not (is-Implies!99 x$1!1034)) (is-Not!99 x$1!1034))))))

(assert (=> d!54931 (= lt!17139 (is-And!99 x$1!1034))))

(declare-fun e!41481 () Bool)

(assert (=> d!54931 (= (isSimplified!0 x$1!1034) e!41481)))

(declare-fun b!76761 () Bool)

(assert (=> b!76761 (= e!41479 (isSimplified!0 (ite lt!17139 (lhs!1399 x$1!1034) (ite (is-Or!99 x$1!1034) (lhs!1400 x$1!1034) (f!4735 x$1!1034)))))))

(declare-fun b!76762 () Bool)

(declare-fun res!38416 () Bool)

(assert (=> b!76762 (= e!41477 res!38416)))

(assert (=> b!76762 true))

(declare-fun b!76763 () Bool)

(declare-fun e!41480 () Bool)

(assert (=> b!76763 (= e!41476 e!41480)))

(declare-fun res!38418 () Bool)

(assert (=> b!76763 (=> (not res!38418) (not e!41480))))

(declare-fun lt!17140 () Bool)

(assert (=> b!76763 (= res!38418 lt!17140)))

(assert (=> b!76763 (= lt!17140 (is-Or!99 x$1!1034))))

(declare-fun b!76764 () Bool)

(declare-fun e!41483 () Bool)

(assert (=> b!76764 (= e!41480 e!41483)))

(declare-fun c!19101 () Bool)

(assert (=> b!76764 (= c!19101 (or lt!17140 (and (not (is-Implies!99 x$1!1034)) (is-Not!99 x$1!1034))))))

(declare-fun b!76765 () Bool)

(assert (=> b!76765 (= e!41481 (and lt!17142 lt!17138))))

(declare-fun b!76766 () Bool)

(declare-fun e!41482 () Bool)

(assert (=> b!76766 (= e!41482 lt!17142)))

(declare-fun b!76767 () Bool)

(declare-fun res!38417 () Bool)

(assert (=> b!76767 (= e!41479 res!38417)))

(assert (=> b!76767 true))

(declare-fun b!76768 () Bool)

(declare-fun res!38414 () Bool)

(assert (=> b!76768 (= e!41483 res!38414)))

(assert (=> b!76768 true))

(declare-fun b!76769 () Bool)

(declare-fun res!38413 () Bool)

(assert (=> b!76769 (= e!41482 res!38413)))

(assert (=> b!76769 true))

(assert (=> b!76769 true))

(declare-fun b!76770 () Bool)

(assert (=> b!76770 (= e!41483 lt!17142)))

(declare-fun lt!17143 () Bool)

(declare-fun b!76771 () Bool)

(declare-fun lt!17141 () Bool)

(assert (=> b!76771 (= e!41481 (ite lt!17141 (and lt!17143 lt!17138) (and (not (is-Implies!99 x$1!1034)) (or (not (is-Not!99 x$1!1034)) lt!17143))))))

(assert (=> b!76771 (= lt!17143 e!41482)))

(declare-fun c!19102 () Bool)

(assert (=> b!76771 (= c!19102 (or lt!17141 (and (not (is-Implies!99 x$1!1034)) (is-Not!99 x$1!1034))))))

(assert (=> b!76771 (= lt!17141 (is-Or!99 x$1!1034))))

(declare-fun b!76772 () Bool)

(assert (=> b!76772 (= e!41477 (isSimplified!0 (ite lt!17144 (rhs!1399 x$1!1034) (rhs!1400 x$1!1034))))))

(assert (= (and d!54931 c!19103) b!76761))

(assert (= (and d!54931 (not c!19103)) b!76767))

(assert (= (and d!54931 (not res!38415)) b!76760))

(assert (= (and b!76760 res!38419) b!76763))

(assert (= (and b!76763 res!38418) b!76764))

(assert (= (and b!76764 c!19101) b!76770))

(assert (= (and b!76764 (not c!19101)) b!76768))

(assert (= (and d!54931 c!19105) b!76772))

(assert (= (and d!54931 (not c!19105)) b!76762))

(assert (= (and b!76771 c!19102) b!76766))

(assert (= (and b!76771 (not c!19102)) b!76769))

(assert (= (and d!54931 c!19104) b!76765))

(assert (= (and d!54931 (not c!19104)) b!76771))

(declare-fun m!73400 () Bool)

(assert (=> b!76761 m!73400))

(declare-fun m!73402 () Bool)

(assert (=> b!76772 m!73402))

(assert (=> b!76733 d!54931))

(push 1)

(assert (not b!76772))

(assert (not b!76761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

