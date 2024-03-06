; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7136 () Bool)

(assert start!7136)

(declare-fun res!23785 () Bool)

(declare-fun e!27261 () Bool)

(assert (=> start!7136 (=> (not res!23785) (not e!27261))))

(declare-datatypes () ((Node!96 (Node!97 (rank!40 Int) (elem!112 (_ BitVec 32)) (nodes!40 Heap!34))) (Heap!34 (Empty!136) (Nodes!33 (head!665 Node!96) (tail!689 Heap!34)))))

(declare-fun h!510 () Heap!34)

(declare-fun t!46649 () Node!96)

(assert (=> start!7136 (= res!23785 (and (not (is-Empty!136 h!510)) (>= (rank!40 t!46649) (rank!40 (head!665 h!510)))))))

(assert (=> start!7136 e!27261))

(assert (=> start!7136 true))

(declare-fun b!52525 () Bool)

(declare-fun res!23786 () Bool)

(assert (=> b!52525 (=> (not res!23786) (not e!27261))))

(declare-fun res!23505 () Heap!34)

(declare-fun insertNode!0 (Node!96 Heap!34) Heap!34)

(declare-fun link!0 (Node!96 Node!96) Node!96)

(assert (=> b!52525 (= res!23786 (= res!23505 (insertNode!0 (link!0 t!46649 (head!665 h!510)) (tail!689 h!510))))))

(declare-fun b!52526 () Bool)

(declare-fun heapContent!0 (Heap!34) (Set (_ BitVec 32)))

(declare-fun nodeContent!0 (Node!96) (Set (_ BitVec 32)))

(assert (=> b!52526 (= e!27261 (not (= (heapContent!0 res!23505) (union (nodeContent!0 t!46649) (heapContent!0 h!510)))))))

(assert (= (and start!7136 res!23785) b!52525))

(assert (= (and b!52525 res!23786) b!52526))

(declare-fun m!56607 () Bool)

(assert (=> b!52525 m!56607))

(assert (=> b!52525 m!56607))

(declare-fun m!56609 () Bool)

(assert (=> b!52525 m!56609))

(declare-fun m!56611 () Bool)

(assert (=> b!52526 m!56611))

(declare-fun m!56613 () Bool)

(assert (=> b!52526 m!56613))

(declare-fun m!56615 () Bool)

(assert (=> b!52526 m!56615))

(push 1)

(assert (not b!52526))

