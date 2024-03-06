; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8718 () Bool)

(assert start!8718)

(declare-fun res!28138 () Bool)

(declare-fun e!32302 () Bool)

(assert (=> start!8718 (=> (not res!28138) (not e!32302))))

(declare-datatypes () ((List!542 (Cons!508 (head!853 (_ BitVec 32)) (tail!879 List!542)) (Nil!509))))

(declare-fun list1!2 () List!542)

(declare-fun isSorted!4 (List!542) Bool)

(assert (=> start!8718 (= res!28138 (isSorted!4 list1!2))))

(assert (=> start!8718 e!32302))

(assert (=> start!8718 true))

(declare-fun b!60456 () Bool)

(declare-fun res!28139 () Bool)

(assert (=> b!60456 (=> (not res!28139) (not e!32302))))

(declare-fun list2!2 () List!542)

(assert (=> b!60456 (= res!28139 (isSorted!4 list2!2))))

(declare-fun b!60457 () Bool)

(declare-fun res!28140 () Bool)

(assert (=> b!60457 (=> (not res!28140) (not e!32302))))

(declare-fun res!27379 () List!542)

(assert (=> b!60457 (= res!28140 (and (is-Nil!509 list2!2) (= res!27379 list1!2)))))

(declare-fun b!60458 () Bool)

(declare-fun mergeSpec!0 (List!542 List!542 List!542) Bool)

(assert (=> b!60458 (= e!32302 (not (mergeSpec!0 list1!2 list2!2 res!27379)))))

(assert (= (and start!8718 res!28138) b!60456))

(assert (= (and b!60456 res!28139) b!60457))

(assert (= (and b!60457 res!28140) b!60458))

(declare-fun m!65330 () Bool)

(assert (=> start!8718 m!65330))

(declare-fun m!65332 () Bool)

(assert (=> b!60456 m!65332))

(declare-fun m!65334 () Bool)

(assert (=> b!60458 m!65334))

(push 1)

(assert (not start!8718))

(assert (not b!60456))

