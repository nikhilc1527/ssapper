; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8252 () Bool)

(assert start!8252)

(declare-fun res!27027 () Bool)

(declare-fun e!31083 () Bool)

(assert (=> start!8252 (=> (not res!27027) (not e!31083))))

(declare-datatypes () ((List!480 (Cons!455 (h!694 Int) (t!47135 List!480)) (Nil!456))))

(declare-fun x!26055 () List!480)

(declare-datatypes () ((Monoid!19 (ListMonoid!11) (MonoidExt!11 (__x!243 Int)))))

(declare-fun thiss!8531 () Monoid!19)

(declare-fun thiss!8530 () Monoid!19)

(declare-fun x!26056 () List!480)

(declare-fun res!26925 () Bool)

(assert (=> start!8252 (= res!27027 (and (is-ListMonoid!11 thiss!8530) (= res!26925 true) (= thiss!8531 thiss!8530) (= x!26056 x!26055)))))

(assert (=> start!8252 e!31083))

(assert (=> start!8252 true))

(declare-fun b!58406 () Bool)

(declare-fun res!27028 () Bool)

(assert (=> b!58406 (=> (not res!27028) (not e!31083))))

(declare-fun inlined!6484 () Bool)

(declare-fun append!10 (Monoid!19 List!480 List!480) List!480)

(declare-fun empty!15 (Monoid!19) List!480)

(assert (=> b!58406 (= res!27028 (= inlined!6484 (= (append!10 thiss!8531 (empty!15 thiss!8531) x!26056) x!26056)))))

(declare-fun b!58407 () Bool)

(assert (=> b!58407 (= e!31083 (not inlined!6484))))

(assert (= (and start!8252 res!27027) b!58406))

(assert (= (and b!58406 res!27028) b!58407))

(declare-fun m!62912 () Bool)

(assert (=> b!58406 m!62912))

(assert (=> b!58406 m!62912))

(declare-fun m!62914 () Bool)

(assert (=> b!58406 m!62914))

(push 1)

