; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5902 () Bool)

(assert start!5902)

(declare-fun res!21022 () Bool)

(declare-fun e!22998 () Bool)

(assert (=> start!5902 (=> (not res!21022) (not e!22998))))

(declare-datatypes () ((Nat!132 (Zero!116) (Succ!113 (n!1259 Nat!132)))))

(declare-fun n1!127 () Nat!132)

(declare-fun n2!138 () Nat!132)

(declare-fun <!2 (Nat!132 Nat!132) Bool)

(assert (=> start!5902 (= res!21022 (<!2 n1!127 n2!138))))

(assert (=> start!5902 e!22998))

(assert (=> start!5902 true))

(declare-fun b!44422 () Bool)

(declare-fun res!21021 () Bool)

(assert (=> b!44422 (=> (not res!21021) (not e!22998))))

(declare-datatypes () ((Unit!465 (Unit!466))))

(declare-fun t!5143 () Unit!465)

(declare-fun e!22997 () Unit!465)

(assert (=> b!44422 (= res!21021 (= t!5143 e!22997))))

(declare-fun c!9489 () Bool)

(declare-fun n3!36 () Nat!132)

(assert (=> b!44422 (= c!9489 (is-Zero!116 n3!36))))

(declare-fun b!44423 () Bool)

(declare-fun e!22999 () Unit!465)

(assert (=> b!44423 (= e!22997 e!22999)))

(declare-fun c!9490 () Bool)

(assert (=> b!44423 (= c!9490 (and (is-Succ!113 n3!36) (= (n!1259 n3!36) n2!138)))))

(declare-fun b!44424 () Bool)

(declare-fun succ_<!0 (Nat!132 Nat!132) Unit!465)

(assert (=> b!44424 (= e!22999 (succ_<!0 n1!127 (n!1259 n3!36)))))

(declare-fun lt!8107 () Unit!465)

(declare-fun transitive_<!0 (Nat!132 Nat!132 Nat!132) Unit!465)

(assert (=> b!44424 (= lt!8107 (transitive_<!0 n1!127 n2!138 (n!1259 n3!36)))))

(declare-fun lt!8108 () Unit!465)

(declare-fun pred_<!0 (Nat!132 Nat!132) Unit!465)

(assert (=> b!44424 (= lt!8108 (pred_<!0 n2!138 n3!36))))

(declare-fun b!44425 () Bool)

(assert (=> b!44425 (= e!22998 (not (<!2 n1!127 n3!36)))))

(declare-fun b!44426 () Bool)

(declare-fun Unit!467 () Unit!465)

(assert (=> b!44426 (= e!22997 Unit!467)))

(declare-fun b!44427 () Bool)

(declare-fun res!21020 () Bool)

(assert (=> b!44427 (=> (not res!21020) (not e!22998))))

(declare-fun res!17673 () Unit!465)

(declare-fun x$47!40 () Unit!465)

(assert (=> b!44427 (= res!21020 (and (= res!17673 t!5143) (= x$47!40 res!17673)))))

(declare-fun b!44428 () Bool)

(declare-fun res!21023 () Bool)

(assert (=> b!44428 (=> (not res!21023) (not e!22998))))

(assert (=> b!44428 (= res!21023 (<!2 n2!138 n3!36))))

(declare-fun b!44429 () Bool)

(assert (=> b!44429 (= e!22999 (succ_<!0 n1!127 (n!1259 n3!36)))))

(assert (= (and start!5902 res!21022) b!44428))

(assert (= (and b!44428 res!21023) b!44422))

(assert (= (and b!44423 c!9490) b!44429))

(assert (= (and b!44423 (not c!9490)) b!44424))

(assert (= (and b!44422 c!9489) b!44426))

(assert (= (and b!44422 (not c!9489)) b!44423))

(assert (= (and b!44422 res!21021) b!44427))

(assert (= (and b!44427 res!21020) b!44425))

(declare-fun m!47601 () Bool)

(assert (=> b!44429 m!47601))

(declare-fun m!47603 () Bool)

(assert (=> start!5902 m!47603))

(assert (=> b!44424 m!47601))

(declare-fun m!47605 () Bool)

(assert (=> b!44424 m!47605))

(declare-fun m!47607 () Bool)

(assert (=> b!44424 m!47607))

(declare-fun m!47609 () Bool)

(assert (=> b!44425 m!47609))

(declare-fun m!47611 () Bool)

(assert (=> b!44428 m!47611))

(push 1)

(assert (not b!44425))

(assert (not b!44424))

(assert (not b!44428))

(assert (not b!44429))

