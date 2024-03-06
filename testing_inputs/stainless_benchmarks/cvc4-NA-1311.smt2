; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9238 () Bool)

(assert start!9238)

(declare-fun res!30777 () Bool)

(declare-fun e!35493 () Bool)

(assert (=> start!9238 (=> (not res!30777) (not e!35493))))

(declare-datatypes () ((Formula!13 (And!18 (lhs!842 Formula!13) (rhs!842 Formula!13)) (Literal!12 (id!4793 Int)) (Implies!18 (lhs!843 Formula!13) (rhs!843 Formula!13)) (Or!18 (lhs!844 Formula!13) (rhs!844 Formula!13)) (Not!18 (f!4099 Formula!13)))))

(declare-fun f!3774 () Formula!13)

(declare-fun isNNF!1 (Formula!13) Bool)

(assert (=> start!9238 (= res!30777 (isNNF!1 f!3774))))

(assert (=> start!9238 e!35493))

(assert (=> start!9238 true))

(declare-fun b!65427 () Bool)

(declare-fun res!30778 () Bool)

(assert (=> b!65427 (=> (not res!30778) (not e!35493))))

(declare-fun f!3784 () Formula!13)

(assert (=> b!65427 (= res!30778 (and (not (is-And!18 f!3774)) (is-Or!18 f!3774) (= f!3784 (rhs!844 f!3774))))))

(declare-fun b!65428 () Bool)

(assert (=> b!65428 (= e!35493 (not (isNNF!1 f!3784)))))

(assert (= (and start!9238 res!30777) b!65427))

(assert (= (and b!65427 res!30778) b!65428))

(declare-fun m!69437 () Bool)

(assert (=> start!9238 m!69437))

(declare-fun m!69439 () Bool)

(assert (=> b!65428 m!69439))

(push 1)

(assert (not start!9238))

