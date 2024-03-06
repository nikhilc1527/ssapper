; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8508 () Bool)

(assert start!8508)

(declare-fun res!27520 () Bool)

(declare-fun e!31536 () Bool)

(assert (=> start!8508 (=> (not res!27520) (not e!31536))))

(declare-fun s!1846 () Int)

(declare-datatypes () ((List!520 (Cons!486 (head!817 (_ BitVec 32)) (tail!843 List!520)) (Nil!487))))

(declare-fun in!15 () List!520)

(declare-fun size!16 (List!520) Int)

(assert (=> start!8508 (= res!27520 (= s!1846 (size!16 in!15)))))

(assert (=> start!8508 e!31536))

(assert (=> start!8508 true))

(declare-fun b!59272 () Bool)

(declare-fun res!27521 () Bool)

(assert (=> b!59272 (=> (not res!27521) (not e!31536))))

(declare-fun res!27415 () List!520)

(assert (=> b!59272 (= res!27521 (and (is-Nil!487 in!15) (= res!27415 Nil!487)))))

(declare-fun b!59273 () Bool)

(declare-fun sortSpec!0 (List!520 List!520) Bool)

(assert (=> b!59273 (= e!31536 (not (sortSpec!0 in!15 res!27415)))))

(assert (= (and start!8508 res!27520) b!59272))

(assert (= (and b!59272 res!27521) b!59273))

(declare-fun m!64090 () Bool)

(assert (=> start!8508 m!64090))

(declare-fun m!64092 () Bool)

(assert (=> b!59273 m!64092))

(push 1)

(assert (not b!59273))

