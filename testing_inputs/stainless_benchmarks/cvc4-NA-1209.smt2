; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8580 () Bool)

(assert start!8580)

(declare-fun res!27642 () Bool)

(declare-fun e!31734 () Bool)

(assert (=> start!8580 (=> (not res!27642) (not e!31734))))

(declare-datatypes () ((List!526 (Cons!492 (head!823 (_ BitVec 32)) (tail!849 List!526)) (Nil!493))))

(declare-datatypes () ((LList!2 (LNil!1) (LCons!1 (head!824 List!526) (tail!850 LList!2)))))

(declare-fun llist!5 () LList!2)

(declare-fun in!11 () List!526)

(declare-fun toLList!0 (List!526) LList!2)

(assert (=> start!8580 (= res!27642 (= llist!5 (toLList!0 in!11)))))

(assert (=> start!8580 e!31734))

(assert (=> start!8580 true))

(declare-fun b!59630 () Bool)

(declare-fun lIsSorted!0 (LList!2) Bool)

(assert (=> b!59630 (= e!31734 (not (lIsSorted!0 llist!5)))))

(assert (= (and start!8580 res!27642) b!59630))

(declare-fun m!64532 () Bool)

(assert (=> start!8580 m!64532))

(declare-fun m!64534 () Bool)

(assert (=> b!59630 m!64534))

(push 1)

(assert (not b!59630))

(assert (not start!8580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51201 () Bool)

(declare-fun res!27647 () Bool)

(declare-fun e!31739 () Bool)

(assert (=> d!51201 (=> res!27647 e!31739)))

(assert (=> d!51201 (= res!27647 (is-LNil!1 llist!5))))

(assert (=> d!51201 (= (lIsSorted!0 llist!5) e!31739)))

(declare-fun b!59635 () Bool)

(declare-fun e!31740 () Bool)

(assert (=> b!59635 (= e!31739 e!31740)))

(declare-fun res!27648 () Bool)

(assert (=> b!59635 (=> (not res!27648) (not e!31740))))

(declare-fun isSorted!4 (List!526) Bool)

(assert (=> b!59635 (= res!27648 (isSorted!4 (head!824 llist!5)))))

(declare-fun b!59636 () Bool)

(assert (=> b!59636 (= e!31740 (lIsSorted!0 (tail!850 llist!5)))))

(assert (= (and d!51201 (not res!27647)) b!59635))

(assert (= (and b!59635 res!27648) b!59636))

(declare-fun m!64536 () Bool)

(assert (=> b!59635 m!64536))

(declare-fun m!64538 () Bool)

(assert (=> b!59636 m!64538))

(assert (=> b!59630 d!51201))

(declare-fun d!51203 () Bool)

(declare-fun e!31745 () Bool)

(assert (=> d!51203 e!31745))

(declare-fun res!27652 () Bool)

(assert (=> d!51203 (=> (not res!27652) (not e!31745))))

(declare-fun lt!11078 () LList!2)

(declare-fun lContent!0 (LList!2) (Set (_ BitVec 32)))

(declare-fun content!15 (List!526) (Set (_ BitVec 32)))

(assert (=> d!51203 (= res!27652 (= (lContent!0 lt!11078) (content!15 in!11)))))

(declare-fun e!31746 () LList!2)

(assert (=> d!51203 (= lt!11078 e!31746)))

(declare-fun c!12933 () Bool)

(assert (=> d!51203 (= c!12933 (is-Nil!493 in!11))))

(assert (=> d!51203 (= (toLList!0 in!11) lt!11078)))

(declare-fun b!59643 () Bool)

(assert (=> b!59643 (= e!31746 LNil!1)))

(declare-fun b!59644 () Bool)

(assert (=> b!59644 (= e!31746 (LCons!1 (Cons!492 (head!823 in!11) Nil!493) (toLList!0 (tail!849 in!11))))))

(declare-fun b!59645 () Bool)

(assert (=> b!59645 (= e!31745 (lIsSorted!0 lt!11078))))

(assert (= (and d!51203 c!12933) b!59643))

(assert (= (and d!51203 (not c!12933)) b!59644))

(assert (= (and d!51203 res!27652) b!59645))

(declare-fun m!64540 () Bool)

(assert (=> d!51203 m!64540))

(declare-fun m!64542 () Bool)

(assert (=> d!51203 m!64542))

(declare-fun m!64544 () Bool)

(assert (=> b!59644 m!64544))

(declare-fun m!64546 () Bool)

(assert (=> b!59645 m!64546))

(assert (=> start!8580 d!51203))

(push 1)

(assert (not b!59645))

(assert (not b!59636))

(assert (not b!59644))

(assert (not b!59635))

(assert (not d!51203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