(assert (not b!58406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50560 () Bool)

(declare-fun c!12508 () Bool)

(assert (=> d!50560 (= c!12508 (is-ListMonoid!11 thiss!8531))))

(declare-fun e!31086 () List!480)

(assert (=> d!50560 (= (append!10 thiss!8531 (empty!15 thiss!8531) x!26056) e!31086)))

(declare-fun b!58412 () Bool)

(declare-fun append!11 (Monoid!19 List!480 List!480) List!480)

(assert (=> b!58412 (= e!31086 (append!11 thiss!8531 (empty!15 thiss!8531) x!26056))))

(declare-fun b!58413 () Bool)

(declare-fun append!161 (Monoid!19 List!480 List!480) List!480)

(assert (=> b!58413 (= e!31086 (append!161 thiss!8531 (empty!15 thiss!8531) x!26056))))

(assert (= (and d!50560 c!12508) b!58412))

(assert (= (and d!50560 (not c!12508)) b!58413))

(assert (=> b!58412 m!62912))

(declare-fun m!62916 () Bool)

(assert (=> b!58412 m!62916))

(assert (=> b!58413 m!62912))

(declare-fun m!62918 () Bool)

(assert (=> b!58413 m!62918))

(assert (=> b!58406 d!50560))

(declare-fun d!50562 () Bool)

(declare-fun c!12511 () Bool)

(assert (=> d!50562 (= c!12511 (is-ListMonoid!11 thiss!8531))))

(declare-fun e!31089 () List!480)

(assert (=> d!50562 (= (empty!15 thiss!8531) e!31089)))

(declare-fun b!58418 () Bool)

(declare-fun empty!16 (Monoid!19) List!480)

(assert (=> b!58418 (= e!31089 (empty!16 thiss!8531))))

(declare-fun b!58419 () Bool)

(declare-fun empty!118 (Monoid!19) List!480)

(assert (=> b!58419 (= e!31089 (empty!118 thiss!8531))))

(assert (= (and d!50562 c!12511) b!58418))

(assert (= (and d!50562 (not c!12511)) b!58419))

(declare-fun m!62920 () Bool)

(assert (=> b!58418 m!62920))

(declare-fun m!62922 () Bool)

(assert (=> b!58419 m!62922))

(assert (=> b!58406 d!50562))

(push 1)

(assert (not b!58418))

(assert (not b!58413))

(assert (not b!58419))

(assert (not b!58412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50564 () Bool)

(assert (=> d!50564 (is-ListMonoid!11 thiss!8531)))

(assert (=> d!50564 (= (empty!16 thiss!8531) Nil!456)))

(assert (=> b!58418 d!50564))

(declare-fun d!50566 () Bool)

(assert (=> d!50566 true))

(assert (=> d!50566 true))

(declare-fun res!27031 () List!480)

(assert (=> d!50566 (= (append!161 thiss!8531 (empty!15 thiss!8531) x!26056) res!27031)))

(assert (=> b!58413 d!50566))

(declare-fun d!50568 () Bool)

(assert (=> d!50568 true))

(assert (=> d!50568 true))

(declare-fun res!27034 () List!480)

(assert (=> d!50568 (= (empty!118 thiss!8531) res!27034)))

(assert (=> b!58419 d!50568))

(declare-fun d!50570 () Bool)

(declare-fun ++!58 (List!480 List!480) List!480)

(assert (=> d!50570 (= (append!11 thiss!8531 (empty!15 thiss!8531) x!26056) (++!58 (empty!15 thiss!8531) x!26056))))

(declare-fun bs!36351 () Bool)

(assert (= bs!36351 d!50570))

(assert (=> bs!36351 m!62912))

(declare-fun m!62924 () Bool)

(assert (=> bs!36351 m!62924))

(assert (=> b!58412 d!50570))

(push 1)

(assert (not d!50570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58428 () Bool)

(declare-fun e!31094 () List!480)

(assert (=> b!58428 (= e!31094 x!26056)))

(declare-fun d!50572 () Bool)

(declare-fun e!31095 () Bool)

(assert (=> d!50572 e!31095))

(declare-fun res!27040 () Bool)

(assert (=> d!50572 (=> (not res!27040) (not e!31095))))

(declare-fun lt!10690 () List!480)

(declare-fun content!98 (List!480) (Set Int))

(assert (=> d!50572 (= res!27040 (= (content!98 lt!10690) (union (content!98 (empty!15 thiss!8531)) (content!98 x!26056))))))

(assert (=> d!50572 (= lt!10690 e!31094)))

(declare-fun c!12514 () Bool)

(assert (=> d!50572 (= c!12514 (is-Nil!456 (empty!15 thiss!8531)))))

(assert (=> d!50572 (= (++!58 (empty!15 thiss!8531) x!26056) lt!10690)))

(declare-fun b!58429 () Bool)

(assert (=> b!58429 (= e!31094 (Cons!455 (h!694 (empty!15 thiss!8531)) (++!58 (t!47135 (empty!15 thiss!8531)) x!26056)))))

(declare-fun b!58431 () Bool)

(assert (=> b!58431 (= e!31095 (or (not (= x!26056 Nil!456)) (= lt!10690 (empty!15 thiss!8531))))))

(declare-fun b!58430 () Bool)

(declare-fun res!27041 () Bool)

(assert (=> b!58430 (=> (not res!27041) (not e!31095))))

(declare-fun size!477 (List!480) Int)

(assert (=> b!58430 (= res!27041 (= (size!477 lt!10690) (+ (size!477 (empty!15 thiss!8531)) (size!477 x!26056))))))

(assert (= (and d!50572 c!12514) b!58428))

(assert (= (and d!50572 (not c!12514)) b!58429))

(assert (= (and d!50572 res!27040) b!58430))

(assert (= (and b!58430 res!27041) b!58431))

(declare-fun m!62926 () Bool)

(assert (=> d!50572 m!62926))

(assert (=> d!50572 m!62912))

(declare-fun m!62928 () Bool)

(assert (=> d!50572 m!62928))

(declare-fun m!62930 () Bool)

(assert (=> d!50572 m!62930))

(declare-fun m!62932 () Bool)

(assert (=> b!58429 m!62932))

(declare-fun m!62934 () Bool)

(assert (=> b!58430 m!62934))

(assert (=> b!58430 m!62912))

(declare-fun m!62936 () Bool)

(assert (=> b!58430 m!62936))

(declare-fun m!62938 () Bool)

(assert (=> b!58430 m!62938))

(assert (=> d!50570 d!50572))

(push 1)

(assert (not d!50572))

(assert (not b!58430))

(assert (not b!58429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

