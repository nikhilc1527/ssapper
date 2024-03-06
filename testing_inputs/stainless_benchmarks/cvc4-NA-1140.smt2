; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8236 () Bool)

(assert start!8236)

(declare-fun res!27005 () Bool)

(declare-fun e!31058 () Bool)

(assert (=> start!8236 (=> (not res!27005) (not e!31058))))

(declare-datatypes () ((Monoid!17 (ListMonoid!9) (MonoidExt!9 (__x!241 Int)))))

(declare-fun thiss!8556 () Monoid!17)

(assert (=> start!8236 (= res!27005 (is-ListMonoid!9 thiss!8556))))

(assert (=> start!8236 e!31058))

(assert (=> start!8236 true))

(declare-fun b!58363 () Bool)

(declare-fun res!27006 () Bool)

(assert (=> b!58363 (=> (not res!27006) (not e!31058))))

(declare-fun res!26927 () Bool)

(declare-datatypes () ((List!478 (Cons!453 (h!692 Int) (t!47133 List!478)) (Nil!454))))

(declare-fun x!26060 () List!478)

(declare-fun law_leftIdentity!8 (Monoid!17 List!478) Bool)

(assert (=> b!58363 (= res!27006 (= res!26927 (law_leftIdentity!8 thiss!8556 x!26060)))))

(declare-fun b!58364 () Bool)

(declare-fun e!31059 () Bool)

(assert (=> b!58364 (= e!31058 e!31059)))

(declare-fun res!27004 () Bool)

(assert (=> b!58364 (=> res!27004 e!31059)))

(assert (=> b!58364 (= res!27004 (not res!26927))))

(declare-fun b!58365 () Bool)

(declare-fun append!10 (Monoid!17 List!478 List!478) List!478)

(declare-fun empty!15 (Monoid!17) List!478)

(assert (=> b!58365 (= e!31059 (not (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) x!26060)))))

(assert (= (and start!8236 res!27005) b!58363))

(assert (= (and b!58363 res!27006) b!58364))

(assert (= (and b!58364 (not res!27004)) b!58365))

(declare-fun m!62884 () Bool)

(assert (=> b!58363 m!62884))

(declare-fun m!62886 () Bool)

(assert (=> b!58365 m!62886))

(assert (=> b!58365 m!62886))

(declare-fun m!62888 () Bool)

(assert (=> b!58365 m!62888))

(push 1)

(assert (not b!58363))

(assert (not b!58365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50548 () Bool)

(assert (=> d!50548 (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) x!26060)))

(assert (=> d!50548 (= (law_leftIdentity!8 thiss!8556 x!26060) true)))

(declare-fun bs!36348 () Bool)

(assert (= bs!36348 d!50548))

(assert (=> bs!36348 m!62886))

(assert (=> bs!36348 m!62886))

(assert (=> bs!36348 m!62888))

(assert (=> b!58363 d!50548))

(declare-fun d!50550 () Bool)

(declare-fun c!12496 () Bool)

(assert (=> d!50550 (= c!12496 (is-ListMonoid!9 thiss!8556))))

(declare-fun e!31062 () List!478)

(assert (=> d!50550 (= (append!10 thiss!8556 (empty!15 thiss!8556) x!26060) e!31062)))

(declare-fun b!58370 () Bool)

(declare-fun append!11 (Monoid!17 List!478 List!478) List!478)

(assert (=> b!58370 (= e!31062 (append!11 thiss!8556 (empty!15 thiss!8556) x!26060))))

(declare-fun b!58371 () Bool)

(declare-fun append!161 (Monoid!17 List!478 List!478) List!478)

(assert (=> b!58371 (= e!31062 (append!161 thiss!8556 (empty!15 thiss!8556) x!26060))))

(assert (= (and d!50550 c!12496) b!58370))

(assert (= (and d!50550 (not c!12496)) b!58371))

(assert (=> b!58370 m!62886))

(declare-fun m!62890 () Bool)

(assert (=> b!58370 m!62890))

(assert (=> b!58371 m!62886))

(declare-fun m!62892 () Bool)

(assert (=> b!58371 m!62892))

(assert (=> b!58365 d!50550))

(declare-fun d!50552 () Bool)

(declare-fun c!12499 () Bool)

(assert (=> d!50552 (= c!12499 (is-ListMonoid!9 thiss!8556))))

(declare-fun e!31065 () List!478)

(assert (=> d!50552 (= (empty!15 thiss!8556) e!31065)))

(declare-fun b!58376 () Bool)

(declare-fun empty!16 (Monoid!17) List!478)

(assert (=> b!58376 (= e!31065 (empty!16 thiss!8556))))

(declare-fun b!58377 () Bool)

(declare-fun empty!118 (Monoid!17) List!478)

(assert (=> b!58377 (= e!31065 (empty!118 thiss!8556))))

(assert (= (and d!50552 c!12499) b!58376))

(assert (= (and d!50552 (not c!12499)) b!58377))

(declare-fun m!62894 () Bool)

(assert (=> b!58376 m!62894))

(declare-fun m!62896 () Bool)

(assert (=> b!58377 m!62896))

(assert (=> b!58365 d!50552))

(push 1)

(assert (not b!58371))

(assert (not b!58376))

(assert (not b!58370))

(assert (not d!50548))

(assert (not b!58377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

