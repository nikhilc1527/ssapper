; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10380 () Bool)

(assert start!10380)

(declare-fun res!38895 () Bool)

(declare-fun e!41933 () Bool)

(assert (=> start!10380 (=> (not res!38895) (not e!41933))))

(declare-datatypes () ((Formula!103 (Implies!107 (lhs!1422 Formula!103) (rhs!1422 Formula!103)) (And!107 (lhs!1423 Formula!103) (rhs!1423 Formula!103)) (Or!107 (lhs!1424 Formula!103) (rhs!1424 Formula!103)) (Literal!101 (id!4964 (_ BitVec 32))) (Not!107 (f!4751 Formula!103)))))

(declare-fun f!4501 () Formula!103)

(declare-fun isNNF!0 (Formula!103) Bool)

(assert (=> start!10380 (= res!38895 (isNNF!0 f!4501))))

(assert (=> start!10380 e!41933))

(assert (=> start!10380 true))

(declare-fun b!77558 () Bool)

(assert (=> b!77558 (= e!41933 (and (not (is-And!107 f!4501)) (not (is-Or!107 f!4501)) (not (is-Implies!107 f!4501)) (or (not (is-Not!107 f!4501)) (not (is-Literal!101 (f!4751 f!4501)))) (not (is-Literal!101 f!4501))))))

(assert (= (and start!10380 res!38895) b!77558))

(declare-fun m!73490 () Bool)

(assert (=> start!10380 m!73490))

(push 1)