(assert (not start!5902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31358 () Bool)

(declare-fun lt!8111 () Bool)

(declare-fun repr!0 (Nat!132) Int)

(assert (=> d!31358 (= lt!8111 (< (repr!0 n2!138) (repr!0 n3!36)))))

(declare-fun e!23002 () Bool)

(assert (=> d!31358 (= lt!8111 e!23002)))

(declare-fun c!9493 () Bool)

(assert (=> d!31358 (= c!9493 (and (is-Succ!113 n2!138) (is-Succ!113 n3!36)))))

(assert (=> d!31358 (= (<!2 n2!138 n3!36) lt!8111)))

(declare-fun b!44434 () Bool)

(assert (=> b!44434 (= e!23002 (<!2 (n!1259 n2!138) (n!1259 n3!36)))))

(declare-fun b!44435 () Bool)

(assert (=> b!44435 (= e!23002 (and (is-Zero!116 n2!138) (is-Succ!113 n3!36)))))

(assert (= (and d!31358 c!9493) b!44434))

(assert (= (and d!31358 (not c!9493)) b!44435))

(declare-fun m!47613 () Bool)

(assert (=> d!31358 m!47613))

(declare-fun m!47615 () Bool)

(assert (=> d!31358 m!47615))

(declare-fun m!47617 () Bool)

(assert (=> b!44434 m!47617))

(assert (=> b!44428 d!31358))

(declare-fun d!31360 () Bool)

(assert (=> d!31360 (<!2 n1!127 (Succ!113 (n!1259 n3!36)))))

(assert (=> d!31360 true))

(declare-fun x$43!47 () Unit!465)

(assert (=> d!31360 (= (succ_<!0 n1!127 (n!1259 n3!36)) x$43!47)))

(declare-fun bs!17758 () Bool)

(assert (= bs!17758 d!31360))

(declare-fun m!47619 () Bool)

(assert (=> bs!17758 m!47619))

(assert (=> b!44424 d!31360))

(declare-fun d!31362 () Bool)

(assert (=> d!31362 (<!2 n1!127 (n!1259 n3!36))))

(assert (=> d!31362 true))

(declare-fun x$47!62 () Unit!465)

(assert (=> d!31362 (= (transitive_<!0 n1!127 n2!138 (n!1259 n3!36)) x$47!62)))

(declare-fun bs!17759 () Bool)

(assert (= bs!17759 d!31362))

(declare-fun m!47621 () Bool)

(assert (=> bs!17759 m!47621))

(assert (=> b!44424 d!31362))

(declare-fun d!31364 () Bool)

(declare-fun e!23005 () Bool)

(assert (=> d!31364 e!23005))

(declare-fun res!21026 () Bool)

(assert (=> d!31364 (=> res!21026 e!23005)))

(declare-fun lt!8114 () Nat!132)

(assert (=> d!31364 (= res!21026 (= n2!138 lt!8114))))

(assert (=> d!31364 (= lt!8114 (n!1259 n3!36))))

(assert (=> d!31364 true))

(declare-fun x$45!84 () Unit!465)

(assert (=> d!31364 (= (pred_<!0 n2!138 n3!36) x$45!84)))

(declare-fun b!44438 () Bool)

(assert (=> b!44438 (= e!23005 (<!2 n2!138 lt!8114))))

(assert (= (and d!31364 (not res!21026)) b!44438))

(declare-fun m!47623 () Bool)

(assert (=> b!44438 m!47623))

(assert (=> b!44424 d!31364))

(assert (=> b!44429 d!31360))

(declare-fun d!31366 () Bool)

(declare-fun lt!8115 () Bool)

(assert (=> d!31366 (= lt!8115 (< (repr!0 n1!127) (repr!0 n2!138)))))

(declare-fun e!23006 () Bool)

(assert (=> d!31366 (= lt!8115 e!23006)))

(declare-fun c!9494 () Bool)

(assert (=> d!31366 (= c!9494 (and (is-Succ!113 n1!127) (is-Succ!113 n2!138)))))

(assert (=> d!31366 (= (<!2 n1!127 n2!138) lt!8115)))

(declare-fun b!44439 () Bool)

(assert (=> b!44439 (= e!23006 (<!2 (n!1259 n1!127) (n!1259 n2!138)))))

(declare-fun b!44440 () Bool)

(assert (=> b!44440 (= e!23006 (and (is-Zero!116 n1!127) (is-Succ!113 n2!138)))))

(assert (= (and d!31366 c!9494) b!44439))

(assert (= (and d!31366 (not c!9494)) b!44440))

(declare-fun m!47625 () Bool)

(assert (=> d!31366 m!47625))

(assert (=> d!31366 m!47613))

(declare-fun m!47627 () Bool)

(assert (=> b!44439 m!47627))

(assert (=> start!5902 d!31366))

(declare-fun d!31368 () Bool)

(declare-fun lt!8116 () Bool)

(assert (=> d!31368 (= lt!8116 (< (repr!0 n1!127) (repr!0 n3!36)))))

(declare-fun e!23007 () Bool)

(assert (=> d!31368 (= lt!8116 e!23007)))

(declare-fun c!9495 () Bool)

(assert (=> d!31368 (= c!9495 (and (is-Succ!113 n1!127) (is-Succ!113 n3!36)))))

(assert (=> d!31368 (= (<!2 n1!127 n3!36) lt!8116)))

(declare-fun b!44441 () Bool)

(assert (=> b!44441 (= e!23007 (<!2 (n!1259 n1!127) (n!1259 n3!36)))))

(declare-fun b!44442 () Bool)

(assert (=> b!44442 (= e!23007 (and (is-Zero!116 n1!127) (is-Succ!113 n3!36)))))

(assert (= (and d!31368 c!9495) b!44441))

(assert (= (and d!31368 (not c!9495)) b!44442))

(assert (=> d!31368 m!47625))

(assert (=> d!31368 m!47615))

(declare-fun m!47629 () Bool)

(assert (=> b!44441 m!47629))

(assert (=> b!44425 d!31368))

(push 1)

(assert (not d!31366))

(assert (not b!44434))

(assert (not d!31368))

(assert (not b!44439))

(assert (not b!44438))

(assert (not d!31358))

(assert (not b!44441))

(assert (not d!31360))

(assert (not d!31362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

