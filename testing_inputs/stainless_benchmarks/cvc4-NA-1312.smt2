; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9242 () Bool)

(assert start!9242)

(declare-fun res!30799 () Bool)

(declare-fun e!35512 () Bool)

(assert (=> start!9242 (=> (not res!30799) (not e!35512))))

(declare-datatypes () ((Formula!14 (And!19 (lhs!845 Formula!14) (rhs!845 Formula!14)) (Literal!13 (id!4794 Int)) (Implies!19 (lhs!846 Formula!14) (rhs!846 Formula!14)) (Or!19 (lhs!847 Formula!14) (rhs!847 Formula!14)) (Not!19 (f!4101 Formula!14)))))

(declare-fun f!3774 () Formula!14)

(declare-fun isNNF!1 (Formula!14) Bool)

(assert (=> start!9242 (= res!30799 (isNNF!1 f!3774))))

(assert (=> start!9242 e!35512))

(assert (=> start!9242 true))

(declare-fun b!65459 () Bool)

(assert (=> b!65459 (= e!35512 (and (not (is-And!19 f!3774)) (not (is-Or!19 f!3774)) (or (not (is-Not!19 f!3774)) (not (is-Literal!13 (f!4101 f!3774)))) (not (is-Literal!13 f!3774))))))

(assert (= (and start!9242 res!30799) b!65459))

(declare-fun m!69449 () Bool)

(assert (=> start!9242 m!69449))

(push 1)

(assert (not start!9242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65474 () Bool)

(declare-fun e!35521 () Bool)

(declare-fun res!30812 () Bool)

(assert (=> b!65474 (= e!35521 res!30812)))

(assert (=> b!65474 true))

(declare-fun b!65475 () Bool)

(declare-fun e!35524 () Bool)

(declare-fun res!30814 () Bool)

(assert (=> b!65475 (= e!35524 res!30814)))

(assert (=> b!65475 true))

(assert (=> b!65475 true))

(declare-fun b!65476 () Bool)

(declare-fun lt!12573 () Bool)

(assert (=> b!65476 (= e!35524 (isNNF!1 (ite lt!12573 (rhs!845 f!3774) (rhs!847 f!3774))))))

(declare-fun b!65477 () Bool)

(declare-fun e!35523 () Bool)

(assert (=> b!65477 (= e!35523 (and (not (is-Implies!19 f!3774)) (or (and (is-Not!19 f!3774) (is-Literal!13 (f!4101 f!3774))) (not (is-Not!19 f!3774)))))))

(declare-fun b!65478 () Bool)

(declare-fun lt!12574 () Bool)

(assert (=> b!65478 (= e!35521 (isNNF!1 (ite lt!12574 (lhs!845 f!3774) (lhs!847 f!3774))))))

(declare-fun b!65479 () Bool)

(declare-fun e!35522 () Bool)

(assert (=> b!65479 (= e!35522 e!35524)))

(declare-fun c!14669 () Bool)

(declare-fun lt!12572 () Bool)

(assert (=> b!65479 (= c!14669 (or lt!12573 (and (not lt!12574) (is-Or!19 f!3774) lt!12572)))))

(declare-fun b!65480 () Bool)

(assert (=> b!65480 (= e!35523 e!35522)))

(declare-fun res!30813 () Bool)

(assert (=> b!65480 (=> (not res!30813) (not e!35522))))

(assert (=> b!65480 (= res!30813 lt!12572)))

(declare-fun d!53362 () Bool)

(declare-fun c!14667 () Bool)

(assert (=> d!53362 (= c!14667 (or lt!12574 (is-Or!19 f!3774)))))

(assert (=> d!53362 (= lt!12573 (and lt!12574 lt!12572))))

(assert (=> d!53362 (= lt!12572 e!35521)))

(declare-fun c!14668 () Bool)

(assert (=> d!53362 (= c!14668 (or lt!12574 (is-Or!19 f!3774)))))

(assert (=> d!53362 (= lt!12574 (is-And!19 f!3774))))

(assert (=> d!53362 (= (isNNF!1 f!3774) e!35523)))

(assert (= (and d!53362 c!14668) b!65478))

(assert (= (and d!53362 (not c!14668)) b!65474))

(assert (= (and b!65480 res!30813) b!65479))

(assert (= (and b!65479 c!14669) b!65476))

(assert (= (and b!65479 (not c!14669)) b!65475))

(assert (= (and d!53362 c!14667) b!65480))

(assert (= (and d!53362 (not c!14667)) b!65477))

(declare-fun m!69451 () Bool)

(assert (=> b!65476 m!69451))

(declare-fun m!69453 () Bool)

(assert (=> b!65478 m!69453))

(assert (=> start!9242 d!53362))

(push 1)

(assert (not b!65478))

(assert (not b!65476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

