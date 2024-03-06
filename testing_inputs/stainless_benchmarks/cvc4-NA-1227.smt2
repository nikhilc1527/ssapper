; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8734 () Bool)

(assert start!8734)

(declare-fun b!60532 () Bool)

(declare-fun res!28194 () Bool)

(declare-fun e!32352 () Bool)

(assert (=> b!60532 (=> (not res!28194) (not e!32352))))

(declare-datatypes () ((List!544 (Cons!510 (head!855 (_ BitVec 32)) (tail!881 List!544)) (Nil!511))))

(declare-fun res!27385 () List!544)

(declare-fun list2!2 () List!544)

(declare-fun list1!2 () List!544)

(declare-fun mergeFast!0 (List!544 List!544) List!544)

(assert (=> b!60532 (= res!28194 (= res!27385 (Cons!510 (head!855 list1!2) (mergeFast!0 (tail!881 list1!2) list2!2))))))

(declare-fun b!60533 () Bool)

(declare-fun mergeSpec!0 (List!544 List!544 List!544) Bool)

(assert (=> b!60533 (= e!32352 (not (mergeSpec!0 list1!2 list2!2 res!27385)))))

(declare-fun res!28195 () Bool)

(assert (=> start!8734 (=> (not res!28195) (not e!32352))))

(declare-fun isSorted!4 (List!544) Bool)

(assert (=> start!8734 (= res!28195 (isSorted!4 list1!2))))

(assert (=> start!8734 e!32352))

(assert (=> start!8734 true))

(declare-fun b!60531 () Bool)

(declare-fun res!28197 () Bool)

(assert (=> b!60531 (=> (not res!28197) (not e!32352))))

(assert (=> b!60531 (= res!28197 (and (not (is-Nil!511 list2!2)) (not (is-Nil!511 list1!2)) (bvsle (head!855 list1!2) (head!855 list2!2))))))

(declare-fun b!60530 () Bool)

(declare-fun res!28196 () Bool)

(assert (=> b!60530 (=> (not res!28196) (not e!32352))))

(assert (=> b!60530 (= res!28196 (isSorted!4 list2!2))))

(assert (= (and start!8734 res!28195) b!60530))

(assert (= (and b!60530 res!28196) b!60531))

(assert (= (and b!60531 res!28197) b!60532))

(assert (= (and b!60532 res!28194) b!60533))

(declare-fun m!65402 () Bool)

(assert (=> b!60532 m!65402))

(declare-fun m!65404 () Bool)

(assert (=> b!60533 m!65404))

(declare-fun m!65406 () Bool)

(assert (=> start!8734 m!65406))

(declare-fun m!65408 () Bool)

(assert (=> b!60530 m!65408))

(push 1)

(assert (not b!60530))

(assert (not b!60532))

(assert (not start!8734))

(assert (not b!60533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51579 () Bool)

(declare-fun res!28202 () Bool)

(declare-fun e!32357 () Bool)

(assert (=> d!51579 (=> res!28202 e!32357)))

(assert (=> d!51579 (= res!28202 (or (is-Nil!511 list2!2) (and (is-Cons!510 list2!2) (is-Nil!511 (tail!881 list2!2)))))))

(assert (=> d!51579 (= (isSorted!4 list2!2) e!32357)))

(declare-fun b!60538 () Bool)

(declare-fun e!32358 () Bool)

(assert (=> b!60538 (= e!32357 e!32358)))

(declare-fun res!28203 () Bool)

(assert (=> b!60538 (=> (not res!28203) (not e!32358))))

(assert (=> b!60538 (= res!28203 (not (and (is-Cons!510 list2!2) (is-Cons!510 (tail!881 list2!2)) (bvsgt (head!855 list2!2) (head!855 (tail!881 list2!2))))))))

(declare-fun b!60539 () Bool)

(assert (=> b!60539 (= e!32358 (isSorted!4 (tail!881 list2!2)))))

(assert (= (and d!51579 (not res!28202)) b!60538))

(assert (= (and b!60538 res!28203) b!60539))

(declare-fun m!65410 () Bool)

(assert (=> b!60539 m!65410))

(assert (=> b!60530 d!51579))

(declare-fun lt!11169 () List!544)

(declare-fun lt!11170 () Bool)

(declare-fun e!32366 () List!544)

(declare-fun b!60550 () Bool)

(assert (=> b!60550 (= e!32366 (ite lt!11170 (Cons!510 (head!855 (tail!881 list1!2)) lt!11169) (Cons!510 (head!855 list2!2) lt!11169)))))

(assert (=> b!60550 (= lt!11169 (mergeFast!0 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2)) (ite lt!11170 list2!2 (tail!881 list2!2))))))

