; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8710 () Bool)

(assert start!8710)

(declare-fun b!60413 () Bool)

(declare-fun e!32268 () Bool)

(declare-datatypes () ((List!540 (Cons!506 (head!851 (_ BitVec 32)) (tail!877 List!540)) (Nil!507))))

(declare-fun list2!7 () List!540)

(declare-fun isSorted!4 (List!540) Bool)

(assert (=> b!60413 (= e!32268 (not (isSorted!4 list2!7)))))

(declare-fun b!60412 () Bool)

(declare-fun e!32269 () Bool)

(assert (=> b!60412 (= e!32269 e!32268)))

(declare-fun res!28093 () Bool)

(assert (=> b!60412 (=> res!28093 e!32268)))

(declare-fun list1!7 () List!540)

(assert (=> b!60412 (= res!28093 (not (isSorted!4 list1!7)))))

(declare-fun b!60410 () Bool)

(declare-fun res!28095 () Bool)

(assert (=> b!60410 (=> (not res!28095) (not e!32269))))

(declare-fun list2!2 () List!540)

(assert (=> b!60410 (= res!28095 (isSorted!4 list2!2))))

(declare-fun b!60411 () Bool)

(declare-fun res!28094 () Bool)

(assert (=> b!60411 (=> (not res!28094) (not e!32269))))

(declare-fun head!807 () (_ BitVec 32))

(declare-fun list1!2 () List!540)

(assert (=> b!60411 (= res!28094 (and (not (is-Nil!507 list2!2)) (not (is-Nil!507 list1!2)) (bvsle (head!851 list1!2) (head!851 list2!2)) (= head!807 (head!851 list1!2)) (= list1!7 (tail!877 list1!2)) (= list2!7 list2!2)))))

(declare-fun res!28092 () Bool)

(assert (=> start!8710 (=> (not res!28092) (not e!32269))))

(assert (=> start!8710 (= res!28092 (isSorted!4 list1!2))))

(assert (=> start!8710 e!32269))

(assert (=> start!8710 true))

(assert (= (and start!8710 res!28092) b!60410))

(assert (= (and b!60410 res!28095) b!60411))

(assert (= (and b!60411 res!28094) b!60412))

(assert (= (and b!60412 (not res!28093)) b!60413))

(declare-fun m!65298 () Bool)

(assert (=> b!60413 m!65298))

(declare-fun m!65300 () Bool)

(assert (=> b!60412 m!65300))

(declare-fun m!65302 () Bool)

(assert (=> b!60410 m!65302))

(declare-fun m!65304 () Bool)

(assert (=> start!8710 m!65304))

(push 1)

(assert (not b!60413))

(assert (not start!8710))

(assert (not b!60410))

