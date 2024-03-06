; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4562 () Bool)

(assert start!4562)

(declare-fun res!16228 () Bool)

(declare-fun e!17717 () Bool)

(assert (=> start!4562 (=> (not res!16228) (not e!17717))))

(declare-fun x1!16 () (_ BitVec 32))

(declare-fun x3!10 () (_ BitVec 32))

(declare-datatypes () ((tuple3!12 (tuple3!13 (_1!84 (_ BitVec 32)) (_2!84 (_ BitVec 32)) (_3!17 (_ BitVec 32))))))

(declare-fun x$4!79 () tuple3!12)

(declare-fun x2!18 () (_ BitVec 32))

(declare-fun sort3!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple3!12)

(assert (=> start!4562 (= res!16228 (= x$4!79 (tuple3!13 (_1!84 (sort3!0 x1!16 x2!18 x3!10)) (_2!84 (sort3!0 x1!16 x2!18 x3!10)) (_3!17 (sort3!0 x1!16 x2!18 x3!10)))))))

(assert (=> start!4562 e!17717))

(assert (=> start!4562 true))

(declare-fun x1s!19 () (_ BitVec 32))

(declare-fun x4!7 () (_ BitVec 32))

(declare-fun b!35095 () Bool)

(declare-fun x3s!8 () (_ BitVec 32))

(declare-fun x2s!19 () (_ BitVec 32))

(declare-datatypes () ((tuple4!12 (tuple4!13 (_1!85 (_ BitVec 32)) (_2!85 (_ BitVec 32)) (_3!18 (_ BitVec 32)) (_4!11 (_ BitVec 32))))))

(declare-fun x$5!42 () tuple4!12)

(assert (=> b!35095 (= e!17717 (and (= x1s!19 (_1!84 x$4!79)) (= x2s!19 (_2!84 x$4!79)) (= x3s!8 (_3!17 x$4!79)) (bvsgt x3s!8 x4!7) (bvsle x2s!19 x4!7) (= x$5!42 (tuple4!13 x1s!19 x2s!19 x4!7 x3s!8)) (or (bvsgt (_1!85 x$5!42) (_2!85 x$5!42)) (bvsgt (_2!85 x$5!42) (_3!18 x$5!42)) (bvsgt (_3!18 x$5!42) (_4!11 x$5!42)) (not (= (insert (_4!11 x$5!42) (insert (_3!18 x$5!42) (insert (_2!85 x$5!42) (insert (_1!85 x$5!42) (as emptyset (Set (_ BitVec 32))))))) (insert x4!7 (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))))))

(assert (= (and start!4562 res!16228) b!35095))

(declare-fun m!37759 () Bool)

(assert (=> start!4562 m!37759))

(declare-fun m!37761 () Bool)

(assert (=> b!35095 m!37761))

(declare-fun m!37763 () Bool)

(assert (=> b!35095 m!37763))

(declare-fun m!37765 () Bool)

(assert (=> b!35095 m!37765))

(declare-fun m!37767 () Bool)

(assert (=> b!35095 m!37767))

(declare-fun m!37769 () Bool)

(assert (=> b!35095 m!37769))

(declare-fun m!37771 () Bool)

(assert (=> b!35095 m!37771))

(declare-fun m!37773 () Bool)

(assert (=> b!35095 m!37773))

(declare-fun m!37775 () Bool)

(assert (=> b!35095 m!37775))

(push 1)

(assert (not start!4562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!6667 () tuple3!12)

(declare-fun d!18382 () Bool)

(assert (=> d!18382 (and (bvsle (_1!84 lt!6667) (_2!84 lt!6667)) (bvsle (_2!84 lt!6667) (_3!17 lt!6667)) (= (insert (_3!17 lt!6667) (insert (_2!84 lt!6667) (insert (_1!84 lt!6667) (as emptyset (Set (_ BitVec 32)))))) (insert x3!10 (insert x2!18 (insert x1!16 (as emptyset (Set (_ BitVec 32))))))))))

(declare-fun lt!6668 () (_ BitVec 32))

(declare-fun lt!6669 () (_ BitVec 32))

(assert (=> d!18382 (= lt!6667 (ite (bvsle lt!6669 x3!10) (tuple3!13 lt!6668 lt!6669 x3!10) (ite (bvsle lt!6668 x3!10) (tuple3!13 lt!6668 x3!10 lt!6669) (tuple3!13 x3!10 lt!6668 lt!6669))))))

(declare-datatypes () ((tuple2!134 (tuple2!135 (_1!86 (_ BitVec 32)) (_2!86 (_ BitVec 32))))))

(declare-fun lt!6671 () tuple2!134)

(assert (=> d!18382 (= lt!6669 (_2!86 lt!6671))))

(declare-fun lt!6670 () tuple2!134)

(assert (=> d!18382 (= lt!6668 (_1!86 lt!6670))))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!134)

(assert (=> d!18382 (= lt!6671 (sort2!0 x1!16 x2!18))))

(assert (=> d!18382 (= lt!6670 (sort2!0 x1!16 x2!18))))

(assert (=> d!18382 (= (sort3!0 x1!16 x2!18 x3!10) lt!6667)))

(declare-fun bs!11248 () Bool)

(assert (= bs!11248 d!18382))

(assert (=> bs!11248 m!37769))

(declare-fun m!37777 () Bool)

(assert (=> bs!11248 m!37777))

(assert (=> bs!11248 m!37767))

(assert (=> bs!11248 m!37775))

(declare-fun m!37779 () Bool)

(assert (=> bs!11248 m!37779))

(declare-fun m!37781 () Bool)

(assert (=> bs!11248 m!37781))

(declare-fun m!37783 () Bool)

(assert (=> bs!11248 m!37783))

(assert (=> start!4562 d!18382))

(push 1)

(assert (not d!18382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

