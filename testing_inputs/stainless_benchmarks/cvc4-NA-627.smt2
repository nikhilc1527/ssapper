; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4554 () Bool)

(assert start!4554)

(declare-fun res!16222 () Bool)

(declare-fun e!17711 () Bool)

(assert (=> start!4554 (=> (not res!16222) (not e!17711))))

(declare-fun x2!25 () (_ BitVec 32))

(declare-datatypes () ((tuple4!8 (tuple4!9 (_1!78 (_ BitVec 32)) (_2!78 (_ BitVec 32)) (_3!12 (_ BitVec 32)) (_4!8 (_ BitVec 32))))))

(declare-fun x$6!54 () tuple4!8)

(declare-fun x4!8 () (_ BitVec 32))

(declare-fun x3!17 () (_ BitVec 32))

(declare-fun x1!23 () (_ BitVec 32))

(declare-fun sort4!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple4!8)

(assert (=> start!4554 (= res!16222 (= x$6!54 (tuple4!9 (_1!78 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_2!78 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_3!12 (sort4!0 x1!23 x2!25 x3!17 x4!8)) (_4!8 (sort4!0 x1!23 x2!25 x3!17 x4!8)))))))

(assert (=> start!4554 e!17711))

(assert (=> start!4554 true))

(declare-fun x4s!4 () (_ BitVec 32))

(declare-fun x5!5 () (_ BitVec 32))

(declare-fun b!35089 () Bool)

(declare-fun x3s!17 () (_ BitVec 32))

(declare-fun x1s!28 () (_ BitVec 32))

(declare-fun x2s!28 () (_ BitVec 32))

(declare-datatypes () ((tuple5!8 (tuple5!9 (_1!79 (_ BitVec 32)) (_2!79 (_ BitVec 32)) (_3!13 (_ BitVec 32)) (_4!9 (_ BitVec 32)) (_5!4 (_ BitVec 32))))))

(declare-fun x$7!58 () tuple5!8)

(assert (=> b!35089 (= e!17711 (and (= x1s!28 (_1!78 x$6!54)) (= x2s!28 (_2!78 x$6!54)) (= x3s!17 (_3!12 x$6!54)) (= x4s!4 (_4!8 x$6!54)) (bvsgt x4s!4 x5!5) (bvsgt x3s!17 x5!5) (bvsgt x2s!28 x5!5) (bvsgt x1s!28 x5!5) (= x$7!58 (tuple5!9 x5!5 x1s!28 x2s!28 x3s!17 x4s!4)) (or (bvsgt (_1!79 x$7!58) (_2!79 x$7!58)) (bvsgt (_2!79 x$7!58) (_3!13 x$7!58)) (bvsgt (_3!13 x$7!58) (_4!9 x$7!58)) (bvsgt (_4!9 x$7!58) (_5!4 x$7!58)) (not (= (insert (_5!4 x$7!58) (insert (_4!9 x$7!58) (insert (_3!13 x$7!58) (insert (_2!79 x$7!58) (insert (_1!79 x$7!58) (as emptyset (Set (_ BitVec 32)))))))) (insert x5!5 (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))))))

(assert (= (and start!4554 res!16222) b!35089))

(declare-fun m!37701 () Bool)

(assert (=> start!4554 m!37701))

(declare-fun m!37703 () Bool)

(assert (=> b!35089 m!37703))

(declare-fun m!37705 () Bool)

(assert (=> b!35089 m!37705))

(declare-fun m!37707 () Bool)

(assert (=> b!35089 m!37707))

(declare-fun m!37709 () Bool)

(assert (=> b!35089 m!37709))

(declare-fun m!37711 () Bool)

(assert (=> b!35089 m!37711))

(declare-fun m!37713 () Bool)

(assert (=> b!35089 m!37713))

(declare-fun m!37715 () Bool)

(assert (=> b!35089 m!37715))

(declare-fun m!37717 () Bool)

(assert (=> b!35089 m!37717))

(declare-fun m!37719 () Bool)

(assert (=> b!35089 m!37719))

(declare-fun m!37721 () Bool)

(assert (=> b!35089 m!37721))

(push 1)

(assert (not start!4554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18378 () Bool)

(declare-fun lt!6640 () tuple4!8)

(assert (=> d!18378 (and (bvsle (_1!78 lt!6640) (_2!78 lt!6640)) (bvsle (_2!78 lt!6640) (_3!12 lt!6640)) (bvsle (_3!12 lt!6640) (_4!8 lt!6640)) (= (insert (_4!8 lt!6640) (insert (_3!12 lt!6640) (insert (_2!78 lt!6640) (insert (_1!78 lt!6640) (as emptyset (Set (_ BitVec 32))))))) (insert x4!8 (insert x3!17 (insert x2!25 (insert x1!23 (as emptyset (Set (_ BitVec 32)))))))))))

(declare-fun lt!6636 () (_ BitVec 32))

(declare-fun lt!6637 () (_ BitVec 32))

(declare-fun lt!6639 () (_ BitVec 32))

(assert (=> d!18378 (= lt!6640 (ite (bvsle lt!6639 x4!8) (tuple4!9 lt!6637 lt!6636 lt!6639 x4!8) (ite (bvsle lt!6636 x4!8) (tuple4!9 lt!6637 lt!6636 x4!8 lt!6639) (ite (bvsle lt!6637 x4!8) (tuple4!9 lt!6637 x4!8 lt!6636 lt!6639) (tuple4!9 x4!8 lt!6637 lt!6636 lt!6639)))))))

(declare-datatypes () ((tuple3!8 (tuple3!9 (_1!80 (_ BitVec 32)) (_2!80 (_ BitVec 32)) (_3!14 (_ BitVec 32))))))

(declare-fun lt!6641 () tuple3!8)

(assert (=> d!18378 (= lt!6639 (_3!14 lt!6641))))

(declare-fun lt!6635 () tuple3!8)

(assert (=> d!18378 (= lt!6636 (_2!80 lt!6635))))

(declare-fun lt!6638 () tuple3!8)

(assert (=> d!18378 (= lt!6637 (_1!80 lt!6638))))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!8)

(assert (=> d!18378 (= lt!6641 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18378 (= lt!6635 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18378 (= lt!6638 (sort3!0 x1!23 x2!25 x3!17))))

(assert (=> d!18378 (= (sort4!0 x1!23 x2!25 x3!17 x4!8) lt!6640)))

(declare-fun bs!11244 () Bool)

(assert (= bs!11244 d!18378))

(declare-fun m!37723 () Bool)

(assert (=> bs!11244 m!37723))

(declare-fun m!37725 () Bool)

(assert (=> bs!11244 m!37725))

(assert (=> bs!11244 m!37717))

(assert (=> bs!11244 m!37711))

(assert (=> bs!11244 m!37721))

(declare-fun m!37727 () Bool)

(assert (=> bs!11244 m!37727))

(declare-fun m!37729 () Bool)

(assert (=> bs!11244 m!37729))

(assert (=> bs!11244 m!37707))

(declare-fun m!37731 () Bool)

(assert (=> bs!11244 m!37731))

(assert (=> start!4554 d!18378))

(push 1)

(assert (not d!18378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

