; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4578 () Bool)

(assert start!4578)

(declare-fun res!16240 () Bool)

(declare-fun e!17729 () Bool)

(assert (=> start!4578 (=> (not res!16240) (not e!17729))))

(declare-fun x2!17 () (_ BitVec 32))

(declare-datatypes () ((tuple2!142 (tuple2!143 (_1!95 (_ BitVec 32)) (_2!95 (_ BitVec 32))))))

(declare-fun x$2!210 () tuple2!142)

(declare-fun x1!15 () (_ BitVec 32))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!142)

(assert (=> start!4578 (= res!16240 (= x$2!210 (tuple2!143 (_1!95 (sort2!0 x1!15 x2!17)) (_2!95 (sort2!0 x1!15 x2!17)))))))

(assert (=> start!4578 e!17729))

(assert (=> start!4578 true))

(declare-fun x3!9 () (_ BitVec 32))

(declare-fun b!35107 () Bool)

(declare-datatypes () ((tuple3!20 (tuple3!21 (_1!96 (_ BitVec 32)) (_2!96 (_ BitVec 32)) (_3!24 (_ BitVec 32))))))

(declare-fun x$3!101 () tuple3!20)

(declare-fun x1s!12 () (_ BitVec 32))

(declare-fun x2s!12 () (_ BitVec 32))

(assert (=> b!35107 (= e!17729 (and (= x1s!12 (_1!95 x$2!210)) (= x2s!12 (_2!95 x$2!210)) (bvsgt x2s!12 x3!9) (bvsle x1s!12 x3!9) (= x$3!101 (tuple3!21 x1s!12 x3!9 x2s!12)) (or (bvsgt (_1!96 x$3!101) (_2!96 x$3!101)) (bvsgt (_2!96 x$3!101) (_3!24 x$3!101)) (not (= (insert (_3!24 x$3!101) (insert (_2!96 x$3!101) (insert (_1!96 x$3!101) (as emptyset (Set (_ BitVec 32)))))) (insert x3!9 (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))))))

(assert (= (and start!4578 res!16240) b!35107))

(declare-fun m!37855 () Bool)

(assert (=> start!4578 m!37855))

(declare-fun m!37857 () Bool)

(assert (=> b!35107 m!37857))

(declare-fun m!37859 () Bool)

(assert (=> b!35107 m!37859))

(declare-fun m!37861 () Bool)

(assert (=> b!35107 m!37861))

(declare-fun m!37863 () Bool)

(assert (=> b!35107 m!37863))

(declare-fun m!37865 () Bool)

(assert (=> b!35107 m!37865))

(declare-fun m!37867 () Bool)

(assert (=> b!35107 m!37867))

(push 1)

(assert (not start!4578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18390 () Bool)

(declare-fun lt!6707 () tuple2!142)

(assert (=> d!18390 (and (bvsle (_1!95 lt!6707) (_2!95 lt!6707)) (= (insert (_2!95 lt!6707) (insert (_1!95 lt!6707) (as emptyset (Set (_ BitVec 32))))) (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> d!18390 (= lt!6707 (ite (bvslt x1!15 x2!17) (tuple2!143 x1!15 x2!17) (tuple2!143 x2!17 x1!15)))))

(assert (=> d!18390 (= (sort2!0 x1!15 x2!17) lt!6707)))

(declare-fun bs!11256 () Bool)

(assert (= bs!11256 d!18390))

(declare-fun m!37869 () Bool)

(assert (=> bs!11256 m!37869))

(declare-fun m!37871 () Bool)

(assert (=> bs!11256 m!37871))

(assert (=> bs!11256 m!37865))

(assert (=> bs!11256 m!37867))

(assert (=> start!4578 d!18390))

(push 1)

(check-sat)

(pop 1)

