; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8518 () Bool)

(assert start!8518)

(declare-fun res!27535 () Bool)

(declare-fun e!31556 () Bool)

(assert (=> start!8518 (=> (not res!27535) (not e!31556))))

(declare-fun s!1846 () Int)

(declare-datatypes () ((List!521 (Cons!487 (head!818 (_ BitVec 32)) (tail!844 List!521)) (Nil!488))))

(declare-fun in!15 () List!521)

(declare-fun size!16 (List!521) Int)

(assert (=> start!8518 (= res!27535 (= s!1846 (size!16 in!15)))))

(assert (=> start!8518 e!31556))

(assert (=> start!8518 true))

(declare-fun b!59303 () Bool)

(declare-fun res!27536 () Bool)

(assert (=> b!59303 (=> (not res!27536) (not e!31556))))

(declare-fun res!27416 () List!521)

(assert (=> b!59303 (= res!27536 (and (not (is-Nil!488 in!15)) (is-Nil!488 (tail!844 in!15)) (= res!27416 (Cons!487 (head!818 in!15) Nil!488))))))

(declare-fun b!59304 () Bool)

(declare-fun sortSpec!0 (List!521 List!521) Bool)

(assert (=> b!59304 (= e!31556 (not (sortSpec!0 in!15 res!27416)))))

(assert (= (and start!8518 res!27535) b!59303))

(assert (= (and b!59303 res!27536) b!59304))

(declare-fun m!64114 () Bool)

(assert (=> start!8518 m!64114))

(declare-fun m!64116 () Bool)

(assert (=> b!59304 m!64116))

(push 1)

(assert (not b!59304))

