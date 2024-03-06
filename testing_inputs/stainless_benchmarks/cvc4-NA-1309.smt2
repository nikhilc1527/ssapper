; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9230 () Bool)

(assert start!9230)

(declare-fun res!30729 () Bool)

(declare-fun e!35455 () Bool)

(assert (=> start!9230 (=> (not res!30729) (not e!35455))))

(declare-datatypes () ((Formula!11 (And!16 (lhs!836 Formula!11) (rhs!836 Formula!11)) (Literal!10 (id!4791 Int)) (Implies!16 (lhs!837 Formula!11) (rhs!837 Formula!11)) (Or!16 (lhs!838 Formula!11) (rhs!838 Formula!11)) (Not!16 (f!4095 Formula!11)))))

(declare-fun f!3774 () Formula!11)

(declare-fun isNNF!1 (Formula!11) Bool)

(assert (=> start!9230 (= res!30729 (isNNF!1 f!3774))))

(assert (=> start!9230 e!35455))

(assert (=> start!9230 true))

(declare-fun b!65359 () Bool)

(declare-fun res!30730 () Bool)

(assert (=> b!65359 (=> (not res!30730) (not e!35455))))

(declare-fun f!3780 () Formula!11)

(assert (=> b!65359 (= res!30730 (and (is-And!16 f!3774) (= f!3780 (rhs!836 f!3774))))))

(declare-fun b!65360 () Bool)

(assert (=> b!65360 (= e!35455 (not (isNNF!1 f!3780)))))

(assert (= (and start!9230 res!30729) b!65359))

(assert (= (and b!65359 res!30730) b!65360))

(declare-fun m!69413 () Bool)

(assert (=> start!9230 m!69413))

(declare-fun m!69415 () Bool)

(assert (=> b!65360 m!69415))

(push 1)

(assert (not b!65360))

