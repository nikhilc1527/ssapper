; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8744 () Bool)

(assert start!8744)

(declare-fun b!60590 () Bool)

(declare-fun res!28235 () Bool)

(declare-fun e!32390 () Bool)

(assert (=> b!60590 (=> (not res!28235) (not e!32390))))

(declare-datatypes () ((List!545 (Cons!511 (head!856 (_ BitVec 32)) (tail!882 List!545)) (Nil!512))))

(declare-fun list2!2 () List!545)

(declare-fun isSorted!4 (List!545) Bool)

(assert (=> b!60590 (= res!28235 (isSorted!4 list2!2))))

(declare-fun res!28236 () Bool)

(assert (=> start!8744 (=> (not res!28236) (not e!32390))))

(declare-fun list1!2 () List!545)

(assert (=> start!8744 (= res!28236 (isSorted!4 list1!2))))

(assert (=> start!8744 e!32390))

(assert (=> start!8744 true))

(declare-fun b!60591 () Bool)

(declare-fun res!28234 () Bool)

(assert (=> b!60591 (=> (not res!28234) (not e!32390))))

(assert (=> b!60591 (= res!28234 (and (not (is-Nil!512 list2!2)) (not (is-Nil!512 list1!2)) (bvsgt (head!856 list1!2) (head!856 list2!2))))))

(declare-fun b!60592 () Bool)

(declare-fun res!28233 () Bool)

(assert (=> b!60592 (=> (not res!28233) (not e!32390))))

(declare-fun res!27389 () List!545)

(declare-fun mergeFast!0 (List!545 List!545) List!545)

(assert (=> b!60592 (= res!28233 (= res!27389 (Cons!511 (head!856 list2!2) (mergeFast!0 list1!2 (tail!882 list2!2)))))))

(declare-fun b!60593 () Bool)

(declare-fun mergeSpec!0 (List!545 List!545 List!545) Bool)

(assert (=> b!60593 (= e!32390 (not (mergeSpec!0 list1!2 list2!2 res!27389)))))

(assert (= (and start!8744 res!28236) b!60590))

(assert (= (and b!60590 res!28235) b!60591))

(assert (= (and b!60591 res!28234) b!60592))

(assert (= (and b!60592 res!28233) b!60593))

(declare-fun m!65456 () Bool)

(assert (=> b!60590 m!65456))

(declare-fun m!65458 () Bool)

(assert (=> start!8744 m!65458))

(declare-fun m!65460 () Bool)

(assert (=> b!60592 m!65460))

(declare-fun m!65462 () Bool)

(assert (=> b!60593 m!65462))

(push 1)

(assert (not start!8744))

(assert (not b!60593))

(assert (not b!60590))

