; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8558 () Bool)

(assert start!8558)

(declare-fun res!27611 () Bool)

(declare-fun e!31678 () Bool)

(assert (=> start!8558 (=> (not res!27611) (not e!31678))))

(declare-datatypes () ((List!524 (Cons!490 (head!821 (_ BitVec 32)) (tail!847 List!524)) (Nil!491))))

(declare-fun list!487 () List!524)

(declare-datatypes () ((tuple2!300 (tuple2!301 (_1!177 List!524) (_2!177 List!524)))))

(declare-fun res!27397 () tuple2!300)

(assert (=> start!8558 (= res!27611 (and (not (is-Nil!491 list!487)) (is-Nil!491 (tail!847 list!487)) (= res!27397 (tuple2!301 (Cons!490 (head!821 list!487) Nil!491) Nil!491))))))

(assert (=> start!8558 e!31678))

(assert (=> start!8558 true))

(declare-fun b!59518 () Bool)

(declare-fun splitSpec!0 (List!524 tuple2!300) Bool)

(assert (=> b!59518 (= e!31678 (not (splitSpec!0 list!487 res!27397)))))

(assert (= (and start!8558 res!27611) b!59518))

(declare-fun m!64390 () Bool)

(assert (=> b!59518 m!64390))

(push 1)