(assert (not start!9230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65375 () Bool)

(declare-fun e!35464 () Bool)

(declare-fun lt!12538 () Bool)

(assert (=> b!65375 (= e!35464 (isNNF!1 (ite lt!12538 (lhs!836 f!3780) (lhs!838 f!3780))))))

(declare-fun b!65376 () Bool)

(declare-fun e!35465 () Bool)

(declare-fun e!35466 () Bool)

(assert (=> b!65376 (= e!35465 e!35466)))

(declare-fun c!14633 () Bool)

(declare-fun lt!12536 () Bool)

(declare-fun lt!12537 () Bool)

(assert (=> b!65376 (= c!14633 (or lt!12536 (and (not lt!12538) (is-Or!16 f!3780) lt!12537)))))

(declare-fun b!65377 () Bool)

(declare-fun res!30744 () Bool)

(assert (=> b!65377 (= e!35466 res!30744)))

(assert (=> b!65377 true))

(assert (=> b!65377 true))

(declare-fun b!65378 () Bool)

(assert (=> b!65378 (= e!35466 (isNNF!1 (ite lt!12536 (rhs!836 f!3780) (rhs!838 f!3780))))))

(declare-fun b!65379 () Bool)

(declare-fun e!35467 () Bool)

(assert (=> b!65379 (= e!35467 e!35465)))

(declare-fun res!30745 () Bool)

(assert (=> b!65379 (=> (not res!30745) (not e!35465))))

(assert (=> b!65379 (= res!30745 lt!12537)))

(declare-fun b!65380 () Bool)

(assert (=> b!65380 (= e!35467 (and (not (is-Implies!16 f!3780)) (or (and (is-Not!16 f!3780) (is-Literal!10 (f!4095 f!3780))) (not (is-Not!16 f!3780)))))))

(declare-fun d!53350 () Bool)

(declare-fun c!14632 () Bool)

(assert (=> d!53350 (= c!14632 (or lt!12538 (is-Or!16 f!3780)))))

(assert (=> d!53350 (= lt!12536 (and lt!12538 lt!12537))))

(assert (=> d!53350 (= lt!12537 e!35464)))

(declare-fun c!14631 () Bool)

(assert (=> d!53350 (= c!14631 (or lt!12538 (is-Or!16 f!3780)))))

(assert (=> d!53350 (= lt!12538 (is-And!16 f!3780))))

(assert (=> d!53350 (= (isNNF!1 f!3780) e!35467)))

(declare-fun b!65381 () Bool)

(declare-fun res!30743 () Bool)

(assert (=> b!65381 (= e!35464 res!30743)))

(assert (=> b!65381 true))

(assert (= (and d!53350 c!14631) b!65375))

(assert (= (and d!53350 (not c!14631)) b!65381))

(assert (= (and b!65379 res!30745) b!65376))

(assert (= (and b!65376 c!14633) b!65378))

(assert (= (and b!65376 (not c!14633)) b!65377))

(assert (= (and d!53350 c!14632) b!65379))

(assert (= (and d!53350 (not c!14632)) b!65380))

(declare-fun m!69417 () Bool)

(assert (=> b!65375 m!69417))

(declare-fun m!69419 () Bool)

(assert (=> b!65378 m!69419))

(assert (=> b!65360 d!53350))

(declare-fun b!65382 () Bool)

(declare-fun e!35468 () Bool)

(declare-fun lt!12541 () Bool)

(assert (=> b!65382 (= e!35468 (isNNF!1 (ite lt!12541 (lhs!836 f!3774) (lhs!838 f!3774))))))

(declare-fun b!65383 () Bool)

(declare-fun e!35469 () Bool)

(declare-fun e!35470 () Bool)

(assert (=> b!65383 (= e!35469 e!35470)))

(declare-fun lt!12540 () Bool)

(declare-fun c!14636 () Bool)

(declare-fun lt!12539 () Bool)

(assert (=> b!65383 (= c!14636 (or lt!12539 (and (not lt!12541) (is-Or!16 f!3774) lt!12540)))))

(declare-fun b!65384 () Bool)

(declare-fun res!30747 () Bool)

(assert (=> b!65384 (= e!35470 res!30747)))

(assert (=> b!65384 true))

(assert (=> b!65384 true))

(declare-fun b!65385 () Bool)

(assert (=> b!65385 (= e!35470 (isNNF!1 (ite lt!12539 (rhs!836 f!3774) (rhs!838 f!3774))))))

(declare-fun b!65386 () Bool)

(declare-fun e!35471 () Bool)

(assert (=> b!65386 (= e!35471 e!35469)))

(declare-fun res!30748 () Bool)

(assert (=> b!65386 (=> (not res!30748) (not e!35469))))

(assert (=> b!65386 (= res!30748 lt!12540)))

(declare-fun b!65387 () Bool)

(assert (=> b!65387 (= e!35471 (and (not (is-Implies!16 f!3774)) (or (and (is-Not!16 f!3774) (is-Literal!10 (f!4095 f!3774))) (not (is-Not!16 f!3774)))))))

(declare-fun d!53352 () Bool)

(declare-fun c!14635 () Bool)

(assert (=> d!53352 (= c!14635 (or lt!12541 (is-Or!16 f!3774)))))

(assert (=> d!53352 (= lt!12539 (and lt!12541 lt!12540))))

(assert (=> d!53352 (= lt!12540 e!35468)))

(declare-fun c!14634 () Bool)

(assert (=> d!53352 (= c!14634 (or lt!12541 (is-Or!16 f!3774)))))

(assert (=> d!53352 (= lt!12541 (is-And!16 f!3774))))

(assert (=> d!53352 (= (isNNF!1 f!3774) e!35471)))

(declare-fun b!65388 () Bool)

(declare-fun res!30746 () Bool)

(assert (=> b!65388 (= e!35468 res!30746)))

(assert (=> b!65388 true))

(assert (= (and d!53352 c!14634) b!65382))

(assert (= (and d!53352 (not c!14634)) b!65388))

(assert (= (and b!65386 res!30748) b!65383))

(assert (= (and b!65383 c!14636) b!65385))

(assert (= (and b!65383 (not c!14636)) b!65384))

(assert (= (and d!53352 c!14635) b!65386))

(assert (= (and d!53352 (not c!14635)) b!65387))

(declare-fun m!69421 () Bool)

(assert (=> b!65382 m!69421))

(declare-fun m!69423 () Bool)

(assert (=> b!65385 m!69423))

(assert (=> start!9230 d!53352))

(push 1)

(assert (not b!65382))

(assert (not b!65378))

(assert (not b!65375))

(assert (not b!65385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

