; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12538 () Bool)

(assert start!12538)

(declare-fun res!48573 () Bool)

(declare-fun e!50544 () Bool)

(assert (=> start!12538 (=> (not res!48573) (not e!50544))))

(declare-datatypes () ((IntSet!64 (IntSetExt!2 (__x!365 Int)) (Empty!203) (Node!184 (left!1969 IntSet!64) (elem!355 (_ BitVec 32)) (right!1975 IntSet!64)))))

(declare-fun thiss!10999 () IntSet!64)

(assert (=> start!12538 (= res!48573 (is-IntSetExt!2 thiss!10999))))

(assert (=> start!12538 e!50544))

(assert (=> start!12538 true))

(declare-fun b!92329 () Bool)

(declare-fun res!48574 () Bool)

(assert (=> b!92329 (=> (not res!48574) (not e!50544))))

(declare-datatypes () ((Unit!1404 (Unit!1405))))

(declare-fun x$1!1276 () Unit!1404)

(declare-fun x!33968 () (_ BitVec 32))

(declare-fun t1!35 () IntSet!64)

(declare-fun t2!39 () IntSet!64)

(declare-fun P4!4 (IntSet!64 IntSet!64 IntSet!64 (_ BitVec 32)) Unit!1404)

(assert (=> b!92329 (= res!48574 (= x$1!1276 (P4!4 thiss!10999 t1!35 t2!39 x!33968)))))

(declare-fun b!92330 () Bool)

(declare-fun res!48575 () Bool)

(assert (=> b!92330 (=> (not res!48575) (not e!50544))))

(declare-fun contains!21 (IntSet!64 (_ BitVec 32)) Bool)

(declare-fun union!4 (IntSet!64 IntSet!64) IntSet!64)

(assert (=> b!92330 (= res!48575 (not (= (contains!21 (union!4 t1!35 t2!39) x!33968) (contains!21 t1!35 x!33968))))))

(declare-fun b!92331 () Bool)

(assert (=> b!92331 (= e!50544 (not (contains!21 t2!39 x!33968)))))

(assert (= (and start!12538 res!48573) b!92329))

(assert (= (and b!92329 res!48574) b!92330))

(assert (= (and b!92330 res!48575) b!92331))

(declare-fun m!88052 () Bool)

(assert (=> b!92329 m!88052))

(declare-fun m!88054 () Bool)

(assert (=> b!92330 m!88054))

(assert (=> b!92330 m!88054))

(declare-fun m!88056 () Bool)

(assert (=> b!92330 m!88056))

(declare-fun m!88058 () Bool)

(assert (=> b!92330 m!88058))

(declare-fun m!88060 () Bool)

(assert (=> b!92331 m!88060))

(push 1)

(assert (not b!92331))

(assert (not b!92330))

