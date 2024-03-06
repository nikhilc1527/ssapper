; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4582 () Bool)

(assert start!4582)

(declare-fun res!16243 () Bool)

(declare-fun e!17732 () Bool)

(assert (=> start!4582 (=> (not res!16243) (not e!17732))))

(declare-fun x2!17 () (_ BitVec 32))

(declare-datatypes () ((tuple2!144 (tuple2!145 (_1!97 (_ BitVec 32)) (_2!97 (_ BitVec 32))))))

(declare-fun x$2!210 () tuple2!144)

(declare-fun x1!15 () (_ BitVec 32))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!144)

(assert (=> start!4582 (= res!16243 (= x$2!210 (tuple2!145 (_1!97 (sort2!0 x1!15 x2!17)) (_2!97 (sort2!0 x1!15 x2!17)))))))

(assert (=> start!4582 e!17732))

(assert (=> start!4582 true))

(declare-datatypes () ((tuple3!22 (tuple3!23 (_1!98 (_ BitVec 32)) (_2!98 (_ BitVec 32)) (_3!25 (_ BitVec 32))))))

(declare-fun x$3!102 () tuple3!22)

(declare-fun x3!9 () (_ BitVec 32))

(declare-fun b!35110 () Bool)

(declare-fun x1s!12 () (_ BitVec 32))

(declare-fun x2s!12 () (_ BitVec 32))

(assert (=> b!35110 (= e!17732 (and (= x1s!12 (_1!97 x$2!210)) (= x2s!12 (_2!97 x$2!210)) (bvsgt x2s!12 x3!9) (bvsgt x1s!12 x3!9) (= x$3!102 (tuple3!23 x3!9 x1s!12 x2s!12)) (or (bvsgt (_1!98 x$3!102) (_2!98 x$3!102)) (bvsgt (_2!98 x$3!102) (_3!25 x$3!102)) (not (= (insert (_3!25 x$3!102) (insert (_2!98 x$3!102) (insert (_1!98 x$3!102) (as emptyset (Set (_ BitVec 32)))))) (insert x3!9 (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))))))

(assert (= (and start!4582 res!16243) b!35110))

(declare-fun m!37873 () Bool)

(assert (=> start!4582 m!37873))

(declare-fun m!37875 () Bool)

(assert (=> b!35110 m!37875))

(declare-fun m!37877 () Bool)

(assert (=> b!35110 m!37877))

(declare-fun m!37879 () Bool)

(assert (=> b!35110 m!37879))

(declare-fun m!37881 () Bool)

(assert (=> b!35110 m!37881))

(declare-fun m!37883 () Bool)

(assert (=> b!35110 m!37883))

(declare-fun m!37885 () Bool)

(assert (=> b!35110 m!37885))

(push 1)

(assert (not start!4582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18392 () Bool)

(declare-fun lt!6710 () tuple2!144)

(assert (=> d!18392 (and (bvsle (_1!97 lt!6710) (_2!97 lt!6710)) (= (insert (_2!97 lt!6710) (insert (_1!97 lt!6710) (as emptyset (Set (_ BitVec 32))))) (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> d!18392 (= lt!6710 (ite (bvslt x1!15 x2!17) (tuple2!145 x1!15 x2!17) (tuple2!145 x2!17 x1!15)))))

(assert (=> d!18392 (= (sort2!0 x1!15 x2!17) lt!6710)))

(declare-fun bs!11258 () Bool)

(assert (= bs!11258 d!18392))

(declare-fun m!37887 () Bool)

(assert (=> bs!11258 m!37887))

(declare-fun m!37889 () Bool)

(assert (=> bs!11258 m!37889))

(assert (=> bs!11258 m!37883))

(assert (=> bs!11258 m!37885))

(assert (=> start!4582 d!18392))

(push 1)

(check-sat)

(pop 1)

