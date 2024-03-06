; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!302 () Bool)

(assert start!302)

(declare-fun res!944 () Bool)

(declare-fun e!1635 () Bool)

(assert (=> start!302 (=> (not res!944) (not e!1635))))

(declare-datatypes () ((List!56 (Cons!56 (head!228 (_ BitVec 32)) (tail!240 List!56)) (Nil!57))))

(declare-datatypes () ((tuple2!0 (tuple2!1 (_1!0 List!56) (_2!0 List!56)))))

(declare-fun t!387 () tuple2!0)

(declare-fun x$6!13 () tuple2!0)

(declare-fun front!24 () List!56)

(declare-datatypes () ((AbsQueue!8 (Queue!7 (front!55 List!56) (rear!57 List!56)))))

(declare-fun queue!27 () AbsQueue!8)

(declare-fun res!633 () tuple2!0)

(declare-fun rear!23 () List!56)

(assert (=> start!302 (= res!944 (and (= t!387 (tuple2!1 (front!55 queue!27) (rear!57 queue!27))) (= res!633 t!387) (= x$6!13 res!633) (= front!24 (_1!0 x$6!13)) (= rear!23 (_2!0 x$6!13))))))

(assert (=> start!302 e!1635))

(assert (=> start!302 true))

(declare-fun b!2884 () Bool)

(declare-fun res!945 () Bool)

(assert (=> b!2884 (=> (not res!945) (not e!1635))))

(declare-fun elem!51 () (_ BitVec 32))

(declare-fun prop!51 () Bool)

(declare-fun concatAssoc!0 (List!56 List!56 List!56) Bool)

(declare-fun reverse!5 (List!56) List!56)

(assert (=> b!2884 (= res!945 (= prop!51 (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!56 elem!51 Nil!57))))))

(declare-fun b!2885 () Bool)

(assert (=> b!2885 (= e!1635 (not prop!51))))

(assert (= (and start!302 res!944) b!2884))

(assert (= (and b!2884 res!945) b!2885))

(declare-fun m!4393 () Bool)

(assert (=> b!2884 m!4393))

(assert (=> b!2884 m!4393))

(declare-fun m!4395 () Bool)

(assert (=> b!2884 m!4395))

(push 1)

(assert (not b!2884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!1638 () Bool)

(declare-fun b!2890 () Bool)

(declare-fun concat!2 (List!56 List!56) List!56)

(assert (=> b!2890 (= e!1638 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!56 elem!51 Nil!57))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!56 elem!51 Nil!57))))))

(declare-fun lt!803 () Bool)

(assert (=> b!2890 (= lt!803 (concatAssoc!0 (tail!240 front!24) (reverse!5 rear!23) (Cons!56 elem!51 Nil!57)))))

(declare-fun d!2158 () Bool)

(assert (=> d!2158 e!1638))

(declare-fun c!1030 () Bool)

(assert (=> d!2158 (= c!1030 (is-Cons!56 front!24))))

(assert (=> d!2158 (= (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!56 elem!51 Nil!57)) true)))

(declare-fun b!2891 () Bool)

(assert (=> b!2891 (= e!1638 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!56 elem!51 Nil!57))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!56 elem!51 Nil!57))))))

(assert (= (and d!2158 c!1030) b!2890))

(assert (= (and d!2158 (not c!1030)) b!2891))

(declare-fun m!4397 () Bool)

(assert (=> b!2890 m!4397))

(declare-fun m!4399 () Bool)

(assert (=> b!2890 m!4399))

(assert (=> b!2890 m!4393))

(declare-fun m!4401 () Bool)

(assert (=> b!2890 m!4401))

(assert (=> b!2890 m!4393))

(declare-fun m!4403 () Bool)

(assert (=> b!2890 m!4403))

(assert (=> b!2890 m!4403))

(declare-fun m!4405 () Bool)

(assert (=> b!2890 m!4405))

(assert (=> b!2890 m!4393))

(assert (=> b!2890 m!4397))

(assert (=> b!2891 m!4393))

(assert (=> b!2891 m!4403))

(assert (=> b!2891 m!4403))

(assert (=> b!2891 m!4405))

(assert (=> b!2891 m!4393))

(assert (=> b!2891 m!4397))

(assert (=> b!2891 m!4397))

(assert (=> b!2891 m!4399))

(assert (=> b!2884 d!2158))

(declare-fun d!2160 () Bool)

(declare-fun lt!806 () List!56)

(declare-fun content!22 (List!56) (Set (_ BitVec 32)))

(assert (=> d!2160 (= (content!22 lt!806) (content!22 rear!23))))

(declare-fun e!1641 () List!56)

(assert (=> d!2160 (= lt!806 e!1641)))

(declare-fun c!1033 () Bool)

(assert (=> d!2160 (= c!1033 (is-Nil!57 rear!23))))

(assert (=> d!2160 (= (reverse!5 rear!23) lt!806)))

(declare-fun b!2896 () Bool)

(assert (=> b!2896 (= e!1641 Nil!57)))

(declare-fun b!2897 () Bool)

(assert (=> b!2897 (= e!1641 (concat!2 (reverse!5 (tail!240 rear!23)) (Cons!56 (head!228 rear!23) Nil!57)))))

(assert (= (and d!2160 c!1033) b!2896))

(assert (= (and d!2160 (not c!1033)) b!2897))

(declare-fun m!4407 () Bool)

(assert (=> d!2160 m!4407))

(declare-fun m!4409 () Bool)

(assert (=> d!2160 m!4409))

(declare-fun m!4411 () Bool)

(assert (=> b!2897 m!4411))

(assert (=> b!2897 m!4411))

(declare-fun m!4413 () Bool)

(assert (=> b!2897 m!4413))

(assert (=> b!2884 d!2160))

(push 1)

(assert (not d!2160))

(assert (not b!2890))

(assert (not b!2897))

(assert (not b!2891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

