; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5938 () Bool)

(assert start!5938)

(declare-fun b!44524 () Bool)

(declare-fun res!21072 () Bool)

(declare-fun e!23049 () Bool)

(assert (=> b!44524 (=> (not res!21072) (not e!23049))))

(declare-datatypes () ((Nat!138 (Zero!122) (Succ!119 (n!1266 Nat!138)))))

(declare-fun n2!220 () Nat!138)

(declare-fun n1!213 () Nat!138)

(declare-fun n2!224 () Nat!138)

(declare-fun n1!209 () Nat!138)

(assert (=> b!44524 (= res!21072 (and (= n1!213 n1!209) (= n2!224 (n!1266 n2!220))))))

(declare-fun b!44525 () Bool)

(declare-fun <!2 (Nat!138 Nat!138) Bool)

(assert (=> b!44525 (= e!23049 (not (<!2 n1!213 n2!224)))))

(declare-fun b!44523 () Bool)

(declare-fun res!21073 () Bool)

(assert (=> b!44523 (=> (not res!21073) (not e!23049))))

(declare-datatypes () ((Unit!473 (Unit!474))))

(declare-fun tmp!188 () Unit!473)

(declare-fun pred_<!0 (Nat!138 Nat!138) Unit!473)

(assert (=> b!44523 (= res!21073 (= tmp!188 (pred_<!0 n1!209 n2!220)))))

(declare-fun b!44522 () Bool)

(declare-fun res!21074 () Bool)

(assert (=> b!44522 (=> (not res!21074) (not e!23049))))

(assert (=> b!44522 (= res!21074 (and (is-Succ!119 n2!220) (not (= n1!209 (n!1266 n2!220)))))))

(declare-fun res!21075 () Bool)

(assert (=> start!5938 (=> (not res!21075) (not e!23049))))

(assert (=> start!5938 (= res!21075 (<!2 n1!209 n2!220))))

(assert (=> start!5938 e!23049))

(assert (=> start!5938 true))

(assert (= (and start!5938 res!21075) b!44522))

(assert (= (and b!44522 res!21074) b!44523))

(assert (= (and b!44523 res!21073) b!44524))

(assert (= (and b!44524 res!21072) b!44525))

(declare-fun m!47699 () Bool)

(assert (=> b!44525 m!47699))

(declare-fun m!47701 () Bool)

(assert (=> b!44523 m!47701))

(declare-fun m!47703 () Bool)

(assert (=> start!5938 m!47703))

(push 1)

(assert (not b!44525))

(assert (not start!5938))

(assert (not b!44523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31398 () Bool)

(declare-fun lt!8139 () Bool)

(declare-fun repr!0 (Nat!138) Int)

(assert (=> d!31398 (= lt!8139 (< (repr!0 n1!213) (repr!0 n2!224)))))

(declare-fun e!23052 () Bool)

(assert (=> d!31398 (= lt!8139 e!23052)))

(declare-fun c!9515 () Bool)

(assert (=> d!31398 (= c!9515 (and (is-Succ!119 n1!213) (is-Succ!119 n2!224)))))

(assert (=> d!31398 (= (<!2 n1!213 n2!224) lt!8139)))

(declare-fun b!44530 () Bool)

(assert (=> b!44530 (= e!23052 (<!2 (n!1266 n1!213) (n!1266 n2!224)))))

(declare-fun b!44531 () Bool)

(assert (=> b!44531 (= e!23052 (and (is-Zero!122 n1!213) (is-Succ!119 n2!224)))))

(assert (= (and d!31398 c!9515) b!44530))

(assert (= (and d!31398 (not c!9515)) b!44531))

(declare-fun m!47705 () Bool)

(assert (=> d!31398 m!47705))

(declare-fun m!47707 () Bool)

(assert (=> d!31398 m!47707))

(declare-fun m!47709 () Bool)

(assert (=> b!44530 m!47709))

(assert (=> b!44525 d!31398))

(declare-fun d!31400 () Bool)

(declare-fun lt!8140 () Bool)

(assert (=> d!31400 (= lt!8140 (< (repr!0 n1!209) (repr!0 n2!220)))))

(declare-fun e!23053 () Bool)

(assert (=> d!31400 (= lt!8140 e!23053)))

(declare-fun c!9516 () Bool)

(assert (=> d!31400 (= c!9516 (and (is-Succ!119 n1!209) (is-Succ!119 n2!220)))))

(assert (=> d!31400 (= (<!2 n1!209 n2!220) lt!8140)))

(declare-fun b!44532 () Bool)

(assert (=> b!44532 (= e!23053 (<!2 (n!1266 n1!209) (n!1266 n2!220)))))

(declare-fun b!44533 () Bool)

(assert (=> b!44533 (= e!23053 (and (is-Zero!122 n1!209) (is-Succ!119 n2!220)))))

(assert (= (and d!31400 c!9516) b!44532))

(assert (= (and d!31400 (not c!9516)) b!44533))

(declare-fun m!47711 () Bool)

(assert (=> d!31400 m!47711))

(declare-fun m!47713 () Bool)

(assert (=> d!31400 m!47713))

(declare-fun m!47715 () Bool)

(assert (=> b!44532 m!47715))

(assert (=> start!5938 d!31400))

(declare-fun d!31402 () Bool)

(declare-fun e!23056 () Bool)

(assert (=> d!31402 e!23056))

(declare-fun res!21078 () Bool)

(assert (=> d!31402 (=> res!21078 e!23056)))

(declare-fun lt!8143 () Nat!138)

(assert (=> d!31402 (= res!21078 (= n1!209 lt!8143))))

(assert (=> d!31402 (= lt!8143 (n!1266 n2!220))))

(assert (=> d!31402 true))

(declare-fun x$45!87 () Unit!473)

(assert (=> d!31402 (= (pred_<!0 n1!209 n2!220) x$45!87)))

(declare-fun b!44536 () Bool)

(assert (=> b!44536 (= e!23056 (<!2 n1!209 lt!8143))))

(assert (= (and d!31402 (not res!21078)) b!44536))

(declare-fun m!47717 () Bool)

(assert (=> b!44536 m!47717))

(assert (=> b!44523 d!31402))

(push 1)

(assert (not b!44530))

(assert (not d!31400))

(assert (not b!44536))

(assert (not b!44532))

(assert (not d!31398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

