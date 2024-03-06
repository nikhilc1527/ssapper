; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4542 () Bool)

(assert start!4542)

(declare-fun res!16213 () Bool)

(declare-fun e!17702 () Bool)

(assert (=> start!4542 (=> (not res!16213) (not e!17702))))

(declare-fun x2!25 () (_ BitVec 32))

(declare-datatypes () ((tuple4!2 (tuple4!3 (_1!69 (_ BitVec 32)) (_2!69 (_ BitVec 32)) (_3!3 (_ BitVec 32)) (_4!2 (_ BitVec 32))))))

(declare-fun x$6!54 () tuple4!2)

(declare-fun x4!8 () (_ BitVec 32))

(declare-fun x3!17 () (_ BitVec 32))

(declare-fun x1!23 () (_ BitVec 32))

(declare-fun sort4!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!2)

(assert (=> start!4542 (= res!16213 (= x$6!54 (tuple4!3 (_1!69 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_2!69 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_3!3 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_4!2 (sort4!0 x1!23 x2!25 x3!17 x4!8)))))))

(assert (=> start!4542 e!17702))

(assert (=> start!4542 true))

(declare-datatypes () ((tuple5!2 (tuple5!3 (_1!70 (_ BitVec 32)) (_2!70 (_ BitVec 32)) (_3!4 (_ BitVec 32)) (_4!3 (_ BitVec 32)) (_5!1 (_ BitVec 32))))))

(declare-fun x$7!55 () tuple5!2)

(declare-fun x4s!4 () (_ BitVec 32))

(declare-fun x5!5 () (_ BitVec 32))

(declare-fun b!35080 () Bool)

(declare-fun x3s!17 () (_ BitVec 32))

(declare-fun x1s!28 () (_ BitVec 32))

(declare-fun x2s!28 () (_ BitVec 32))

(assert (=> b!35080 (= e!17702 (and (= x1s!28 (_1!69 x$6!54)) (= x2s!28 (_2!69 x$6!54)) (= x3s!17 (_3!3 x$6!54)) (= x4s!4 (_4!2 x$6!54)) (bvsgt x4s!4 x5!5) (bvsle x3s!17 x5!5) (= x$7!55 (tuple5!3 x1s!28 x2s!28 x3s!17 x5!5 x4s!4)) (or (bvsgt (_1!70 x$7!55) (_2!70 x$7!55)) (bvsgt (_2!70 x$7!55) (_3!4 x$7!55)) (bvsgt (_3!4 x$7!55) (_4!3 x$7!55)) (bvsgt (_4!3 x$7!55) (_5!1 x$7!55)) (not (= (insert (_5!1 x$7!55) (insert (_4!3 x$7!55) (insert (_3!4 x$7!55) (insert (_2!70 x$7!55) (insert (_1!70 x$7!55) (as emptyset (Set (_ BitVec 32)))))))) (insert x5!5 (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!4542 res!16213) b!35080))

(declare-fun m!37605 () Bool)

(assert (=> start!4542 m!37605))

(declare-fun m!37607 () Bool)

(assert (=> b!35080 m!37607))

(declare-fun m!37609 () Bool)

(assert (=> b!35080 m!37609))

(declare-fun m!37611 () Bool)

(assert (=> b!35080 m!37611))

(declare-fun m!37613 () Bool)

(assert (=> b!35080 m!37613))

(declare-fun m!37615 () Bool)

(assert (=> b!35080 m!37615))

(declare-fun m!37617 () Bool)

(assert (=> b!35080 m!37617))

(declare-fun m!37619 () Bool)

(assert (=> b!35080 m!37619))

(declare-fun m!37621 () Bool)

(assert (=> b!35080 m!37621))

(declare-fun m!37623 () Bool)

(assert (=> b!35080 m!37623))

(declare-fun m!37625 () Bool)

(assert (=> b!35080 m!37625))

(push 1)

(assert (not start!4542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6574 () tuple4!2)

(declare-fun d!18372 () Bool)

(assert (=> d!18372 (and (bvsle (_1!69 lt!6574) (_2!69 lt!6574)) (bvsle (_2!69 lt!6574) (_3!3 lt!6574)) (bvsle (_3!3 lt!6574) (_4!2 lt!6574)) (= (insert (_4!2 lt!6574) (insert (_3!3 lt!6574) (insert (_2!69 lt!6574) (insert (_1!69 lt!6574) (as emptyset (Set (_ BitVec 32))))))) (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))

(declare-fun lt!6578 () (_ BitVec 32))

(declare-fun lt!6577 () (_ BitVec 32))

(declare-fun lt!6573 () (_ BitVec 32))

(assert (=> d!18372 (= lt!6574 (ite (bvsle lt!6573 x4!8) (tuple4!3 lt!6577 lt!6578 lt!6573 x4!8) (ite (bvsle lt!6578 x4!8) (tuple4!3 lt!6577 lt!6578 x4!8 lt!6573) (ite (bvsle lt!6577 x4!8) (tuple4!3 lt!6577 x4!8 lt!6578 lt!6573) (tuple4!3 x4!8 lt!6577 lt!6578 lt!6573)))))))

(declare-datatypes () ((tuple3!2 (tuple3!3 (_1!71 (_ BitVec 32)) (_2!71 (_ BitVec 32)) (_3!5 (_ BitVec 32))))))

(declare-fun lt!6575 () tuple3!2)

(assert (=> d!18372 (= lt!6573 (_3!5 lt!6575))))

(declare-fun lt!6572 () tuple3!2)

(assert (=> d!18372 (= lt!6578 (_2!71 lt!6572))))

(declare-fun lt!6576 () tuple3!2)

(assert (=> d!18372 (= lt!6577 (_1!71 lt!6576))))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!2)

(assert (=> d!18372 (= lt!6575 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18372 (= lt!6572 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18372 (= lt!6576 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18372 (= (sort4!0 x1!23 x2!25 x3!17 x4!8) lt!6574)))

(declare-fun bs!11238 () Bool)

(assert (= bs!11238 d!18372))

(assert (=> bs!11238 m!37607))

(declare-fun m!37627 () Bool)

(assert (=> bs!11238 m!37627))

(declare-fun m!37629 () Bool)

(assert (=> bs!11238 m!37629))

(declare-fun m!37631 () Bool)

(assert (=> bs!11238 m!37631))

(assert (=> bs!11238 m!37621))

(assert (=> bs!11238 m!37613))

(assert (=> bs!11238 m!37625))

(declare-fun m!37633 () Bool)

(assert (=> bs!11238 m!37633))

(declare-fun m!37635 () Bool)

(assert (=> bs!11238 m!37635))

(assert (=> start!4542 d!18372))

(push 1)

(assert (not d!18372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

