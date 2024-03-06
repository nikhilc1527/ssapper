; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8548 () Bool)

(assert start!8548)

(declare-fun res!27601 () Bool)

(declare-fun e!31662 () Bool)

(assert (=> start!8548 (=> (not res!27601) (not e!31662))))

(declare-datatypes () ((List!523 (Cons!489 (head!820 (_ BitVec 32)) (tail!846 List!523)) (Nil!490))))

(declare-fun list!487 () List!523)

(declare-datatypes () ((tuple2!298 (tuple2!299 (_1!176 List!523) (_2!176 List!523)))))

(declare-fun res!27394 () tuple2!298)

(assert (=> start!8548 (= res!27601 (and (is-Nil!490 list!487) (= res!27394 (tuple2!299 Nil!490 Nil!490))))))

(assert (=> start!8548 e!31662))

(assert (=> start!8548 true))

(declare-fun b!59489 () Bool)

(declare-fun splitSpec!0 (List!523 tuple2!298) Bool)

(assert (=> b!59489 (= e!31662 (not (splitSpec!0 list!487 res!27394)))))

(assert (= (and start!8548 res!27601) b!59489))

(declare-fun m!64356 () Bool)

(assert (=> b!59489 m!64356))

(push 1)

(assert (not b!59489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51117 () Bool)

(declare-fun res!27608 () Bool)

(declare-fun e!31665 () Bool)

(assert (=> d!51117 (=> (not res!27608) (not e!31665))))

(declare-fun lt!11022 () Int)

(declare-fun lt!11023 () Int)

(declare-fun abs!3 (Int) Int)

(assert (=> d!51117 (= res!27608 (<= (abs!3 (- lt!11022 lt!11023)) 1))))

(declare-fun size!16 (List!523) Int)

(assert (=> d!51117 (= lt!11023 (size!16 (_2!176 res!27394)))))

(assert (=> d!51117 (= lt!11022 (size!16 (_1!176 res!27394)))))

(assert (=> d!51117 (= (splitSpec!0 list!487 res!27394) e!31665)))

(declare-fun b!59494 () Bool)

(declare-fun res!27607 () Bool)

(assert (=> b!59494 (=> (not res!27607) (not e!31665))))

(assert (=> b!59494 (= res!27607 (= (+ lt!11022 lt!11023) (size!16 list!487)))))

(declare-fun b!59495 () Bool)

(declare-fun content!15 (List!523) (Set (_ BitVec 32)))

(assert (=> b!59495 (= e!31665 (= (union (content!15 (_1!176 res!27394)) (content!15 (_2!176 res!27394))) (content!15 list!487)))))

(assert (= (and d!51117 res!27608) b!59494))

(assert (= (and b!59494 res!27607) b!59495))

(declare-fun m!64358 () Bool)

(assert (=> d!51117 m!64358))

(declare-fun m!64360 () Bool)

(assert (=> d!51117 m!64360))

(declare-fun m!64362 () Bool)

(assert (=> d!51117 m!64362))

(declare-fun m!64364 () Bool)

(assert (=> b!59494 m!64364))

(declare-fun m!64366 () Bool)

(assert (=> b!59495 m!64366))

(declare-fun m!64368 () Bool)

(assert (=> b!59495 m!64368))

(declare-fun m!64370 () Bool)

(assert (=> b!59495 m!64370))

(assert (=> b!59489 d!51117))

(push 1)

(assert (not b!59495))

(assert (not b!59494))

(assert (not d!51117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51119 () Bool)

(declare-fun c!12881 () Bool)

(assert (=> d!51119 (= c!12881 (is-Nil!490 (_1!176 res!27394)))))

(declare-fun e!31668 () (Set (_ BitVec 32)))

(assert (=> d!51119 (= (content!15 (_1!176 res!27394)) e!31668)))

(declare-fun b!59500 () Bool)

(assert (=> b!59500 (= e!31668 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59501 () Bool)

(assert (=> b!59501 (= e!31668 (union (insert (head!820 (_1!176 res!27394)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!846 (_1!176 res!27394)))))))

(assert (= (and d!51119 c!12881) b!59500))

(assert (= (and d!51119 (not c!12881)) b!59501))

(declare-fun m!64372 () Bool)

(assert (=> b!59501 m!64372))

(declare-fun m!64374 () Bool)

(assert (=> b!59501 m!64374))

(assert (=> b!59495 d!51119))

(declare-fun d!51121 () Bool)

(declare-fun c!12882 () Bool)

(assert (=> d!51121 (= c!12882 (is-Nil!490 (_2!176 res!27394)))))

(declare-fun e!31669 () (Set (_ BitVec 32)))

(assert (=> d!51121 (= (content!15 (_2!176 res!27394)) e!31669)))

(declare-fun b!59502 () Bool)

(assert (=> b!59502 (= e!31669 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59503 () Bool)

(assert (=> b!59503 (= e!31669 (union (insert (head!820 (_2!176 res!27394)) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!846 (_2!176 res!27394)))))))

(assert (= (and d!51121 c!12882) b!59502))

(assert (= (and d!51121 (not c!12882)) b!59503))

(declare-fun m!64376 () Bool)

(assert (=> b!59503 m!64376))

(declare-fun m!64378 () Bool)

(assert (=> b!59503 m!64378))

(assert (=> b!59495 d!51121))

(declare-fun d!51123 () Bool)

(declare-fun c!12883 () Bool)

(assert (=> d!51123 (= c!12883 (is-Nil!490 list!487))))

(declare-fun e!31670 () (Set (_ BitVec 32)))

(assert (=> d!51123 (= (content!15 list!487) e!31670)))

(declare-fun b!59504 () Bool)

(assert (=> b!59504 (= e!31670 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59505 () Bool)

(assert (=> b!59505 (= e!31670 (union (insert (head!820 list!487) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!846 list!487))))))

(assert (= (and d!51123 c!12883) b!59504))

(assert (= (and d!51123 (not c!12883)) b!59505))

(declare-fun m!64380 () Bool)

(assert (=> b!59505 m!64380))

(declare-fun m!64382 () Bool)

(assert (=> b!59505 m!64382))

(assert (=> b!59495 d!51123))

(declare-fun d!51125 () Bool)

(declare-fun lt!11026 () Int)

(assert (=> d!51125 (>= lt!11026 0)))

(declare-fun e!31673 () Int)

(assert (=> d!51125 (= lt!11026 e!31673)))

(declare-fun c!12886 () Bool)

(assert (=> d!51125 (= c!12886 (is-Nil!490 list!487))))

(assert (=> d!51125 (= (size!16 list!487) lt!11026)))

(declare-fun b!59510 () Bool)

(assert (=> b!59510 (= e!31673 0)))

(declare-fun b!59511 () Bool)

(assert (=> b!59511 (= e!31673 (+ 1 (size!16 (tail!846 list!487))))))

(assert (= (and d!51125 c!12886) b!59510))

(assert (= (and d!51125 (not c!12886)) b!59511))

(declare-fun m!64384 () Bool)

(assert (=> b!59511 m!64384))

(assert (=> b!59494 d!51125))

(declare-fun d!51127 () Bool)

(declare-fun lt!11029 () Int)

(assert (=> d!51127 (>= lt!11029 0)))

(assert (=> d!51127 (= lt!11029 (ite (< (- lt!11022 lt!11023) 0) (- (- lt!11022 lt!11023)) (- lt!11022 lt!11023)))))

(assert (=> d!51127 (= (abs!3 (- lt!11022 lt!11023)) lt!11029)))

(assert (=> d!51117 d!51127))

(declare-fun d!51129 () Bool)

(declare-fun lt!11030 () Int)

(assert (=> d!51129 (>= lt!11030 0)))

(declare-fun e!31674 () Int)

(assert (=> d!51129 (= lt!11030 e!31674)))

(declare-fun c!12887 () Bool)

(assert (=> d!51129 (= c!12887 (is-Nil!490 (_2!176 res!27394)))))

(assert (=> d!51129 (= (size!16 (_2!176 res!27394)) lt!11030)))

(declare-fun b!59512 () Bool)

(assert (=> b!59512 (= e!31674 0)))

(declare-fun b!59513 () Bool)

(assert (=> b!59513 (= e!31674 (+ 1 (size!16 (tail!846 (_2!176 res!27394)))))))

(assert (= (and d!51129 c!12887) b!59512))

(assert (= (and d!51129 (not c!12887)) b!59513))

(declare-fun m!64386 () Bool)

(assert (=> b!59513 m!64386))

(assert (=> d!51117 d!51129))

(declare-fun d!51131 () Bool)

(declare-fun lt!11031 () Int)

(assert (=> d!51131 (>= lt!11031 0)))

(declare-fun e!31675 () Int)

(assert (=> d!51131 (= lt!11031 e!31675)))

(declare-fun c!12888 () Bool)

(assert (=> d!51131 (= c!12888 (is-Nil!490 (_1!176 res!27394)))))

(assert (=> d!51131 (= (size!16 (_1!176 res!27394)) lt!11031)))

(declare-fun b!59514 () Bool)

(assert (=> b!59514 (= e!31675 0)))

(declare-fun b!59515 () Bool)

(assert (=> b!59515 (= e!31675 (+ 1 (size!16 (tail!846 (_1!176 res!27394)))))))

(assert (= (and d!51131 c!12888) b!59514))

(assert (= (and d!51131 (not c!12888)) b!59515))

(declare-fun m!64388 () Bool)

(assert (=> b!59515 m!64388))

(assert (=> d!51117 d!51131))

(push 1)

(assert (not b!59513))

(assert (not b!59505))

(assert (not b!59515))

(assert (not b!59503))

(assert (not b!59511))

(assert (not b!59501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