(assert (not b!60592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51603 () Bool)

(declare-fun res!28241 () Bool)

(declare-fun e!32395 () Bool)

(assert (=> d!51603 (=> res!28241 e!32395)))

(assert (=> d!51603 (= res!28241 (or (is-Nil!512 list1!2) (and (is-Cons!511 list1!2) (is-Nil!512 (tail!882 list1!2)))))))

(assert (=> d!51603 (= (isSorted!4 list1!2) e!32395)))

(declare-fun b!60598 () Bool)

(declare-fun e!32396 () Bool)

(assert (=> b!60598 (= e!32395 e!32396)))

(declare-fun res!28242 () Bool)

(assert (=> b!60598 (=> (not res!28242) (not e!32396))))

(assert (=> b!60598 (= res!28242 (not (and (is-Cons!511 list1!2) (is-Cons!511 (tail!882 list1!2)) (bvsgt (head!856 list1!2) (head!856 (tail!882 list1!2))))))))

(declare-fun b!60599 () Bool)

(assert (=> b!60599 (= e!32396 (isSorted!4 (tail!882 list1!2)))))

(assert (= (and d!51603 (not res!28241)) b!60598))

(assert (= (and b!60598 res!28242) b!60599))

(declare-fun m!65464 () Bool)

(assert (=> b!60599 m!65464))

(assert (=> start!8744 d!51603))

(declare-fun d!51605 () Bool)

(declare-fun res!28246 () Bool)

(declare-fun e!32399 () Bool)

(assert (=> d!51605 (=> (not res!28246) (not e!32399))))

(assert (=> d!51605 (= res!28246 (isSorted!4 res!27389))))

(assert (=> d!51605 (= (mergeSpec!0 list1!2 list2!2 res!27389) e!32399)))

(declare-fun b!60602 () Bool)

(declare-fun content!15 (List!545) (Set (_ BitVec 32)))

(assert (=> b!60602 (= e!32399 (= (content!15 res!27389) (union (content!15 list1!2) (content!15 list2!2))))))

(assert (= (and d!51605 res!28246) b!60602))

(declare-fun m!65466 () Bool)

(assert (=> d!51605 m!65466))

(declare-fun m!65468 () Bool)

(assert (=> b!60602 m!65468))

(declare-fun m!65470 () Bool)

(assert (=> b!60602 m!65470))

(declare-fun m!65472 () Bool)

(assert (=> b!60602 m!65472))

(assert (=> b!60593 d!51605))

(declare-fun d!51607 () Bool)

(declare-fun res!28247 () Bool)

(declare-fun e!32400 () Bool)

(assert (=> d!51607 (=> res!28247 e!32400)))

(assert (=> d!51607 (= res!28247 (or (is-Nil!512 list2!2) (and (is-Cons!511 list2!2) (is-Nil!512 (tail!882 list2!2)))))))

(assert (=> d!51607 (= (isSorted!4 list2!2) e!32400)))

(declare-fun b!60603 () Bool)

(declare-fun e!32401 () Bool)

(assert (=> b!60603 (= e!32400 e!32401)))

(declare-fun res!28248 () Bool)

(assert (=> b!60603 (=> (not res!28248) (not e!32401))))

(assert (=> b!60603 (= res!28248 (not (and (is-Cons!511 list2!2) (is-Cons!511 (tail!882 list2!2)) (bvsgt (head!856 list2!2) (head!856 (tail!882 list2!2))))))))

(declare-fun b!60604 () Bool)

(assert (=> b!60604 (= e!32401 (isSorted!4 (tail!882 list2!2)))))

(assert (= (and d!51607 (not res!28247)) b!60603))

(assert (= (and b!60603 res!28248) b!60604))

(declare-fun m!65474 () Bool)

(assert (=> b!60604 m!65474))

(assert (=> b!60590 d!51607))

(declare-fun b!60615 () Bool)

(declare-fun e!32409 () List!545)

(assert (=> b!60615 (= e!32409 (tail!882 list2!2))))

(declare-fun b!60616 () Bool)

(declare-fun e!32408 () List!545)

(assert (=> b!60616 (= e!32408 list1!2)))

(declare-fun b!60617 () Bool)

(assert (=> b!60617 (= e!32408 e!32409)))

(declare-fun c!13133 () Bool)

(assert (=> b!60617 (= c!13133 (is-Nil!512 list1!2))))

(declare-fun b!60618 () Bool)

(declare-fun e!32410 () Bool)

(assert (=> b!60618 (= e!32410 (isSorted!4 (tail!882 list2!2)))))

(declare-fun lt!11181 () List!545)

(declare-fun b!60619 () Bool)

(declare-fun lt!11182 () Bool)

(assert (=> b!60619 (= e!32409 (ite lt!11182 (Cons!511 (head!856 list1!2) lt!11181) (Cons!511 (head!856 (tail!882 list2!2)) lt!11181)))))

(assert (=> b!60619 (= lt!11181 (mergeFast!0 (ite lt!11182 (tail!882 list1!2) list1!2) (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))))))

(assert (=> b!60619 (= lt!11182 (bvsle (head!856 list1!2) (head!856 (tail!882 list2!2))))))

(declare-fun d!51609 () Bool)

(declare-fun lt!11183 () List!545)

(assert (=> d!51609 (mergeSpec!0 list1!2 (tail!882 list2!2) lt!11183)))

(assert (=> d!51609 (= lt!11183 e!32408)))

(declare-fun c!13132 () Bool)

(assert (=> d!51609 (= c!13132 (is-Nil!512 (tail!882 list2!2)))))

(assert (=> d!51609 e!32410))

(declare-fun res!28255 () Bool)

(assert (=> d!51609 (=> (not res!28255) (not e!32410))))