(assert (not b!65428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65443 () Bool)

(declare-fun e!35503 () Bool)

(assert (=> b!65443 (= e!35503 (and (not (is-Implies!18 f!3774)) (or (and (is-Not!18 f!3774) (is-Literal!12 (f!4099 f!3774))) (not (is-Not!18 f!3774)))))))

(declare-fun b!65444 () Bool)

(declare-fun e!35504 () Bool)

(declare-fun res!30792 () Bool)

(assert (=> b!65444 (= e!35504 res!30792)))

(assert (=> b!65444 true))

(assert (=> b!65444 true))

(declare-fun b!65445 () Bool)

(declare-fun lt!12562 () Bool)

(assert (=> b!65445 (= e!35504 (isNNF!1 (ite lt!12562 (rhs!842 f!3774) (rhs!844 f!3774))))))

(declare-fun b!65446 () Bool)

(declare-fun e!35505 () Bool)

(assert (=> b!65446 (= e!35503 e!35505)))

(declare-fun res!30791 () Bool)

(assert (=> b!65446 (=> (not res!30791) (not e!35505))))

(declare-fun lt!12561 () Bool)

(assert (=> b!65446 (= res!30791 lt!12561)))

(declare-fun b!65447 () Bool)

(assert (=> b!65447 (= e!35505 e!35504)))

(declare-fun lt!12560 () Bool)

(declare-fun c!14655 () Bool)

(assert (=> b!65447 (= c!14655 (or lt!12562 (and (not lt!12560) (is-Or!18 f!3774) lt!12561)))))

(declare-fun b!65448 () Bool)

(declare-fun e!35502 () Bool)

(declare-fun res!30793 () Bool)

(assert (=> b!65448 (= e!35502 res!30793)))

(assert (=> b!65448 true))

(declare-fun b!65449 () Bool)

(assert (=> b!65449 (= e!35502 (isNNF!1 (ite lt!12560 (lhs!842 f!3774) (lhs!844 f!3774))))))

(declare-fun d!53358 () Bool)

(declare-fun c!14656 () Bool)

(assert (=> d!53358 (= c!14656 (or lt!12560 (is-Or!18 f!3774)))))

(assert (=> d!53358 (= lt!12562 (and lt!12560 lt!12561))))

(assert (=> d!53358 (= lt!12561 e!35502)))

(declare-fun c!14657 () Bool)

(assert (=> d!53358 (= c!14657 (or lt!12560 (is-Or!18 f!3774)))))

(assert (=> d!53358 (= lt!12560 (is-And!18 f!3774))))

(assert (=> d!53358 (= (isNNF!1 f!3774) e!35503)))

(assert (= (and d!53358 c!14657) b!65449))

(assert (= (and d!53358 (not c!14657)) b!65448))

(assert (= (and b!65446 res!30791) b!65447))

(assert (= (and b!65447 c!14655) b!65445))

(assert (= (and b!65447 (not c!14655)) b!65444))

(assert (= (and d!53358 c!14656) b!65446))

(assert (= (and d!53358 (not c!14656)) b!65443))

(declare-fun m!69441 () Bool)

(assert (=> b!65445 m!69441))

(declare-fun m!69443 () Bool)

(assert (=> b!65449 m!69443))

(assert (=> start!9238 d!53358))

(declare-fun b!65450 () Bool)

(declare-fun e!35507 () Bool)

(assert (=> b!65450 (= e!35507 (and (not (is-Implies!18 f!3784)) (or (and (is-Not!18 f!3784) (is-Literal!12 (f!4099 f!3784))) (not (is-Not!18 f!3784)))))))

(declare-fun b!65451 () Bool)

(declare-fun e!35508 () Bool)

(declare-fun res!30795 () Bool)

(assert (=> b!65451 (= e!35508 res!30795)))

(assert (=> b!65451 true))

(assert (=> b!65451 true))

(declare-fun b!65452 () Bool)

(declare-fun lt!12565 () Bool)

(assert (=> b!65452 (= e!35508 (isNNF!1 (ite lt!12565 (rhs!842 f!3784) (rhs!844 f!3784))))))

(declare-fun b!65453 () Bool)

(declare-fun e!35509 () Bool)

(assert (=> b!65453 (= e!35507 e!35509)))

(declare-fun res!30794 () Bool)

(assert (=> b!65453 (=> (not res!30794) (not e!35509))))

(declare-fun lt!12564 () Bool)

(assert (=> b!65453 (= res!30794 lt!12564)))

(declare-fun b!65454 () Bool)

(assert (=> b!65454 (= e!35509 e!35508)))

(declare-fun lt!12563 () Bool)

(declare-fun c!14658 () Bool)

(assert (=> b!65454 (= c!14658 (or lt!12565 (and (not lt!12563) (is-Or!18 f!3784) lt!12564)))))

(declare-fun b!65455 () Bool)

(declare-fun e!35506 () Bool)

(declare-fun res!30796 () Bool)

(assert (=> b!65455 (= e!35506 res!30796)))

(assert (=> b!65455 true))

(declare-fun b!65456 () Bool)

(assert (=> b!65456 (= e!35506 (isNNF!1 (ite lt!12563 (lhs!842 f!3784) (lhs!844 f!3784))))))

(declare-fun d!53360 () Bool)

(declare-fun c!14659 () Bool)

(assert (=> d!53360 (= c!14659 (or lt!12563 (is-Or!18 f!3784)))))

(assert (=> d!53360 (= lt!12565 (and lt!12563 lt!12564))))

(assert (=> d!53360 (= lt!12564 e!35506)))

(declare-fun c!14660 () Bool)

(assert (=> d!53360 (= c!14660 (or lt!12563 (is-Or!18 f!3784)))))

(assert (=> d!53360 (= lt!12563 (is-And!18 f!3784))))

(assert (=> d!53360 (= (isNNF!1 f!3784) e!35507)))

(assert (= (and d!53360 c!14660) b!65456))

(assert (= (and d!53360 (not c!14660)) b!65455))

(assert (= (and b!65453 res!30794) b!65454))

(assert (= (and b!65454 c!14658) b!65452))

(assert (= (and b!65454 (not c!14658)) b!65451))

(assert (= (and d!53360 c!14659) b!65453))

(assert (= (and d!53360 (not c!14659)) b!65450))

(declare-fun m!69445 () Bool)

(assert (=> b!65452 m!69445))

(declare-fun m!69447 () Bool)

(assert (=> b!65456 m!69447))

(assert (=> b!65428 d!53360))

(push 1)

(assert (not b!65449))

(assert (not b!65452))

(assert (not b!65456))

(assert (not b!65445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

