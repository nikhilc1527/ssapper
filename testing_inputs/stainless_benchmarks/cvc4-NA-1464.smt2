; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10050 () Bool)

(assert start!10050)

(declare-fun res!35451 () Bool)

(declare-fun e!39241 () Bool)

(assert (=> start!10050 (=> (not res!35451) (not e!39241))))

(declare-datatypes () ((List!623 (Nil!581) (Cons!580 (head!990 Int) (tail!1011 List!623)))))

(declare-fun list!792 () List!623)

(declare-fun counter!18 () Int)

(assert (=> start!10050 (= res!35451 (and (is-Cons!580 list!792) (< counter!18 0)))))

(assert (=> start!10050 e!39241))

(assert (=> start!10050 true))

(declare-fun b!72605 () Bool)

(declare-fun res!35452 () Bool)

(assert (=> b!72605 (=> (not res!35452) (not e!39241))))

(declare-fun res!34923 () Bool)

(declare-fun balanced_nonEarly!0 (List!623 Int) Bool)

(assert (=> b!72605 (= res!35452 (= res!34923 (balanced_nonEarly!0 (tail!1011 list!792) counter!18)))))

(declare-fun b!72606 () Bool)

(declare-fun balanced!0 (List!623 Int) Bool)

(assert (=> b!72606 (= e!39241 (not (= res!34923 (balanced!0 list!792 counter!18))))))

(assert (= (and start!10050 res!35451) b!72605))

(assert (= (and b!72605 res!35452) b!72606))

(declare-fun m!72522 () Bool)

(assert (=> b!72605 m!72522))

(declare-fun m!72524 () Bool)

(assert (=> b!72606 m!72524))

(push 1)

(assert (not b!72606))

(assert (not b!72605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54643 () Bool)

(declare-fun res!35455 () Bool)

(declare-fun e!39246 () Bool)

(assert (=> d!54643 (=> (not res!35455) (not e!39246))))

(assert (=> d!54643 (= res!35455 (not (< counter!18 0)))))

(assert (=> d!54643 (= (balanced!0 list!792 counter!18) e!39246)))

(declare-fun b!72613 () Bool)

(declare-fun e!39247 () Bool)

(assert (=> b!72613 (= e!39246 e!39247)))

(declare-fun c!17495 () Bool)

(assert (=> b!72613 (= c!17495 (is-Cons!580 list!792))))

(declare-fun b!72614 () Bool)

(assert (=> b!72614 (= e!39247 (balanced!0 (tail!1011 list!792) (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18))))))

(declare-fun b!72615 () Bool)

(assert (=> b!72615 (= e!39247 (= counter!18 0))))

(assert (= (and d!54643 res!35455) b!72613))

(assert (= (and b!72613 c!17495) b!72614))

(assert (= (and b!72613 (not c!17495)) b!72615))

(declare-fun m!72526 () Bool)

(assert (=> b!72614 m!72526))

(assert (=> b!72606 d!54643))

(declare-fun b!72626 () Bool)

(declare-fun e!39252 () Bool)

(assert (=> b!72626 (= e!39252 (balanced_nonEarly!0 (tail!1011 (tail!1011 list!792)) counter!18))))

(declare-fun d!54645 () Bool)

(declare-fun lt!15400 () Bool)

(assert (=> d!54645 (= lt!15400 (balanced!0 (tail!1011 list!792) counter!18))))

(declare-fun e!39253 () Bool)

(assert (=> d!54645 (= lt!15400 e!39253)))

(declare-fun c!17502 () Bool)

(assert (=> d!54645 (= c!17502 (is-Cons!580 (tail!1011 list!792)))))

(assert (=> d!54645 (= (balanced_nonEarly!0 (tail!1011 list!792) counter!18) lt!15400)))

(declare-fun b!72625 () Bool)

(assert (=> b!72625 (= e!39253 (= counter!18 0))))

(declare-fun b!72624 () Bool)

(assert (=> b!72624 (= e!39253 e!39252)))

(declare-fun c!17501 () Bool)

(assert (=> b!72624 (= c!17501 (< counter!18 0))))

(declare-fun b!72627 () Bool)

