; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9234 () Bool)

(assert start!9234)

(declare-fun res!30753 () Bool)

(declare-fun e!35474 () Bool)

(assert (=> start!9234 (=> (not res!30753) (not e!35474))))

(declare-datatypes () ((Formula!12 (And!17 (lhs!839 Formula!12) (rhs!839 Formula!12)) (Literal!11 (id!4792 Int)) (Implies!17 (lhs!840 Formula!12) (rhs!840 Formula!12)) (Or!17 (lhs!841 Formula!12) (rhs!841 Formula!12)) (Not!17 (f!4097 Formula!12)))))

(declare-fun f!3774 () Formula!12)

(declare-fun isNNF!1 (Formula!12) Bool)

(assert (=> start!9234 (= res!30753 (isNNF!1 f!3774))))

(assert (=> start!9234 e!35474))

(assert (=> start!9234 true))

(declare-fun b!65393 () Bool)

(declare-fun res!30754 () Bool)

(assert (=> b!65393 (=> (not res!30754) (not e!35474))))

(declare-fun f!3782 () Formula!12)

(assert (=> b!65393 (= res!30754 (and (not (is-And!17 f!3774)) (is-Or!17 f!3774) (= f!3782 (lhs!841 f!3774))))))

(declare-fun b!65394 () Bool)

(assert (=> b!65394 (= e!35474 (not (isNNF!1 f!3782)))))

(assert (= (and start!9234 res!30753) b!65393))

(assert (= (and b!65393 res!30754) b!65394))

(declare-fun m!69425 () Bool)

(assert (=> start!9234 m!69425))

(declare-fun m!69427 () Bool)

(assert (=> b!65394 m!69427))

(push 1)

(assert (not b!65394))

