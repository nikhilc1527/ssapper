; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6394 () Bool)

(assert start!6394)

(declare-fun res!22316 () Bool)

(declare-fun e!24780 () Bool)

(assert (=> start!6394 (=> (not res!22316) (not e!24780))))

(declare-datatypes () ((Nat!215 (Zero!199) (Succ!196 (n!1352 Nat!215)))))

(declare-fun thiss!5617 () Nat!215)

(declare-fun x$1!632 () Bool)

(declare-fun that!1176 () Nat!215)

(assert (=> start!6394 (= res!22316 (and (or (not (is-Succ!196 thiss!5617)) (not (is-Succ!196 that!1176))) (is-Zero!199 thiss!5617) (is-Succ!196 that!1176) (= x$1!632 true)))))

(assert (=> start!6394 e!24780))

(assert (=> start!6394 true))

(declare-fun b!47517 () Bool)

(declare-fun repr!0 (Nat!215) Int)

(assert (=> b!47517 (= e!24780 (not (= x$1!632 (< (repr!0 thiss!5617) (repr!0 that!1176)))))))

(assert (= (and start!6394 res!22316) b!47517))

(declare-fun m!50411 () Bool)

(assert (=> b!47517 m!50411))

(declare-fun m!50413 () Bool)

(assert (=> b!47517 m!50413))

(push 1)

(assert (not b!47517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33330 () Bool)

(declare-fun lt!8670 () Int)

(assert (=> d!33330 (>= lt!8670 0)))

(declare-fun e!24783 () Int)

(assert (=> d!33330 (= lt!8670 e!24783)))

(declare-fun c!10029 () Bool)

(assert (=> d!33330 (= c!10029 (is-Zero!199 thiss!5617))))

(assert (=> d!33330 (= (repr!0 thiss!5617) lt!8670)))

(declare-fun b!47522 () Bool)

(assert (=> b!47522 (= e!24783 0)))

(declare-fun b!47523 () Bool)

(assert (=> b!47523 (= e!24783 (+ (repr!0 (n!1352 thiss!5617)) 1))))

(assert (= (and d!33330 c!10029) b!47522))

(assert (= (and d!33330 (not c!10029)) b!47523))

(declare-fun m!50415 () Bool)

(assert (=> b!47523 m!50415))

(assert (=> b!47517 d!33330))

(declare-fun d!33332 () Bool)

(declare-fun lt!8671 () Int)

(assert (=> d!33332 (>= lt!8671 0)))

(declare-fun e!24784 () Int)

(assert (=> d!33332 (= lt!8671 e!24784)))

(declare-fun c!10030 () Bool)

(assert (=> d!33332 (= c!10030 (is-Zero!199 that!1176))))

(assert (=> d!33332 (= (repr!0 that!1176) lt!8671)))

(declare-fun b!47524 () Bool)

(assert (=> b!47524 (= e!24784 0)))

(declare-fun b!47525 () Bool)

(assert (=> b!47525 (= e!24784 (+ (repr!0 (n!1352 that!1176)) 1))))

(assert (= (and d!33332 c!10030) b!47524))

(assert (= (and d!33332 (not c!10030)) b!47525))

(declare-fun m!50417 () Bool)

(assert (=> b!47525 m!50417))

(assert (=> b!47517 d!33332))

(push 1)

(assert (not b!47525))

(assert (not b!47523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33334 () Bool)

(declare-fun lt!8672 () Int)

(assert (=> d!33334 (>= lt!8672 0)))

(declare-fun e!24785 () Int)

(assert (=> d!33334 (= lt!8672 e!24785)))

(declare-fun c!10031 () Bool)

(assert (=> d!33334 (= c!10031 (is-Zero!199 (n!1352 that!1176)))))

(assert (=> d!33334 (= (repr!0 (n!1352 that!1176)) lt!8672)))

(declare-fun b!47526 () Bool)

(assert (=> b!47526 (= e!24785 0)))

(declare-fun b!47527 () Bool)

(assert (=> b!47527 (= e!24785 (+ (repr!0 (n!1352 (n!1352 that!1176))) 1))))

(assert (= (and d!33334 c!10031) b!47526))

(assert (= (and d!33334 (not c!10031)) b!47527))

(declare-fun m!50419 () Bool)

(assert (=> b!47527 m!50419))

(assert (=> b!47525 d!33334))

(declare-fun d!33336 () Bool)

(declare-fun lt!8673 () Int)

(assert (=> d!33336 (>= lt!8673 0)))

(declare-fun e!24786 () Int)

(assert (=> d!33336 (= lt!8673 e!24786)))

(declare-fun c!10032 () Bool)

(assert (=> d!33336 (= c!10032 (is-Zero!199 (n!1352 thiss!5617)))))

(assert (=> d!33336 (= (repr!0 (n!1352 thiss!5617)) lt!8673)))

(declare-fun b!47528 () Bool)

(assert (=> b!47528 (= e!24786 0)))

(declare-fun b!47529 () Bool)

(assert (=> b!47529 (= e!24786 (+ (repr!0 (n!1352 (n!1352 thiss!5617))) 1))))

(assert (= (and d!33336 c!10032) b!47528))

(assert (= (and d!33336 (not c!10032)) b!47529))

(declare-fun m!50421 () Bool)

(assert (=> b!47529 m!50421))

(assert (=> b!47523 d!33336))

(push 1)

(assert (not b!47529))

(assert (not b!47527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