(assert (=> d!51609 (= res!28255 (isSorted!4 list1!2))))

(assert (=> d!51609 (= (mergeFast!0 list1!2 (tail!882 list2!2)) lt!11183)))

(assert (= (and d!51609 res!28255) b!60618))

(assert (= (and b!60617 c!13133) b!60615))

(assert (= (and b!60617 (not c!13133)) b!60619))

(assert (= (and d!51609 c!13132) b!60616))

(assert (= (and d!51609 (not c!13132)) b!60617))

(assert (=> b!60618 m!65474))

(declare-fun m!65476 () Bool)

(assert (=> b!60619 m!65476))

(declare-fun m!65478 () Bool)

(assert (=> d!51609 m!65478))

(assert (=> d!51609 m!65458))

(assert (=> b!60592 d!51609))

(push 1)

(assert (not b!60602))

(assert (not b!60618))

(assert (not b!60599))

(assert (not b!60604))

(assert (not b!60619))

(assert (not d!51609))

(assert (not d!51605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51611 () Bool)

(declare-fun res!28256 () Bool)

(declare-fun e!32411 () Bool)

(assert (=> d!51611 (=> res!28256 e!32411)))

(assert (=> d!51611 (= res!28256 (or (is-Nil!512 res!27389) (and (is-Cons!511 res!27389) (is-Nil!512 (tail!882 res!27389)))))))

(assert (=> d!51611 (= (isSorted!4 res!27389) e!32411)))

(declare-fun b!60620 () Bool)

(declare-fun e!32412 () Bool)

(assert (=> b!60620 (= e!32411 e!32412)))

(declare-fun res!28257 () Bool)

(assert (=> b!60620 (=> (not res!28257) (not e!32412))))

(assert (=> b!60620 (= res!28257 (not (and (is-Cons!511 res!27389) (is-Cons!511 (tail!882 res!27389)) (bvsgt (head!856 res!27389) (head!856 (tail!882 res!27389))))))))

(declare-fun b!60621 () Bool)

(assert (=> b!60621 (= e!32412 (isSorted!4 (tail!882 res!27389)))))

(assert (= (and d!51611 (not res!28256)) b!60620))

(assert (= (and b!60620 res!28257) b!60621))

(declare-fun m!65480 () Bool)

(assert (=> b!60621 m!65480))

(assert (=> d!51605 d!51611))

(declare-fun d!51613 () Bool)

(declare-fun c!13136 () Bool)

(assert (=> d!51613 (= c!13136 (is-Nil!512 res!27389))))

(declare-fun e!32415 () (Set (_ BitVec 32)))

(assert (=> d!51613 (= (content!15 res!27389) e!32415)))

(declare-fun b!60626 () Bool)

(assert (=> b!60626 (= e!32415 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60627 () Bool)

(assert (=> b!60627 (= e!32415 (union (insert (head!856 res!27389) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!882 res!27389))))))

(assert (= (and d!51613 c!13136) b!60626))

(assert (= (and d!51613 (not c!13136)) b!60627))

(declare-fun m!65482 () Bool)

(assert (=> b!60627 m!65482))

(declare-fun m!65484 () Bool)

(assert (=> b!60627 m!65484))

(assert (=> b!60602 d!51613))

(declare-fun d!51615 () Bool)

(declare-fun c!13137 () Bool)

(assert (=> d!51615 (= c!13137 (is-Nil!512 list1!2))))

(declare-fun e!32416 () (Set (_ BitVec 32)))

(assert (=> d!51615 (= (content!15 list1!2) e!32416)))

(declare-fun b!60628 () Bool)

(assert (=> b!60628 (= e!32416 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60629 () Bool)

(assert (=> b!60629 (= e!32416 (union (insert (head!856 list1!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!882 list1!2))))))

(assert (= (and d!51615 c!13137) b!60628))

(assert (= (and d!51615 (not c!13137)) b!60629))

(declare-fun m!65486 () Bool)

(assert (=> b!60629 m!65486))

(declare-fun m!65488 () Bool)

(assert (=> b!60629 m!65488))

(assert (=> b!60602 d!51615))

(declare-fun d!51617 () Bool)

(declare-fun c!13138 () Bool)

(assert (=> d!51617 (= c!13138 (is-Nil!512 list2!2))))

(declare-fun e!32417 () (Set (_ BitVec 32)))

(assert (=> d!51617 (= (content!15 list2!2) e!32417)))

(declare-fun b!60630 () Bool)

(assert (=> b!60630 (= e!32417 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!60631 () Bool)

(assert (=> b!60631 (= e!32417 (union (insert (head!856 list2!2) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!882 list2!2))))))

(assert (= (and d!51617 c!13138) b!60630))

(assert (= (and d!51617 (not c!13138)) b!60631))

(declare-fun m!65490 () Bool)

(assert (=> b!60631 m!65490))

(declare-fun m!65492 () Bool)

(assert (=> b!60631 m!65492))

(assert (=> b!60602 d!51617))

(declare-fun d!51619 () Bool)

(declare-fun res!28258 () Bool)

(declare-fun e!32418 () Bool)

(assert (=> d!51619 (=> res!28258 e!32418)))

(assert (=> d!51619 (= res!28258 (or (is-Nil!512 (tail!882 list1!2)) (and (is-Cons!511 (tail!882 list1!2)) (is-Nil!512 (tail!882 (tail!882 list1!2))))))))

(assert (=> d!51619 (= (isSorted!4 (tail!882 list1!2)) e!32418)))

(declare-fun b!60632 () Bool)

(declare-fun e!32419 () Bool)

(assert (=> b!60632 (= e!32418 e!32419)))

(declare-fun res!28259 () Bool)

(assert (=> b!60632 (=> (not res!28259) (not e!32419))))

(assert (=> b!60632 (= res!28259 (not (and (is-Cons!511 (tail!882 list1!2)) (is-Cons!511 (tail!882 (tail!882 list1!2))) (bvsgt (head!856 (tail!882 list1!2)) (head!856 (tail!882 (tail!882 list1!2)))))))))

(declare-fun b!60633 () Bool)

(assert (=> b!60633 (= e!32419 (isSorted!4 (tail!882 (tail!882 list1!2))))))

(assert (= (and d!51619 (not res!28258)) b!60632))

(assert (= (and b!60632 res!28259) b!60633))

(declare-fun m!65494 () Bool)

(assert (=> b!60633 m!65494))

(assert (=> b!60599 d!51619))

(declare-fun b!60634 () Bool)

(declare-fun e!32421 () List!545)

(assert (=> b!60634 (= e!32421 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2))))))

(declare-fun b!60635 () Bool)

(declare-fun e!32420 () List!545)

(assert (=> b!60635 (= e!32420 (ite lt!11182 (tail!882 list1!2) list1!2))))

(declare-fun b!60636 () Bool)

(assert (=> b!60636 (= e!32420 e!32421)))

(declare-fun c!13140 () Bool)

(assert (=> b!60636 (= c!13140 (is-Nil!512 (ite lt!11182 (tail!882 list1!2) list1!2)))))

(declare-fun b!60637 () Bool)

(declare-fun e!32422 () Bool)

(assert (=> b!60637 (= e!32422 (isSorted!4 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))))))

