; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4566 () Bool)

(assert start!4566)

(declare-fun res!16231 () Bool)

(declare-fun e!17720 () Bool)

(assert (=> start!4566 (=> (not res!16231) (not e!17720))))

(declare-fun x1!16 () (_ BitVec 32))

(declare-fun x3!10 () (_ BitVec 32))

(declare-datatypes () ((tuple3!14 (tuple3!15 (_1!87 (_ BitVec 32)) (_2!87 (_ BitVec 32)) (_3!19 (_ BitVec 32))))))

(declare-fun x$4!79 () tuple3!14)

(declare-fun x2!18 () (_ BitVec 32))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!14)

(assert (=> start!4566 (= res!16231 (= x$4!79 (tuple3!15 (_1!87 (sort3!0 x1!16 x2!18 x3!10)) (_2!87 (sort3!0 x1!16 x2!18 x3!10)) (_3!19 (sort3!0 x1!16 x2!18 x3!10)))))))

(assert (=> start!4566 e!17720))

(assert (=> start!4566 true))

(declare-fun x1s!19 () (_ BitVec 32))

(declare-datatypes () ((tuple4!14 (tuple4!15 (_1!88 (_ BitVec 32)) (_2!88 (_ BitVec 32)) (_3!20 (_ BitVec 32)) (_4!12 (_ BitVec 32))))))

(declare-fun x$5!43 () tuple4!14)

(declare-fun x4!7 () (_ BitVec 32))

(declare-fun x3s!8 () (_ BitVec 32))

(declare-fun x2s!19 () (_ BitVec 32))

(declare-fun b!35098 () Bool)

(assert (=> b!35098 (= e!17720 (and (= x1s!19 (_1!87 x$4!79)) (= x2s!19 (_2!87 x$4!79)) (= x3s!8 (_3!19 x$4!79)) (bvsgt x3s!8 x4!7) (bvsgt x2s!19 x4!7) (bvsle x1s!19 x4!7) (= x$5!43 (tuple4!15 x1s!19 x4!7 x2s!19 x3s!8)) (or (bvsgt (_1!88 x$5!43) (_2!88 x$5!43)) (bvsgt (_2!88 x$5!43) (_3!20 x$5!43)) (bvsgt (_3!20 x$5!43) (_4!12 x$5!43)) (not (= (insert (_4!12 x$5!43) (insert (_3!20 x$5!43) (insert (_2!88 x$5!43) (insert (_1!88 x$5!43) (as emptyset (Set (_ BitVec 32))))))) (insert x4!7 (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))))))

(assert (= (and start!4566 res!16231) b!35098))

(declare-fun m!37785 () Bool)

(assert (=> start!4566 m!37785))

(declare-fun m!37787 () Bool)

(assert (=> b!35098 m!37787))

(declare-fun m!37789 () Bool)

(assert (=> b!35098 m!37789))

(declare-fun m!37791 () Bool)

(assert (=> b!35098 m!37791))

(declare-fun m!37793 () Bool)

(assert (=> b!35098 m!37793))

(declare-fun m!37795 () Bool)

(assert (=> b!35098 m!37795))

(declare-fun m!37797 () Bool)

(assert (=> b!35098 m!37797))

(declare-fun m!37799 () Bool)

(assert (=> b!35098 m!37799))

(declare-fun m!37801 () Bool)

(assert (=> b!35098 m!37801))

(push 1)

(assert (not start!4566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6683 () tuple3!14)

(declare-fun d!18384 () Bool)

(assert (=> d!18384 (and (bvsle (_1!87 lt!6683) (_2!87 lt!6683)) (bvsle (_2!87 lt!6683) (_3!19 lt!6683)) (= (insert (_3!19 lt!6683) (insert (_2!87 lt!6683) (insert (_1!87 lt!6683) (as emptyset (Set (_ BitVec 32)))))) (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun lt!6686 () (_ BitVec 32))

(declare-fun lt!6682 () (_ BitVec 32))

(assert (=> d!18384 (= lt!6683 (ite (bvsle lt!6682 x3!10) (tuple3!15 lt!6686 lt!6682 x3!10) (ite (bvsle lt!6686 x3!10) (tuple3!15 lt!6686 x3!10 lt!6682) (tuple3!15 x3!10 lt!6686 lt!6682))))))

(declare-datatypes () ((tuple2!136 (tuple2!137 (_1!89 (_ BitVec 32)) (_2!89 (_ BitVec 32))))))

(declare-fun lt!6685 () tuple2!136)

(assert (=> d!18384 (= lt!6682 (_2!89 lt!6685))))

(declare-fun lt!6684 () tuple2!136)

(assert (=> d!18384 (= lt!6686 (_1!89 lt!6684))))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!136)

(assert (=> d!18384 (= lt!6685 (sort2!0 x1!16 x2!18))))

(assert (=> d!18384 (= lt!6684 (sort2!0 x1!16 x2!18))))

(assert (=> d!18384 (= (sort3!0 x1!16 x2!18 x3!10) lt!6683)))

(declare-fun bs!11250 () Bool)

(assert (= bs!11250 d!18384))

(assert (=> bs!11250 m!37795))

(declare-fun m!37803 () Bool)

(assert (=> bs!11250 m!37803))

(declare-fun m!37805 () Bool)

(assert (=> bs!11250 m!37805))

(assert (=> bs!11250 m!37789))

(assert (=> bs!11250 m!37801))

(declare-fun m!37807 () Bool)

(assert (=> bs!11250 m!37807))

(declare-fun m!37809 () Bool)

(assert (=> bs!11250 m!37809))

(assert (=> start!4566 d!18384))

(push 1)

(assert (not d!18384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

