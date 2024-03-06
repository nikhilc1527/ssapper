; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4546 () Bool)

(assert start!4546)

(declare-fun res!16216 () Bool)

(declare-fun e!17705 () Bool)

(assert (=> start!4546 (=> (not res!16216) (not e!17705))))

(declare-fun x2!25 () (_ BitVec 32))

(declare-datatypes () ((tuple4!4 (tuple4!5 (_1!72 (_ BitVec 32)) (_2!72 (_ BitVec 32)) (_3!6 (_ BitVec 32)) (_4!4 (_ BitVec 32))))))

(declare-fun x$6!54 () tuple4!4)

(declare-fun x4!8 () (_ BitVec 32))

(declare-fun x3!17 () (_ BitVec 32))

(declare-fun x1!23 () (_ BitVec 32))

(declare-fun sort4!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!4)

(assert (=> start!4546 (= res!16216 (= x$6!54 (tuple4!5 (_1!72 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_2!72 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_3!6 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_4!4 (sort4!0 x1!23 x2!25 x3!17 x4!8)))))))

(assert (=> start!4546 e!17705))

(assert (=> start!4546 true))

(declare-fun x4s!4 () (_ BitVec 32))

(declare-fun x5!5 () (_ BitVec 32))

(declare-fun x3s!17 () (_ BitVec 32))

(declare-fun x1s!28 () (_ BitVec 32))

(declare-fun x2s!28 () (_ BitVec 32))

(declare-datatypes () ((tuple5!4 (tuple5!5 (_1!73 (_ BitVec 32)) (_2!73 (_ BitVec 32)) (_3!7 (_ BitVec 32)) (_4!5 (_ BitVec 32)) (_5!2 (_ BitVec 32))))))

(declare-fun x$7!56 () tuple5!4)

(declare-fun b!35083 () Bool)

(assert (=> b!35083 (= e!17705 (and (= x1s!28 (_1!72 x$6!54)) (= x2s!28 (_2!72 x$6!54)) (= x3s!17 (_3!6 x$6!54)) (= x4s!4 (_4!4 x$6!54)) (bvsgt x4s!4 x5!5) (bvsgt x3s!17 x5!5) (bvsle x2s!28 x5!5) (= x$7!56 (tuple5!5 x1s!28 x2s!28 x5!5 x3s!17 x4s!4)) (or (bvsgt (_1!73 x$7!56) (_2!73 x$7!56)) (bvsgt (_2!73 x$7!56) (_3!7 x$7!56)) (bvsgt (_3!7 x$7!56) (_4!5 x$7!56)) (bvsgt (_4!5 x$7!56) (_5!2 x$7!56)) (not (= (insert (_5!2 x$7!56) (insert (_4!5 x$7!56) (insert (_3!7 x$7!56) (insert (_2!73 x$7!56) (insert (_1!73 x$7!56) (as emptyset (Set (_ BitVec 32)))))))) (insert x5!5 (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!4546 res!16216) b!35083))

(declare-fun m!37637 () Bool)

(assert (=> start!4546 m!37637))

(declare-fun m!37639 () Bool)

(assert (=> b!35083 m!37639))

(declare-fun m!37641 () Bool)

(assert (=> b!35083 m!37641))

(declare-fun m!37643 () Bool)

(assert (=> b!35083 m!37643))

(declare-fun m!37645 () Bool)

(assert (=> b!35083 m!37645))

(declare-fun m!37647 () Bool)

(assert (=> b!35083 m!37647))

(declare-fun m!37649 () Bool)

(assert (=> b!35083 m!37649))

(declare-fun m!37651 () Bool)

(assert (=> b!35083 m!37651))

(declare-fun m!37653 () Bool)

(assert (=> b!35083 m!37653))

(declare-fun m!37655 () Bool)

(assert (=> b!35083 m!37655))

(declare-fun m!37657 () Bool)

(assert (=> b!35083 m!37657))

(push 1)

(assert (not start!4546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18374 () Bool)

(declare-fun lt!6594 () tuple4!4)

(assert (=> d!18374 (and (bvsle (_1!72 lt!6594) (_2!72 lt!6594)) (bvsle (_2!72 lt!6594) (_3!6 lt!6594)) (bvsle (_3!6 lt!6594) (_4!4 lt!6594)) (= (insert (_4!4 lt!6594) (insert (_3!6 lt!6594) (insert (_2!72 lt!6594) (insert (_1!72 lt!6594) (as emptyset (Set (_ BitVec 32))))))) (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))

(declare-fun lt!6593 () (_ BitVec 32))

(declare-fun lt!6596 () (_ BitVec 32))

(declare-fun lt!6597 () (_ BitVec 32))

(assert (=> d!18374 (= lt!6594 (ite (bvsle lt!6597 x4!8) (tuple4!5 lt!6596 lt!6593 lt!6597 x4!8) (ite (bvsle lt!6593 x4!8) (tuple4!5 lt!6596 lt!6593 x4!8 lt!6597) (ite (bvsle lt!6596 x4!8) (tuple4!5 lt!6596 x4!8 lt!6593 lt!6597) (tuple4!5 x4!8 lt!6596 lt!6593 lt!6597)))))))

(declare-datatypes () ((tuple3!4 (tuple3!5 (_1!74 (_ BitVec 32)) (_2!74 (_ BitVec 32)) (_3!8 (_ BitVec 32))))))

(declare-fun lt!6598 () tuple3!4)

(assert (=> d!18374 (= lt!6597 (_3!8 lt!6598))))

(declare-fun lt!6599 () tuple3!4)

(assert (=> d!18374 (= lt!6593 (_2!74 lt!6599))))

(declare-fun lt!6595 () tuple3!4)

(assert (=> d!18374 (= lt!6596 (_1!74 lt!6595))))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!4)

(assert (=> d!18374 (= lt!6598 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18374 (= lt!6599 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18374 (= lt!6595 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18374 (= (sort4!0 x1!23 x2!25 x3!17 x4!8) lt!6594)))

(declare-fun bs!11240 () Bool)

(assert (= bs!11240 d!18374))

(assert (=> bs!11240 m!37643))

(assert (=> bs!11240 m!37655))

(assert (=> bs!11240 m!37641))

(declare-fun m!37659 () Bool)

(assert (=> bs!11240 m!37659))

(declare-fun m!37661 () Bool)

(assert (=> bs!11240 m!37661))

(assert (=> bs!11240 m!37647))

(declare-fun m!37663 () Bool)

(assert (=> bs!11240 m!37663))

(declare-fun m!37665 () Bool)

(assert (=> bs!11240 m!37665))

(declare-fun m!37667 () Bool)

(assert (=> bs!11240 m!37667))

(assert (=> start!4546 d!18374))

(push 1)

(assert (not d!18374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

