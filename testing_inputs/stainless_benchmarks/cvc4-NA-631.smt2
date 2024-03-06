; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4570 () Bool)

(assert start!4570)

(declare-fun res!16234 () Bool)

(declare-fun e!17723 () Bool)

(assert (=> start!4570 (=> (not res!16234) (not e!17723))))

(declare-fun x1!16 () (_ BitVec 32))

(declare-fun x3!10 () (_ BitVec 32))

(declare-datatypes () ((tuple3!16 (tuple3!17 (_1!90 (_ BitVec 32)) (_2!90 (_ BitVec 32)) (_3!21 (_ BitVec 32))))))

(declare-fun x$4!79 () tuple3!16)

(declare-fun x2!18 () (_ BitVec 32))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!16)

(assert (=> start!4570 (= res!16234 (= x$4!79 (tuple3!17 (_1!90 (sort3!0 x1!16 x2!18 x3!10)) (_2!90 (sort3!0 x1!16 x2!18 x3!10)) (_3!21 (sort3!0 x1!16 x2!18 x3!10)))))))

(assert (=> start!4570 e!17723))

(assert (=> start!4570 true))

(declare-fun x1s!19 () (_ BitVec 32))

(declare-fun x4!7 () (_ BitVec 32))

(declare-datatypes () ((tuple4!16 (tuple4!17 (_1!91 (_ BitVec 32)) (_2!91 (_ BitVec 32)) (_3!22 (_ BitVec 32)) (_4!13 (_ BitVec 32))))))

(declare-fun x$5!44 () tuple4!16)

(declare-fun x3s!8 () (_ BitVec 32))

(declare-fun x2s!19 () (_ BitVec 32))

(declare-fun b!35101 () Bool)

(assert (=> b!35101 (= e!17723 (and (= x1s!19 (_1!90 x$4!79)) (= x2s!19 (_2!90 x$4!79)) (= x3s!8 (_3!21 x$4!79)) (bvsgt x3s!8 x4!7) (bvsgt x2s!19 x4!7) (bvsgt x1s!19 x4!7) (= x$5!44 (tuple4!17 x4!7 x1s!19 x2s!19 x3s!8)) (or (bvsgt (_1!91 x$5!44) (_2!91 x$5!44)) (bvsgt (_2!91 x$5!44) (_3!22 x$5!44)) (bvsgt (_3!22 x$5!44) (_4!13 x$5!44)) (not (= (insert (_4!13 x$5!44) (insert (_3!22 x$5!44) (insert (_2!91 x$5!44) (insert (_1!91 x$5!44) (as emptyset (Set (_ BitVec 32))))))) (insert x4!7 (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))))))

(assert (= (and start!4570 res!16234) b!35101))

(declare-fun m!37811 () Bool)

(assert (=> start!4570 m!37811))

(declare-fun m!37813 () Bool)

(assert (=> b!35101 m!37813))

(declare-fun m!37815 () Bool)

(assert (=> b!35101 m!37815))

(declare-fun m!37817 () Bool)

(assert (=> b!35101 m!37817))

(declare-fun m!37819 () Bool)

(assert (=> b!35101 m!37819))

(declare-fun m!37821 () Bool)

(assert (=> b!35101 m!37821))

(declare-fun m!37823 () Bool)

(assert (=> b!35101 m!37823))

(declare-fun m!37825 () Bool)

(assert (=> b!35101 m!37825))

(declare-fun m!37827 () Bool)

(assert (=> b!35101 m!37827))

(push 1)

(assert (not start!4570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6698 () tuple3!16)

(declare-fun d!18386 () Bool)

(assert (=> d!18386 (and (bvsle (_1!90 lt!6698) (_2!90 lt!6698)) (bvsle (_2!90 lt!6698) (_3!21 lt!6698)) (= (insert (_3!21 lt!6698) (insert (_2!90 lt!6698) (insert (_1!90 lt!6698) (as emptyset (Set (_ BitVec 32)))))) (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun lt!6700 () (_ BitVec 32))

(declare-fun lt!6699 () (_ BitVec 32))

(assert (=> d!18386 (= lt!6698 (ite (bvsle lt!6700 x3!10) (tuple3!17 lt!6699 lt!6700 x3!10) (ite (bvsle lt!6699 x3!10) (tuple3!17 lt!6699 x3!10 lt!6700) (tuple3!17 x3!10 lt!6699 lt!6700))))))

(declare-datatypes () ((tuple2!138 (tuple2!139 (_1!92 (_ BitVec 32)) (_2!92 (_ BitVec 32))))))

(declare-fun lt!6701 () tuple2!138)

(assert (=> d!18386 (= lt!6700 (_2!92 lt!6701))))

(declare-fun lt!6697 () tuple2!138)

(assert (=> d!18386 (= lt!6699 (_1!92 lt!6697))))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!138)

(assert (=> d!18386 (= lt!6701 (sort2!0 x1!16 x2!18))))

(assert (=> d!18386 (= lt!6697 (sort2!0 x1!16 x2!18))))

(assert (=> d!18386 (= (sort3!0 x1!16 x2!18 x3!10) lt!6698)))

(declare-fun bs!11252 () Bool)

(assert (= bs!11252 d!18386))

(assert (=> bs!11252 m!37819))

(assert (=> bs!11252 m!37827))

(declare-fun m!37829 () Bool)

(assert (=> bs!11252 m!37829))

(declare-fun m!37831 () Bool)

(assert (=> bs!11252 m!37831))

(declare-fun m!37833 () Bool)

(assert (=> bs!11252 m!37833))

(assert (=> bs!11252 m!37817))

(declare-fun m!37835 () Bool)

(assert (=> bs!11252 m!37835))

(assert (=> start!4570 d!18386))

(push 1)

(assert (not d!18386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