(assert (=> b!60550 (= lt!11170 (bvsle (head!855 (tail!881 list1!2)) (head!855 list2!2)))))

(declare-fun b!60551 () Bool)

(declare-fun e!32367 () List!544)

(assert (=> b!60551 (= e!32367 e!32366)))

(declare-fun c!13120 () Bool)

(assert (=> b!60551 (= c!13120 (is-Nil!511 (tail!881 list1!2)))))

(declare-fun b!60552 () Bool)

(assert (=> b!60552 (= e!32366 list2!2)))

(declare-fun b!60553 () Bool)

(assert (=> b!60553 (= e!32367 (tail!881 list1!2))))

(declare-fun d!51581 () Bool)

(declare-fun lt!11171 () List!544)

(assert (=> d!51581 (mergeSpec!0 (tail!881 list1!2) list2!2 lt!11171)))

(assert (=> d!51581 (= lt!11171 e!32367)))

(declare-fun c!13119 () Bool)

(assert (=> d!51581 (= c!13119 (is-Nil!511 list2!2))))

(declare-fun e!32365 () Bool)

(assert (=> d!51581 e!32365))

(declare-fun res!28210 () Bool)

(assert (=> d!51581 (=> (not res!28210) (not e!32365))))

(assert (=> d!51581 (= res!28210 (isSorted!4 (tail!881 list1!2)))))

(assert (=> d!51581 (= (mergeFast!0 (tail!881 list1!2) list2!2) lt!11171)))

(declare-fun b!60554 () Bool)

(assert (=> b!60554 (= e!32365 (isSorted!4 list2!2))))

(assert (= (and d!51581 res!28210) b!60554))

(assert (= (and b!60551 c!13120) b!60552))

(assert (= (and b!60551 (not c!13120)) b!60550))

(assert (= (and d!51581 c!13119) b!60553))

(assert (= (and d!51581 (not c!13119)) b!60551))

(declare-fun m!65412 () Bool)

(assert (=> b!60550 m!65412))

(declare-fun m!65414 () Bool)

(assert (=> d!51581 m!65414))

(declare-fun m!65416 () Bool)

(assert (=> d!51581 m!65416))

(assert (=> b!60554 m!65408))

(assert (=> b!60532 d!51581))

(declare-fun d!51583 () Bool)

(declare-fun res!28211 () Bool)

(declare-fun e!32368 () Bool)

(assert (=> d!51583 (=> res!28211 e!32368)))

(assert (=> d!51583 (= res!28211 (or (is-Nil!511 list1!2) (and (is-Cons!510 list1!2) (is-Nil!511 (tail!881 list1!2)))))))

(assert (=> d!51583 (= (isSorted!4 list1!2) e!32368)))

(declare-fun b!60555 () Bool)

(declare-fun e!32369 () Bool)

(assert (=> b!60555 (= e!32368 e!32369)))

(declare-fun res!28212 () Bool)

(assert (=> b!60555 (=> (not res!28212) (not e!32369))))

(assert (=> b!60555 (= res!28212 (not (and (is-Cons!510 list1!2) (is-Cons!510 (tail!881 list1!2)) (bvsgt (head!855 list1!2) (head!855 (tail!881 list1!2))))))))

(declare-fun b!60556 () Bool)

(assert (=> b!60556 (= e!32369 (isSorted!4 (tail!881 list1!2)))))

(assert (= (and d!51583 (not res!28211)) b!60555))

(assert (= (and b!60555 res!28212) b!60556))

(assert (=> b!60556 m!65416))

(assert (=> start!8734 d!51583))

(declare-fun d!51585 () Bool)

(declare-fun res!28216 () Bool)

(declare-fun e!32372 () Bool)

(assert (=> d!51585 (=> (not res!28216) (not e!32372))))