(assert (=> b!72627 (= e!39252 (balanced_nonEarly!0 (tail!1011 (tail!1011 list!792)) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))))))

(assert (= (and b!72624 c!17501) b!72626))

(assert (= (and b!72624 (not c!17501)) b!72627))

(assert (= (and d!54645 c!17502) b!72624))

(assert (= (and d!54645 (not c!17502)) b!72625))

(declare-fun m!72528 () Bool)

(assert (=> b!72626 m!72528))

(declare-fun m!72530 () Bool)

(assert (=> d!54645 m!72530))

(declare-fun m!72532 () Bool)

(assert (=> b!72627 m!72532))

(assert (=> b!72605 d!54645))

(push 1)

(assert (not b!72627))

(assert (not d!54645))

(assert (not b!72626))

(assert (not b!72614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!72630 () Bool)

(declare-fun e!39254 () Bool)

(assert (=> b!72630 (= e!39254 (balanced_nonEarly!0 (tail!1011 (tail!1011 (tail!1011 list!792))) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))))))

(declare-fun d!54647 () Bool)

(declare-fun lt!15401 () Bool)

(assert (=> d!54647 (= lt!15401 (balanced!0 (tail!1011 (tail!1011 list!792)) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))))))

(declare-fun e!39255 () Bool)

(assert (=> d!54647 (= lt!15401 e!39255)))

(declare-fun c!17504 () Bool)

(assert (=> d!54647 (= c!17504 (is-Cons!580 (tail!1011 (tail!1011 list!792))))))

(assert (=> d!54647 (= (balanced_nonEarly!0 (tail!1011 (tail!1011 list!792)) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))) lt!15401)))

(declare-fun b!72629 () Bool)

(assert (=> b!72629 (= e!39255 (= (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18)) 0))))

(declare-fun b!72628 () Bool)

(assert (=> b!72628 (= e!39255 e!39254)))

(declare-fun c!17503 () Bool)

(assert (=> b!72628 (= c!17503 (< (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18)) 0))))

(declare-fun b!72631 () Bool)

(assert (=> b!72631 (= e!39254 (balanced_nonEarly!0 (tail!1011 (tail!1011 (tail!1011 list!792))) (ite (= (head!990 (tail!1011 (tail!1011 list!792))) 1) (+ (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18)) 1) (ite (= (head!990 (tail!1011 (tail!1011 list!792))) 2) (- (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18)) 1) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))))))))

(assert (= (and b!72628 c!17503) b!72630))

(assert (= (and b!72628 (not c!17503)) b!72631))

(assert (= (and d!54647 c!17504) b!72628))

(assert (= (and d!54647 (not c!17504)) b!72629))

(declare-fun m!72534 () Bool)

(assert (=> b!72630 m!72534))

(declare-fun m!72536 () Bool)

(assert (=> d!54647 m!72536))

(declare-fun m!72538 () Bool)

(assert (=> b!72631 m!72538))

(assert (=> b!72627 d!54647))

(declare-fun d!54649 () Bool)

(declare-fun res!35457 () Bool)

(declare-fun e!39256 () Bool)

(assert (=> d!54649 (=> (not res!35457) (not e!39256))))

(assert (=> d!54649 (= res!35457 (not (< counter!18 0)))))

(assert (=> d!54649 (= (balanced!0 (tail!1011 list!792) counter!18) e!39256)))

(declare-fun b!72632 () Bool)

(declare-fun e!39257 () Bool)

(assert (=> b!72632 (= e!39256 e!39257)))

(declare-fun c!17505 () Bool)

(assert (=> b!72632 (= c!17505 (is-Cons!580 (tail!1011 list!792)))))

(declare-fun b!72633 () Bool)

(assert (=> b!72633 (= e!39257 (balanced!0 (tail!1011 (tail!1011 list!792)) (ite (= (head!990 (tail!1011 list!792)) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- counter!18 1) counter!18))))))

(declare-fun b!72634 () Bool)

(assert (=> b!72634 (= e!39257 (= counter!18 0))))

(assert (= (and d!54649 res!35457) b!72632))

(assert (= (and b!72632 c!17505) b!72633))

