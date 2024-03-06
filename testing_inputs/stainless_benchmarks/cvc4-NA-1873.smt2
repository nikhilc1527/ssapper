; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12564 () Bool)

(assert start!12564)

(declare-fun b_free!7719 () Bool)

(declare-fun b_next!40117 () Bool)

(assert (=> start!12564 (= b_free!7719 (not b_next!40117))))

(declare-fun tp!18020 () Bool)

(declare-fun b_and!60913 () Bool)

(assert (=> start!12564 (= tp!18020 b_and!60913)))

(declare-fun b_free!7721 () Bool)

(declare-fun b_next!40119 () Bool)

(assert (=> start!12564 (= b_free!7721 (not b_next!40119))))

(declare-fun tp!18021 () Bool)

(declare-fun b_and!60915 () Bool)

(assert (=> start!12564 (= tp!18021 b_and!60915)))

(declare-fun b!92501 () Bool)

(assert (=> b!92501 true))

(declare-fun b_next!40121 () Bool)

(declare-fun lambda!11145 () Int)

(declare-fun f1!5 () Int)

(assert (=> start!12564 (= b_next!40117 (or (and b!92501 (= lambda!11145 f1!5)) b_next!40121))))

(declare-fun b_next!40123 () Bool)

(declare-fun f2!7 () Int)

(assert (=> start!12564 (= b_next!40119 (or (and b!92501 (= lambda!11145 f2!7)) b_next!40123))))

(declare-fun bs!41967 () Bool)

(declare-fun b!92502 () Bool)

(assert (= bs!41967 (and b!92502 b!92501)))

(declare-fun lambda!11146 () Int)

(declare-datatypes () ((Nat!309 (Zero!288) (Succ!282 (n!1871 Nat!309)))))

(declare-fun p!1112 () Nat!309)

(declare-fun a!1137 () Nat!309)

(assert (=> bs!41967 (= (= p!1112 a!1137) (= lambda!11146 lambda!11145))))

(assert (=> b!92502 true))

(declare-fun b_next!40125 () Bool)

(assert (=> start!12564 (= b_next!40121 (or (and b!92502 (= lambda!11146 f1!5)) b_next!40125))))

(declare-fun b_next!40127 () Bool)

(assert (=> start!12564 (= b_next!40123 (or (and b!92502 (= lambda!11146 f2!7)) b_next!40127))))

(declare-fun res!48658 () Bool)

(declare-fun e!50626 () Bool)

(assert (=> start!12564 (=> (not res!48658) (not e!50626))))

(declare-fun plus!4 (Nat!309 Nat!309) Nat!309)

(assert (=> start!12564 (= res!48658 (= p!1112 (plus!4 a!1137 Zero!288)))))

(assert (=> start!12564 e!50626))

(assert (=> start!12564 true))

(assert (=> start!12564 tp!18020))

(assert (=> start!12564 tp!18021))

(declare-fun res!48659 () Bool)

(assert (=> b!92501 (=> (not res!48659) (not e!50626))))

(assert (=> b!92501 (= res!48659 (= f1!5 lambda!11145))))

(declare-fun res!48657 () Bool)

(assert (=> b!92502 (=> (not res!48657) (not e!50626))))

(assert (=> b!92502 (= res!48657 (= f2!7 lambda!11146))))

(declare-fun b!92503 () Bool)

(assert (=> b!92503 (= e!50626 (= f1!5 f2!7))))

(assert (= (and start!12564 res!48658) b!92501))

(assert (= (and b!92501 res!48659) b!92502))

(assert (= (and b!92502 res!48657) b!92503))

(declare-fun m!88150 () Bool)

(assert (=> start!12564 m!88150))

(push 1)

(assert (not b_next!40125))

(assert b_and!60913)

(assert (not start!12564))

(assert (not b_next!40127))

(assert b_and!60915)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60913)

(assert b_and!60915)

(assert (not b_next!40127))

(assert (not b_next!40125))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60620 () Bool)

(declare-fun c!22526 () Bool)

(assert (=> d!60620 (= c!22526 (is-Zero!288 a!1137))))

(declare-fun e!50629 () Nat!309)

(assert (=> d!60620 (= (plus!4 a!1137 Zero!288) e!50629)))

(declare-fun b!92511 () Bool)

(assert (=> b!92511 (= e!50629 Zero!288)))

(declare-fun b!92512 () Bool)

(assert (=> b!92512 (= e!50629 (Succ!282 (plus!4 (n!1871 a!1137) Zero!288)))))

(assert (= (and d!60620 c!22526) b!92511))

(assert (= (and d!60620 (not c!22526)) b!92512))

(declare-fun m!88152 () Bool)

(assert (=> b!92512 m!88152))

(assert (=> start!12564 d!60620))

(push 1)

(assert (not b_next!40125))

(assert b_and!60913)

(assert (not b_next!40127))

(assert b_and!60915)

(assert (not b!92512))

(check-sat)

(get-model)

(pop 1)

