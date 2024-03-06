; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4538 () Bool)

(assert start!4538)

(declare-fun res!16210 () Bool)

(declare-fun e!17699 () Bool)

(assert (=> start!4538 (=> (not res!16210) (not e!17699))))

(declare-fun x2!25 () (_ BitVec 32))

(declare-datatypes () ((tuple4!0 (tuple4!1 (_1!66 (_ BitVec 32)) (_2!66 (_ BitVec 32)) (_3!0 (_ BitVec 32)) (_4!0 (_ BitVec 32))))))

(declare-fun x$6!54 () tuple4!0)

(declare-fun x4!8 () (_ BitVec 32))

(declare-fun x3!17 () (_ BitVec 32))

(declare-fun x1!23 () (_ BitVec 32))

(declare-fun sort4!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!0)

(assert (=> start!4538 (= res!16210 (= x$6!54 (tuple4!1 (_1!66 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_2!66 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_3!0 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_4!0 (sort4!0 x1!23 x2!25 x3!17 x4!8)))))))

(assert (=> start!4538 e!17699))

(assert (=> start!4538 true))

(declare-fun x4s!4 () (_ BitVec 32))

(declare-datatypes () ((tuple5!0 (tuple5!1 (_1!67 (_ BitVec 32)) (_2!67 (_ BitVec 32)) (_3!1 (_ BitVec 32)) (_4!1 (_ BitVec 32)) (_5!0 (_ BitVec 32))))))

(declare-fun x$7!54 () tuple5!0)

(declare-fun b!35077 () Bool)

(declare-fun x5!5 () (_ BitVec 32))

(declare-fun x3s!17 () (_ BitVec 32))

(declare-fun x1s!28 () (_ BitVec 32))

(declare-fun x2s!28 () (_ BitVec 32))

(assert (=> b!35077 (= e!17699 (and (= x1s!28 (_1!66 x$6!54)) (= x2s!28 (_2!66 x$6!54)) (= x3s!17 (_3!0 x$6!54)) (= x4s!4 (_4!0 x$6!54)) (bvsle x4s!4 x5!5) (= x$7!54 (tuple5!1 x1s!28 x2s!28 x3s!17 x4s!4 x5!5)) (or (bvsgt (_1!67 x$7!54) (_2!67 x$7!54)) (bvsgt (_2!67 x$7!54) (_3!1 x$7!54)) (bvsgt (_3!1 x$7!54) (_4!1 x$7!54)) (bvsgt (_4!1 x$7!54) (_5!0 x$7!54)) (not (= (insert (_5!0 x$7!54) (insert (_4!1 x$7!54) (insert (_3!1 x$7!54) (insert (_2!67 x$7!54) (insert (_1!67 x$7!54) (as emptyset (Set (_ BitVec 32)))))))) (insert x5!5 (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!4538 res!16210) b!35077))

(declare-fun m!37573 () Bool)

(assert (=> start!4538 m!37573))

(declare-fun m!37575 () Bool)

(assert (=> b!35077 m!37575))

(declare-fun m!37577 () Bool)

(assert (=> b!35077 m!37577))

(declare-fun m!37579 () Bool)

(assert (=> b!35077 m!37579))

(declare-fun m!37581 () Bool)

(assert (=> b!35077 m!37581))

(declare-fun m!37583 () Bool)

(assert (=> b!35077 m!37583))

(declare-fun m!37585 () Bool)

(assert (=> b!35077 m!37585))

(declare-fun m!37587 () Bool)

(assert (=> b!35077 m!37587))

(declare-fun m!37589 () Bool)

(assert (=> b!35077 m!37589))

(declare-fun m!37591 () Bool)

(assert (=> b!35077 m!37591))

(declare-fun m!37593 () Bool)

(assert (=> b!35077 m!37593))

(push 1)

(assert (not start!4538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6551 () tuple4!0)

(declare-fun d!18370 () Bool)

(assert (=> d!18370 (and (bvsle (_1!66 lt!6551) (_2!66 lt!6551)) (bvsle (_2!66 lt!6551) (_3!0 lt!6551)) (bvsle (_3!0 lt!6551) (_4!0 lt!6551)) (= (insert (_4!0 lt!6551) (insert (_3!0 lt!6551) (insert (_2!66 lt!6551) (insert (_1!66 lt!6551) (as emptyset (Set (_ BitVec 32))))))) (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))

(declare-fun lt!6554 () (_ BitVec 32))

(declare-fun lt!6555 () (_ BitVec 32))

(declare-fun lt!6552 () (_ BitVec 32))

(assert (=> d!18370 (= lt!6551 (ite (bvsle lt!6554 x4!8) (tuple4!1 lt!6555 lt!6552 lt!6554 x4!8) (ite (bvsle lt!6552 x4!8) (tuple4!1 lt!6555 lt!6552 x4!8 lt!6554) (ite (bvsle lt!6555 x4!8) (tuple4!1 lt!6555 x4!8 lt!6552 lt!6554) (tuple4!1 x4!8 lt!6555 lt!6552 lt!6554)))))))

(declare-datatypes () ((tuple3!0 (tuple3!1 (_1!68 (_ BitVec 32)) (_2!68 (_ BitVec 32)) (_3!2 (_ BitVec 32))))))

(declare-fun lt!6557 () tuple3!0)

(assert (=> d!18370 (= lt!6554 (_3!2 lt!6557))))

(declare-fun lt!6556 () tuple3!0)

(assert (=> d!18370 (= lt!6552 (_2!68 lt!6556))))

(declare-fun lt!6553 () tuple3!0)

(assert (=> d!18370 (= lt!6555 (_1!68 lt!6553))))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!0)

(assert (=> d!18370 (= lt!6557 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18370 (= lt!6556 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18370 (= lt!6553 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18370 (= (sort4!0 x1!23 x2!25 x3!17 x4!8) lt!6551)))

(declare-fun bs!11236 () Bool)

(assert (= bs!11236 d!18370))

(declare-fun m!37595 () Bool)

(assert (=> bs!11236 m!37595))

(assert (=> bs!11236 m!37581))

(assert (=> bs!11236 m!37589))

(declare-fun m!37597 () Bool)

(assert (=> bs!11236 m!37597))

(assert (=> bs!11236 m!37593))

(declare-fun m!37599 () Bool)

(assert (=> bs!11236 m!37599))

(assert (=> bs!11236 m!37583))

(declare-fun m!37601 () Bool)

(assert (=> bs!11236 m!37601))

(declare-fun m!37603 () Bool)

(assert (=> bs!11236 m!37603))

(assert (=> start!4538 d!18370))

(push 1)

(assert (not d!18370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

