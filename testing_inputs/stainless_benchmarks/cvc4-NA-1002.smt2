; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7448 () Bool)

(assert start!7448)

(declare-fun b!53648 () Bool)

(declare-fun res!24435 () Bool)

(declare-fun e!27978 () Bool)

(assert (=> b!53648 (=> (not res!24435) (not e!27978))))

(declare-fun e!27864 () (_ BitVec 32))

(declare-datatypes () ((List!443 (Nil!423) (Cons!422 (head!682 (_ BitVec 32)) (tail!708 List!443)))))

(declare-fun l!1079 () List!443)

(declare-fun res!24313 () List!443)

(declare-fun sortedIns!1 ((_ BitVec 32) List!443) List!443)

(assert (=> b!53648 (= res!24435 (= res!24313 (Cons!422 (head!682 l!1079) (sortedIns!1 e!27864 (tail!708 l!1079)))))))

(declare-fun b!53649 () Bool)

(declare-fun res!24436 () Bool)

(assert (=> b!53649 (=> (not res!24436) (not e!27978))))

(assert (=> b!53649 (= res!24436 (and (not (is-Nil!423 l!1079)) (bvsle (head!682 l!1079) e!27864)))))

(declare-fun res!24433 () Bool)

(assert (=> start!7448 (=> (not res!24433) (not e!27978))))

(declare-fun isSorted!5 (List!443) Bool)

(assert (=> start!7448 (= res!24433 (isSorted!5 l!1079))))

(assert (=> start!7448 e!27978))

(assert (=> start!7448 true))

(declare-fun b!53650 () Bool)

(declare-fun e!27977 () Bool)

(assert (=> b!53650 (= e!27978 (not e!27977))))

(declare-fun res!24437 () Bool)

(assert (=> b!53650 (=> (not res!24437) (not e!27977))))

(declare-fun contents!0 (List!443) (Set (_ BitVec 32)))

