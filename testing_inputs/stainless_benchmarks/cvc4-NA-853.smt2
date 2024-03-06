; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6388 () Bool)

(assert start!6388)

(declare-fun res!22312 () Bool)

(declare-fun e!24770 () Bool)

(assert (=> start!6388 (=> (not res!22312) (not e!24770))))

(declare-datatypes () ((Nat!214 (Zero!198) (Succ!195 (n!1351 Nat!214)))))

(declare-fun thiss!5617 () Nat!214)

(declare-fun that!1176 () Nat!214)

(assert (=> start!6388 (= res!22312 (and (is-Succ!195 thiss!5617) (is-Succ!195 that!1176)))))

(assert (=> start!6388 e!24770))

(assert (=> start!6388 true))

(declare-fun b!47499 () Bool)

(declare-fun res!22313 () Bool)

(assert (=> b!47499 (=> (not res!22313) (not e!24770))))

(declare-fun x$1!630 () Bool)

(declare-fun <!2 (Nat!214 Nat!214) Bool)

(assert (=> b!47499 (= res!22313 (= x$1!630 (<!2 (n!1351 thiss!5617) (n!1351 that!1176))))))

(declare-fun b!47500 () Bool)

(declare-fun repr!0 (Nat!214) Int)

(assert (=> b!47500 (= e!24770 (not (= x$1!630 (< (repr!0 thiss!5617) (repr!0 that!1176)))))))

(assert (= (and start!6388 res!22312) b!47499))

(assert (= (and b!47499 res!22313) b!47500))

(declare-fun m!50399 () Bool)

(assert (=> b!47499 m!50399))

(declare-fun m!50401 () Bool)

(assert (=> b!47500 m!50401))

(declare-fun m!50403 () Bool)

(assert (=> b!47500 m!50403))

(push 1)

(assert (not b!47500))

(assert (not b!47499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33324 () Bool)

(declare-fun lt!8663 () Int)

(assert (=> d!33324 (>= lt!8663 0)))

(declare-fun e!24773 () Int)

(assert (=> d!33324 (= lt!8663 e!24773)))

(declare-fun c!10022 () Bool)

(assert (=> d!33324 (= c!10022 (is-Zero!198 thiss!5617))))

(assert (=> d!33324 (= (repr!0 thiss!5617) lt!8663)))

(declare-fun b!47505 () Bool)

(assert (=> b!47505 (= e!24773 0)))

(declare-fun b!47506 () Bool)

(assert (=> b!47506 (= e!24773 (+ (repr!0 (n!1351 thiss!5617)) 1))))

(assert (= (and d!33324 c!10022) b!47505))

(assert (= (and d!33324 (not c!10022)) b!47506))

(declare-fun m!50405 () Bool)

(assert (=> b!47506 m!50405))

(assert (=> b!47500 d!33324))

(declare-fun d!33326 () Bool)

(declare-fun lt!8664 () Int)

(assert (=> d!33326 (>= lt!8664 0)))

(declare-fun e!24774 () Int)

(assert (=> d!33326 (= lt!8664 e!24774)))

(declare-fun c!10023 () Bool)

(assert (=> d!33326 (= c!10023 (is-Zero!198 that!1176))))

(assert (=> d!33326 (= (repr!0 that!1176) lt!8664)))

(declare-fun b!47507 () Bool)

(assert (=> b!47507 (= e!24774 0)))

(declare-fun b!47508 () Bool)

(assert (=> b!47508 (= e!24774 (+ (repr!0 (n!1351 that!1176)) 1))))

(assert (= (and d!33326 c!10023) b!47507))

(assert (= (and d!33326 (not c!10023)) b!47508))

(declare-fun m!50407 () Bool)

(assert (=> b!47508 m!50407))

(assert (=> b!47500 d!33326))

(declare-fun d!33328 () Bool)

(declare-fun lt!8667 () Bool)

(assert (=> d!33328 (= lt!8667 (< (repr!0 (n!1351 thiss!5617)) (repr!0 (n!1351 that!1176))))))

(declare-fun e!24777 () Bool)

(assert (=> d!33328 (= lt!8667 e!24777)))

(declare-fun c!10026 () Bool)

(assert (=> d!33328 (= c!10026 (and (is-Succ!195 (n!1351 thiss!5617)) (is-Succ!195 (n!1351 that!1176))))))

(assert (=> d!33328 (= (<!2 (n!1351 thiss!5617) (n!1351 that!1176)) lt!8667)))

(declare-fun b!47513 () Bool)

(assert (=> b!47513 (= e!24777 (<!2 (n!1351 (n!1351 thiss!5617)) (n!1351 (n!1351 that!1176))))))

(declare-fun b!47514 () Bool)

(assert (=> b!47514 (= e!24777 (and (is-Zero!198 (n!1351 thiss!5617)) (is-Succ!195 (n!1351 that!1176))))))

(assert (= (and d!33328 c!10026) b!47513))

(assert (= (and d!33328 (not c!10026)) b!47514))

(assert (=> d!33328 m!50405))

(assert (=> d!33328 m!50407))

(declare-fun m!50409 () Bool)

(assert (=> b!47513 m!50409))

(assert (=> b!47499 d!33328))

(push 1)

(assert (not d!33328))

(assert (not b!47506))

(assert (not b!47513))

(assert (not b!47508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

