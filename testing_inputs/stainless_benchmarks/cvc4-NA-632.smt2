; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4574 () Bool)

(assert start!4574)

(declare-fun res!16237 () Bool)

(declare-fun e!17726 () Bool)

(assert (=> start!4574 (=> (not res!16237) (not e!17726))))

(declare-fun x2!17 () (_ BitVec 32))

(declare-datatypes () ((tuple2!140 (tuple2!141 (_1!93 (_ BitVec 32)) (_2!93 (_ BitVec 32))))))

(declare-fun x$2!210 () tuple2!140)

(declare-fun x1!15 () (_ BitVec 32))

(declare-fun sort2!0 ((_ BitVec 32) (_ BitVec 32)) tuple2!140)

(assert (=> start!4574 (= res!16237 (= x$2!210 (tuple2!141 (_1!93 (sort2!0 x1!15 x2!17)) (_2!93 (sort2!0 x1!15 x2!17)))))))

(assert (=> start!4574 e!17726))

(assert (=> start!4574 true))

(declare-fun x3!9 () (_ BitVec 32))

(declare-fun b!35104 () Bool)

(declare-datatypes () ((tuple3!18 (tuple3!19 (_1!94 (_ BitVec 32)) (_2!94 (_ BitVec 32)) (_3!23 (_ BitVec 32))))))

(declare-fun x$3!100 () tuple3!18)

(declare-fun x1s!12 () (_ BitVec 32))

(declare-fun x2s!12 () (_ BitVec 32))

(assert (=> b!35104 (= e!17726 (and (= x1s!12 (_1!93 x$2!210)) (= x2s!12 (_2!93 x$2!210)) (bvsle x2s!12 x3!9) (= x$3!100 (tuple3!19 x1s!12 x2s!12 x3!9)) (or (bvsgt (_1!94 x$3!100) (_2!94 x$3!100)) (bvsgt (_2!94 x$3!100) (_3!23 x$3!100)) (not (= (insert (_3!23 x$3!100) (insert (_2!94 x$3!100) (insert (_1!94 x$3!100) (as emptyset (Set (_ BitVec 32)))))) (insert x3!9 (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))))))

(assert (= (and start!4574 res!16237) b!35104))

(declare-fun m!37837 () Bool)

(assert (=> start!4574 m!37837))

(declare-fun m!37839 () Bool)

(assert (=> b!35104 m!37839))

(declare-fun m!37841 () Bool)

(assert (=> b!35104 m!37841))

(declare-fun m!37843 () Bool)

(assert (=> b!35104 m!37843))

(declare-fun m!37845 () Bool)

(assert (=> b!35104 m!37845))

(declare-fun m!37847 () Bool)

(assert (=> b!35104 m!37847))

(declare-fun m!37849 () Bool)

(assert (=> b!35104 m!37849))

(push 1)

(assert (not start!4574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18388 () Bool)

(declare-fun lt!6704 () tuple2!140)

(assert (=> d!18388 (and (bvsle (_1!93 lt!6704) (_2!93 lt!6704)) (= (insert (_2!93 lt!6704) (insert (_1!93 lt!6704) (as emptyset (Set (_ BitVec 32))))) (insert x2!17 (insert x1!15 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> d!18388 (= lt!6704 (ite (bvslt x1!15 x2!17) (tuple2!141 x1!15 x2!17) (tuple2!141 x2!17 x1!15)))))

(assert (=> d!18388 (= (sort2!0 x1!15 x2!17) lt!6704)))

(declare-fun bs!11254 () Bool)

(assert (= bs!11254 d!18388))

(declare-fun m!37851 () Bool)

(assert (=> bs!11254 m!37851))

(declare-fun m!37853 () Bool)

(assert (=> bs!11254 m!37853))

(assert (=> bs!11254 m!37847))

(assert (=> bs!11254 m!37849))

(assert (=> start!4574 d!18388))

(push 1)

(check-sat)

(pop 1)