(assert (not b!60412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51527 () Bool)

(declare-fun res!28100 () Bool)

(declare-fun e!32274 () Bool)

(assert (=> d!51527 (=> res!28100 e!32274)))

(assert (=> d!51527 (= res!28100 (or (is-Nil!507 list2!7) (and (is-Cons!506 list2!7) (is-Nil!507 (tail!877 list2!7)))))))

(assert (=> d!51527 (= (isSorted!4 list2!7) e!32274)))

(declare-fun b!60418 () Bool)

(declare-fun e!32275 () Bool)

(assert (=> b!60418 (= e!32274 e!32275)))

(declare-fun res!28101 () Bool)

(assert (=> b!60418 (=> (not res!28101) (not e!32275))))

(assert (=> b!60418 (= res!28101 (not (and (is-Cons!506 list2!7) (is-Cons!506 (tail!877 list2!7)) (bvsgt (head!851 list2!7) (head!851 (tail!877 list2!7))))))))

(declare-fun b!60419 () Bool)

(assert (=> b!60419 (= e!32275 (isSorted!4 (tail!877 list2!7)))))

(assert (= (and d!51527 (not res!28100)) b!60418))

(assert (= (and b!60418 res!28101) b!60419))

(declare-fun m!65306 () Bool)

(assert (=> b!60419 m!65306))

(assert (=> b!60413 d!51527))

(declare-fun d!51529 () Bool)

(declare-fun res!28102 () Bool)

(declare-fun e!32276 () Bool)

(assert (=> d!51529 (=> res!28102 e!32276)))

(assert (=> d!51529 (= res!28102 (or (is-Nil!507 list1!2) (and (is-Cons!506 list1!2) (is-Nil!507 (tail!877 list1!2)))))))

(assert (=> d!51529 (= (isSorted!4 list1!2) e!32276)))

(declare-fun b!60420 () Bool)

(declare-fun e!32277 () Bool)

(assert (=> b!60420 (= e!32276 e!32277)))

(declare-fun res!28103 () Bool)

(assert (=> b!60420 (=> (not res!28103) (not e!32277))))

(assert (=> b!60420 (= res!28103 (not (and (is-Cons!506 list1!2) (is-Cons!506 (tail!877 list1!2)) (bvsgt (head!851 list1!2) (head!851 (tail!877 list1!2))))))))

(declare-fun b!60421 () Bool)

(assert (=> b!60421 (= e!32277 (isSorted!4 (tail!877 list1!2)))))

(assert (= (and d!51529 (not res!28102)) b!60420))

(assert (= (and b!60420 res!28103) b!60421))

(declare-fun m!65308 () Bool)

(assert (=> b!60421 m!65308))

(assert (=> start!8710 d!51529))

(declare-fun d!51531 () Bool)

(declare-fun res!28104 () Bool)

(declare-fun e!32278 () Bool)

(assert (=> d!51531 (=> res!28104 e!32278)))

(assert (=> d!51531 (= res!28104 (or (is-Nil!507 list2!2) (and (is-Cons!506 list2!2) (is-Nil!507 (tail!877 list2!2)))))))

(assert (=> d!51531 (= (isSorted!4 list2!2) e!32278)))

(declare-fun b!60422 () Bool)

(declare-fun e!32279 () Bool)

(assert (=> b!60422 (= e!32278 e!32279)))

(declare-fun res!28105 () Bool)

(assert (=> b!60422 (=> (not res!28105) (not e!32279))))

(assert (=> b!60422 (= res!28105 (not (and (is-Cons!506 list2!2) (is-Cons!506 (tail!877 list2!2)) (bvsgt (head!851 list2!2) (head!851 (tail!877 list2!2))))))))

(declare-fun b!60423 () Bool)

(assert (=> b!60423 (= e!32279 (isSorted!4 (tail!877 list2!2)))))

(assert (= (and d!51531 (not res!28104)) b!60422))

(assert (= (and b!60422 res!28105) b!60423))

(declare-fun m!65310 () Bool)

(assert (=> b!60423 m!65310))

(assert (=> b!60410 d!51531))

(declare-fun d!51533 () Bool)

(declare-fun res!28106 () Bool)

(declare-fun e!32280 () Bool)

(assert (=> d!51533 (=> res!28106 e!32280)))

(assert (=> d!51533 (= res!28106 (or (is-Nil!507 list1!7) (and (is-Cons!506 list1!7) (is-Nil!507 (tail!877 list1!7)))))))

(assert (=> d!51533 (= (isSorted!4 list1!7) e!32280)))

(declare-fun b!60424 () Bool)

(declare-fun e!32281 () Bool)

(assert (=> b!60424 (= e!32280 e!32281)))

(declare-fun res!28107 () Bool)

(assert (=> b!60424 (=> (not res!28107) (not e!32281))))

(assert (=> b!60424 (= res!28107 (not (and (is-Cons!506 list1!7) (is-Cons!506 (tail!877 list1!7)) (bvsgt (head!851 list1!7) (head!851 (tail!877 list1!7))))))))

(declare-fun b!60425 () Bool)

(assert (=> b!60425 (= e!32281 (isSorted!4 (tail!877 list1!7)))))

(assert (= (and d!51533 (not res!28106)) b!60424))

(assert (= (and b!60424 res!28107) b!60425))

(declare-fun m!65312 () Bool)

(assert (=> b!60425 m!65312))

(assert (=> b!60412 d!51533))

(push 1)

(assert (not b!60425))

(assert (not b!60423))

(assert (not b!60421))

(assert (not b!60419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