(assert (not start!10380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!77607 () Bool)

(declare-fun e!41973 () Bool)

(declare-fun res!38930 () Bool)

(assert (=> b!77607 (= e!41973 res!38930)))

(assert (=> b!77607 true))

(declare-fun b!77608 () Bool)

(declare-fun e!41965 () Bool)

(declare-fun res!38933 () Bool)

(assert (=> b!77608 (= e!41965 res!38933)))

(assert (=> b!77608 true))

(declare-fun b!77609 () Bool)

(declare-fun e!41975 () Bool)

(declare-fun e!41962 () Bool)

(assert (=> b!77609 (= e!41975 e!41962)))

(declare-fun res!38936 () Bool)

(assert (=> b!77609 (=> (not res!38936) (not e!41962))))

(declare-fun lt!17467 () Bool)

(assert (=> b!77609 (= res!38936 (not lt!17467))))

(declare-fun b!77610 () Bool)

(declare-fun e!41970 () Bool)

(declare-fun e!41972 () Formula!103)

(assert (=> b!77610 (= e!41970 (isNNF!0 e!41972))))

(declare-fun c!19450 () Bool)

(declare-fun lt!17465 () Bool)

(assert (=> b!77610 (= c!19450 lt!17465)))

(declare-fun b!77611 () Bool)

(declare-fun e!41966 () Bool)

(assert (=> b!77611 (= e!41966 (or (and (is-Not!107 f!4501) (is-Literal!101 (f!4751 f!4501))) (not (is-Not!107 f!4501))))))

(declare-fun b!77612 () Bool)

(declare-fun e!41964 () Bool)

(declare-fun lt!17463 () Bool)

(declare-fun lt!17466 () Bool)

(assert (=> b!77612 (= e!41964 (and lt!17463 lt!17466))))

(declare-fun b!77613 () Bool)

(declare-fun e!41963 () Bool)

(declare-fun e!41971 () Bool)

(assert (=> b!77613 (= e!41963 e!41971)))

(declare-fun c!19444 () Bool)

(declare-fun lt!17468 () Bool)

(assert (=> b!77613 (= c!19444 (or lt!17468 (is-Implies!107 f!4501)))))

(declare-fun b!77614 () Bool)

(assert (=> b!77614 (= e!41971 lt!17463)))

(declare-fun b!77615 () Bool)

(assert (=> b!77615 (= e!41964 e!41966)))

(declare-fun c!19446 () Bool)

(declare-fun lt!17461 () Bool)

(assert (=> b!77615 (= c!19446 (or lt!17461 (is-Implies!107 f!4501)))))

(declare-fun lt!17462 () Bool)

(declare-fun e!41969 () Bool)

(assert (=> b!77615 (= lt!17462 e!41969)))

(declare-fun c!19449 () Bool)

(assert (=> b!77615 (= c!19449 (or lt!17461 (is-Implies!107 f!4501)))))

(assert (=> b!77615 (= lt!17461 (is-Or!107 f!4501))))

(declare-fun b!77616 () Bool)

(declare-fun e!41968 () Bool)

(assert (=> b!77616 (= e!41966 e!41968)))

(declare-fun res!38938 () Bool)

(assert (=> b!77616 (=> (not res!38938) (not e!41968))))

(assert (=> b!77616 (= res!38938 lt!17462)))

(declare-fun b!77617 () Bool)

(declare-fun res!38934 () Bool)

(assert (=> b!77617 (= e!41969 res!38934)))

(assert (=> b!77617 true))

(declare-fun b!77618 () Bool)

(declare-fun e!41974 () Bool)

(assert (=> b!77618 (= e!41974 lt!17466)))

(declare-fun b!77619 () Bool)

(declare-fun e!41967 () Formula!103)

(assert (=> b!77619 (= e!41972 e!41967)))

(declare-fun c!19453 () Bool)

(assert (=> b!77619 (= c!19453 e!41963)))

(declare-fun res!38935 () Bool)

(assert (=> b!77619 (=> (not res!38935) (not e!41963))))

(assert (=> b!77619 (= res!38935 lt!17468)))

(assert (=> b!77619 (= lt!17468 (is-Or!107 f!4501))))

(declare-fun b!77620 () Bool)

(assert (=> b!77620 (= e!41965 lt!17463)))

(declare-fun b!77621 () Bool)

(assert (=> b!77621 (= e!41972 (rhs!1423 f!4501))))

(declare-fun b!77622 () Bool)

(assert (=> b!77622 (= e!41969 lt!17463)))

(declare-fun b!77623 () Bool)

(assert (=> b!77623 (= e!41967 (rhs!1422 f!4501))))

(declare-fun b!77624 () Bool)

(declare-fun res!38932 () Bool)

(assert (=> b!77624 (= e!41971 res!38932)))

(assert (=> b!77624 true))

(declare-fun b!77625 () Bool)

(declare-fun res!38939 () Bool)

(assert (=> b!77625 (= e!41974 res!38939)))

(assert (=> b!77625 true))

(assert (=> b!77625 true))

(declare-fun b!77626 () Bool)

(assert (=> b!77626 (= e!41968 e!41974)))

(declare-fun c!19452 () Bool)

(assert (=> b!77626 (= c!19452 (or (and lt!17461 lt!17462) (and (not lt!17461) (is-Implies!107 f!4501) lt!17462)))))

(declare-fun b!77627 () Bool)

(assert (=> b!77627 (= e!41967 (rhs!1424 f!4501))))

(declare-fun lt!17460 () Bool)

(declare-fun b!77628 () Bool)

(declare-fun lt!17464 () Bool)

(assert (=> b!77628 (= e!41962 (or (and lt!17464 lt!17460) (and (not lt!17464) (is-Implies!107 f!4501) lt!17460)))))

(assert (=> b!77628 (= lt!17460 e!41965)))

(declare-fun c!19445 () Bool)

(assert (=> b!77628 (= c!19445 (or lt!17464 (is-Implies!107 f!4501)))))

(assert (=> b!77628 (= lt!17464 (is-Or!107 f!4501))))

(declare-fun b!77629 () Bool)

(declare-fun res!38937 () Bool)

(assert (=> b!77629 (= e!41970 res!38937)))

(assert (=> b!77629 true))

(declare-fun d!54961 () Bool)

(declare-fun c!19447 () Bool)

(assert (=> d!54961 (= c!19447 lt!17467)))

(assert (=> d!54961 (= lt!17466 e!41970)))

(declare-fun c!19451 () Bool)

(assert (=> d!54961 (= c!19451 e!41975)))

(declare-fun res!38931 () Bool)

(assert (=> d!54961 (=> res!38931 e!41975)))

(assert (=> d!54961 (= res!38931 lt!17465)))

(assert (=> d!54961 (= lt!17465 (and lt!17467 lt!17463))))

(assert (=> d!54961 (= lt!17463 e!41973)))

(declare-fun c!19448 () Bool)

(assert (=> d!54961 (= c!19448 (or lt!17467 (is-Or!107 f!4501) (is-Implies!107 f!4501)))))

(assert (=> d!54961 (= lt!17467 (is-And!107 f!4501))))

(assert (=> d!54961 (= (isNNF!0 f!4501) e!41964)))

(declare-fun b!77630 () Bool)

(assert (=> b!77630 (= e!41973 (isNNF!0 (ite lt!17467 (lhs!1423 f!4501) (ite (is-Or!107 f!4501) (lhs!1424 f!4501) (lhs!1422 f!4501)))))))

(assert (= (and d!54961 c!19448) b!77630))

(assert (= (and d!54961 (not c!19448)) b!77607))

(assert (= (and d!54961 (not res!38931)) b!77609))

(assert (= (and b!77609 res!38936) b!77628))

(assert (= (and b!77628 c!19445) b!77620))

(assert (= (and b!77628 (not c!19445)) b!77608))

(assert (= (and b!77619 res!38935) b!77613))

(assert (= (and b!77613 c!19444) b!77614))

(assert (= (and b!77613 (not c!19444)) b!77624))

(assert (= (and b!77619 c!19453) b!77627))

(assert (= (and b!77619 (not c!19453)) b!77623))

(assert (= (and b!77610 c!19450) b!77621))

(assert (= (and b!77610 (not c!19450)) b!77619))

(assert (= (and d!54961 c!19451) b!77610))

(assert (= (and d!54961 (not c!19451)) b!77629))

(assert (= (and b!77615 c!19449) b!77622))

(assert (= (and b!77615 (not c!19449)) b!77617))

(assert (= (and b!77616 res!38938) b!77626))

(assert (= (and b!77626 c!19452) b!77618))

(assert (= (and b!77626 (not c!19452)) b!77625))

(assert (= (and b!77615 c!19446) b!77616))

(assert (= (and b!77615 (not c!19446)) b!77611))

(assert (= (and d!54961 c!19447) b!77612))

(assert (= (and d!54961 (not c!19447)) b!77615))

(declare-fun m!73492 () Bool)

(assert (=> b!77610 m!73492))

(declare-fun m!73494 () Bool)

(assert (=> b!77630 m!73494))

(assert (=> start!10380 d!54961))

(push 1)

(assert (not b!77630))

(assert (not b!77610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