(assert (not b!59518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51133 () Bool)

(declare-fun res!27618 () Bool)

(declare-fun e!31681 () Bool)

(assert (=> d!51133 (=> (not res!27618) (not e!31681))))

(declare-fun lt!11037 () Int)

(declare-fun lt!11036 () Int)

(declare-fun abs!3 (Int) Int)

(assert (=> d!51133 (= res!27618 (<= (abs!3 (- lt!11037 lt!11036)) 1))))

(declare-fun size!16 (List!524) Int)

(assert (=> d!51133 (= lt!11036 (size!16 (_2!177 res!27397)))))

(assert (=> d!51133 (= lt!11037 (size!16 (_1!177 res!27397)))))

(assert (=> d!51133 (= (splitSpec!0 list!487 res!27397) e!31681)))

(declare-fun b!59523 () Bool)

(declare-fun res!27617 () Bool)

(assert (=> b!59523 (=> (not res!27617) (not e!31681))))

(assert (=> b!59523 (= res!27617 (= (+ lt!11037 lt!11036) (size!16 list!487)))))

(declare-fun b!59524 () Bool)

(declare-fun content!15 (List!524) (Set (_ BitVec 32)))

(assert (=> b!59524 (= e!31681 (= (union (content!15 (_1!177 res!27397)) (content!15 (_2!177 res!27397))) (content!15 list!487)))))

(assert (= (and d!51133 res!27618) b!59523))

(assert (= (and b!59523 res!27617) b!59524))

(declare-fun m!64392 () Bool)

(assert (=> d!51133 m!64392))

(declare-fun m!64394 () Bool)

(assert (=> d!51133 m!64394))

(declare-fun m!64396 () Bool)

(assert (=> d!51133 m!64396))

(declare-fun m!64398 () Bool)

(assert (=> b!59523 m!64398))

(declare-fun m!64400 () Bool)

(assert (=> b!59524 m!64400))

(declare-fun m!64402 () Bool)

(assert (=> b!59524 m!64402))

(declare-fun m!64404 () Bool)

(assert (=> b!59524 m!64404))

(assert (=> b!59518 d!51133))

(push 1)

(assert (not d!51133))

(assert (not b!59524))

(assert (not b!59523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51135 () Bool)

(declare-fun lt!11040 () Int)

(assert (=> d!51135 (>= lt!11040 0)))

(assert (=> d!51135 (= lt!11040 (ite (< (- lt!11037 lt!11036) 0) (- (- lt!11037 lt!11036)) (- lt!11037 lt!11036)))))

(assert (=> d!51135 (= (abs!3 (- lt!11037 lt!11036)) lt!11040)))

(assert (=> d!51133 d!51135))

(declare-fun d!51137 () Bool)

(declare-fun lt!11043 () Int)

(assert (=> d!51137 (>= lt!11043 0)))

(declare-fun e!31684 () Int)

(assert (=> d!51137 (= lt!11043 e!31684)))

(declare-fun c!12891 () Bool)

(assert (=> d!51137 (= c!12891 (is-Nil!491 (_2!177 res!27397)))))

(assert (=> d!51137 (= (size!16 (_2!177 res!27397)) lt!11043)))

(declare-fun b!59529 () Bool)

(assert (=> b!59529 (= e!31684 0)))

(declare-fun b!59530 () Bool)

(assert (=> b!59530 (= e!31684 (+ 1 (size!16 (tail!847 (_2!177 res!27397)))))))

(assert (= (and d!51137 c!12891) b!59529))

(assert (= (and d!51137 (not c!12891)) b!59530))

(declare-fun m!64406 () Bool)

(assert (=> b!59530 m!64406))

(assert (=> d!51133 d!51137))

(declare-fun d!51139 () Bool)

(declare-fun lt!11044 () Int)

(assert (=> d!51139 (>= lt!11044 0)))

(declare-fun e!31685 () Int)

(assert (=> d!51139 (= lt!11044 e!31685)))

(declare-fun c!12892 () Bool)

(assert (=> d!51139 (= c!12892 (is-Nil!491 (_1!177 res!27397)))))

(assert (=> d!51139 (= (size!16 (_1!177 res!27397)) lt!11044)))

(declare-fun b!59531 () Bool)

(assert (=> b!59531 (= e!31685 0)))

(declare-fun b!59532 () Bool)

(assert (=> b!59532 (= e!31685 (+ 1 (size!16 (tail!847 (_1!177 res!27397)))))))

(assert (= (and d!51139 c!12892) b!59531))

(assert (= (and d!51139 (not c!12892)) b!59532))

(declare-fun m!64408 () Bool)

(assert (=> b!59532 m!64408))

(assert (=> d!51133 d!51139))

(declare-fun d!51141 () Bool)

(declare-fun c!12895 () Bool)

(assert (=> d!51141 (= c!12895 (is-Nil!491 (_1!177 res!27397)))))

(declare-fun e!31688 () (Set (_ BitVec 32)))

(assert (=> d!51141 (= (content!15 (_1!177 res!27397)) e!31688)))

(declare-fun b!59537 () Bool)

(assert (=> b!59537 (= e!31688 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59538 () Bool)

(assert (=> b!59538 (= e!31688 (union (insert (head!821 (_1!177 res!27397)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!847 (_1!177 res!27397)))))))

(assert (= (and d!51141 c!12895) b!59537))

(assert (= (and d!51141 (not c!12895)) b!59538))

(declare-fun m!64410 () Bool)

(assert (=> b!59538 m!64410))

(declare-fun m!64412 () Bool)

(assert (=> b!59538 m!64412))

(assert (=> b!59524 d!51141))

(declare-fun d!51143 () Bool)

(declare-fun c!12896 () Bool)

(assert (=> d!51143 (= c!12896 (is-Nil!491 (_2!177 res!27397)))))

(declare-fun e!31689 () (Set (_ BitVec 32)))

(assert (=> d!51143 (= (content!15 (_2!177 res!27397)) e!31689)))

(declare-fun b!59539 () Bool)

(assert (=> b!59539 (= e!31689 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59540 () Bool)

(assert (=> b!59540 (= e!31689 (union (insert (head!821 (_2!177 res!27397)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!847 (_2!177 res!27397)))))))

(assert (= (and d!51143 c!12896) b!59539))

(assert (= (and d!51143 (not c!12896)) b!59540))

(declare-fun m!64414 () Bool)

(assert (=> b!59540 m!64414))

(declare-fun m!64416 () Bool)

(assert (=> b!59540 m!64416))

(assert (=> b!59524 d!51143))

(declare-fun d!51145 () Bool)

(declare-fun c!12897 () Bool)

(assert (=> d!51145 (= c!12897 (is-Nil!491 list!487))))

(declare-fun e!31690 () (Set (_ BitVec 32)))

(assert (=> d!51145 (= (content!15 list!487) e!31690)))

(declare-fun b!59541 () Bool)

(assert (=> b!59541 (= e!31690 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59542 () Bool)

(assert (=> b!59542 (= e!31690 (union (insert (head!821 list!487) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!847 list!487))))))

(assert (= (and d!51145 c!12897) b!59541))

(assert (= (and d!51145 (not c!12897)) b!59542))

(declare-fun m!64418 () Bool)

(assert (=> b!59542 m!64418))

(declare-fun m!64420 () Bool)

(assert (=> b!59542 m!64420))

(assert (=> b!59524 d!51145))

(declare-fun d!51147 () Bool)

(declare-fun lt!11045 () Int)

(assert (=> d!51147 (>= lt!11045 0)))

(declare-fun e!31691 () Int)

(assert (=> d!51147 (= lt!11045 e!31691)))

(declare-fun c!12898 () Bool)

(assert (=> d!51147 (= c!12898 (is-Nil!491 list!487))))

(assert (=> d!51147 (= (size!16 list!487) lt!11045)))

(declare-fun b!59543 () Bool)

(assert (=> b!59543 (= e!31691 0)))

(declare-fun b!59544 () Bool)

(assert (=> b!59544 (= e!31691 (+ 1 (size!16 (tail!847 list!487))))))

(assert (= (and d!51147 c!12898) b!59543))

(assert (= (and d!51147 (not c!12898)) b!59544))

(declare-fun m!64422 () Bool)

(assert (=> b!59544 m!64422))

(assert (=> b!59523 d!51147))

(push 1)

(assert (not b!59540))

(assert (not b!59530))

(assert (not b!59538))

(assert (not b!59542))

(assert (not b!59532))

(assert (not b!59544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