(assert (not b!52525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44334 () Bool)

(declare-fun c!11435 () Bool)

(assert (=> d!44334 (= c!11435 (is-Empty!136 res!23505))))

(declare-fun e!27264 () (Set (_ BitVec 32)))

(assert (=> d!44334 (= (heapContent!0 res!23505) e!27264)))

(declare-fun b!52531 () Bool)

(assert (=> b!52531 (= e!27264 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52532 () Bool)

(assert (=> b!52532 (= e!27264 (union (nodeContent!0 (head!665 res!23505)) (heapContent!0 (tail!689 res!23505))))))

(assert (= (and d!44334 c!11435) b!52531))

(assert (= (and d!44334 (not c!11435)) b!52532))

(declare-fun m!56617 () Bool)

(assert (=> b!52532 m!56617))

(declare-fun m!56619 () Bool)

(assert (=> b!52532 m!56619))

(assert (=> b!52526 d!44334))

(declare-fun d!44336 () Bool)

(assert (=> d!44336 (= (nodeContent!0 t!46649) (union (insert (elem!112 t!46649) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 t!46649))))))

(declare-fun bs!23841 () Bool)

(assert (= bs!23841 d!44336))

(declare-fun m!56621 () Bool)

(assert (=> bs!23841 m!56621))

(declare-fun m!56623 () Bool)

(assert (=> bs!23841 m!56623))

(assert (=> b!52526 d!44336))

(declare-fun d!44338 () Bool)

(declare-fun c!11436 () Bool)

(assert (=> d!44338 (= c!11436 (is-Empty!136 h!510))))

(declare-fun e!27265 () (Set (_ BitVec 32)))

(assert (=> d!44338 (= (heapContent!0 h!510) e!27265)))

(declare-fun b!52533 () Bool)

(assert (=> b!52533 (= e!27265 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52534 () Bool)

(assert (=> b!52534 (= e!27265 (union (nodeContent!0 (head!665 h!510)) (heapContent!0 (tail!689 h!510))))))

(assert (= (and d!44338 c!11436) b!52533))

(assert (= (and d!44338 (not c!11436)) b!52534))

(declare-fun m!56625 () Bool)

(assert (=> b!52534 m!56625))

(declare-fun m!56627 () Bool)

(assert (=> b!52534 m!56627))

(assert (=> b!52526 d!44338))

(declare-fun b!52545 () Bool)

(declare-fun e!27271 () Heap!34)

(assert (=> b!52545 (= e!27271 (Nodes!33 (link!0 t!46649 (head!665 h!510)) (tail!689 h!510)))))

(declare-fun b!52544 () Bool)

(declare-fun e!27270 () Heap!34)

(assert (=> b!52544 (= e!27270 e!27271)))

(declare-fun c!11441 () Bool)

(assert (=> b!52544 (= c!11441 (< (rank!40 (link!0 t!46649 (head!665 h!510))) (rank!40 (head!665 (tail!689 h!510)))))))

(declare-fun d!44340 () Bool)

(declare-fun lt!9196 () Heap!34)

(assert (=> d!44340 (= (heapContent!0 lt!9196) (union (nodeContent!0 (link!0 t!46649 (head!665 h!510))) (heapContent!0 (tail!689 h!510))))))

(assert (=> d!44340 (= lt!9196 e!27270)))

(declare-fun c!11442 () Bool)

(assert (=> d!44340 (= c!11442 (is-Empty!136 (tail!689 h!510)))))

(assert (=> d!44340 (= (insertNode!0 (link!0 t!46649 (head!665 h!510)) (tail!689 h!510)) lt!9196)))

(declare-fun b!52546 () Bool)

(assert (=> b!52546 (= e!27271 (insertNode!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (tail!689 (tail!689 h!510))))))

(declare-fun b!52543 () Bool)

(assert (=> b!52543 (= e!27270 (Nodes!33 (link!0 t!46649 (head!665 h!510)) Empty!136))))

(assert (= (and b!52544 c!11441) b!52545))

(assert (= (and b!52544 (not c!11441)) b!52546))

(assert (= (and d!44340 c!11442) b!52543))

(assert (= (and d!44340 (not c!11442)) b!52544))

(declare-fun m!56629 () Bool)

(assert (=> d!44340 m!56629))

(assert (=> d!44340 m!56607))

(declare-fun m!56631 () Bool)

(assert (=> d!44340 m!56631))

(assert (=> d!44340 m!56627))

(assert (=> b!52546 m!56607))

(declare-fun m!56633 () Bool)

(assert (=> b!52546 m!56633))

(assert (=> b!52546 m!56633))

(declare-fun m!56635 () Bool)

(assert (=> b!52546 m!56635))

(assert (=> b!52525 d!44340))

(declare-fun d!44342 () Bool)

(assert (=> d!44342 (= (link!0 t!46649 (head!665 h!510)) (ite (bvsle (elem!112 t!46649) (elem!112 (head!665 h!510))) (Node!97 (+ (rank!40 t!46649) 1) (elem!112 t!46649) (Nodes!33 (head!665 h!510) (nodes!40 t!46649))) (Node!97 (+ (rank!40 t!46649) 1) (elem!112 (head!665 h!510)) (Nodes!33 t!46649 (nodes!40 (head!665 h!510))))))))

(assert (=> b!52525 d!44342))

(push 1)

(assert (not b!52532))

(assert (not b!52546))

(assert (not d!44336))

(assert (not b!52534))

(assert (not d!44340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!52549 () Bool)

(declare-fun e!27273 () Heap!34)

(assert (=> b!52549 (= e!27273 (Nodes!33 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (tail!689 (tail!689 h!510))))))

(declare-fun b!52548 () Bool)

(declare-fun e!27272 () Heap!34)

(assert (=> b!52548 (= e!27272 e!27273)))

(declare-fun c!11443 () Bool)

(assert (=> b!52548 (= c!11443 (< (rank!40 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (rank!40 (head!665 (tail!689 (tail!689 h!510))))))))

(declare-fun d!44344 () Bool)

(declare-fun lt!9197 () Heap!34)

(assert (=> d!44344 (= (heapContent!0 lt!9197) (union (nodeContent!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (heapContent!0 (tail!689 (tail!689 h!510)))))))

(assert (=> d!44344 (= lt!9197 e!27272)))

(declare-fun c!11444 () Bool)

(assert (=> d!44344 (= c!11444 (is-Empty!136 (tail!689 (tail!689 h!510))))))

(assert (=> d!44344 (= (insertNode!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (tail!689 (tail!689 h!510))) lt!9197)))

(declare-fun b!52550 () Bool)

(assert (=> b!52550 (= e!27273 (insertNode!0 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) (tail!689 (tail!689 (tail!689 h!510)))))))

(declare-fun b!52547 () Bool)

(assert (=> b!52547 (= e!27272 (Nodes!33 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) Empty!136))))

(assert (= (and b!52548 c!11443) b!52549))

(assert (= (and b!52548 (not c!11443)) b!52550))

(assert (= (and d!44344 c!11444) b!52547))

(assert (= (and d!44344 (not c!11444)) b!52548))

(declare-fun m!56637 () Bool)

(assert (=> d!44344 m!56637))

(assert (=> d!44344 m!56633))

(declare-fun m!56639 () Bool)

(assert (=> d!44344 m!56639))

(declare-fun m!56641 () Bool)

(assert (=> d!44344 m!56641))

(assert (=> b!52550 m!56633))

(declare-fun m!56643 () Bool)

(assert (=> b!52550 m!56643))

(assert (=> b!52550 m!56643))

(declare-fun m!56645 () Bool)

(assert (=> b!52550 m!56645))

(assert (=> b!52546 d!44344))

(declare-fun d!44346 () Bool)

(assert (=> d!44346 (= (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (ite (bvsle (elem!112 (link!0 t!46649 (head!665 h!510))) (elem!112 (head!665 (tail!689 h!510)))) (Node!97 (+ (rank!40 (link!0 t!46649 (head!665 h!510))) 1) (elem!112 (link!0 t!46649 (head!665 h!510))) (Nodes!33 (head!665 (tail!689 h!510)) (nodes!40 (link!0 t!46649 (head!665 h!510))))) (Node!97 (+ (rank!40 (link!0 t!46649 (head!665 h!510))) 1) (elem!112 (head!665 (tail!689 h!510))) (Nodes!33 (link!0 t!46649 (head!665 h!510)) (nodes!40 (head!665 (tail!689 h!510)))))))))

(assert (=> b!52546 d!44346))

(declare-fun d!44348 () Bool)

(declare-fun c!11445 () Bool)

(assert (=> d!44348 (= c!11445 (is-Empty!136 (nodes!40 t!46649)))))

(declare-fun e!27274 () (Set (_ BitVec 32)))

(assert (=> d!44348 (= (heapContent!0 (nodes!40 t!46649)) e!27274)))

(declare-fun b!52551 () Bool)

(assert (=> b!52551 (= e!27274 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52552 () Bool)

(assert (=> b!52552 (= e!27274 (union (nodeContent!0 (head!665 (nodes!40 t!46649))) (heapContent!0 (tail!689 (nodes!40 t!46649)))))))

(assert (= (and d!44348 c!11445) b!52551))

(assert (= (and d!44348 (not c!11445)) b!52552))

(declare-fun m!56647 () Bool)

(assert (=> b!52552 m!56647))

(declare-fun m!56649 () Bool)

(assert (=> b!52552 m!56649))

(assert (=> d!44336 d!44348))

(declare-fun d!44350 () Bool)

(declare-fun c!11446 () Bool)

(assert (=> d!44350 (= c!11446 (is-Empty!136 lt!9196))))

(declare-fun e!27275 () (Set (_ BitVec 32)))

(assert (=> d!44350 (= (heapContent!0 lt!9196) e!27275)))

(declare-fun b!52553 () Bool)

(assert (=> b!52553 (= e!27275 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52554 () Bool)

(assert (=> b!52554 (= e!27275 (union (nodeContent!0 (head!665 lt!9196)) (heapContent!0 (tail!689 lt!9196))))))

(assert (= (and d!44350 c!11446) b!52553))

(assert (= (and d!44350 (not c!11446)) b!52554))

(declare-fun m!56651 () Bool)

(assert (=> b!52554 m!56651))

(declare-fun m!56653 () Bool)

(assert (=> b!52554 m!56653))

(assert (=> d!44340 d!44350))

(declare-fun d!44352 () Bool)

(assert (=> d!44352 (= (nodeContent!0 (link!0 t!46649 (head!665 h!510))) (union (insert (elem!112 (link!0 t!46649 (head!665 h!510))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (link!0 t!46649 (head!665 h!510))))))))

(declare-fun bs!23842 () Bool)

(assert (= bs!23842 d!44352))

(declare-fun m!56655 () Bool)

(assert (=> bs!23842 m!56655))

(declare-fun m!56657 () Bool)

(assert (=> bs!23842 m!56657))

(assert (=> d!44340 d!44352))

(declare-fun d!44354 () Bool)

(declare-fun c!11447 () Bool)

(assert (=> d!44354 (= c!11447 (is-Empty!136 (tail!689 h!510)))))

(declare-fun e!27276 () (Set (_ BitVec 32)))

(assert (=> d!44354 (= (heapContent!0 (tail!689 h!510)) e!27276)))

(declare-fun b!52555 () Bool)

(assert (=> b!52555 (= e!27276 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52556 () Bool)

(assert (=> b!52556 (= e!27276 (union (nodeContent!0 (head!665 (tail!689 h!510))) (heapContent!0 (tail!689 (tail!689 h!510)))))))

(assert (= (and d!44354 c!11447) b!52555))

(assert (= (and d!44354 (not c!11447)) b!52556))

(declare-fun m!56659 () Bool)

(assert (=> b!52556 m!56659))

(assert (=> b!52556 m!56641))

(assert (=> d!44340 d!44354))

(declare-fun d!44356 () Bool)

(assert (=> d!44356 (= (nodeContent!0 (head!665 h!510)) (union (insert (elem!112 (head!665 h!510)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 h!510)))))))

(declare-fun bs!23843 () Bool)

(assert (= bs!23843 d!44356))

(declare-fun m!56661 () Bool)

(assert (=> bs!23843 m!56661))

(declare-fun m!56663 () Bool)

(assert (=> bs!23843 m!56663))

(assert (=> b!52534 d!44356))

(assert (=> b!52534 d!44354))

(declare-fun d!44358 () Bool)

(assert (=> d!44358 (= (nodeContent!0 (head!665 res!23505)) (union (insert (elem!112 (head!665 res!23505)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 res!23505)))))))

(declare-fun bs!23844 () Bool)

(assert (= bs!23844 d!44358))

(declare-fun m!56665 () Bool)

(assert (=> bs!23844 m!56665))

(declare-fun m!56667 () Bool)

(assert (=> bs!23844 m!56667))

(assert (=> b!52532 d!44358))

(declare-fun d!44360 () Bool)

(declare-fun c!11448 () Bool)

(assert (=> d!44360 (= c!11448 (is-Empty!136 (tail!689 res!23505)))))

(declare-fun e!27277 () (Set (_ BitVec 32)))

(assert (=> d!44360 (= (heapContent!0 (tail!689 res!23505)) e!27277)))

(declare-fun b!52557 () Bool)

(assert (=> b!52557 (= e!27277 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52558 () Bool)

(assert (=> b!52558 (= e!27277 (union (nodeContent!0 (head!665 (tail!689 res!23505))) (heapContent!0 (tail!689 (tail!689 res!23505)))))))

(assert (= (and d!44360 c!11448) b!52557))

(assert (= (and d!44360 (not c!11448)) b!52558))

(declare-fun m!56669 () Bool)

(assert (=> b!52558 m!56669))

(declare-fun m!56671 () Bool)

(assert (=> b!52558 m!56671))

(assert (=> b!52532 d!44360))

(push 1)

(assert (not d!44352))

(assert (not b!52554))

(assert (not b!52552))

(assert (not d!44358))

(assert (not b!52556))

(assert (not b!52550))

(assert (not d!44344))

(assert (not b!52558))

(assert (not d!44356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44362 () Bool)

(declare-fun c!11449 () Bool)

(assert (=> d!44362 (= c!11449 (is-Empty!136 (nodes!40 (head!665 h!510))))))

(declare-fun e!27278 () (Set (_ BitVec 32)))

(assert (=> d!44362 (= (heapContent!0 (nodes!40 (head!665 h!510))) e!27278)))

(declare-fun b!52559 () Bool)

(assert (=> b!52559 (= e!27278 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52560 () Bool)

(assert (=> b!52560 (= e!27278 (union (nodeContent!0 (head!665 (nodes!40 (head!665 h!510)))) (heapContent!0 (tail!689 (nodes!40 (head!665 h!510))))))))

(assert (= (and d!44362 c!11449) b!52559))

(assert (= (and d!44362 (not c!11449)) b!52560))

(declare-fun m!56673 () Bool)

(assert (=> b!52560 m!56673))

(declare-fun m!56675 () Bool)

(assert (=> b!52560 m!56675))

(assert (=> d!44356 d!44362))

(declare-fun d!44364 () Bool)

(declare-fun c!11450 () Bool)

(assert (=> d!44364 (= c!11450 (is-Empty!136 (nodes!40 (link!0 t!46649 (head!665 h!510)))))))

(declare-fun e!27279 () (Set (_ BitVec 32)))

(assert (=> d!44364 (= (heapContent!0 (nodes!40 (link!0 t!46649 (head!665 h!510)))) e!27279)))

(declare-fun b!52561 () Bool)

(assert (=> b!52561 (= e!27279 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52562 () Bool)

(assert (=> b!52562 (= e!27279 (union (nodeContent!0 (head!665 (nodes!40 (link!0 t!46649 (head!665 h!510))))) (heapContent!0 (tail!689 (nodes!40 (link!0 t!46649 (head!665 h!510)))))))))

(assert (= (and d!44364 c!11450) b!52561))

(assert (= (and d!44364 (not c!11450)) b!52562))

(declare-fun m!56677 () Bool)

(assert (=> b!52562 m!56677))

(declare-fun m!56679 () Bool)

(assert (=> b!52562 m!56679))

(assert (=> d!44352 d!44364))

(declare-fun d!44366 () Bool)

(assert (=> d!44366 (= (nodeContent!0 (head!665 (nodes!40 t!46649))) (union (insert (elem!112 (head!665 (nodes!40 t!46649))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 (nodes!40 t!46649))))))))

(declare-fun bs!23845 () Bool)

(assert (= bs!23845 d!44366))

(declare-fun m!56681 () Bool)

(assert (=> bs!23845 m!56681))

(declare-fun m!56683 () Bool)

(assert (=> bs!23845 m!56683))

(assert (=> b!52552 d!44366))

(declare-fun d!44368 () Bool)

(declare-fun c!11451 () Bool)

(assert (=> d!44368 (= c!11451 (is-Empty!136 (tail!689 (nodes!40 t!46649))))))

(declare-fun e!27280 () (Set (_ BitVec 32)))

(assert (=> d!44368 (= (heapContent!0 (tail!689 (nodes!40 t!46649))) e!27280)))

(declare-fun b!52563 () Bool)

(assert (=> b!52563 (= e!27280 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52564 () Bool)

(assert (=> b!52564 (= e!27280 (union (nodeContent!0 (head!665 (tail!689 (nodes!40 t!46649)))) (heapContent!0 (tail!689 (tail!689 (nodes!40 t!46649))))))))

(assert (= (and d!44368 c!11451) b!52563))

(assert (= (and d!44368 (not c!11451)) b!52564))

(declare-fun m!56685 () Bool)

(assert (=> b!52564 m!56685))

(declare-fun m!56687 () Bool)

(assert (=> b!52564 m!56687))

(assert (=> b!52552 d!44368))

(declare-fun d!44370 () Bool)

(declare-fun c!11452 () Bool)

(assert (=> d!44370 (= c!11452 (is-Empty!136 (nodes!40 (head!665 res!23505))))))

(declare-fun e!27281 () (Set (_ BitVec 32)))

(assert (=> d!44370 (= (heapContent!0 (nodes!40 (head!665 res!23505))) e!27281)))

(declare-fun b!52565 () Bool)

(assert (=> b!52565 (= e!27281 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52566 () Bool)

(assert (=> b!52566 (= e!27281 (union (nodeContent!0 (head!665 (nodes!40 (head!665 res!23505)))) (heapContent!0 (tail!689 (nodes!40 (head!665 res!23505))))))))

(assert (= (and d!44370 c!11452) b!52565))

(assert (= (and d!44370 (not c!11452)) b!52566))

(declare-fun m!56689 () Bool)

(assert (=> b!52566 m!56689))

(declare-fun m!56691 () Bool)

(assert (=> b!52566 m!56691))

(assert (=> d!44358 d!44370))

(declare-fun d!44372 () Bool)

(assert (=> d!44372 (= (nodeContent!0 (head!665 (tail!689 res!23505))) (union (insert (elem!112 (head!665 (tail!689 res!23505))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 (tail!689 res!23505))))))))

(declare-fun bs!23846 () Bool)

(assert (= bs!23846 d!44372))

(declare-fun m!56693 () Bool)

(assert (=> bs!23846 m!56693))

(declare-fun m!56695 () Bool)

(assert (=> bs!23846 m!56695))

(assert (=> b!52558 d!44372))

(declare-fun d!44374 () Bool)

(declare-fun c!11453 () Bool)

(assert (=> d!44374 (= c!11453 (is-Empty!136 (tail!689 (tail!689 res!23505))))))

(declare-fun e!27282 () (Set (_ BitVec 32)))

(assert (=> d!44374 (= (heapContent!0 (tail!689 (tail!689 res!23505))) e!27282)))

(declare-fun b!52567 () Bool)

(assert (=> b!52567 (= e!27282 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52568 () Bool)

(assert (=> b!52568 (= e!27282 (union (nodeContent!0 (head!665 (tail!689 (tail!689 res!23505)))) (heapContent!0 (tail!689 (tail!689 (tail!689 res!23505))))))))

(assert (= (and d!44374 c!11453) b!52567))

(assert (= (and d!44374 (not c!11453)) b!52568))

(declare-fun m!56697 () Bool)

(assert (=> b!52568 m!56697))

(declare-fun m!56699 () Bool)

(assert (=> b!52568 m!56699))

(assert (=> b!52558 d!44374))

(declare-fun d!44376 () Bool)

(assert (=> d!44376 (= (nodeContent!0 (head!665 (tail!689 h!510))) (union (insert (elem!112 (head!665 (tail!689 h!510))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 (tail!689 h!510))))))))

(declare-fun bs!23847 () Bool)

(assert (= bs!23847 d!44376))

(declare-fun m!56701 () Bool)

(assert (=> bs!23847 m!56701))

(declare-fun m!56703 () Bool)

(assert (=> bs!23847 m!56703))

(assert (=> b!52556 d!44376))

(declare-fun d!44378 () Bool)

(declare-fun c!11454 () Bool)

(assert (=> d!44378 (= c!11454 (is-Empty!136 (tail!689 (tail!689 h!510))))))

(declare-fun e!27283 () (Set (_ BitVec 32)))

(assert (=> d!44378 (= (heapContent!0 (tail!689 (tail!689 h!510))) e!27283)))

(declare-fun b!52569 () Bool)

(assert (=> b!52569 (= e!27283 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52570 () Bool)

(assert (=> b!52570 (= e!27283 (union (nodeContent!0 (head!665 (tail!689 (tail!689 h!510)))) (heapContent!0 (tail!689 (tail!689 (tail!689 h!510))))))))

(assert (= (and d!44378 c!11454) b!52569))

(assert (= (and d!44378 (not c!11454)) b!52570))

(declare-fun m!56705 () Bool)

(assert (=> b!52570 m!56705))

(declare-fun m!56707 () Bool)

(assert (=> b!52570 m!56707))

(assert (=> b!52556 d!44378))

(declare-fun b!52573 () Bool)

(declare-fun e!27285 () Heap!34)

(assert (=> b!52573 (= e!27285 (Nodes!33 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) (tail!689 (tail!689 (tail!689 h!510)))))))

(declare-fun b!52572 () Bool)

(declare-fun e!27284 () Heap!34)

(assert (=> b!52572 (= e!27284 e!27285)))

(declare-fun c!11455 () Bool)

(assert (=> b!52572 (= c!11455 (< (rank!40 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510))))) (rank!40 (head!665 (tail!689 (tail!689 (tail!689 h!510)))))))))

(declare-fun d!44380 () Bool)

(declare-fun lt!9198 () Heap!34)

(assert (=> d!44380 (= (heapContent!0 lt!9198) (union (nodeContent!0 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510))))) (heapContent!0 (tail!689 (tail!689 (tail!689 h!510))))))))

(assert (=> d!44380 (= lt!9198 e!27284)))

(declare-fun c!11456 () Bool)

(assert (=> d!44380 (= c!11456 (is-Empty!136 (tail!689 (tail!689 (tail!689 h!510)))))))

(assert (=> d!44380 (= (insertNode!0 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) (tail!689 (tail!689 (tail!689 h!510)))) lt!9198)))

(declare-fun b!52574 () Bool)

(assert (=> b!52574 (= e!27285 (insertNode!0 (link!0 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) (head!665 (tail!689 (tail!689 (tail!689 h!510))))) (tail!689 (tail!689 (tail!689 (tail!689 h!510))))))))

(declare-fun b!52571 () Bool)

(assert (=> b!52571 (= e!27284 (Nodes!33 (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) Empty!136))))

(assert (= (and b!52572 c!11455) b!52573))

(assert (= (and b!52572 (not c!11455)) b!52574))

(assert (= (and d!44380 c!11456) b!52571))

(assert (= (and d!44380 (not c!11456)) b!52572))

(declare-fun m!56709 () Bool)

(assert (=> d!44380 m!56709))

(assert (=> d!44380 m!56643))

(declare-fun m!56711 () Bool)

(assert (=> d!44380 m!56711))

(assert (=> d!44380 m!56707))

(assert (=> b!52574 m!56643))

(declare-fun m!56713 () Bool)

(assert (=> b!52574 m!56713))

(assert (=> b!52574 m!56713))

(declare-fun m!56715 () Bool)

(assert (=> b!52574 m!56715))

(assert (=> b!52550 d!44380))

(declare-fun d!44382 () Bool)

(assert (=> d!44382 (= (link!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (head!665 (tail!689 (tail!689 h!510)))) (ite (bvsle (elem!112 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (elem!112 (head!665 (tail!689 (tail!689 h!510))))) (Node!97 (+ (rank!40 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) 1) (elem!112 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (Nodes!33 (head!665 (tail!689 (tail!689 h!510))) (nodes!40 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))))) (Node!97 (+ (rank!40 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) 1) (elem!112 (head!665 (tail!689 (tail!689 h!510)))) (Nodes!33 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510))) (nodes!40 (head!665 (tail!689 (tail!689 h!510))))))))))

(assert (=> b!52550 d!44382))

(declare-fun d!44384 () Bool)

(declare-fun c!11457 () Bool)

(assert (=> d!44384 (= c!11457 (is-Empty!136 lt!9197))))

(declare-fun e!27286 () (Set (_ BitVec 32)))

(assert (=> d!44384 (= (heapContent!0 lt!9197) e!27286)))

(declare-fun b!52575 () Bool)

(assert (=> b!52575 (= e!27286 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52576 () Bool)

(assert (=> b!52576 (= e!27286 (union (nodeContent!0 (head!665 lt!9197)) (heapContent!0 (tail!689 lt!9197))))))

(assert (= (and d!44384 c!11457) b!52575))

(assert (= (and d!44384 (not c!11457)) b!52576))

(declare-fun m!56717 () Bool)

(assert (=> b!52576 m!56717))

(declare-fun m!56719 () Bool)

(assert (=> b!52576 m!56719))

(assert (=> d!44344 d!44384))

(declare-fun d!44386 () Bool)

(assert (=> d!44386 (= (nodeContent!0 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (union (insert (elem!112 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (link!0 (link!0 t!46649 (head!665 h!510)) (head!665 (tail!689 h!510)))))))))

(declare-fun bs!23848 () Bool)

(assert (= bs!23848 d!44386))

(declare-fun m!56721 () Bool)

(assert (=> bs!23848 m!56721))

(declare-fun m!56723 () Bool)

(assert (=> bs!23848 m!56723))

(assert (=> d!44344 d!44386))

(assert (=> d!44344 d!44378))

(declare-fun d!44388 () Bool)

(assert (=> d!44388 (= (nodeContent!0 (head!665 lt!9196)) (union (insert (elem!112 (head!665 lt!9196)) (as emptyset (Set (_ BitVec 32)))) (heapContent!0 (nodes!40 (head!665 lt!9196)))))))

(declare-fun bs!23849 () Bool)

(assert (= bs!23849 d!44388))

(declare-fun m!56725 () Bool)

(assert (=> bs!23849 m!56725))

(declare-fun m!56727 () Bool)

(assert (=> bs!23849 m!56727))

(assert (=> b!52554 d!44388))

(declare-fun d!44390 () Bool)

(declare-fun c!11458 () Bool)

(assert (=> d!44390 (= c!11458 (is-Empty!136 (tail!689 lt!9196)))))

(declare-fun e!27287 () (Set (_ BitVec 32)))

(assert (=> d!44390 (= (heapContent!0 (tail!689 lt!9196)) e!27287)))

(declare-fun b!52577 () Bool)

(assert (=> b!52577 (= e!27287 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!52578 () Bool)

(assert (=> b!52578 (= e!27287 (union (nodeContent!0 (head!665 (tail!689 lt!9196))) (heapContent!0 (tail!689 (tail!689 lt!9196)))))))

(assert (= (and d!44390 c!11458) b!52577))

(assert (= (and d!44390 (not c!11458)) b!52578))

(declare-fun m!56729 () Bool)

(assert (=> b!52578 m!56729))

(declare-fun m!56731 () Bool)

(assert (=> b!52578 m!56731))

(assert (=> b!52554 d!44390))

(push 1)

(assert (not b!52560))

(assert (not d!44366))

(assert (not b!52570))

(assert (not b!52576))

(assert (not b!52564))

(assert (not d!44388))

(assert (not b!52562))

(assert (not d!44376))

(assert (not b!52566))

(assert (not d!44372))

(assert (not b!52578))

(assert (not b!52568))

(assert (not b!52574))

(assert (not d!44386))

(assert (not d!44380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