(assert (not start!8508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51025 () Bool)

(declare-fun res!27524 () Bool)

(declare-fun e!31539 () Bool)

(assert (=> d!51025 (=> (not res!27524) (not e!31539))))

(declare-fun content!15 (List!520) (Set (_ BitVec 32)))

(assert (=> d!51025 (= res!27524 (= (content!15 res!27415) (content!15 in!15)))))

(assert (=> d!51025 (= (sortSpec!0 in!15 res!27415) e!31539)))

(declare-fun b!59276 () Bool)

(declare-fun isSorted!4 (List!520) Bool)

(assert (=> b!59276 (= e!31539 (isSorted!4 res!27415))))

(assert (= (and d!51025 res!27524) b!59276))

(declare-fun m!64094 () Bool)

(assert (=> d!51025 m!64094))

(declare-fun m!64096 () Bool)

(assert (=> d!51025 m!64096))

(declare-fun m!64098 () Bool)

(assert (=> b!59276 m!64098))

(assert (=> b!59273 d!51025))

(declare-fun d!51027 () Bool)

(declare-fun lt!10930 () Int)

(assert (=> d!51027 (>= lt!10930 0)))

(declare-fun e!31542 () Int)

(assert (=> d!51027 (= lt!10930 e!31542)))

(declare-fun c!12809 () Bool)

(assert (=> d!51027 (= c!12809 (is-Nil!487 in!15))))

(assert (=> d!51027 (= (size!16 in!15) lt!10930)))

(declare-fun b!59281 () Bool)

(assert (=> b!59281 (= e!31542 0)))

(declare-fun b!59282 () Bool)

(assert (=> b!59282 (= e!31542 (+ 1 (size!16 (tail!843 in!15))))))

(assert (= (and d!51027 c!12809) b!59281))

(assert (= (and d!51027 (not c!12809)) b!59282))

(declare-fun m!64100 () Bool)

(assert (=> b!59282 m!64100))

(assert (=> start!8508 d!51027))

(push 1)

(assert (not b!59276))

(assert (not b!59282))

(assert (not d!51025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51029 () Bool)

(declare-fun res!27529 () Bool)

(declare-fun e!31547 () Bool)

(assert (=> d!51029 (=> res!27529 e!31547)))

(assert (=> d!51029 (= res!27529 (or (is-Nil!487 res!27415) (and (is-Cons!486 res!27415) (is-Nil!487 (tail!843 res!27415)))))))

(assert (=> d!51029 (= (isSorted!4 res!27415) e!31547)))

(declare-fun b!59287 () Bool)

(declare-fun e!31548 () Bool)

(assert (=> b!59287 (= e!31547 e!31548)))

(declare-fun res!27530 () Bool)

(assert (=> b!59287 (=> (not res!27530) (not e!31548))))

(assert (=> b!59287 (= res!27530 (not (and (is-Cons!486 res!27415) (is-Cons!486 (tail!843 res!27415)) (bvsgt (head!817 res!27415) (head!817 (tail!843 res!27415))))))))

(declare-fun b!59288 () Bool)

(assert (=> b!59288 (= e!31548 (isSorted!4 (tail!843 res!27415)))))

(assert (= (and d!51029 (not res!27529)) b!59287))

(assert (= (and b!59287 res!27530) b!59288))

(declare-fun m!64102 () Bool)

(assert (=> b!59288 m!64102))

(assert (=> b!59276 d!51029))

(declare-fun d!51031 () Bool)

(declare-fun lt!10931 () Int)

(assert (=> d!51031 (>= lt!10931 0)))

(declare-fun e!31549 () Int)

(assert (=> d!51031 (= lt!10931 e!31549)))

(declare-fun c!12810 () Bool)

(assert (=> d!51031 (= c!12810 (is-Nil!487 (tail!843 in!15)))))

(assert (=> d!51031 (= (size!16 (tail!843 in!15)) lt!10931)))

(declare-fun b!59289 () Bool)

(assert (=> b!59289 (= e!31549 0)))

(declare-fun b!59290 () Bool)

(assert (=> b!59290 (= e!31549 (+ 1 (size!16 (tail!843 (tail!843 in!15)))))))

(assert (= (and d!51031 c!12810) b!59289))

(assert (= (and d!51031 (not c!12810)) b!59290))

(declare-fun m!64104 () Bool)

(assert (=> b!59290 m!64104))

(assert (=> b!59282 d!51031))

(declare-fun d!51033 () Bool)

(declare-fun c!12813 () Bool)

(assert (=> d!51033 (= c!12813 (is-Nil!487 res!27415))))

(declare-fun e!31552 () (Set (_ BitVec 32)))

(assert (=> d!51033 (= (content!15 res!27415) e!31552)))

(declare-fun b!59295 () Bool)

(assert (=> b!59295 (= e!31552 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59296 () Bool)

(assert (=> b!59296 (= e!31552 (union (insert (head!817 res!27415) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!843 res!27415))))))

(assert (= (and d!51033 c!12813) b!59295))

(assert (= (and d!51033 (not c!12813)) b!59296))

(declare-fun m!64106 () Bool)

(assert (=> b!59296 m!64106))

(declare-fun m!64108 () Bool)

(assert (=> b!59296 m!64108))

(assert (=> d!51025 d!51033))

(declare-fun d!51035 () Bool)

(declare-fun c!12814 () Bool)

(assert (=> d!51035 (= c!12814 (is-Nil!487 in!15))))

(declare-fun e!31553 () (Set (_ BitVec 32)))

(assert (=> d!51035 (= (content!15 in!15) e!31553)))

(declare-fun b!59297 () Bool)

(assert (=> b!59297 (= e!31553 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59298 () Bool)

(assert (=> b!59298 (= e!31553 (union (insert (head!817 in!15) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!843 in!15))))))

(assert (= (and d!51035 c!12814) b!59297))

(assert (= (and d!51035 (not c!12814)) b!59298))

(declare-fun m!64110 () Bool)

(assert (=> b!59298 m!64110))

(declare-fun m!64112 () Bool)

(assert (=> b!59298 m!64112))

(assert (=> d!51025 d!51035))

(push 1)

(assert (not b!59290))

(assert (not b!59298))

(assert (not b!59296))

(assert (not b!59288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