(assert (not b!92329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!50551 () Bool)

(declare-fun b!92342 () Bool)

(declare-fun lt!20865 () Bool)

(declare-fun lt!20864 () Bool)

(assert (=> b!92342 (= e!50551 (ite lt!20865 lt!20864 (or (not (bvsgt x!33968 (elem!355 t2!39))) lt!20864)))))

(declare-fun e!50552 () Bool)

(assert (=> b!92342 (= lt!20864 e!50552)))

(declare-fun c!22471 () Bool)

(assert (=> b!92342 (= c!22471 (or lt!20865 (bvsgt x!33968 (elem!355 t2!39))))))

(assert (=> b!92342 (= lt!20865 (bvslt x!33968 (elem!355 t2!39)))))

(declare-fun d!60576 () Bool)

(declare-fun c!22472 () Bool)

(assert (=> d!60576 (= c!22472 (is-IntSetExt!2 t2!39))))

(declare-fun e!50553 () Bool)

(assert (=> d!60576 (= (contains!21 t2!39 x!33968) e!50553)))

(declare-fun b!92343 () Bool)

(declare-fun res!48583 () Bool)

(assert (=> b!92343 (= e!50552 res!48583)))

(assert (=> b!92343 true))

(assert (=> b!92343 true))

(declare-fun b!92344 () Bool)

(assert (=> b!92344 (= e!50553 e!50551)))

(declare-fun res!48584 () Bool)

(assert (=> b!92344 (=> (not res!48584) (not e!50551))))

(assert (=> b!92344 (= res!48584 (not (is-Empty!203 t2!39)))))

(declare-fun b!92345 () Bool)

(assert (=> b!92345 (= e!50552 (contains!21 (ite lt!20865 (left!1969 t2!39) (right!1975 t2!39)) x!33968))))

(declare-fun b!92346 () Bool)

(declare-fun contains!74 (IntSet!64 (_ BitVec 32)) Bool)

(assert (=> b!92346 (= e!50553 (contains!74 t2!39 x!33968))))

(assert (= (and b!92344 res!48584) b!92342))

(assert (= (and b!92342 c!22471) b!92345))

(assert (= (and b!92342 (not c!22471)) b!92343))

(assert (= (and d!60576 c!22472) b!92346))

(assert (= (and d!60576 (not c!22472)) b!92344))

(declare-fun m!88062 () Bool)

(assert (=> b!92345 m!88062))

(declare-fun m!88064 () Bool)

(assert (=> b!92346 m!88064))

(assert (=> b!92331 d!60576))

(declare-fun lt!20866 () Bool)

(declare-fun e!50554 () Bool)

(declare-fun b!92347 () Bool)

(declare-fun lt!20867 () Bool)

(assert (=> b!92347 (= e!50554 (ite lt!20867 lt!20866 (or (not (bvsgt x!33968 (elem!355 (union!4 t1!35 t2!39)))) lt!20866)))))

(declare-fun e!50555 () Bool)

(assert (=> b!92347 (= lt!20866 e!50555)))

(declare-fun c!22473 () Bool)

(assert (=> b!92347 (= c!22473 (or lt!20867 (bvsgt x!33968 (elem!355 (union!4 t1!35 t2!39)))))))

(assert (=> b!92347 (= lt!20867 (bvslt x!33968 (elem!355 (union!4 t1!35 t2!39))))))

(declare-fun d!60578 () Bool)

(declare-fun c!22474 () Bool)

(assert (=> d!60578 (= c!22474 (is-IntSetExt!2 (union!4 t1!35 t2!39)))))

(declare-fun e!50556 () Bool)

(assert (=> d!60578 (= (contains!21 (union!4 t1!35 t2!39) x!33968) e!50556)))

(declare-fun b!92348 () Bool)

(declare-fun res!48585 () Bool)

(assert (=> b!92348 (= e!50555 res!48585)))

(assert (=> b!92348 true))

(assert (=> b!92348 true))

(declare-fun b!92349 () Bool)

(assert (=> b!92349 (= e!50556 e!50554)))

(declare-fun res!48586 () Bool)

(assert (=> b!92349 (=> (not res!48586) (not e!50554))))

(assert (=> b!92349 (= res!48586 (not (is-Empty!203 (union!4 t1!35 t2!39))))))

(declare-fun b!92350 () Bool)

(assert (=> b!92350 (= e!50555 (contains!21 (ite lt!20867 (left!1969 (union!4 t1!35 t2!39)) (right!1975 (union!4 t1!35 t2!39))) x!33968))))

(declare-fun b!92351 () Bool)

(assert (=> b!92351 (= e!50556 (contains!74 (union!4 t1!35 t2!39) x!33968))))

(assert (= (and b!92349 res!48586) b!92347))

(assert (= (and b!92347 c!22473) b!92350))

(assert (= (and b!92347 (not c!22473)) b!92348))

(assert (= (and d!60578 c!22474) b!92351))

(assert (= (and d!60578 (not c!22474)) b!92349))

(declare-fun m!88066 () Bool)

(assert (=> b!92350 m!88066))

(assert (=> b!92351 m!88054))

(declare-fun m!88068 () Bool)

(assert (=> b!92351 m!88068))

(assert (=> b!92330 d!60578))

(declare-fun b!92361 () Bool)

(declare-fun e!50561 () IntSet!64)

(declare-fun e!50562 () IntSet!64)

(assert (=> b!92361 (= e!50561 e!50562)))

(declare-fun c!22480 () Bool)

(assert (=> b!92361 (= c!22480 (is-Empty!203 t1!35))))

(declare-fun b!92363 () Bool)

(declare-fun incl!4 (IntSet!64 (_ BitVec 32)) IntSet!64)

(assert (=> b!92363 (= e!50562 (incl!4 (union!4 (left!1969 t1!35) (union!4 (right!1975 t1!35) t2!39)) (elem!355 t1!35)))))

(declare-fun b!92360 () Bool)

(declare-fun union!603 (IntSet!64 IntSet!64) IntSet!64)

(assert (=> b!92360 (= e!50561 (union!603 t1!35 t2!39))))

(declare-fun b!92362 () Bool)

(assert (=> b!92362 (= e!50562 t2!39)))

(declare-fun d!60580 () Bool)

(declare-fun c!22479 () Bool)

(assert (=> d!60580 (= c!22479 (is-IntSetExt!2 t1!35))))

(assert (=> d!60580 (= (union!4 t1!35 t2!39) e!50561)))

(assert (= (and b!92361 c!22480) b!92362))

(assert (= (and b!92361 (not c!22480)) b!92363))

(assert (= (and d!60580 c!22479) b!92360))

(assert (= (and d!60580 (not c!22479)) b!92361))

(declare-fun m!88070 () Bool)

(assert (=> b!92363 m!88070))

(assert (=> b!92363 m!88070))

(declare-fun m!88072 () Bool)

(assert (=> b!92363 m!88072))

(assert (=> b!92363 m!88072))

(declare-fun m!88074 () Bool)

(assert (=> b!92363 m!88074))

(declare-fun m!88076 () Bool)

(assert (=> b!92360 m!88076))

(assert (=> b!92330 d!60580))

(declare-fun lt!20869 () Bool)

(declare-fun lt!20868 () Bool)

(declare-fun b!92364 () Bool)

(declare-fun e!50563 () Bool)

(assert (=> b!92364 (= e!50563 (ite lt!20869 lt!20868 (or (not (bvsgt x!33968 (elem!355 t1!35))) lt!20868)))))

(declare-fun e!50564 () Bool)

(assert (=> b!92364 (= lt!20868 e!50564)))

(declare-fun c!22481 () Bool)

(assert (=> b!92364 (= c!22481 (or lt!20869 (bvsgt x!33968 (elem!355 t1!35))))))

(assert (=> b!92364 (= lt!20869 (bvslt x!33968 (elem!355 t1!35)))))

(declare-fun d!60582 () Bool)

(declare-fun c!22482 () Bool)

(assert (=> d!60582 (= c!22482 (is-IntSetExt!2 t1!35))))

(declare-fun e!50565 () Bool)

(assert (=> d!60582 (= (contains!21 t1!35 x!33968) e!50565)))

(declare-fun b!92365 () Bool)

(declare-fun res!48587 () Bool)

(assert (=> b!92365 (= e!50564 res!48587)))

(assert (=> b!92365 true))

(assert (=> b!92365 true))

(declare-fun b!92366 () Bool)

(assert (=> b!92366 (= e!50565 e!50563)))

(declare-fun res!48588 () Bool)

(assert (=> b!92366 (=> (not res!48588) (not e!50563))))

(assert (=> b!92366 (= res!48588 (not (is-Empty!203 t1!35)))))

(declare-fun b!92367 () Bool)

(assert (=> b!92367 (= e!50564 (contains!21 (ite lt!20869 (left!1969 t1!35) (right!1975 t1!35)) x!33968))))

(declare-fun b!92368 () Bool)

(assert (=> b!92368 (= e!50565 (contains!74 t1!35 x!33968))))

(assert (= (and b!92366 res!48588) b!92364))

(assert (= (and b!92364 c!22481) b!92367))

(assert (= (and b!92364 (not c!22481)) b!92365))

(assert (= (and d!60582 c!22482) b!92368))

(assert (= (and d!60582 (not c!22482)) b!92366))

(declare-fun m!88078 () Bool)

(assert (=> b!92367 m!88078))

(declare-fun m!88080 () Bool)

(assert (=> b!92368 m!88080))

(assert (=> b!92330 d!60582))

(declare-fun d!60584 () Bool)

(declare-fun e!50568 () Bool)

(assert (=> d!60584 e!50568))

(declare-fun res!48591 () Bool)

(assert (=> d!60584 (=> res!48591 e!50568)))

(assert (=> d!60584 (= res!48591 (= (contains!21 (union!4 t1!35 t2!39) x!33968) (contains!21 t1!35 x!33968)))))

(assert (=> d!60584 true))

(declare-fun x$1!1282 () Unit!1404)

(assert (=> d!60584 (= (P4!4 thiss!10999 t1!35 t2!39 x!33968) x$1!1282)))

(declare-fun b!92371 () Bool)

(assert (=> b!92371 (= e!50568 (contains!21 t2!39 x!33968))))

(assert (= (and d!60584 (not res!48591)) b!92371))

(assert (=> d!60584 m!88054))

(assert (=> d!60584 m!88054))

(assert (=> d!60584 m!88056))

(assert (=> d!60584 m!88058))

(assert (=> b!92371 m!88060))

(assert (=> b!92329 d!60584))

(push 1)

(assert (not b!92363))

(assert (not b!92368))

(assert (not b!92346))

(assert (not b!92345))

(assert (not b!92367))

(assert (not b!92351))

(assert (not b!92350))

(assert (not b!92371))

(assert (not d!60584))

(assert (not b!92360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

