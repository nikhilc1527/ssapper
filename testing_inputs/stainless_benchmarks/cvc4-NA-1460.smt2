; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10030 () Bool)

(assert start!10030)

(declare-fun res!35417 () Bool)

(declare-fun e!39199 () Bool)

(assert (=> start!10030 (=> (not res!35417) (not e!39199))))

(declare-fun c!17079 () Int)

(declare-fun failed!1 () Bool)

(declare-datatypes () ((List!619 (Nil!577) (Cons!576 (head!986 Int) (tail!1007 List!619)))))

(declare-fun list!826 () List!619)

(declare-fun counter!32 () Int)

(assert (=> start!10030 (= res!35417 (and (or (>= counter!32 0) failed!1) (is-Cons!576 list!826) (= c!17079 (ite (= (head!986 list!826) 1) (+ counter!32 1) (ite (= (head!986 list!826) 2) (- counter!32 1) counter!32)))))))

(assert (=> start!10030 e!39199))

(assert (=> start!10030 true))

(declare-fun b!72523 () Bool)

(declare-fun res!35418 () Bool)

(assert (=> b!72523 (=> (not res!35418) (not e!39199))))

(declare-fun res!34930 () Bool)

(declare-fun balanced_withFailure!0 (List!619 Int Bool) Bool)

(assert (=> b!72523 (= res!35418 (= res!34930 (balanced_withFailure!0 (tail!1007 list!826) c!17079 (or failed!1 (< c!17079 0)))))))

(declare-fun b!72524 () Bool)

(declare-fun res!35419 () Bool)

(assert (=> b!72524 (=> (not res!35419) (not e!39199))))

(assert (=> b!72524 (= res!35419 failed!1)))

(declare-fun b!72525 () Bool)

(declare-fun balanced_nonEarly!0 (List!619 Int) Bool)

(assert (=> b!72525 (= e!39199 (not (= res!34930 (balanced_nonEarly!0 list!826 (- 1)))))))

(assert (= (and start!10030 res!35417) b!72523))

(assert (= (and b!72523 res!35418) b!72524))

(assert (= (and b!72524 res!35419) b!72525))

(declare-fun m!72478 () Bool)

(assert (=> b!72523 m!72478))

(declare-fun m!72480 () Bool)

(assert (=> b!72525 m!72480))

(push 1)

(assert (not b!72523))

(assert (not b!72525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!15378 () Bool)

(declare-fun d!54631 () Bool)

(assert (=> d!54631 (= lt!15378 (balanced_nonEarly!0 (tail!1007 list!826) (ite (or failed!1 (< c!17079 0)) (- 1) c!17079)))))

(declare-fun e!39202 () Bool)

(assert (=> d!54631 (= lt!15378 e!39202)))

(declare-fun c!17459 () Bool)

(assert (=> d!54631 (= c!17459 (is-Cons!576 (tail!1007 list!826)))))

(assert (=> d!54631 (or (>= c!17079 0) (or failed!1 (< c!17079 0)))))

(assert (=> d!54631 (= (balanced_withFailure!0 (tail!1007 list!826) c!17079 (or failed!1 (< c!17079 0))) lt!15378)))

(declare-fun b!72530 () Bool)

(declare-fun lt!15379 () Int)

(assert (=> b!72530 (= e!39202 (balanced_withFailure!0 (tail!1007 (tail!1007 list!826)) lt!15379 (or (or failed!1 (< c!17079 0)) (< lt!15379 0))))))

(assert (=> b!72530 (= lt!15379 (ite (= (head!986 (tail!1007 list!826)) 1) (+ c!17079 1) (ite (= (head!986 (tail!1007 list!826)) 2) (- c!17079 1) c!17079)))))

(declare-fun b!72531 () Bool)

(assert (=> b!72531 (= e!39202 (and (not (or failed!1 (< c!17079 0))) (= c!17079 0)))))

(assert (= (and d!54631 c!17459) b!72530))

(assert (= (and d!54631 (not c!17459)) b!72531))

(declare-fun m!72482 () Bool)

(assert (=> d!54631 m!72482))

(declare-fun m!72484 () Bool)

(assert (=> b!72530 m!72484))

(assert (=> b!72523 d!54631))

(declare-fun b!72542 () Bool)

(declare-fun e!39207 () Bool)

(assert (=> b!72542 (= e!39207 (balanced_nonEarly!0 (tail!1007 list!826) (- 1)))))

(declare-fun b!72543 () Bool)

(assert (=> b!72543 (= e!39207 (balanced_nonEarly!0 (tail!1007 list!826) (ite (= (head!986 list!826) 1) (+ (- 1) 1) (ite (= (head!986 list!826) 2) (- (- 1) 1) (- 1)))))))

(declare-fun b!72540 () Bool)

(declare-fun e!39208 () Bool)

(assert (=> b!72540 (= e!39208 e!39207)))

(declare-fun c!17466 () Bool)

(assert (=> b!72540 (= c!17466 (< (- 1) 0))))

(declare-fun d!54633 () Bool)

(declare-fun lt!15382 () Bool)

(declare-fun balanced!0 (List!619 Int) Bool)

(assert (=> d!54633 (= lt!15382 (balanced!0 list!826 (- 1)))))

(assert (=> d!54633 (= lt!15382 e!39208)))

(declare-fun c!17465 () Bool)

(assert (=> d!54633 (= c!17465 (is-Cons!576 list!826))))

(assert (=> d!54633 (= (balanced_nonEarly!0 list!826 (- 1)) lt!15382)))

(declare-fun b!72541 () Bool)

(assert (=> b!72541 (= e!39208 (= (- 1) 0))))

(assert (= (and b!72540 c!17466) b!72542))

(assert (= (and b!72540 (not c!17466)) b!72543))

(assert (= (and d!54633 c!17465) b!72540))

(assert (= (and d!54633 (not c!17465)) b!72541))

(declare-fun m!72486 () Bool)

(assert (=> b!72542 m!72486))

(declare-fun m!72488 () Bool)

(assert (=> b!72543 m!72488))

(declare-fun m!72490 () Bool)

(assert (=> d!54633 m!72490))

(assert (=> b!72525 d!54633))

(push 1)

(assert (not b!72542))

(assert (not d!54633))

(assert (not b!72543))

(assert (not b!72530))

(assert (not d!54631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