(assert (not b!60458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51543 () Bool)

(declare-fun res!28145 () Bool)

(declare-fun e!32307 () Bool)

(assert (=> d!51543 (=> res!28145 e!32307)))

(assert (=> d!51543 (= res!28145 (or (is-Nil!509 list1!2) (and (is-Cons!508 list1!2) (is-Nil!509 (tail!879 list1!2)))))))

(assert (=> d!51543 (= (isSorted!4 list1!2) e!32307)))

(declare-fun b!60463 () Bool)

(declare-fun e!32308 () Bool)

(assert (=> b!60463 (= e!32307 e!32308)))

(declare-fun res!28146 () Bool)

(assert (=> b!60463 (=> (not res!28146) (not e!32308))))

(assert (=> b!60463 (= res!28146 (not (and (is-Cons!508 list1!2) (is-Cons!508 (tail!879 list1!2)) (bvsgt (head!853 list1!2) (head!853 (tail!879 list1!2))))))))

(declare-fun b!60464 () Bool)

(assert (=> b!60464 (= e!32308 (isSorted!4 (tail!879 list1!2)))))

(assert (= (and d!51543 (not res!28145)) b!60463))

(assert (= (and b!60463 res!28146) b!60464))

(declare-fun m!65336 () Bool)

(assert (=> b!60464 m!65336))

(assert (=> start!8718 d!51543))

(declare-fun d!51545 () Bool)

(declare-fun res!28147 () Bool)

(declare-fun e!32309 () Bool)

(assert (=> d!51545 (=> res!28147 e!32309)))

(assert (=> d!51545 (= res!28147 (or (is-Nil!509 list2!2) (and (is-Cons!508 list2!2) (is-Nil!509 (tail!879 list2!2)))))))

(assert (=> d!51545 (= (isSorted!4 list2!2) e!32309)))

(declare-fun b!60465 () Bool)

(declare-fun e!32310 () Bool)

(assert (=> b!60465 (= e!32309 e!32310)))

(declare-fun res!28148 () Bool)

(assert (=> b!60465 (=> (not res!28148) (not e!32310))))

(assert (=> b!60465 (= res!28148 (not (and (is-Cons!508 list2!2) (is-Cons!508 (tail!879 list2!2)) (bvsgt (head!853 list2!2) (head!853 (tail!879 list2!2))))))))

(declare-fun b!60466 () Bool)

(assert (=> b!60466 (= e!32310 (isSorted!4 (tail!879 list2!2)))))

(assert (= (and d!51545 (not res!28147)) b!60465))

(assert (= (and b!60465 res!28148) b!60466))

(declare-fun m!65338 () Bool)

(assert (=> b!60466 m!65338))

(assert (=> b!60456 d!51545))

(declare-fun d!51547 () Bool)

(declare-fun res!28152 () Bool)

(declare-fun e!32313 () Bool)

(assert (=> d!51547 (=> (not res!28152) (not e!32313))))

(assert (=> d!51547 (= res!28152 (isSorted!4 res!27379))))

(assert (=> d!51547 (= (mergeSpec!0 list1!2 list2!2 res!27379) e!32313)))

(declare-fun b!60469 () Bool)

(declare-fun content!15 (List!542) (Set (_ BitVec 32)))

(assert (=> b!60469 (= e!32313 (= (content!15 res!27379) (union (content!15 list1!2) (content!15 list2!2))))))

(assert (= (and d!51547 res!28152) b!60469))

(declare-fun m!65340 () Bool)

(assert (=> d!51547 m!65340))

(declare-fun m!65342 () Bool)

(assert (=> b!60469 m!65342))

(declare-fun m!65344 () Bool)

(assert (=> b!60469 m!65344))

(declare-fun m!65346 () Bool)

(assert (=> b!60469 m!65346))

(assert (=> b!60458 d!51547))

(push 1)

(assert (not d!51547))

(assert (not b!60469))

(assert (not b!60466))

(assert (not b!60464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51549 () Bool)

(declare-fun res!28153 () Bool)

(declare-fun e!32314 () Bool)

(assert (=> d!51549 (=> res!28153 e!32314)))

(assert (=> d!51549 (= res!28153 (or (is-Nil!509 res!27379) (and (is-Cons!508 res!27379) (is-Nil!509 (tail!879 res!27379)))))))

(assert (=> d!51549 (= (isSorted!4 res!27379) e!32314)))

(declare-fun b!60470 () Bool)

(declare-fun e!32315 () Bool)

(assert (=> b!60470 (= e!32314 e!32315)))

(declare-fun res!28154 () Bool)

(assert (=> b!60470 (=> (not res!28154) (not e!32315))))

(assert (=> b!60470 (= res!28154 (not (and (is-Cons!508 res!27379) (is-Cons!508 (tail!879 res!27379)) (bvsgt (head!853 res!27379) (head!853 (tail!879 res!27379))))))))

(declare-fun b!60471 () Bool)

(assert (=> b!60471 (= e!32315 (isSorted!4 (tail!879 res!27379)))))

(assert (= (and d!51549 (not res!28153)) b!60470))

(assert (= (and b!60470 res!28154) b!60471))

(declare-fun m!65348 () Bool)

(assert (=> b!60471 m!65348))

(assert (=> d!51547 d!51549))

(declare-fun d!51551 () Bool)

(declare-fun c!13107 () Bool)

(assert (=> d!51551 (= c!13107 (is-Nil!509 res!27379))))

(declare-fun e!32318 () (Set (_ BitVec 32)))

(assert (=> d!51551 (= (content!15 res!27379) e!32318)))

(declare-fun b!60476 () Bool)

(assert (=> b!60476 (= e!32318 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60477 () Bool)

(assert (=> b!60477 (= e!32318 (union (insert (head!853 res!27379) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!879 res!27379))))))

(assert (= (and d!51551 c!13107) b!60476))

(assert (= (and d!51551 (not c!13107)) b!60477))

(declare-fun m!65350 () Bool)

(assert (=> b!60477 m!65350))

(declare-fun m!65352 () Bool)

(assert (=> b!60477 m!65352))

(assert (=> b!60469 d!51551))

(declare-fun d!51553 () Bool)

(declare-fun c!13108 () Bool)

(assert (=> d!51553 (= c!13108 (is-Nil!509 list1!2))))

(declare-fun e!32319 () (Set (_ BitVec 32)))

(assert (=> d!51553 (= (content!15 list1!2) e!32319)))

(declare-fun b!60478 () Bool)

(assert (=> b!60478 (= e!32319 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60479 () Bool)

(assert (=> b!60479 (= e!32319 (union (insert (head!853 list1!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!879 list1!2))))))

(assert (= (and d!51553 c!13108) b!60478))

(assert (= (and d!51553 (not c!13108)) b!60479))

(declare-fun m!65354 () Bool)

(assert (=> b!60479 m!65354))

(declare-fun m!65356 () Bool)

(assert (=> b!60479 m!65356))

(assert (=> b!60469 d!51553))

(declare-fun d!51555 () Bool)

(declare-fun c!13109 () Bool)

(assert (=> d!51555 (= c!13109 (is-Nil!509 list2!2))))

(declare-fun e!32320 () (Set (_ BitVec 32)))

(assert (=> d!51555 (= (content!15 list2!2) e!32320)))

(declare-fun b!60480 () Bool)

(assert (=> b!60480 (= e!32320 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60481 () Bool)

(assert (=> b!60481 (= e!32320 (union (insert (head!853 list2!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!879 list2!2))))))

(assert (= (and d!51555 c!13109) b!60480))

(assert (= (and d!51555 (not c!13109)) b!60481))

(declare-fun m!65358 () Bool)

(assert (=> b!60481 m!65358))

(declare-fun m!65360 () Bool)

(assert (=> b!60481 m!65360))

(assert (=> b!60469 d!51555))

(declare-fun d!51557 () Bool)

(declare-fun res!28155 () Bool)

(declare-fun e!32321 () Bool)

(assert (=> d!51557 (=> res!28155 e!32321)))

(assert (=> d!51557 (= res!28155 (or (is-Nil!509 (tail!879 list2!2)) (and (is-Cons!508 (tail!879 list2!2)) (is-Nil!509 (tail!879 (tail!879 list2!2))))))))

(assert (=> d!51557 (= (isSorted!4 (tail!879 list2!2)) e!32321)))

(declare-fun b!60482 () Bool)

(declare-fun e!32322 () Bool)

(assert (=> b!60482 (= e!32321 e!32322)))

(declare-fun res!28156 () Bool)

(assert (=> b!60482 (=> (not res!28156) (not e!32322))))

(assert (=> b!60482 (= res!28156 (not (and (is-Cons!508 (tail!879 list2!2)) (is-Cons!508 (tail!879 (tail!879 list2!2))) (bvsgt (head!853 (tail!879 list2!2)) (head!853 (tail!879 (tail!879 list2!2)))))))))

(declare-fun b!60483 () Bool)

(assert (=> b!60483 (= e!32322 (isSorted!4 (tail!879 (tail!879 list2!2))))))

(assert (= (and d!51557 (not res!28155)) b!60482))

(assert (= (and b!60482 res!28156) b!60483))

(declare-fun m!65362 () Bool)

(assert (=> b!60483 m!65362))

(assert (=> b!60466 d!51557))

(declare-fun d!51559 () Bool)

(declare-fun res!28157 () Bool)

(declare-fun e!32323 () Bool)

(assert (=> d!51559 (=> res!28157 e!32323)))

(assert (=> d!51559 (= res!28157 (or (is-Nil!509 (tail!879 list1!2)) (and (is-Cons!508 (tail!879 list1!2)) (is-Nil!509 (tail!879 (tail!879 list1!2))))))))

(assert (=> d!51559 (= (isSorted!4 (tail!879 list1!2)) e!32323)))

(declare-fun b!60484 () Bool)

(declare-fun e!32324 () Bool)

(assert (=> b!60484 (= e!32323 e!32324)))

(declare-fun res!28158 () Bool)

(assert (=> b!60484 (=> (not res!28158) (not e!32324))))

(assert (=> b!60484 (= res!28158 (not (and (is-Cons!508 (tail!879 list1!2)) (is-Cons!508 (tail!879 (tail!879 list1!2))) (bvsgt (head!853 (tail!879 list1!2)) (head!853 (tail!879 (tail!879 list1!2)))))))))

(declare-fun b!60485 () Bool)

(assert (=> b!60485 (= e!32324 (isSorted!4 (tail!879 (tail!879 list1!2))))))

(assert (= (and d!51559 (not res!28157)) b!60484))

(assert (= (and b!60484 res!28158) b!60485))

(declare-fun m!65364 () Bool)

(assert (=> b!60485 m!65364))

(assert (=> b!60464 d!51559))

(push 1)

(assert (not b!60483))

(assert (not b!60485))

(assert (not b!60471))

(assert (not b!60477))

(assert (not b!60479))

(assert (not b!60481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

