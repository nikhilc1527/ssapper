; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5924 () Bool)

(assert start!5924)

(declare-fun res!21052 () Bool)

(declare-fun e!23030 () Bool)

(assert (=> start!5924 (=> (not res!21052) (not e!23030))))

(declare-datatypes () ((Nat!135 (Zero!119) (Succ!116 (n!1263 Nat!135)))))

(declare-fun n1!110 () Nat!135)

(declare-fun n2!121 () Nat!135)

(declare-fun <=!2 (Nat!135 Nat!135) Bool)

(assert (=> start!5924 (= res!21052 (<=!2 n1!110 n2!121))))

(assert (=> start!5924 e!23030))

(assert (=> start!5924 true))

(declare-fun b!44482 () Bool)

(declare-fun res!21053 () Bool)

(assert (=> b!44482 (=> (not res!21053) (not e!23030))))

(declare-fun p2!24 () Nat!135)

(assert (=> b!44482 (= res!21053 (and (not (is-Zero!119 n1!110)) (= p2!24 (n!1263 n2!121))))))

(declare-fun b!44483 () Bool)

(declare-fun res!21054 () Bool)

(assert (=> b!44483 (=> (not res!21054) (not e!23030))))

(declare-datatypes () ((Unit!471 (Unit!472))))

(declare-fun x$43!21 () Unit!471)

(declare-fun succ_<!0 (Nat!135 Nat!135) Unit!471)

(assert (=> b!44483 (= res!21054 (= x$43!21 (succ_<!0 (n!1263 n1!110) p2!24)))))

(declare-fun b!44484 () Bool)

(declare-fun <!2 (Nat!135 Nat!135) Bool)

(assert (=> b!44484 (= e!23030 (not (<!2 n1!110 (Succ!116 n2!121))))))

(assert (= (and start!5924 res!21052) b!44482))

(assert (= (and b!44482 res!21053) b!44483))

(assert (= (and b!44483 res!21054) b!44484))

(declare-fun m!47663 () Bool)

(assert (=> start!5924 m!47663))

(declare-fun m!47665 () Bool)

(assert (=> b!44483 m!47665))

(declare-fun m!47667 () Bool)

(assert (=> b!44484 m!47667))

(push 1)

(assert (not b!44483))

(assert (not start!5924))