(assert (=> d!51585 (= res!28216 (isSorted!4 res!27385))))

(assert (=> d!51585 (= (mergeSpec!0 list1!2 list2!2 res!27385) e!32372)))

(declare-fun b!60559 () Bool)

(declare-fun content!15 (List!544) (Set (_ BitVec 32)))

(assert (=> b!60559 (= e!32372 (= (content!15 res!27385) (union (content!15 list1!2) (content!15 list2!2))))))

(assert (= (and d!51585 res!28216) b!60559))

(declare-fun m!65418 () Bool)

(assert (=> d!51585 m!65418))

(declare-fun m!65420 () Bool)

(assert (=> b!60559 m!65420))

(declare-fun m!65422 () Bool)

(assert (=> b!60559 m!65422))

(declare-fun m!65424 () Bool)

(assert (=> b!60559 m!65424))

(assert (=> b!60533 d!51585))

(push 1)

(assert (not b!60556))

(assert (not d!51581))

(assert (not b!60554))

(assert (not b!60539))

(assert (not d!51585))

(assert (not b!60559))

(assert (not b!60550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51587 () Bool)

(declare-fun res!28217 () Bool)

(declare-fun e!32373 () Bool)

(assert (=> d!51587 (=> res!28217 e!32373)))

(assert (=> d!51587 (= res!28217 (or (is-Nil!511 (tail!881 list1!2)) (and (is-Cons!510 (tail!881 list1!2)) (is-Nil!511 (tail!881 (tail!881 list1!2))))))))

(assert (=> d!51587 (= (isSorted!4 (tail!881 list1!2)) e!32373)))

(declare-fun b!60560 () Bool)

(declare-fun e!32374 () Bool)

(assert (=> b!60560 (= e!32373 e!32374)))

(declare-fun res!28218 () Bool)

(assert (=> b!60560 (=> (not res!28218) (not e!32374))))

(assert (=> b!60560 (= res!28218 (not (and (is-Cons!510 (tail!881 list1!2)) (is-Cons!510 (tail!881 (tail!881 list1!2))) (bvsgt (head!855 (tail!881 list1!2)) (head!855 (tail!881 (tail!881 list1!2)))))))))

(declare-fun b!60561 () Bool)

(assert (=> b!60561 (= e!32374 (isSorted!4 (tail!881 (tail!881 list1!2))))))

(assert (= (and d!51587 (not res!28217)) b!60560))

(assert (= (and b!60560 res!28218) b!60561))

(declare-fun m!65426 () Bool)

(assert (=> b!60561 m!65426))

(assert (=> b!60556 d!51587))

(assert (=> b!60554 d!51579))

(declare-fun d!51589 () Bool)

(declare-fun res!28219 () Bool)

(declare-fun e!32375 () Bool)

(assert (=> d!51589 (=> res!28219 e!32375)))

(assert (=> d!51589 (= res!28219 (or (is-Nil!511 (tail!881 list2!2)) (and (is-Cons!510 (tail!881 list2!2)) (is-Nil!511 (tail!881 (tail!881 list2!2))))))))

(assert (=> d!51589 (= (isSorted!4 (tail!881 list2!2)) e!32375)))

(declare-fun b!60562 () Bool)

(declare-fun e!32376 () Bool)

(assert (=> b!60562 (= e!32375 e!32376)))

(declare-fun res!28220 () Bool)

(assert (=> b!60562 (=> (not res!28220) (not e!32376))))

(assert (=> b!60562 (= res!28220 (not (and (is-Cons!510 (tail!881 list2!2)) (is-Cons!510 (tail!881 (tail!881 list2!2))) (bvsgt (head!855 (tail!881 list2!2)) (head!855 (tail!881 (tail!881 list2!2)))))))))

(declare-fun b!60563 () Bool)

(assert (=> b!60563 (= e!32376 (isSorted!4 (tail!881 (tail!881 list2!2))))))

(assert (= (and d!51589 (not res!28219)) b!60562))

(assert (= (and b!60562 res!28220) b!60563))

(declare-fun m!65428 () Bool)

(assert (=> b!60563 m!65428))

(assert (=> b!60539 d!51589))

(declare-fun d!51591 () Bool)

(declare-fun c!13123 () Bool)

(assert (=> d!51591 (= c!13123 (is-Nil!511 res!27385))))

(declare-fun e!32379 () (Set (_ BitVec 32)))

(assert (=> d!51591 (= (content!15 res!27385) e!32379)))

(declare-fun b!60568 () Bool)

(assert (=> b!60568 (= e!32379 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60569 () Bool)

(assert (=> b!60569 (= e!32379 (union (insert (head!855 res!27385) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!881 res!27385))))))

(assert (= (and d!51591 c!13123) b!60568))

(assert (= (and d!51591 (not c!13123)) b!60569))

(declare-fun m!65430 () Bool)

(assert (=> b!60569 m!65430))

(declare-fun m!65432 () Bool)

(assert (=> b!60569 m!65432))

(assert (=> b!60559 d!51591))

(declare-fun d!51593 () Bool)

(declare-fun c!13124 () Bool)

(assert (=> d!51593 (= c!13124 (is-Nil!511 list1!2))))

(declare-fun e!32380 () (Set (_ BitVec 32)))

(assert (=> d!51593 (= (content!15 list1!2) e!32380)))

(declare-fun b!60570 () Bool)

(assert (=> b!60570 (= e!32380 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60571 () Bool)

(assert (=> b!60571 (= e!32380 (union (insert (head!855 list1!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!881 list1!2))))))

(assert (= (and d!51593 c!13124) b!60570))

(assert (= (and d!51593 (not c!13124)) b!60571))

(declare-fun m!65434 () Bool)

(assert (=> b!60571 m!65434))

(declare-fun m!65436 () Bool)

(assert (=> b!60571 m!65436))

(assert (=> b!60559 d!51593))

(declare-fun d!51595 () Bool)

(declare-fun c!13125 () Bool)

(assert (=> d!51595 (= c!13125 (is-Nil!511 list2!2))))

(declare-fun e!32381 () (Set (_ BitVec 32)))

(assert (=> d!51595 (= (content!15 list2!2) e!32381)))

(declare-fun b!60572 () Bool)

(assert (=> b!60572 (= e!32381 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60573 () Bool)

(assert (=> b!60573 (= e!32381 (union (insert (head!855 list2!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!881 list2!2))))))

(assert (= (and d!51595 c!13125) b!60572))

(assert (= (and d!51595 (not c!13125)) b!60573))

(declare-fun m!65438 () Bool)

(assert (=> b!60573 m!65438))

(declare-fun m!65440 () Bool)

(assert (=> b!60573 m!65440))

(assert (=> b!60559 d!51595))

(declare-fun d!51597 () Bool)

(declare-fun res!28221 () Bool)

(declare-fun e!32382 () Bool)

(assert (=> d!51597 (=> res!28221 e!32382)))

(assert (=> d!51597 (= res!28221 (or (is-Nil!511 res!27385) (and (is-Cons!510 res!27385) (is-Nil!511 (tail!881 res!27385)))))))

(assert (=> d!51597 (= (isSorted!4 res!27385) e!32382)))

(declare-fun b!60574 () Bool)

(declare-fun e!32383 () Bool)

(assert (=> b!60574 (= e!32382 e!32383)))

(declare-fun res!28222 () Bool)

(assert (=> b!60574 (=> (not res!28222) (not e!32383))))

(assert (=> b!60574 (= res!28222 (not (and (is-Cons!510 res!27385) (is-Cons!510 (tail!881 res!27385)) (bvsgt (head!855 res!27385) (head!855 (tail!881 res!27385))))))))

(declare-fun b!60575 () Bool)

(assert (=> b!60575 (= e!32383 (isSorted!4 (tail!881 res!27385)))))

(assert (= (and d!51597 (not res!28221)) b!60574))

(assert (= (and b!60574 res!28222) b!60575))

(declare-fun m!65442 () Bool)

(assert (=> b!60575 m!65442))

(assert (=> d!51585 d!51597))

(declare-fun lt!11172 () List!544)

(declare-fun lt!11173 () Bool)

(declare-fun b!60576 () Bool)

(declare-fun e!32385 () List!544)

(assert (=> b!60576 (= e!32385 (ite lt!11173 (Cons!510 (head!855 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))) lt!11172) (Cons!510 (head!855 (ite lt!11170 list2!2 (tail!881 list2!2))) lt!11172)))))

(assert (=> b!60576 (= lt!11172 (mergeFast!0 (ite lt!11173 (tail!881 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))) (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))) (ite lt!11173 (ite lt!11170 list2!2 (tail!881 list2!2)) (tail!881 (ite lt!11170 list2!2 (tail!881 list2!2))))))))

(assert (=> b!60576 (= lt!11173 (bvsle (head!855 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))) (head!855 (ite lt!11170 list2!2 (tail!881 list2!2)))))))

