; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7614 () Bool)

(assert start!7614)

(declare-fun res!24990 () Bool)

(declare-fun e!28563 () Bool)

(assert (=> start!7614 (=> (not res!24990) (not e!28563))))

(declare-fun res!24710 () Bool)

(declare-fun x!21384 () (_ BitVec 32))

(declare-datatypes () ((IntSet!35 (Empty!160) (Node!121 (left!1151 IntSet!35) (elem!221 (_ BitVec 32)) (right!1154 IntSet!35)))))

(declare-fun thiss!7629 () IntSet!35)

(assert (=> start!7614 (= res!24990 (and (not (is-Empty!160 thiss!7629)) (bvsge x!21384 (elem!221 thiss!7629)) (bvsle x!21384 (elem!221 thiss!7629)) (= res!24710 true)))))

(assert (=> start!7614 e!28563))

(declare-fun e!28564 () Bool)

(declare-fun inv!977 (IntSet!35) Bool)

(assert (=> start!7614 (and (inv!977 thiss!7629) e!28564)))

(assert (=> start!7614 true))

(declare-fun b!54488 () Bool)

(declare-fun content!17 (IntSet!35) (Set (_ BitVec 32)))

(assert (=> b!54488 (= e!28563 (not (= res!24710 (member x!21384 (content!17 thiss!7629)))))))

(declare-fun tp!15367 () Bool)

(declare-fun tp!15368 () Bool)

(declare-fun b!54489 () Bool)

(assert (=> b!54489 (= e!28564 (and (inv!977 (left!1151 thiss!7629)) tp!15368 (inv!977 (right!1154 thiss!7629)) tp!15367))))

(assert (= (and start!7614 res!24990) b!54488))

(assert (= (and start!7614 (is-Node!121 thiss!7629)) b!54489))

(declare-fun m!58712 () Bool)

(assert (=> start!7614 m!58712))

(declare-fun m!58714 () Bool)

(assert (=> b!54488 m!58714))

(declare-fun m!58716 () Bool)

(assert (=> b!54488 m!58716))

(declare-fun m!58718 () Bool)

(assert (=> b!54489 m!58718))

(declare-fun m!58720 () Bool)

(assert (=> b!54489 m!58720))

(push 1)

(assert (not start!7614))

(assert (not b!54488))