(assert (not start!8518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51037 () Bool)

(declare-fun res!27539 () Bool)

(declare-fun e!31559 () Bool)

(assert (=> d!51037 (=> (not res!27539) (not e!31559))))

(declare-fun content!15 (List!521) (Set (_ BitVec 32)))

(assert (=> d!51037 (= res!27539 (= (content!15 res!27416) (content!15 in!15)))))

(assert (=> d!51037 (= (sortSpec!0 in!15 res!27416) e!31559)))

(declare-fun b!59307 () Bool)

(declare-fun isSorted!4 (List!521) Bool)

(assert (=> b!59307 (= e!31559 (isSorted!4 res!27416))))

(assert (= (and d!51037 res!27539) b!59307))

(declare-fun m!64118 () Bool)

(assert (=> d!51037 m!64118))

(declare-fun m!64120 () Bool)

(assert (=> d!51037 m!64120))

(declare-fun m!64122 () Bool)

(assert (=> b!59307 m!64122))

(assert (=> b!59304 d!51037))

(declare-fun d!51039 () Bool)

(declare-fun lt!10934 () Int)

(assert (=> d!51039 (>= lt!10934 0)))

(declare-fun e!31562 () Int)

(assert (=> d!51039 (= lt!10934 e!31562)))

(declare-fun c!12817 () Bool)

(assert (=> d!51039 (= c!12817 (is-Nil!488 in!15))))

(assert (=> d!51039 (= (size!16 in!15) lt!10934)))

(declare-fun b!59312 () Bool)

(assert (=> b!59312 (= e!31562 0)))

(declare-fun b!59313 () Bool)

(assert (=> b!59313 (= e!31562 (+ 1 (size!16 (tail!844 in!15))))))

(assert (= (and d!51039 c!12817) b!59312))

(assert (= (and d!51039 (not c!12817)) b!59313))

(declare-fun m!64124 () Bool)

(assert (=> b!59313 m!64124))

(assert (=> start!8518 d!51039))

(push 1)

(assert (not b!59313))

(assert (not d!51037))

(assert (not b!59307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51041 () Bool)

(declare-fun lt!10935 () Int)

(assert (=> d!51041 (>= lt!10935 0)))

(declare-fun e!31563 () Int)

(assert (=> d!51041 (= lt!10935 e!31563)))

(declare-fun c!12818 () Bool)

(assert (=> d!51041 (= c!12818 (is-Nil!488 (tail!844 in!15)))))

(assert (=> d!51041 (= (size!16 (tail!844 in!15)) lt!10935)))

(declare-fun b!59314 () Bool)

(assert (=> b!59314 (= e!31563 0)))

(declare-fun b!59315 () Bool)

(assert (=> b!59315 (= e!31563 (+ 1 (size!16 (tail!844 (tail!844 in!15)))))))

(assert (= (and d!51041 c!12818) b!59314))

(assert (= (and d!51041 (not c!12818)) b!59315))

(declare-fun m!64126 () Bool)

(assert (=> b!59315 m!64126))

(assert (=> b!59313 d!51041))

(declare-fun d!51043 () Bool)

(declare-fun c!12821 () Bool)

(assert (=> d!51043 (= c!12821 (is-Nil!488 res!27416))))

(declare-fun e!31566 () (Set (_ BitVec 32)))

(assert (=> d!51043 (= (content!15 res!27416) e!31566)))

(declare-fun b!59320 () Bool)

(assert (=> b!59320 (= e!31566 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59321 () Bool)

(assert (=> b!59321 (= e!31566 (union (insert (head!818 res!27416) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!844 res!27416))))))

(assert (= (and d!51043 c!12821) b!59320))

(assert (= (and d!51043 (not c!12821)) b!59321))

(declare-fun m!64128 () Bool)

(assert (=> b!59321 m!64128))

(declare-fun m!64130 () Bool)

(assert (=> b!59321 m!64130))

(assert (=> d!51037 d!51043))

(declare-fun d!51045 () Bool)

(declare-fun c!12822 () Bool)

(assert (=> d!51045 (= c!12822 (is-Nil!488 in!15))))

(declare-fun e!31567 () (Set (_ BitVec 32)))

(assert (=> d!51045 (= (content!15 in!15) e!31567)))

(declare-fun b!59322 () Bool)

(assert (=> b!59322 (= e!31567 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59323 () Bool)

(assert (=> b!59323 (= e!31567 (union (insert (head!818 in!15) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!844 in!15))))))

(assert (= (and d!51045 c!12822) b!59322))

(assert (= (and d!51045 (not c!12822)) b!59323))

(declare-fun m!64132 () Bool)

(assert (=> b!59323 m!64132))

(declare-fun m!64134 () Bool)

(assert (=> b!59323 m!64134))

(assert (=> d!51037 d!51045))

(declare-fun d!51047 () Bool)

(declare-fun res!27544 () Bool)

(declare-fun e!31572 () Bool)

(assert (=> d!51047 (=> res!27544 e!31572)))

(assert (=> d!51047 (= res!27544 (or (is-Nil!488 res!27416) (and (is-Cons!487 res!27416) (is-Nil!488 (tail!844 res!27416)))))))

(assert (=> d!51047 (= (isSorted!4 res!27416) e!31572)))

(declare-fun b!59328 () Bool)

(declare-fun e!31573 () Bool)

(assert (=> b!59328 (= e!31572 e!31573)))

(declare-fun res!27545 () Bool)

(assert (=> b!59328 (=> (not res!27545) (not e!31573))))

(assert (=> b!59328 (= res!27545 (not (and (is-Cons!487 res!27416) (is-Cons!487 (tail!844 res!27416)) (bvsgt (head!818 res!27416) (head!818 (tail!844 res!27416))))))))

(declare-fun b!59329 () Bool)

(assert (=> b!59329 (= e!31573 (isSorted!4 (tail!844 res!27416)))))

(assert (= (and d!51047 (not res!27544)) b!59328))

(assert (= (and b!59328 res!27545) b!59329))

(declare-fun m!64136 () Bool)

(assert (=> b!59329 m!64136))

(assert (=> b!59307 d!51047))

(push 1)

(assert (not b!59329))

(assert (not b!59323))

(assert (not b!59321))

(assert (not b!59315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