(assert (not b!44484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31382 () Bool)

(assert (=> d!31382 (<!2 (n!1263 n1!110) (Succ!116 p2!24))))

(assert (=> d!31382 true))

(declare-fun x$43!50 () Unit!471)

(assert (=> d!31382 (= (succ_<!0 (n!1263 n1!110) p2!24) x$43!50)))

(declare-fun bs!17763 () Bool)

(assert (= bs!17763 d!31382))

(declare-fun m!47669 () Bool)

(assert (=> bs!17763 m!47669))

(assert (=> b!44483 d!31382))

(declare-fun d!31384 () Bool)

(declare-fun res!21057 () Bool)

(declare-fun e!23033 () Bool)

(assert (=> d!31384 (=> res!21057 e!23033)))

(assert (=> d!31384 (= res!21057 (<!2 n1!110 n2!121))))

(assert (=> d!31384 (= (<=!2 n1!110 n2!121) e!23033)))

(declare-fun b!44487 () Bool)

(assert (=> b!44487 (= e!23033 (= n1!110 n2!121))))

(assert (= (and d!31384 (not res!21057)) b!44487))

(declare-fun m!47671 () Bool)

(assert (=> d!31384 m!47671))

(assert (=> start!5924 d!31384))

(declare-fun d!31386 () Bool)

(declare-fun lt!8126 () Bool)

(declare-fun repr!0 (Nat!135) Int)

(assert (=> d!31386 (= lt!8126 (< (repr!0 n1!110) (repr!0 (Succ!116 n2!121))))))

(declare-fun e!23036 () Bool)

(assert (=> d!31386 (= lt!8126 e!23036)))

(declare-fun c!9505 () Bool)

(assert (=> d!31386 (= c!9505 (and (is-Succ!116 n1!110) (is-Succ!116 (Succ!116 n2!121))))))

(assert (=> d!31386 (= (<!2 n1!110 (Succ!116 n2!121)) lt!8126)))

(declare-fun b!44492 () Bool)

(assert (=> b!44492 (= e!23036 (<!2 (n!1263 n1!110) (n!1263 (Succ!116 n2!121))))))

(declare-fun b!44493 () Bool)

(assert (=> b!44493 (= e!23036 (and (is-Zero!119 n1!110) (is-Succ!116 (Succ!116 n2!121))))))

(assert (= (and d!31386 c!9505) b!44492))

(assert (= (and d!31386 (not c!9505)) b!44493))

(declare-fun m!47673 () Bool)

(assert (=> d!31386 m!47673))

(declare-fun m!47675 () Bool)

(assert (=> d!31386 m!47675))

(declare-fun m!47677 () Bool)

(assert (=> b!44492 m!47677))

(assert (=> b!44484 d!31386))

(push 1)

(assert (not d!31386))

(assert (not d!31382))

(assert (not d!31384))

(assert (not b!44492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31388 () Bool)

(declare-fun lt!8129 () Int)

(assert (=> d!31388 (>= lt!8129 0)))

(declare-fun e!23039 () Int)

(assert (=> d!31388 (= lt!8129 e!23039)))

(declare-fun c!9508 () Bool)

(assert (=> d!31388 (= c!9508 (is-Zero!119 n1!110))))

(assert (=> d!31388 (= (repr!0 n1!110) lt!8129)))

(declare-fun b!44498 () Bool)

(assert (=> b!44498 (= e!23039 0)))

(declare-fun b!44499 () Bool)

(assert (=> b!44499 (= e!23039 (+ (repr!0 (n!1263 n1!110)) 1))))

(assert (= (and d!31388 c!9508) b!44498))

(assert (= (and d!31388 (not c!9508)) b!44499))

(declare-fun m!47679 () Bool)

(assert (=> b!44499 m!47679))

(assert (=> d!31386 d!31388))

(declare-fun d!31390 () Bool)

(declare-fun lt!8130 () Int)

(assert (=> d!31390 (>= lt!8130 0)))

(declare-fun e!23040 () Int)

(assert (=> d!31390 (= lt!8130 e!23040)))

(declare-fun c!9509 () Bool)

(assert (=> d!31390 (= c!9509 (is-Zero!119 (Succ!116 n2!121)))))

(assert (=> d!31390 (= (repr!0 (Succ!116 n2!121)) lt!8130)))

(declare-fun b!44500 () Bool)

(assert (=> b!44500 (= e!23040 0)))

(declare-fun b!44501 () Bool)

(assert (=> b!44501 (= e!23040 (+ (repr!0 (n!1263 (Succ!116 n2!121))) 1))))

(assert (= (and d!31390 c!9509) b!44500))

(assert (= (and d!31390 (not c!9509)) b!44501))

(declare-fun m!47681 () Bool)

(assert (=> b!44501 m!47681))

(assert (=> d!31386 d!31390))

(declare-fun d!31392 () Bool)

(declare-fun lt!8131 () Bool)

(assert (=> d!31392 (= lt!8131 (< (repr!0 (n!1263 n1!110)) (repr!0 (Succ!116 p2!24))))))

(declare-fun e!23041 () Bool)

(assert (=> d!31392 (= lt!8131 e!23041)))

(declare-fun c!9510 () Bool)

(assert (=> d!31392 (= c!9510 (and (is-Succ!116 (n!1263 n1!110)) (is-Succ!116 (Succ!116 p2!24))))))

(assert (=> d!31392 (= (<!2 (n!1263 n1!110) (Succ!116 p2!24)) lt!8131)))

(declare-fun b!44502 () Bool)

(assert (=> b!44502 (= e!23041 (<!2 (n!1263 (n!1263 n1!110)) (n!1263 (Succ!116 p2!24))))))

(declare-fun b!44503 () Bool)

(assert (=> b!44503 (= e!23041 (and (is-Zero!119 (n!1263 n1!110)) (is-Succ!116 (Succ!116 p2!24))))))

(assert (= (and d!31392 c!9510) b!44502))

(assert (= (and d!31392 (not c!9510)) b!44503))

(assert (=> d!31392 m!47679))

(declare-fun m!47683 () Bool)

(assert (=> d!31392 m!47683))

(declare-fun m!47685 () Bool)

(assert (=> b!44502 m!47685))

(assert (=> d!31382 d!31392))

(declare-fun d!31394 () Bool)

(declare-fun lt!8132 () Bool)

(assert (=> d!31394 (= lt!8132 (< (repr!0 n1!110) (repr!0 n2!121)))))

(declare-fun e!23042 () Bool)

(assert (=> d!31394 (= lt!8132 e!23042)))

(declare-fun c!9511 () Bool)

(assert (=> d!31394 (= c!9511 (and (is-Succ!116 n1!110) (is-Succ!116 n2!121)))))

(assert (=> d!31394 (= (<!2 n1!110 n2!121) lt!8132)))

(declare-fun b!44504 () Bool)

(assert (=> b!44504 (= e!23042 (<!2 (n!1263 n1!110) (n!1263 n2!121)))))

(declare-fun b!44505 () Bool)

(assert (=> b!44505 (= e!23042 (and (is-Zero!119 n1!110) (is-Succ!116 n2!121)))))

(assert (= (and d!31394 c!9511) b!44504))

(assert (= (and d!31394 (not c!9511)) b!44505))

(assert (=> d!31394 m!47673))

(declare-fun m!47687 () Bool)

(assert (=> d!31394 m!47687))

(declare-fun m!47689 () Bool)

(assert (=> b!44504 m!47689))

(assert (=> d!31384 d!31394))

(declare-fun d!31396 () Bool)

(declare-fun lt!8133 () Bool)

(assert (=> d!31396 (= lt!8133 (< (repr!0 (n!1263 n1!110)) (repr!0 (n!1263 (Succ!116 n2!121)))))))

(declare-fun e!23043 () Bool)

(assert (=> d!31396 (= lt!8133 e!23043)))

(declare-fun c!9512 () Bool)

(assert (=> d!31396 (= c!9512 (and (is-Succ!116 (n!1263 n1!110)) (is-Succ!116 (n!1263 (Succ!116 n2!121)))))))

(assert (=> d!31396 (= (<!2 (n!1263 n1!110) (n!1263 (Succ!116 n2!121))) lt!8133)))

(declare-fun b!44506 () Bool)

(assert (=> b!44506 (= e!23043 (<!2 (n!1263 (n!1263 n1!110)) (n!1263 (n!1263 (Succ!116 n2!121)))))))

(declare-fun b!44507 () Bool)

(assert (=> b!44507 (= e!23043 (and (is-Zero!119 (n!1263 n1!110)) (is-Succ!116 (n!1263 (Succ!116 n2!121)))))))

(assert (= (and d!31396 c!9512) b!44506))

(assert (= (and d!31396 (not c!9512)) b!44507))

(assert (=> d!31396 m!47679))

(assert (=> d!31396 m!47681))

(declare-fun m!47691 () Bool)

(assert (=> b!44506 m!47691))

(assert (=> b!44492 d!31396))

(push 1)

(assert (not d!31394))

(assert (not d!31392))

(assert (not b!44501))

(assert (not b!44502))

(assert (not b!44506))

(assert (not b!44499))

(assert (not b!44504))

(assert (not d!31396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

