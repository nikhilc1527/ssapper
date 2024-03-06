; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4550 () Bool)

(assert start!4550)

(declare-fun res!16219 () Bool)

(declare-fun e!17708 () Bool)

(assert (=> start!4550 (=> (not res!16219) (not e!17708))))

(declare-fun x2!25 () (_ BitVec 32))

(declare-datatypes () ((tuple4!6 (tuple4!7 (_1!75 (_ BitVec 32)) (_2!75 (_ BitVec 32)) (_3!9 (_ BitVec 32)) (_4!6 (_ BitVec 32))))))

(declare-fun x$6!54 () tuple4!6)

(declare-fun x4!8 () (_ BitVec 32))

(declare-fun x3!17 () (_ BitVec 32))

(declare-fun x1!23 () (_ BitVec 32))

(declare-fun sort4!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!6)

(assert (=> start!4550 (= res!16219 (= x$6!54 (tuple4!7 (_1!75 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_2!75 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_3!9 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_4!6 (sort4!0 x1!23 x2!25 x3!17 x4!8)))))))

(assert (=> start!4550 e!17708))

(assert (=> start!4550 true))

(declare-fun x4s!4 () (_ BitVec 32))

(declare-fun b!35086 () Bool)

(declare-fun x5!5 () (_ BitVec 32))

(declare-datatypes () ((tuple5!6 (tuple5!7 (_1!76 (_ BitVec 32)) (_2!76 (_ BitVec 32)) (_3!10 (_ BitVec 32)) (_4!7 (_ BitVec 32)) (_5!3 (_ BitVec 32))))))

(declare-fun x$7!57 () tuple5!6)

(declare-fun x3s!17 () (_ BitVec 32))

(declare-fun x1s!28 () (_ BitVec 32))

(declare-fun x2s!28 () (_ BitVec 32))

(assert (=> b!35086 (= e!17708 (and (= x1s!28 (_1!75 x$6!54)) (= x2s!28 (_2!75 x$6!54)) (= x3s!17 (_3!9 x$6!54)) (= x4s!4 (_4!6 x$6!54)) (bvsgt x4s!4 x5!5) (bvsgt x3s!17 x5!5) (bvsgt x2s!28 x5!5) (bvsle x1s!28 x5!5) (= x$7!57 (tuple5!7 x1s!28 x5!5 x2s!28 x3s!17 x4s!4)) (or (bvsgt (_1!76 x$7!57) (_2!76 x$7!57)) (bvsgt (_2!76 x$7!57) (_3!10 x$7!57)) (bvsgt (_3!10 x$7!57) (_4!7 x$7!57)) (bvsgt (_4!7 x$7!57) (_5!3 x$7!57)) (not (= (insert (_5!3 x$7!57) (insert (_4!7 x$7!57) (insert (_3!10 x$7!57) (insert (_2!76 x$7!57) (insert (_1!76 x$7!57) (as emptyset (Set (_ BitVec 32)))))))) (insert x5!5 (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!4550 res!16219) b!35086))

(declare-fun m!37669 () Bool)

(assert (=> start!4550 m!37669))

(declare-fun m!37671 () Bool)

(assert (=> b!35086 m!37671))

(declare-fun m!37673 () Bool)

(assert (=> b!35086 m!37673))

(declare-fun m!37675 () Bool)

(assert (=> b!35086 m!37675))

(declare-fun m!37677 () Bool)

(assert (=> b!35086 m!37677))

(declare-fun m!37679 () Bool)

(assert (=> b!35086 m!37679))

(declare-fun m!37681 () Bool)

(assert (=> b!35086 m!37681))

(declare-fun m!37683 () Bool)

(assert (=> b!35086 m!37683))

(declare-fun m!37685 () Bool)

(assert (=> b!35086 m!37685))

(declare-fun m!37687 () Bool)

(assert (=> b!35086 m!37687))

(declare-fun m!37689 () Bool)

(assert (=> b!35086 m!37689))

(push 1)

(assert (not start!4550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6615 () tuple4!6)

(declare-fun d!18376 () Bool)

(assert (=> d!18376 (and (bvsle (_1!75 lt!6615) (_2!75 lt!6615)) (bvsle (_2!75 lt!6615) (_3!9 lt!6615)) (bvsle (_3!9 lt!6615) (_4!6 lt!6615)) (= (insert (_4!6 lt!6615) (insert (_3!9 lt!6615) (insert (_2!75 lt!6615) (insert (_1!75 lt!6615) (as emptyset (Set (_ BitVec 32))))))) (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))

(declare-fun lt!6618 () (_ BitVec 32))

(declare-fun lt!6616 () (_ BitVec 32))

(declare-fun lt!6617 () (_ BitVec 32))

(assert (=> d!18376 (= lt!6615 (ite (bvsle lt!6616 x4!8) (tuple4!7 lt!6618 lt!6617 lt!6616 x4!8) (ite (bvsle lt!6617 x4!8) (tuple4!7 lt!6618 lt!6617 x4!8 lt!6616) (ite (bvsle lt!6618 x4!8) (tuple4!7 lt!6618 x4!8 lt!6617 lt!6616) (tuple4!7 x4!8 lt!6618 lt!6617 lt!6616)))))))

(declare-datatypes () ((tuple3!6 (tuple3!7 (_1!77 (_ BitVec 32)) (_2!77 (_ BitVec 32)) (_3!11 (_ BitVec 32))))))

(declare-fun lt!6614 () tuple3!6)

(assert (=> d!18376 (= lt!6616 (_3!11 lt!6614))))

(declare-fun lt!6620 () tuple3!6)

(assert (=> d!18376 (= lt!6617 (_2!77 lt!6620))))

(declare-fun lt!6619 () tuple3!6)

(assert (=> d!18376 (= lt!6618 (_1!77 lt!6619))))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!6)

(assert (=> d!18376 (= lt!6614 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18376 (= lt!6620 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18376 (= lt!6619 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18376 (= (sort4!0 x1!23 x2!25 x3!17 x4!8) lt!6615)))

(declare-fun bs!11242 () Bool)

(assert (= bs!11242 d!18376))

(assert (=> bs!11242 m!37683))

(assert (=> bs!11242 m!37679))

(declare-fun m!37691 () Bool)

(assert (=> bs!11242 m!37691))

(assert (=> bs!11242 m!37689))

(assert (=> bs!11242 m!37673))

(declare-fun m!37693 () Bool)

(assert (=> bs!11242 m!37693))

(declare-fun m!37695 () Bool)

(assert (=> bs!11242 m!37695))

(declare-fun m!37697 () Bool)

(assert (=> bs!11242 m!37697))

(declare-fun m!37699 () Bool)

(assert (=> bs!11242 m!37699))

(assert (=> start!4550 d!18376))

(push 1)

(assert (not d!18376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