(assert (= (and b!72632 (not c!17505)) b!72634))

(assert (=> b!72633 m!72536))

(assert (=> d!54645 d!54649))

(declare-fun b!72637 () Bool)

(declare-fun e!39258 () Bool)

(assert (=> b!72637 (= e!39258 (balanced_nonEarly!0 (tail!1011 (tail!1011 (tail!1011 list!792))) counter!18))))

(declare-fun d!54651 () Bool)

(declare-fun lt!15402 () Bool)

(assert (=> d!54651 (= lt!15402 (balanced!0 (tail!1011 (tail!1011 list!792)) counter!18))))

(declare-fun e!39259 () Bool)

(assert (=> d!54651 (= lt!15402 e!39259)))

(declare-fun c!17507 () Bool)

(assert (=> d!54651 (= c!17507 (is-Cons!580 (tail!1011 (tail!1011 list!792))))))

(assert (=> d!54651 (= (balanced_nonEarly!0 (tail!1011 (tail!1011 list!792)) counter!18) lt!15402)))

(declare-fun b!72636 () Bool)

(assert (=> b!72636 (= e!39259 (= counter!18 0))))

(declare-fun b!72635 () Bool)

(assert (=> b!72635 (= e!39259 e!39258)))

(declare-fun c!17506 () Bool)

(assert (=> b!72635 (= c!17506 (< counter!18 0))))

(declare-fun b!72638 () Bool)

(assert (=> b!72638 (= e!39258 (balanced_nonEarly!0 (tail!1011 (tail!1011 (tail!1011 list!792))) (ite (= (head!990 (tail!1011 (tail!1011 list!792))) 1) (+ counter!18 1) (ite (= (head!990 (tail!1011 (tail!1011 list!792))) 2) (- counter!18 1) counter!18))))))

(assert (= (and b!72635 c!17506) b!72637))

(assert (= (and b!72635 (not c!17506)) b!72638))

(assert (= (and d!54651 c!17507) b!72635))

(assert (= (and d!54651 (not c!17507)) b!72636))

(declare-fun m!72540 () Bool)

(assert (=> b!72637 m!72540))

(declare-fun m!72542 () Bool)

(assert (=> d!54651 m!72542))

(declare-fun m!72544 () Bool)

(assert (=> b!72638 m!72544))

(assert (=> b!72626 d!54651))

(declare-fun d!54653 () Bool)

(declare-fun res!35458 () Bool)

(declare-fun e!39260 () Bool)

(assert (=> d!54653 (=> (not res!35458) (not e!39260))))

(assert (=> d!54653 (= res!35458 (not (< (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18)) 0)))))

(assert (=> d!54653 (= (balanced!0 (tail!1011 list!792) (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18))) e!39260)))

(declare-fun b!72639 () Bool)

(declare-fun e!39261 () Bool)

(assert (=> b!72639 (= e!39260 e!39261)))

(declare-fun c!17508 () Bool)

(assert (=> b!72639 (= c!17508 (is-Cons!580 (tail!1011 list!792)))))

(declare-fun b!72640 () Bool)

(assert (=> b!72640 (= e!39261 (balanced!0 (tail!1011 (tail!1011 list!792)) (ite (= (head!990 (tail!1011 list!792)) 1) (+ (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18)) 1) (ite (= (head!990 (tail!1011 list!792)) 2) (- (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18)) 1) (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18))))))))

(declare-fun b!72641 () Bool)

(assert (=> b!72641 (= e!39261 (= (ite (= (head!990 list!792) 1) (+ counter!18 1) (ite (= (head!990 list!792) 2) (- counter!18 1) counter!18)) 0))))

(assert (= (and d!54653 res!35458) b!72639))

(assert (= (and b!72639 c!17508) b!72640))

(assert (= (and b!72639 (not c!17508)) b!72641))

(declare-fun m!72546 () Bool)

(assert (=> b!72640 m!72546))

(assert (=> b!72614 d!54653))

(push 1)

(assert (not b!72638))

(assert (not b!72630))

(assert (not b!72637))

(assert (not d!54647))

(assert (not b!72633))

(assert (not b!72631))

(assert (not d!54651))

(assert (not b!72640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