(assert (=> b!53650 (= res!24437 (= (contents!0 res!24313) (union (contents!0 l!1079) (insert e!27864 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> b!53650 (is-Cons!422 res!24313)))

(declare-fun b!53651 () Bool)

(declare-fun size!18 (List!443) Int)

(assert (=> b!53651 (= e!27977 (= (size!18 res!24313) (+ (size!18 l!1079) 1)))))

(declare-fun b!53652 () Bool)

(declare-fun res!24434 () Bool)

(assert (=> b!53652 (=> (not res!24434) (not e!27977))))

(assert (=> b!53652 (= res!24434 (isSorted!5 res!24313))))

(assert (= (and start!7448 res!24433) b!53649))

(assert (= (and b!53649 res!24436) b!53648))

(assert (= (and b!53648 res!24435) b!53650))

(assert (= (and b!53650 res!24437) b!53652))

(assert (= (and b!53652 res!24434) b!53651))

(declare-fun m!57516 () Bool)

(assert (=> b!53650 m!57516))

(declare-fun m!57518 () Bool)

(assert (=> b!53650 m!57518))

(declare-fun m!57520 () Bool)

(assert (=> b!53650 m!57520))

(declare-fun m!57522 () Bool)

(assert (=> b!53652 m!57522))

(declare-fun m!57524 () Bool)

(assert (=> b!53648 m!57524))

(declare-fun m!57526 () Bool)

(assert (=> start!7448 m!57526))

(declare-fun m!57528 () Bool)

(assert (=> b!53651 m!57528))

(declare-fun m!57530 () Bool)

(assert (=> b!53651 m!57530))

(push 1)

(assert (not b!53652))

(assert (not b!53650))

(assert (not start!7448))

(assert (not b!53651))

(assert (not b!53648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44727 () Bool)

(declare-fun lt!9344 () Int)

(assert (=> d!44727 (>= lt!9344 0)))

(declare-fun e!27981 () Int)

(assert (=> d!44727 (= lt!9344 e!27981)))

(declare-fun c!11639 () Bool)

(assert (=> d!44727 (= c!11639 (is-Nil!423 res!24313))))

(assert (=> d!44727 (= (size!18 res!24313) lt!9344)))

(declare-fun b!53657 () Bool)

(assert (=> b!53657 (= e!27981 0)))

(declare-fun b!53658 () Bool)

(assert (=> b!53658 (= e!27981 (+ 1 (size!18 (tail!708 res!24313))))))

(assert (= (and d!44727 c!11639) b!53657))

(assert (= (and d!44727 (not c!11639)) b!53658))

(declare-fun m!57532 () Bool)

(assert (=> b!53658 m!57532))

(assert (=> b!53651 d!44727))

(declare-fun d!44729 () Bool)

(declare-fun lt!9345 () Int)

(assert (=> d!44729 (>= lt!9345 0)))

(declare-fun e!27982 () Int)

(assert (=> d!44729 (= lt!9345 e!27982)))

(declare-fun c!11640 () Bool)

(assert (=> d!44729 (= c!11640 (is-Nil!423 l!1079))))

(assert (=> d!44729 (= (size!18 l!1079) lt!9345)))

(declare-fun b!53659 () Bool)

(assert (=> b!53659 (= e!27982 0)))

(declare-fun b!53660 () Bool)

(assert (=> b!53660 (= e!27982 (+ 1 (size!18 (tail!708 l!1079))))))

(assert (= (and d!44729 c!11640) b!53659))

(assert (= (and d!44729 (not c!11640)) b!53660))

(declare-fun m!57534 () Bool)

(assert (=> b!53660 m!57534))

(assert (=> b!53651 d!44729))

(declare-fun d!44731 () Bool)

(declare-fun c!11643 () Bool)

(assert (=> d!44731 (= c!11643 (is-Nil!423 res!24313))))

(declare-fun e!27985 () (Set (_ BitVec 32)))

(assert (=> d!44731 (= (contents!0 res!24313) e!27985)))

(declare-fun b!53665 () Bool)

(assert (=> b!53665 (= e!27985 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53666 () Bool)

(assert (=> b!53666 (= e!27985 (union (contents!0 (tail!708 res!24313)) (insert (head!682 res!24313) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44731 c!11643) b!53665))

(assert (= (and d!44731 (not c!11643)) b!53666))

(declare-fun m!57536 () Bool)

(assert (=> b!53666 m!57536))

(declare-fun m!57538 () Bool)

(assert (=> b!53666 m!57538))

(assert (=> b!53650 d!44731))

(declare-fun d!44733 () Bool)

(declare-fun c!11644 () Bool)

(assert (=> d!44733 (= c!11644 (is-Nil!423 l!1079))))

(declare-fun e!27986 () (Set (_ BitVec 32)))

(assert (=> d!44733 (= (contents!0 l!1079) e!27986)))

(declare-fun b!53667 () Bool)

(assert (=> b!53667 (= e!27986 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53668 () Bool)

(assert (=> b!53668 (= e!27986 (union (contents!0 (tail!708 l!1079)) (insert (head!682 l!1079) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44733 c!11644) b!53667))

(assert (= (and d!44733 (not c!11644)) b!53668))

(declare-fun m!57540 () Bool)

(assert (=> b!53668 m!57540))

(declare-fun m!57542 () Bool)

(assert (=> b!53668 m!57542))

(assert (=> b!53650 d!44733))

(declare-fun d!44735 () Bool)

(declare-fun res!24442 () Bool)

(declare-fun e!27991 () Bool)

(assert (=> d!44735 (=> res!24442 e!27991)))

(assert (=> d!44735 (= res!24442 (or (is-Nil!423 res!24313) (and (is-Cons!422 res!24313) (is-Nil!423 (tail!708 res!24313)))))))

(assert (=> d!44735 (= (isSorted!5 res!24313) e!27991)))

(declare-fun b!53673 () Bool)

(declare-fun e!27992 () Bool)

(assert (=> b!53673 (= e!27991 e!27992)))

(declare-fun res!24443 () Bool)

(assert (=> b!53673 (=> (not res!24443) (not e!27992))))

(assert (=> b!53673 (= res!24443 (bvsle (head!682 res!24313) (head!682 (tail!708 res!24313))))))

(declare-fun b!53674 () Bool)

(assert (=> b!53674 (= e!27992 (isSorted!5 (Cons!422 (head!682 (tail!708 res!24313)) (tail!708 (tail!708 res!24313)))))))

(assert (= (and d!44735 (not res!24442)) b!53673))

(assert (= (and b!53673 res!24443) b!53674))

(declare-fun m!57544 () Bool)

(assert (=> b!53674 m!57544))

(assert (=> b!53652 d!44735))

(declare-fun d!44737 () Bool)

(declare-fun res!24444 () Bool)

(declare-fun e!27993 () Bool)

(assert (=> d!44737 (=> res!24444 e!27993)))

(assert (=> d!44737 (= res!24444 (or (is-Nil!423 l!1079) (and (is-Cons!422 l!1079) (is-Nil!423 (tail!708 l!1079)))))))

(assert (=> d!44737 (= (isSorted!5 l!1079) e!27993)))

(declare-fun b!53675 () Bool)

(declare-fun e!27994 () Bool)

(assert (=> b!53675 (= e!27993 e!27994)))

(declare-fun res!24445 () Bool)

(assert (=> b!53675 (=> (not res!24445) (not e!27994))))

(assert (=> b!53675 (= res!24445 (bvsle (head!682 l!1079) (head!682 (tail!708 l!1079))))))

(declare-fun b!53676 () Bool)

(assert (=> b!53676 (= e!27994 (isSorted!5 (Cons!422 (head!682 (tail!708 l!1079)) (tail!708 (tail!708 l!1079)))))))

(assert (= (and d!44737 (not res!24444)) b!53675))

(assert (= (and b!53675 res!24445) b!53676))

(declare-fun m!57546 () Bool)

(assert (=> b!53676 m!57546))

(assert (=> start!7448 d!44737))

(declare-fun b!53691 () Bool)

(declare-fun e!28004 () List!443)

(assert (=> b!53691 (= e!28004 (Cons!422 e!27864 Nil!423))))

(declare-fun d!44739 () Bool)

(declare-fun e!28003 () Bool)

(assert (=> d!44739 e!28003))

(declare-fun res!24455 () Bool)

(assert (=> d!44739 (=> (not res!24455) (not e!28003))))

(declare-fun lt!9348 () List!443)

(assert (=> d!44739 (= res!24455 (is-Cons!422 lt!9348))))

(assert (=> d!44739 (= lt!9348 e!28004)))

(declare-fun c!11650 () Bool)

(assert (=> d!44739 (= c!11650 (is-Nil!423 (tail!708 l!1079)))))

(assert (=> d!44739 (isSorted!5 (tail!708 l!1079))))

(assert (=> d!44739 (= (sortedIns!1 e!27864 (tail!708 l!1079)) lt!9348)))

(declare-fun b!53692 () Bool)

(declare-fun res!24453 () Bool)

(assert (=> b!53692 (=> (not res!24453) (not e!28003))))

(assert (=> b!53692 (= res!24453 (= (contents!0 lt!9348) (union (contents!0 (tail!708 l!1079)) (insert e!27864 (as emptyset (Set (_ BitVec 32)))))))))

(declare-fun b!53693 () Bool)

(declare-fun e!28002 () List!443)

(assert (=> b!53693 (= e!28002 (Cons!422 (head!682 (tail!708 l!1079)) (sortedIns!1 e!27864 (tail!708 (tail!708 l!1079)))))))

(declare-fun b!53694 () Bool)

(assert (=> b!53694 (= e!28002 (Cons!422 e!27864 (tail!708 l!1079)))))

(declare-fun b!53695 () Bool)

(assert (=> b!53695 (= e!28003 (= (size!18 lt!9348) (+ (size!18 (tail!708 l!1079)) 1)))))

(declare-fun b!53696 () Bool)

(declare-fun res!24454 () Bool)

(assert (=> b!53696 (=> (not res!24454) (not e!28003))))

(assert (=> b!53696 (= res!24454 (isSorted!5 lt!9348))))

(declare-fun b!53697 () Bool)

(assert (=> b!53697 (= e!28004 e!28002)))

(declare-fun c!11649 () Bool)

(assert (=> b!53697 (= c!11649 (bvsle (head!682 (tail!708 l!1079)) e!27864))))

(assert (= (and b!53697 c!11649) b!53693))

(assert (= (and b!53697 (not c!11649)) b!53694))

(assert (= (and d!44739 c!11650) b!53691))

(assert (= (and d!44739 (not c!11650)) b!53697))

(assert (= (and d!44739 res!24455) b!53692))

(assert (= (and b!53692 res!24453) b!53696))

(assert (= (and b!53696 res!24454) b!53695))

(declare-fun m!57548 () Bool)

(assert (=> b!53696 m!57548))

(declare-fun m!57550 () Bool)

(assert (=> b!53692 m!57550))

(assert (=> b!53692 m!57540))

(assert (=> b!53692 m!57520))

(declare-fun m!57552 () Bool)

(assert (=> b!53693 m!57552))

(declare-fun m!57554 () Bool)

(assert (=> d!44739 m!57554))

(declare-fun m!57556 () Bool)

(assert (=> b!53695 m!57556))

(assert (=> b!53695 m!57534))

(assert (=> b!53648 d!44739))

(push 1)

(assert (not b!53658))

(assert (not b!53695))

(assert (not b!53668))

(assert (not b!53674))

(assert (not b!53692))

(assert (not b!53676))

(assert (not b!53696))

(assert (not b!53666))

(assert (not b!53660))

(assert (not b!53693))

(assert (not d!44739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