(declare-fun b!60638 () Bool)

(declare-fun lt!11184 () List!545)

(declare-fun lt!11185 () Bool)

(assert (=> b!60638 (= e!32421 (ite lt!11185 (Cons!511 (head!856 (ite lt!11182 (tail!882 list1!2) list1!2)) lt!11184) (Cons!511 (head!856 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))) lt!11184)))))

(assert (=> b!60638 (= lt!11184 (mergeFast!0 (ite lt!11185 (tail!882 (ite lt!11182 (tail!882 list1!2) list1!2)) (ite lt!11182 (tail!882 list1!2) list1!2)) (ite lt!11185 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2))) (tail!882 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))))))))

(assert (=> b!60638 (= lt!11185 (bvsle (head!856 (ite lt!11182 (tail!882 list1!2) list1!2)) (head!856 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2))))))))

(declare-fun lt!11186 () List!545)

(declare-fun d!51621 () Bool)

(assert (=> d!51621 (mergeSpec!0 (ite lt!11182 (tail!882 list1!2) list1!2) (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2))) lt!11186)))

(assert (=> d!51621 (= lt!11186 e!32420)))

(declare-fun c!13139 () Bool)

(assert (=> d!51621 (= c!13139 (is-Nil!512 (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))))))

(assert (=> d!51621 e!32422))

