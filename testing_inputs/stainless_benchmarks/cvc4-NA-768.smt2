; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5884 () Bool)

(assert start!5884)

(declare-fun b!44347 () Bool)

(declare-fun res!20975 () Bool)

(declare-fun e!22965 () Bool)

(assert (=> b!44347 (=> (not res!20975) (not e!22965))))

(declare-datatypes () ((Nat!129 (Zero!113) (Succ!110 (n!1254 Nat!129)))))

(declare-fun n2!138 () Nat!129)

(declare-fun n3!36 () Nat!129)

(declare-fun <!2 (Nat!129 Nat!129) Bool)

(assert (=> b!44347 (= res!20975 (<!2 n2!138 n3!36))))

(declare-fun b!44348 () Bool)

(declare-fun e!22964 () Bool)

(assert (=> b!44348 (= e!22965 e!22964)))

(declare-fun res!20974 () Bool)

(assert (=> b!44348 (=> res!20974 e!22964)))

(declare-fun n1!134 () Nat!129)

(declare-fun n2!145 () Nat!129)

(assert (=> b!44348 (= res!20974 (not (<!2 n1!134 n2!145)))))

(declare-fun b!44349 () Bool)

(declare-fun res!20976 () Bool)

(assert (=> b!44349 (=> (not res!20976) (not e!22965))))

(declare-datatypes () ((Unit!461 (Unit!462))))

(declare-fun tmp!165 () Unit!461)

(declare-fun pred_<!0 (Nat!129 Nat!129) Unit!461)

(assert (=> b!44349 (= res!20976 (= tmp!165 (pred_<!0 n2!138 n3!36)))))

(declare-fun b!44350 () Bool)

(declare-fun res!20978 () Bool)

(assert (=> b!44350 (=> (not res!20978) (not e!22965))))

(assert (=> b!44350 (= res!20978 (and (not (is-Zero!113 n3!36)) (not (= (n!1254 n3!36) n2!138))))))

(declare-fun res!20977 () Bool)

(assert (=> start!5884 (=> (not res!20977) (not e!22965))))

(declare-fun n1!127 () Nat!129)

(assert (=> start!5884 (= res!20977 (<!2 n1!127 n2!138))))

(assert (=> start!5884 e!22965))

(assert (=> start!5884 true))

(declare-fun b!44351 () Bool)

(declare-fun res!20973 () Bool)

(assert (=> b!44351 (=> (not res!20973) (not e!22965))))

(declare-fun n3!37 () Nat!129)

(assert (=> b!44351 (= res!20973 (and (= n1!134 n1!127) (= n2!145 n2!138) (= n3!37 (n!1254 n3!36))))))

(declare-fun b!44352 () Bool)

(assert (=> b!44352 (= e!22964 (not (<!2 n2!145 n3!37)))))

(assert (= (and start!5884 res!20977) b!44347))

(assert (= (and b!44347 res!20975) b!44350))

(assert (= (and b!44350 res!20978) b!44349))

(assert (= (and b!44349 res!20976) b!44351))

(assert (= (and b!44351 res!20973) b!44348))

(assert (= (and b!44348 (not res!20974)) b!44352))

(declare-fun m!47539 () Bool)

(assert (=> start!5884 m!47539))

(declare-fun m!47541 () Bool)

(assert (=> b!44347 m!47541))

(declare-fun m!47543 () Bool)

(assert (=> b!44348 m!47543))

(declare-fun m!47545 () Bool)

(assert (=> b!44352 m!47545))

(declare-fun m!47547 () Bool)

(assert (=> b!44349 m!47547))

(push 1)

(assert (not b!44352))

(assert (not start!5884))

(assert (not b!44347))

(assert (not b!44348))