(assert (not b!54489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!54494 () Bool)

(declare-fun m!58722 () Bool)

(assert (=> b!54494 m!58722))

(declare-fun inst!296 () Bool)

(declare-fun x!21707 () (_ BitVec 32))

(assert (=> b!54494 (= inst!296 (=> true (or (not (member x!21707 (content!17 (left!1151 thiss!7629)))) (bvslt x!21707 (elem!221 thiss!7629)))))))

(declare-fun m!58724 () Bool)

(assert (=> b!54494 m!58724))

(declare-fun b!54495 () Bool)

(declare-fun m!58726 () Bool)

(assert (=> b!54495 m!58726))

(declare-fun inst!297 () Bool)

(declare-fun x!21708 () (_ BitVec 32))

(assert (=> b!54495 (= inst!297 (=> true (or (not (member x!21708 (content!17 (right!1154 thiss!7629)))) (bvslt (elem!221 thiss!7629) x!21708))))))

(declare-fun m!58728 () Bool)

(assert (=> b!54495 m!58728))

(declare-fun bs!25438 () Bool)

(declare-fun neg-inst!285 () Bool)

(assert (= bs!25438 neg-inst!285))

(assert (=> bs!25438 m!58722))

(declare-fun bs!25439 () Bool)

(declare-fun s!1261 () Bool)

(assert (= bs!25439 (and neg-inst!285 s!1261)))

(assert (=> bs!25439 (=> true (or (not (member x!21707 (content!17 (left!1151 thiss!7629)))) (bvslt x!21707 (elem!221 thiss!7629))))))

(assert (=> m!58724 s!1261))

(declare-fun bs!25440 () Bool)

(assert (= bs!25440 (and neg-inst!285 b!54494)))

(assert (=> bs!25440 (= true inst!296)))

(declare-fun bs!25441 () Bool)

(declare-fun neg-inst!284 () Bool)

(assert (= bs!25441 neg-inst!284))

(assert (=> bs!25441 m!58726))

(declare-fun bs!25442 () Bool)

(declare-fun s!1263 () Bool)

(assert (= bs!25442 (and neg-inst!284 s!1263)))

(assert (=> bs!25442 (=> true (or (not (member x!21708 (content!17 (right!1154 thiss!7629)))) (bvslt (elem!221 thiss!7629) x!21708)))))

(assert (=> m!58728 s!1263))

(declare-fun bs!25443 () Bool)

(assert (= bs!25443 (and neg-inst!284 b!54495)))

(assert (=> bs!25443 (= true inst!297)))

(declare-fun d!44982 () Bool)

(declare-fun res!24995 () Bool)

(declare-fun e!28570 () Bool)

(assert (=> d!44982 (=> res!24995 e!28570)))

(assert (=> d!44982 (= res!24995 (not (is-Node!121 thiss!7629)))))

(assert (=> d!44982 (= (inv!977 thiss!7629) e!28570)))

(declare-fun e!28569 () Bool)

(assert (=> b!54494 (= e!28570 e!28569)))

(declare-fun res!24996 () Bool)

(assert (=> b!54494 (=> (not res!24996) (not e!28569))))

(assert (=> b!54494 (= res!24996 inst!296)))

(assert (=> b!54495 (= e!28569 inst!297)))

(assert (= (and d!44982 (not res!24995)) b!54494))

(assert (= neg-inst!285 inst!296))

(assert (= (and b!54494 res!24996) b!54495))

(assert (= neg-inst!284 inst!297))

(assert (=> start!7614 d!44982))

(declare-fun d!44984 () Bool)

(declare-fun c!11834 () Bool)

(assert (=> d!44984 (= c!11834 (is-Empty!160 thiss!7629))))

(declare-fun e!28573 () (Set (_ BitVec 32)))

(assert (=> d!44984 (= (content!17 thiss!7629) e!28573)))

(declare-fun b!54500 () Bool)

(assert (=> b!54500 (= e!28573 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54501 () Bool)

(assert (=> b!54501 (= e!28573 (union (union (content!17 (left!1151 thiss!7629)) (insert (elem!221 thiss!7629) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1154 thiss!7629))))))

(assert (= (and d!44984 c!11834) b!54500))

(assert (= (and d!44984 (not c!11834)) b!54501))

(assert (=> b!54501 m!58722))

(declare-fun m!58730 () Bool)

(assert (=> b!54501 m!58730))

(assert (=> b!54501 m!58726))

(assert (=> b!54488 d!44984))

(declare-fun b!54502 () Bool)

(declare-fun m!58732 () Bool)

(assert (=> b!54502 m!58732))

(declare-fun inst!298 () Bool)

(declare-fun x!21709 () (_ BitVec 32))

(assert (=> b!54502 (= inst!298 (=> true (or (not (member x!21709 (content!17 (left!1151 (left!1151 thiss!7629))))) (bvslt x!21709 (elem!221 (left!1151 thiss!7629))))))))

(declare-fun m!58734 () Bool)

(assert (=> b!54502 m!58734))

(declare-fun bs!25444 () Bool)

(assert (= bs!25444 (and b!54502 neg-inst!285)))

(assert (=> (and bs!25444 (= (content!17 (left!1151 (left!1151 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= inst!298 true)))

(declare-fun bs!25445 () Bool)

(assert (= bs!25445 (and b!54502 b!54494)))

(assert (=> (and bs!25445 (= (content!17 (left!1151 (left!1151 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= inst!298 inst!296)))

(declare-fun b!54503 () Bool)

(declare-fun m!58736 () Bool)

(assert (=> b!54503 m!58736))

(declare-fun inst!299 () Bool)

(declare-fun x!21710 () (_ BitVec 32))

(assert (=> b!54503 (= inst!299 (=> true (or (not (member x!21710 (content!17 (right!1154 (left!1151 thiss!7629))))) (bvslt (elem!221 (left!1151 thiss!7629)) x!21710))))))

(declare-fun m!58738 () Bool)

(assert (=> b!54503 m!58738))

(declare-fun bs!25446 () Bool)

(assert (= bs!25446 (and b!54503 b!54495)))

(assert (=> (and bs!25446 (= (content!17 (right!1154 (left!1151 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= inst!299 inst!297)))

(declare-fun bs!25447 () Bool)

(assert (= bs!25447 (and b!54503 neg-inst!284)))

(assert (=> (and bs!25447 (= (content!17 (right!1154 (left!1151 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= inst!299 true)))

(declare-fun bs!25448 () Bool)

(declare-fun neg-inst!287 () Bool)

(assert (= bs!25448 neg-inst!287))

(assert (=> bs!25448 m!58732))

(declare-fun bs!25449 () Bool)

(declare-fun s!1265 () Bool)

(assert (= bs!25449 (and neg-inst!287 s!1265)))

(assert (=> bs!25449 (=> true (or (not (member x!21709 (content!17 (left!1151 (left!1151 thiss!7629))))) (bvslt x!21709 (elem!221 (left!1151 thiss!7629)))))))

(assert (=> m!58734 s!1265))

(declare-fun bs!25450 () Bool)

(assert (= bs!25450 (and neg-inst!287 neg-inst!285)))

(assert (=> (and bs!25450 (= (content!17 (left!1151 (left!1151 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= true true)))

(declare-fun bs!25451 () Bool)

(assert (= bs!25451 (and neg-inst!287 b!54494)))

(assert (=> (and bs!25451 (= (content!17 (left!1151 (left!1151 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= true inst!296)))

(declare-fun bs!25452 () Bool)

(assert (= bs!25452 (and neg-inst!287 b!54502)))

(assert (=> bs!25452 (= true inst!298)))

(declare-fun bs!25453 () Bool)

(declare-fun neg-inst!286 () Bool)

(assert (= bs!25453 neg-inst!286))

(assert (=> bs!25453 m!58736))

(declare-fun bs!25454 () Bool)

(declare-fun s!1267 () Bool)

(assert (= bs!25454 (and neg-inst!286 s!1267)))

(assert (=> bs!25454 (=> true (or (not (member x!21710 (content!17 (right!1154 (left!1151 thiss!7629))))) (bvslt (elem!221 (left!1151 thiss!7629)) x!21710)))))

(assert (=> m!58738 s!1267))

(declare-fun bs!25455 () Bool)

(assert (= bs!25455 (and neg-inst!286 b!54495)))

(assert (=> (and bs!25455 (= (content!17 (right!1154 (left!1151 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= true inst!297)))

(declare-fun bs!25456 () Bool)

(assert (= bs!25456 (and neg-inst!286 neg-inst!284)))

(assert (=> (and bs!25456 (= (content!17 (right!1154 (left!1151 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (left!1151 thiss!7629)) (elem!221 thiss!7629))) (= true true)))

(declare-fun bs!25457 () Bool)

(assert (= bs!25457 (and neg-inst!286 b!54503)))

(assert (=> bs!25457 (= true inst!299)))

(declare-fun d!44986 () Bool)

(declare-fun res!24997 () Bool)

(declare-fun e!28575 () Bool)

(assert (=> d!44986 (=> res!24997 e!28575)))

(assert (=> d!44986 (= res!24997 (not (is-Node!121 (left!1151 thiss!7629))))))

(assert (=> d!44986 (= (inv!977 (left!1151 thiss!7629)) e!28575)))

(declare-fun e!28574 () Bool)

(assert (=> b!54502 (= e!28575 e!28574)))

(declare-fun res!24998 () Bool)

(assert (=> b!54502 (=> (not res!24998) (not e!28574))))

(assert (=> b!54502 (= res!24998 inst!298)))

(assert (=> b!54503 (= e!28574 inst!299)))

(assert (= (and d!44986 (not res!24997)) b!54502))

(assert (= neg-inst!287 inst!298))

(assert (= (and b!54502 res!24998) b!54503))

(assert (= neg-inst!286 inst!299))

(assert (=> b!54489 d!44986))

(declare-fun b!54504 () Bool)

(declare-fun m!58740 () Bool)

(assert (=> b!54504 m!58740))

(declare-fun inst!300 () Bool)

(declare-fun x!21711 () (_ BitVec 32))

(assert (=> b!54504 (= inst!300 (=> true (or (not (member x!21711 (content!17 (left!1151 (right!1154 thiss!7629))))) (bvslt x!21711 (elem!221 (right!1154 thiss!7629))))))))

(declare-fun m!58742 () Bool)

(assert (=> b!54504 m!58742))

(declare-fun bs!25458 () Bool)

(assert (= bs!25458 (and b!54504 neg-inst!285)))

(assert (=> (and bs!25458 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= inst!300 true)))

(declare-fun bs!25459 () Bool)

(assert (= bs!25459 (and b!54504 b!54494)))

(assert (=> (and bs!25459 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= inst!300 inst!296)))

(declare-fun bs!25460 () Bool)

(assert (= bs!25460 (and b!54504 b!54502)))

(assert (=> (and bs!25460 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= inst!300 inst!298)))

(declare-fun bs!25461 () Bool)

(assert (= bs!25461 (and b!54504 neg-inst!287)))

(assert (=> (and bs!25461 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= inst!300 true)))

(declare-fun b!54505 () Bool)

(declare-fun m!58744 () Bool)

(assert (=> b!54505 m!58744))

(declare-fun inst!301 () Bool)

(declare-fun x!21712 () (_ BitVec 32))

(assert (=> b!54505 (= inst!301 (=> true (or (not (member x!21712 (content!17 (right!1154 (right!1154 thiss!7629))))) (bvslt (elem!221 (right!1154 thiss!7629)) x!21712))))))

(declare-fun m!58746 () Bool)

(assert (=> b!54505 m!58746))

(declare-fun bs!25462 () Bool)

(assert (= bs!25462 (and b!54505 neg-inst!286)))

(assert (=> (and bs!25462 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= inst!301 true)))

(declare-fun bs!25463 () Bool)

(assert (= bs!25463 (and b!54505 b!54495)))

(assert (=> (and bs!25463 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= inst!301 inst!297)))

(declare-fun bs!25464 () Bool)

(assert (= bs!25464 (and b!54505 neg-inst!284)))

(assert (=> (and bs!25464 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= inst!301 true)))

(declare-fun bs!25465 () Bool)

(assert (= bs!25465 (and b!54505 b!54503)))

(assert (=> (and bs!25465 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= inst!301 inst!299)))

(declare-fun bs!25466 () Bool)

(declare-fun neg-inst!289 () Bool)

(assert (= bs!25466 neg-inst!289))

(assert (=> bs!25466 m!58740))

(declare-fun bs!25467 () Bool)

(declare-fun s!1269 () Bool)

(assert (= bs!25467 (and neg-inst!289 s!1269)))

(assert (=> bs!25467 (=> true (or (not (member x!21711 (content!17 (left!1151 (right!1154 thiss!7629))))) (bvslt x!21711 (elem!221 (right!1154 thiss!7629)))))))

(assert (=> m!58742 s!1269))

(declare-fun bs!25468 () Bool)

(assert (= bs!25468 (and neg-inst!289 neg-inst!285)))

(assert (=> (and bs!25468 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= true true)))

(declare-fun bs!25469 () Bool)

(assert (= bs!25469 (and neg-inst!289 b!54494)))

(assert (=> (and bs!25469 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= true inst!296)))

(declare-fun bs!25470 () Bool)

(assert (= bs!25470 (and neg-inst!289 b!54502)))

(assert (=> (and bs!25470 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= true inst!298)))

(declare-fun bs!25471 () Bool)

(assert (= bs!25471 (and neg-inst!289 neg-inst!287)))

(assert (=> (and bs!25471 (= (content!17 (left!1151 (right!1154 thiss!7629))) (content!17 (left!1151 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= true true)))

(declare-fun bs!25472 () Bool)

(assert (= bs!25472 (and neg-inst!289 b!54504)))

(assert (=> bs!25472 (= true inst!300)))

(declare-fun bs!25473 () Bool)

(declare-fun neg-inst!288 () Bool)

(assert (= bs!25473 neg-inst!288))

(assert (=> bs!25473 m!58744))

(declare-fun bs!25474 () Bool)

(declare-fun s!1271 () Bool)

(assert (= bs!25474 (and neg-inst!288 s!1271)))

(assert (=> bs!25474 (=> true (or (not (member x!21712 (content!17 (right!1154 (right!1154 thiss!7629))))) (bvslt (elem!221 (right!1154 thiss!7629)) x!21712)))))

(assert (=> m!58746 s!1271))

(declare-fun bs!25475 () Bool)

(assert (= bs!25475 (and neg-inst!288 b!54505)))

(assert (=> bs!25475 (= true inst!301)))

(declare-fun bs!25476 () Bool)

(assert (= bs!25476 (and neg-inst!288 neg-inst!286)))

(assert (=> (and bs!25476 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= true true)))

(declare-fun bs!25477 () Bool)

(assert (= bs!25477 (and neg-inst!288 b!54495)))

(assert (=> (and bs!25477 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= true inst!297)))

(declare-fun bs!25478 () Bool)

(assert (= bs!25478 (and neg-inst!288 neg-inst!284)))

(assert (=> (and bs!25478 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 thiss!7629))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 thiss!7629))) (= true true)))

(declare-fun bs!25479 () Bool)

(assert (= bs!25479 (and neg-inst!288 b!54503)))

(assert (=> (and bs!25479 (= (content!17 (right!1154 (right!1154 thiss!7629))) (content!17 (right!1154 (left!1151 thiss!7629)))) (= (elem!221 (right!1154 thiss!7629)) (elem!221 (left!1151 thiss!7629)))) (= true inst!299)))

(declare-fun d!44988 () Bool)

(declare-fun res!24999 () Bool)

(declare-fun e!28577 () Bool)

(assert (=> d!44988 (=> res!24999 e!28577)))

(assert (=> d!44988 (= res!24999 (not (is-Node!121 (right!1154 thiss!7629))))))

(assert (=> d!44988 (= (inv!977 (right!1154 thiss!7629)) e!28577)))

(declare-fun e!28576 () Bool)

(assert (=> b!54504 (= e!28577 e!28576)))

(declare-fun res!25000 () Bool)

(assert (=> b!54504 (=> (not res!25000) (not e!28576))))

(assert (=> b!54504 (= res!25000 inst!300)))

(assert (=> b!54505 (= e!28576 inst!301)))

(assert (= (and d!44988 (not res!24999)) b!54504))

(assert (= neg-inst!289 inst!300))

(assert (= (and b!54504 res!25000) b!54505))

(assert (= neg-inst!288 inst!301))

(assert (=> b!54489 d!44988))

(declare-fun b!54510 () Bool)

(declare-fun e!28580 () Bool)

(declare-fun tp!15374 () Bool)

(declare-fun tp!15373 () Bool)

(assert (=> b!54510 (= e!28580 (and (inv!977 (left!1151 (left!1151 thiss!7629))) tp!15373 (inv!977 (right!1154 (left!1151 thiss!7629))) tp!15374))))

(assert (=> b!54489 (= tp!15368 (and (inv!977 (left!1151 thiss!7629)) e!28580))))

(assert (= (and b!54489 (is-Node!121 (left!1151 thiss!7629))) b!54510))

(declare-fun m!58748 () Bool)

(assert (=> b!54510 m!58748))

(declare-fun m!58750 () Bool)

(assert (=> b!54510 m!58750))

(assert (=> b!54489 m!58718))

(declare-fun b!54511 () Bool)

(declare-fun e!28581 () Bool)

(declare-fun tp!15375 () Bool)

(declare-fun tp!15376 () Bool)

(assert (=> b!54511 (= e!28581 (and (inv!977 (left!1151 (right!1154 thiss!7629))) tp!15375 (inv!977 (right!1154 (right!1154 thiss!7629))) tp!15376))))

(assert (=> b!54489 (= tp!15367 (and (inv!977 (right!1154 thiss!7629)) e!28581))))

(assert (= (and b!54489 (is-Node!121 (right!1154 thiss!7629))) b!54511))

(declare-fun m!58752 () Bool)

(assert (=> b!54511 m!58752))

(declare-fun m!58754 () Bool)

(assert (=> b!54511 m!58754))

(assert (=> b!54489 m!58720))

(push 1)

(assert (not b!54504))

(assert (not b!54510))

(assert (not b!54502))

(assert (not b!54489))

(assert (not b!54495))

(assert (not b!54511))

(assert (not neg-inst!284))

(assert (not neg-inst!288))

(assert (not neg-inst!285))

(assert (not b!54494))

(assert (not neg-inst!286))

(assert (not b!54503))

(assert (not neg-inst!287))

(assert (not b!54505))

(assert (not neg-inst!289))

(assert (not b!54501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