(declare-fun b!60577 () Bool)

(declare-fun e!32386 () List!544)

(assert (=> b!60577 (= e!32386 e!32385)))

(declare-fun c!13127 () Bool)

(assert (=> b!60577 (= c!13127 (is-Nil!511 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))))))

(declare-fun b!60578 () Bool)

(assert (=> b!60578 (= e!32385 (ite lt!11170 list2!2 (tail!881 list2!2)))))

(declare-fun b!60579 () Bool)

(assert (=> b!60579 (= e!32386 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2)))))

(declare-fun d!51599 () Bool)

(declare-fun lt!11174 () List!544)

(assert (=> d!51599 (mergeSpec!0 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2)) (ite lt!11170 list2!2 (tail!881 list2!2)) lt!11174)))

(assert (=> d!51599 (= lt!11174 e!32386)))

(declare-fun c!13126 () Bool)

(assert (=> d!51599 (= c!13126 (is-Nil!511 (ite lt!11170 list2!2 (tail!881 list2!2))))))

(declare-fun e!32384 () Bool)

(assert (=> d!51599 e!32384))

(declare-fun res!28223 () Bool)

(assert (=> d!51599 (=> (not res!28223) (not e!32384))))

(assert (=> d!51599 (= res!28223 (isSorted!4 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2))))))