(assert (not start!9234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65409 () Bool)

(declare-fun e!35484 () Bool)

(declare-fun e!35483 () Bool)

(assert (=> b!65409 (= e!35484 e!35483)))

(declare-fun res!30767 () Bool)

(assert (=> b!65409 (=> (not res!30767) (not e!35483))))

(declare-fun lt!12548 () Bool)

(assert (=> b!65409 (= res!30767 lt!12548)))

(declare-fun b!65410 () Bool)

(assert (=> b!65410 (= e!35484 (and (not (is-Implies!17 f!3782)) (or (and (is-Not!17 f!3782) (is-Literal!11 (f!4097 f!3782))) (not (is-Not!17 f!3782)))))))

(declare-fun b!65411 () Bool)

(declare-fun e!35486 () Bool)

(declare-fun lt!12550 () Bool)

(assert (=> b!65411 (= e!35486 (isNNF!1 (ite lt!12550 (rhs!839 f!3782) (rhs!841 f!3782))))))

(declare-fun b!65412 () Bool)

(declare-fun res!30768 () Bool)

(assert (=> b!65412 (= e!35486 res!30768)))

(assert (=> b!65412 true))

(assert (=> b!65412 true))

(declare-fun d!53354 () Bool)

(declare-fun c!14645 () Bool)

(declare-fun lt!12549 () Bool)

(assert (=> d!53354 (= c!14645 (or lt!12549 (is-Or!17 f!3782)))))

(assert (=> d!53354 (= lt!12550 (and lt!12549 lt!12548))))

(declare-fun e!35485 () Bool)

(assert (=> d!53354 (= lt!12548 e!35485)))

(declare-fun c!14644 () Bool)

(assert (=> d!53354 (= c!14644 (or lt!12549 (is-Or!17 f!3782)))))

(assert (=> d!53354 (= lt!12549 (is-And!17 f!3782))))

(assert (=> d!53354 (= (isNNF!1 f!3782) e!35484)))

(declare-fun b!65413 () Bool)

(declare-fun res!30769 () Bool)

(assert (=> b!65413 (= e!35485 res!30769)))

(assert (=> b!65413 true))

(declare-fun b!65414 () Bool)

(assert (=> b!65414 (= e!35483 e!35486)))

(declare-fun c!14643 () Bool)

(assert (=> b!65414 (= c!14643 (or lt!12550 (and (not lt!12549) (is-Or!17 f!3782) lt!12548)))))

(declare-fun b!65415 () Bool)

(assert (=> b!65415 (= e!35485 (isNNF!1 (ite lt!12549 (lhs!839 f!3782) (lhs!841 f!3782))))))

(assert (= (and d!53354 c!14644) b!65415))

(assert (= (and d!53354 (not c!14644)) b!65413))

(assert (= (and b!65409 res!30767) b!65414))

(assert (= (and b!65414 c!14643) b!65411))

(assert (= (and b!65414 (not c!14643)) b!65412))

(assert (= (and d!53354 c!14645) b!65409))

(assert (= (and d!53354 (not c!14645)) b!65410))

(declare-fun m!69429 () Bool)

(assert (=> b!65411 m!69429))

(declare-fun m!69431 () Bool)

(assert (=> b!65415 m!69431))

(assert (=> b!65394 d!53354))

(declare-fun b!65416 () Bool)

(declare-fun e!35488 () Bool)

(declare-fun e!35487 () Bool)

(assert (=> b!65416 (= e!35488 e!35487)))

(declare-fun res!30770 () Bool)

(assert (=> b!65416 (=> (not res!30770) (not e!35487))))

(declare-fun lt!12551 () Bool)

(assert (=> b!65416 (= res!30770 lt!12551)))

(declare-fun b!65417 () Bool)

(assert (=> b!65417 (= e!35488 (and (not (is-Implies!17 f!3774)) (or (and (is-Not!17 f!3774) (is-Literal!11 (f!4097 f!3774))) (not (is-Not!17 f!3774)))))))

(declare-fun b!65418 () Bool)

(declare-fun e!35490 () Bool)

(declare-fun lt!12553 () Bool)

(assert (=> b!65418 (= e!35490 (isNNF!1 (ite lt!12553 (rhs!839 f!3774) (rhs!841 f!3774))))))

(declare-fun b!65419 () Bool)

(declare-fun res!30771 () Bool)

(assert (=> b!65419 (= e!35490 res!30771)))

(assert (=> b!65419 true))

(assert (=> b!65419 true))

(declare-fun d!53356 () Bool)

(declare-fun c!14648 () Bool)

(declare-fun lt!12552 () Bool)

(assert (=> d!53356 (= c!14648 (or lt!12552 (is-Or!17 f!3774)))))

(assert (=> d!53356 (= lt!12553 (and lt!12552 lt!12551))))

(declare-fun e!35489 () Bool)

(assert (=> d!53356 (= lt!12551 e!35489)))

(declare-fun c!14647 () Bool)

(assert (=> d!53356 (= c!14647 (or lt!12552 (is-Or!17 f!3774)))))

(assert (=> d!53356 (= lt!12552 (is-And!17 f!3774))))

(assert (=> d!53356 (= (isNNF!1 f!3774) e!35488)))

(declare-fun b!65420 () Bool)

(declare-fun res!30772 () Bool)

(assert (=> b!65420 (= e!35489 res!30772)))

(assert (=> b!65420 true))

(declare-fun b!65421 () Bool)

(assert (=> b!65421 (= e!35487 e!35490)))

(declare-fun c!14646 () Bool)

(assert (=> b!65421 (= c!14646 (or lt!12553 (and (not lt!12552) (is-Or!17 f!3774) lt!12551)))))

(declare-fun b!65422 () Bool)

(assert (=> b!65422 (= e!35489 (isNNF!1 (ite lt!12552 (lhs!839 f!3774) (lhs!841 f!3774))))))

(assert (= (and d!53356 c!14647) b!65422))

(assert (= (and d!53356 (not c!14647)) b!65420))

(assert (= (and b!65416 res!30770) b!65421))

(assert (= (and b!65421 c!14646) b!65418))

(assert (= (and b!65421 (not c!14646)) b!65419))

(assert (= (and d!53356 c!14648) b!65416))

(assert (= (and d!53356 (not c!14648)) b!65417))

(declare-fun m!69433 () Bool)

(assert (=> b!65418 m!69433))

(declare-fun m!69435 () Bool)

(assert (=> b!65422 m!69435))

(assert (=> start!9234 d!53356))

(push 1)

(assert (not b!65415))

(assert (not b!65418))

(assert (not b!65411))

(assert (not b!65422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