(declare-fun res!28260 () Bool)

(assert (=> d!51621 (=> (not res!28260) (not e!32422))))

(assert (=> d!51621 (= res!28260 (isSorted!4 (ite lt!11182 (tail!882 list1!2) list1!2)))))

(assert (=> d!51621 (= (mergeFast!0 (ite lt!11182 (tail!882 list1!2) list1!2) (ite lt!11182 (tail!882 list2!2) (tail!882 (tail!882 list2!2)))) lt!11186)))

(assert (= (and d!51621 res!28260) b!60637))

(assert (= (and b!60636 c!13140) b!60634))

(assert (= (and b!60636 (not c!13140)) b!60638))

(assert (= (and d!51621 c!13139) b!60635))

(assert (= (and d!51621 (not c!13139)) b!60636))

(declare-fun m!65496 () Bool)

(assert (=> b!60637 m!65496))

(declare-fun m!65498 () Bool)

(assert (=> b!60638 m!65498))

(declare-fun m!65500 () Bool)

(assert (=> d!51621 m!65500))

(declare-fun m!65502 () Bool)

(assert (=> d!51621 m!65502))

(assert (=> b!60619 d!51621))

(declare-fun d!51623 () Bool)

(declare-fun res!28261 () Bool)

(declare-fun e!32423 () Bool)

(assert (=> d!51623 (=> (not res!28261) (not e!32423))))

(assert (=> d!51623 (= res!28261 (isSorted!4 lt!11183))))

(assert (=> d!51623 (= (mergeSpec!0 list1!2 (tail!882 list2!2) lt!11183) e!32423)))

(declare-fun b!60639 () Bool)

(assert (=> b!60639 (= e!32423 (= (content!15 lt!11183) (union (content!15 list1!2) (content!15 (tail!882 list2!2)))))))

(assert (= (and d!51623 res!28261) b!60639))

(declare-fun m!65504 () Bool)

(assert (=> d!51623 m!65504))

(declare-fun m!65506 () Bool)

(assert (=> b!60639 m!65506))

(assert (=> b!60639 m!65470))

(assert (=> b!60639 m!65492))

(assert (=> d!51609 d!51623))

(assert (=> d!51609 d!51603))

(declare-fun d!51625 () Bool)

(declare-fun res!28262 () Bool)

(declare-fun e!32424 () Bool)

(assert (=> d!51625 (=> res!28262 e!32424)))

(assert (=> d!51625 (= res!28262 (or (is-Nil!512 (tail!882 list2!2)) (and (is-Cons!511 (tail!882 list2!2)) (is-Nil!512 (tail!882 (tail!882 list2!2))))))))

(assert (=> d!51625 (= (isSorted!4 (tail!882 list2!2)) e!32424)))

(declare-fun b!60640 () Bool)

(declare-fun e!32425 () Bool)

(assert (=> b!60640 (= e!32424 e!32425)))

(declare-fun res!28263 () Bool)

(assert (=> b!60640 (=> (not res!28263) (not e!32425))))

(assert (=> b!60640 (= res!28263 (not (and (is-Cons!511 (tail!882 list2!2)) (is-Cons!511 (tail!882 (tail!882 list2!2))) (bvsgt (head!856 (tail!882 list2!2)) (head!856 (tail!882 (tail!882 list2!2)))))))))

(declare-fun b!60641 () Bool)

(assert (=> b!60641 (= e!32425 (isSorted!4 (tail!882 (tail!882 list2!2))))))

(assert (= (and d!51625 (not res!28262)) b!60640))

(assert (= (and b!60640 res!28263) b!60641))

(declare-fun m!65508 () Bool)

(assert (=> b!60641 m!65508))

(assert (=> b!60618 d!51625))

(assert (=> b!60604 d!51625))

(push 1)

(assert (not b!60638))

(assert (not b!60627))

(assert (not b!60629))

(assert (not b!60633))

(assert (not d!51623))

(assert (not b!60639))

(assert (not b!60637))

(assert (not b!60631))

(assert (not d!51621))

(assert (not b!60621))

(assert (not b!60641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