(assert (=> d!51599 (= (mergeFast!0 (ite lt!11170 (tail!881 (tail!881 list1!2)) (tail!881 list1!2)) (ite lt!11170 list2!2 (tail!881 list2!2))) lt!11174)))

(declare-fun b!60580 () Bool)

(assert (=> b!60580 (= e!32384 (isSorted!4 (ite lt!11170 list2!2 (tail!881 list2!2))))))

(assert (= (and d!51599 res!28223) b!60580))

(assert (= (and b!60577 c!13127) b!60578))

(assert (= (and b!60577 (not c!13127)) b!60576))

(assert (= (and d!51599 c!13126) b!60579))

(assert (= (and d!51599 (not c!13126)) b!60577))

(declare-fun m!65444 () Bool)

(assert (=> b!60576 m!65444))

(declare-fun m!65446 () Bool)

(assert (=> d!51599 m!65446))

(declare-fun m!65448 () Bool)

(assert (=> d!51599 m!65448))

(declare-fun m!65450 () Bool)

(assert (=> b!60580 m!65450))

(assert (=> b!60550 d!51599))

(declare-fun d!51601 () Bool)

(declare-fun res!28224 () Bool)

(declare-fun e!32387 () Bool)

(assert (=> d!51601 (=> (not res!28224) (not e!32387))))

(assert (=> d!51601 (= res!28224 (isSorted!4 lt!11171))))

(assert (=> d!51601 (= (mergeSpec!0 (tail!881 list1!2) list2!2 lt!11171) e!32387)))

(declare-fun b!60581 () Bool)

(assert (=> b!60581 (= e!32387 (= (content!15 lt!11171) (union (content!15 (tail!881 list1!2)) (content!15 list2!2))))))

(assert (= (and d!51601 res!28224) b!60581))

(declare-fun m!65452 () Bool)

(assert (=> d!51601 m!65452))

(declare-fun m!65454 () Bool)

(assert (=> b!60581 m!65454))

(assert (=> b!60581 m!65436))

(assert (=> b!60581 m!65424))

(assert (=> d!51581 d!51601))

(assert (=> d!51581 d!51587))

(push 1)

(assert (not b!60569))

(assert (not d!51599))

(assert (not d!51601))

(assert (not b!60573))

(assert (not b!60580))

(assert (not b!60575))

(assert (not b!60581))

(assert (not b!60576))

(assert (not b!60561))

(assert (not b!60571))

(assert (not b!60563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