(assert (not b!44349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31338 () Bool)

(declare-fun lt!8089 () Bool)

(declare-fun repr!0 (Nat!129) Int)

(assert (=> d!31338 (= lt!8089 (< (repr!0 n1!127) (repr!0 n2!138)))))

(declare-fun e!22968 () Bool)

(assert (=> d!31338 (= lt!8089 e!22968)))

(declare-fun c!9477 () Bool)

(assert (=> d!31338 (= c!9477 (and (is-Succ!110 n1!127) (is-Succ!110 n2!138)))))

(assert (=> d!31338 (= (<!2 n1!127 n2!138) lt!8089)))

(declare-fun b!44357 () Bool)

(assert (=> b!44357 (= e!22968 (<!2 (n!1254 n1!127) (n!1254 n2!138)))))

(declare-fun b!44358 () Bool)

(assert (=> b!44358 (= e!22968 (and (is-Zero!113 n1!127) (is-Succ!110 n2!138)))))

(assert (= (and d!31338 c!9477) b!44357))

(assert (= (and d!31338 (not c!9477)) b!44358))

(declare-fun m!47549 () Bool)

(assert (=> d!31338 m!47549))

(declare-fun m!47551 () Bool)

(assert (=> d!31338 m!47551))

(declare-fun m!47553 () Bool)

(assert (=> b!44357 m!47553))

(assert (=> start!5884 d!31338))

(declare-fun d!31340 () Bool)

(declare-fun e!22971 () Bool)

(assert (=> d!31340 e!22971))

(declare-fun res!20981 () Bool)

(assert (=> d!31340 (=> res!20981 e!22971)))

(declare-fun lt!8092 () Nat!129)

(assert (=> d!31340 (= res!20981 (= n2!138 lt!8092))))

(assert (=> d!31340 (= lt!8092 (n!1254 n3!36))))

(assert (=> d!31340 true))

(declare-fun x$45!78 () Unit!461)

(assert (=> d!31340 (= (pred_<!0 n2!138 n3!36) x$45!78)))

(declare-fun b!44361 () Bool)

(assert (=> b!44361 (= e!22971 (<!2 n2!138 lt!8092))))

(assert (= (and d!31340 (not res!20981)) b!44361))

(declare-fun m!47555 () Bool)

(assert (=> b!44361 m!47555))

(assert (=> b!44349 d!31340))

(declare-fun d!31342 () Bool)

(declare-fun lt!8093 () Bool)

(assert (=> d!31342 (= lt!8093 (< (repr!0 n1!134) (repr!0 n2!145)))))

(declare-fun e!22972 () Bool)

(assert (=> d!31342 (= lt!8093 e!22972)))

(declare-fun c!9478 () Bool)

(assert (=> d!31342 (= c!9478 (and (is-Succ!110 n1!134) (is-Succ!110 n2!145)))))

(assert (=> d!31342 (= (<!2 n1!134 n2!145) lt!8093)))

(declare-fun b!44362 () Bool)

(assert (=> b!44362 (= e!22972 (<!2 (n!1254 n1!134) (n!1254 n2!145)))))

(declare-fun b!44363 () Bool)

(assert (=> b!44363 (= e!22972 (and (is-Zero!113 n1!134) (is-Succ!110 n2!145)))))

(assert (= (and d!31342 c!9478) b!44362))

(assert (= (and d!31342 (not c!9478)) b!44363))

(declare-fun m!47557 () Bool)

(assert (=> d!31342 m!47557))

(declare-fun m!47559 () Bool)

(assert (=> d!31342 m!47559))

(declare-fun m!47561 () Bool)

(assert (=> b!44362 m!47561))

(assert (=> b!44348 d!31342))

(declare-fun d!31344 () Bool)

(declare-fun lt!8094 () Bool)

(assert (=> d!31344 (= lt!8094 (< (repr!0 n2!138) (repr!0 n3!36)))))

(declare-fun e!22973 () Bool)

(assert (=> d!31344 (= lt!8094 e!22973)))

(declare-fun c!9479 () Bool)

(assert (=> d!31344 (= c!9479 (and (is-Succ!110 n2!138) (is-Succ!110 n3!36)))))

(assert (=> d!31344 (= (<!2 n2!138 n3!36) lt!8094)))

(declare-fun b!44364 () Bool)

(assert (=> b!44364 (= e!22973 (<!2 (n!1254 n2!138) (n!1254 n3!36)))))

(declare-fun b!44365 () Bool)

(assert (=> b!44365 (= e!22973 (and (is-Zero!113 n2!138) (is-Succ!110 n3!36)))))

(assert (= (and d!31344 c!9479) b!44364))

(assert (= (and d!31344 (not c!9479)) b!44365))

(assert (=> d!31344 m!47551))

(declare-fun m!47563 () Bool)

(assert (=> d!31344 m!47563))

(declare-fun m!47565 () Bool)

(assert (=> b!44364 m!47565))

(assert (=> b!44347 d!31344))

(declare-fun d!31346 () Bool)

(declare-fun lt!8095 () Bool)

(assert (=> d!31346 (= lt!8095 (< (repr!0 n2!145) (repr!0 n3!37)))))

(declare-fun e!22974 () Bool)

(assert (=> d!31346 (= lt!8095 e!22974)))

(declare-fun c!9480 () Bool)

(assert (=> d!31346 (= c!9480 (and (is-Succ!110 n2!145) (is-Succ!110 n3!37)))))

(assert (=> d!31346 (= (<!2 n2!145 n3!37) lt!8095)))

(declare-fun b!44366 () Bool)

(assert (=> b!44366 (= e!22974 (<!2 (n!1254 n2!145) (n!1254 n3!37)))))

(declare-fun b!44367 () Bool)

(assert (=> b!44367 (= e!22974 (and (is-Zero!113 n2!145) (is-Succ!110 n3!37)))))

(assert (= (and d!31346 c!9480) b!44366))

(assert (= (and d!31346 (not c!9480)) b!44367))

(assert (=> d!31346 m!47559))

(declare-fun m!47567 () Bool)

(assert (=> d!31346 m!47567))

(declare-fun m!47569 () Bool)

(assert (=> b!44366 m!47569))

(assert (=> b!44352 d!31346))

(push 1)

(assert (not d!31338))

(assert (not b!44361))

(assert (not d!31344))

(assert (not d!31342))

(assert (not b!44362))

(assert (not b!44364))

(assert (not b!44357))

(assert (not d!31346))

(assert (not b!44366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

