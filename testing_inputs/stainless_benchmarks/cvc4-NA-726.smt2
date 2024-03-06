; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5184 () Bool)

(assert start!5184)

(declare-fun e!20380 () Bool)

(declare-datatypes () ((Nat!87 (Zero!71) (Succ!68 (n!1173 Nat!87)))))

(declare-fun n3!50 () Nat!87)

(declare-fun n2!205 () Nat!87)

(declare-fun n1!194 () Nat!87)

(declare-fun b!39548 () Bool)

(declare-fun <!2 (Nat!87 Nat!87) Bool)

(declare-fun +!5 (Nat!87 Nat!87) Nat!87)

(assert (=> b!39548 (= e!20380 (not (<!2 (+!5 n1!194 n2!205) (+!5 n1!194 n3!50))))))

(declare-fun b!39549 () Bool)

(declare-fun res!18975 () Bool)

(assert (=> b!39549 (=> (not res!18975) (not e!20380))))

(declare-datatypes () ((Unit!366 (Unit!367))))

(declare-fun t!5160 () Unit!366)

(declare-fun e!20379 () Unit!366)

(assert (=> b!39549 (= res!18975 (= t!5160 e!20379))))

(declare-fun c!8418 () Bool)

(declare-fun lt!7643 () Bool)

(assert (=> b!39549 (= c!8418 lt!7643)))

(declare-fun lt!7644 () Unit!366)

(declare-fun plus_succ!0 (Nat!87 Nat!87) Unit!366)

(assert (=> b!39549 (= lt!7644 (plus_succ!0 n1!194 (ite lt!7643 n2!205 (n!1173 n3!50))))))

(assert (=> b!39549 (= lt!7643 (and (is-Succ!68 n3!50) (= n2!205 (n!1173 n3!50))))))

(declare-fun b!39550 () Bool)

(declare-fun succ_<!0 (Nat!87 Nat!87) Unit!366)

(assert (=> b!39550 (= e!20379 (succ_<!0 (+!5 n1!194 n2!205) (+!5 n1!194 (n!1173 n3!50))))))

(declare-fun lt!7646 () Unit!366)

(declare-fun plus_<!0 (Nat!87 Nat!87 Nat!87) Unit!366)

(assert (=> b!39550 (= lt!7646 (plus_<!0 n1!194 n2!205 (n!1173 n3!50)))))

(declare-fun lt!7645 () Unit!366)

(declare-fun pred_<!0 (Nat!87 Nat!87) Unit!366)

(assert (=> b!39550 (= lt!7645 (pred_<!0 n2!205 n3!50))))

(declare-fun b!39551 () Bool)

(assert (=> b!39551 (= e!20379 (succ_<!0 (+!5 n1!194 n2!205) (+!5 n1!194 n2!205)))))

(declare-fun res!18976 () Bool)

(assert (=> start!5184 (=> (not res!18976) (not e!20380))))

(assert (=> start!5184 (= res!18976 (<!2 n2!205 n3!50))))

(assert (=> start!5184 e!20380))

(assert (=> start!5184 true))

(declare-fun b!39552 () Bool)

(declare-fun res!18974 () Bool)

(assert (=> b!39552 (=> (not res!18974) (not e!20380))))

(declare-fun x$49!26 () Unit!366)

(declare-fun res!17707 () Unit!366)

(assert (=> b!39552 (= res!18974 (and (= res!17707 t!5160) (= x$49!26 res!17707)))))

(assert (= (and start!5184 res!18976) b!39549))

(assert (= (and b!39549 c!8418) b!39551))

(assert (= (and b!39549 (not c!8418)) b!39550))

(assert (= (and b!39549 res!18975) b!39552))

(assert (= (and b!39552 res!18974) b!39548))

(declare-fun m!40685 () Bool)

(assert (=> b!39550 m!40685))

(declare-fun m!40687 () Bool)

(assert (=> b!39550 m!40687))

(declare-fun m!40689 () Bool)

(assert (=> b!39550 m!40689))

(assert (=> b!39550 m!40685))

(declare-fun m!40691 () Bool)

(assert (=> b!39550 m!40691))

(assert (=> b!39550 m!40687))

(declare-fun m!40693 () Bool)

(assert (=> b!39550 m!40693))

(assert (=> b!39548 m!40685))

(declare-fun m!40695 () Bool)

(assert (=> b!39548 m!40695))

(assert (=> b!39548 m!40685))

(assert (=> b!39548 m!40695))

(declare-fun m!40697 () Bool)

(assert (=> b!39548 m!40697))

(declare-fun m!40699 () Bool)

(assert (=> b!39549 m!40699))

(assert (=> b!39551 m!40685))

(assert (=> b!39551 m!40685))

(assert (=> b!39551 m!40685))

(declare-fun m!40701 () Bool)

(assert (=> b!39551 m!40701))

(declare-fun m!40703 () Bool)

(assert (=> start!5184 m!40703))

(push 1)

(assert (not b!39548))

(assert (not b!39551))

(assert (not start!5184))

(assert (not b!39549))

(assert (not b!39550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!20032 () Bool)

(assert (=> d!20032 (<!2 (+!5 n1!194 n2!205) (Succ!68 (+!5 n1!194 n2!205)))))

(assert (=> d!20032 true))

(declare-fun x$43!43 () Unit!366)

(assert (=> d!20032 (= (succ_<!0 (+!5 n1!194 n2!205) (+!5 n1!194 n2!205)) x$43!43)))

(declare-fun bs!12088 () Bool)

(assert (= bs!12088 d!20032))

(assert (=> bs!12088 m!40685))

(declare-fun m!40705 () Bool)

(assert (=> bs!12088 m!40705))

(assert (=> b!39551 d!20032))

(declare-fun d!20034 () Bool)

(declare-fun c!8421 () Bool)

(assert (=> d!20034 (= c!8421 (is-Zero!71 n1!194))))

(declare-fun e!20383 () Nat!87)

(assert (=> d!20034 (= (+!5 n1!194 n2!205) e!20383)))

(declare-fun b!39557 () Bool)

(assert (=> b!39557 (= e!20383 n2!205)))

(declare-fun b!39558 () Bool)

(assert (=> b!39558 (= e!20383 (Succ!68 (+!5 (n!1173 n1!194) n2!205)))))

(assert (= (and d!20034 c!8421) b!39557))

(assert (= (and d!20034 (not c!8421)) b!39558))

(declare-fun m!40707 () Bool)

(assert (=> b!39558 m!40707))

(assert (=> b!39551 d!20034))

(declare-fun d!20036 () Bool)

(declare-fun lt!7649 () Bool)

(declare-fun repr!0 (Nat!87) Int)

(assert (=> d!20036 (= lt!7649 (< (repr!0 n2!205) (repr!0 n3!50)))))

(declare-fun e!20386 () Bool)

(assert (=> d!20036 (= lt!7649 e!20386)))

(declare-fun c!8424 () Bool)

(assert (=> d!20036 (= c!8424 (and (is-Succ!68 n2!205) (is-Succ!68 n3!50)))))

(assert (=> d!20036 (= (<!2 n2!205 n3!50) lt!7649)))

(declare-fun b!39563 () Bool)

(assert (=> b!39563 (= e!20386 (<!2 (n!1173 n2!205) (n!1173 n3!50)))))

(declare-fun b!39564 () Bool)

(assert (=> b!39564 (= e!20386 (and (is-Zero!71 n2!205) (is-Succ!68 n3!50)))))

(assert (= (and d!20036 c!8424) b!39563))

(assert (= (and d!20036 (not c!8424)) b!39564))

(declare-fun m!40709 () Bool)

(assert (=> d!20036 m!40709))

(declare-fun m!40711 () Bool)

(assert (=> d!20036 m!40711))

(declare-fun m!40713 () Bool)

(assert (=> b!39563 m!40713))

(assert (=> start!5184 d!20036))

(declare-fun d!20038 () Bool)

(assert (=> d!20038 (= (+!5 n1!194 (Succ!68 (ite lt!7643 n2!205 (n!1173 n3!50)))) (Succ!68 (+!5 n1!194 (ite lt!7643 n2!205 (n!1173 n3!50)))))))

(assert (=> d!20038 true))

(declare-fun x$7!76 () Unit!366)

(assert (=> d!20038 (= (plus_succ!0 n1!194 (ite lt!7643 n2!205 (n!1173 n3!50))) x$7!76)))

(declare-fun bs!12089 () Bool)

(assert (= bs!12089 d!20038))

(declare-fun m!40715 () Bool)

(assert (=> bs!12089 m!40715))

(declare-fun m!40717 () Bool)

(assert (=> bs!12089 m!40717))

(assert (=> b!39549 d!20038))

(declare-fun d!20040 () Bool)

(declare-fun lt!7650 () Bool)

(assert (=> d!20040 (= lt!7650 (< (repr!0 (+!5 n1!194 n2!205)) (repr!0 (+!5 n1!194 n3!50))))))

(declare-fun e!20387 () Bool)

(assert (=> d!20040 (= lt!7650 e!20387)))

(declare-fun c!8425 () Bool)

(assert (=> d!20040 (= c!8425 (and (is-Succ!68 (+!5 n1!194 n2!205)) (is-Succ!68 (+!5 n1!194 n3!50))))))

(assert (=> d!20040 (= (<!2 (+!5 n1!194 n2!205) (+!5 n1!194 n3!50)) lt!7650)))

(declare-fun b!39565 () Bool)

(assert (=> b!39565 (= e!20387 (<!2 (n!1173 (+!5 n1!194 n2!205)) (n!1173 (+!5 n1!194 n3!50))))))

(declare-fun b!39566 () Bool)

(assert (=> b!39566 (= e!20387 (and (is-Zero!71 (+!5 n1!194 n2!205)) (is-Succ!68 (+!5 n1!194 n3!50))))))

(assert (= (and d!20040 c!8425) b!39565))

(assert (= (and d!20040 (not c!8425)) b!39566))

(assert (=> d!20040 m!40685))

(declare-fun m!40719 () Bool)

(assert (=> d!20040 m!40719))

(assert (=> d!20040 m!40695))

(declare-fun m!40721 () Bool)

(assert (=> d!20040 m!40721))

(declare-fun m!40723 () Bool)

(assert (=> b!39565 m!40723))

(assert (=> b!39548 d!20040))

(assert (=> b!39548 d!20034))

(declare-fun d!20042 () Bool)

(declare-fun c!8426 () Bool)

(assert (=> d!20042 (= c!8426 (is-Zero!71 n1!194))))

(declare-fun e!20388 () Nat!87)

(assert (=> d!20042 (= (+!5 n1!194 n3!50) e!20388)))

(declare-fun b!39567 () Bool)

(assert (=> b!39567 (= e!20388 n3!50)))

(declare-fun b!39568 () Bool)

(assert (=> b!39568 (= e!20388 (Succ!68 (+!5 (n!1173 n1!194) n3!50)))))

(assert (= (and d!20042 c!8426) b!39567))

(assert (= (and d!20042 (not c!8426)) b!39568))

(declare-fun m!40725 () Bool)

(assert (=> b!39568 m!40725))

(assert (=> b!39548 d!20042))

(declare-fun d!20044 () Bool)

(declare-fun e!20391 () Bool)

(assert (=> d!20044 e!20391))

(declare-fun res!18979 () Bool)

(assert (=> d!20044 (=> res!18979 e!20391)))

(declare-fun lt!7653 () Nat!87)

(assert (=> d!20044 (= res!18979 (= n2!205 lt!7653))))

(assert (=> d!20044 (= lt!7653 (n!1173 n3!50))))

(assert (=> d!20044 true))

(declare-fun x$45!75 () Unit!366)

(assert (=> d!20044 (= (pred_<!0 n2!205 n3!50) x$45!75)))

(declare-fun b!39571 () Bool)

(assert (=> b!39571 (= e!20391 (<!2 n2!205 lt!7653))))

(assert (= (and d!20044 (not res!18979)) b!39571))

(declare-fun m!40727 () Bool)

(assert (=> b!39571 m!40727))

(assert (=> b!39550 d!20044))

(declare-fun d!20046 () Bool)

(declare-fun c!8427 () Bool)

(assert (=> d!20046 (= c!8427 (is-Zero!71 n1!194))))

(declare-fun e!20392 () Nat!87)

(assert (=> d!20046 (= (+!5 n1!194 (n!1173 n3!50)) e!20392)))

(declare-fun b!39572 () Bool)

(assert (=> b!39572 (= e!20392 (n!1173 n3!50))))

(declare-fun b!39573 () Bool)

(assert (=> b!39573 (= e!20392 (Succ!68 (+!5 (n!1173 n1!194) (n!1173 n3!50))))))

(assert (= (and d!20046 c!8427) b!39572))

(assert (= (and d!20046 (not c!8427)) b!39573))

(declare-fun m!40729 () Bool)

(assert (=> b!39573 m!40729))

(assert (=> b!39550 d!20046))

(declare-fun d!20048 () Bool)

(assert (=> d!20048 (<!2 (+!5 n1!194 n2!205) (Succ!68 (+!5 n1!194 (n!1173 n3!50))))))

(assert (=> d!20048 true))

(declare-fun x$43!44 () Unit!366)

(assert (=> d!20048 (= (succ_<!0 (+!5 n1!194 n2!205) (+!5 n1!194 (n!1173 n3!50))) x$43!44)))

(declare-fun bs!12090 () Bool)

(assert (= bs!12090 d!20048))

(assert (=> bs!12090 m!40685))

(declare-fun m!40731 () Bool)

(assert (=> bs!12090 m!40731))

(assert (=> b!39550 d!20048))

(assert (=> b!39550 d!20034))

(declare-fun d!20050 () Bool)

(assert (=> d!20050 (<!2 (+!5 n1!194 n2!205) (+!5 n1!194 (n!1173 n3!50)))))

(assert (=> d!20050 true))

(declare-fun x$49!36 () Unit!366)

(assert (=> d!20050 (= (plus_<!0 n1!194 n2!205 (n!1173 n3!50)) x$49!36)))

(declare-fun bs!12091 () Bool)

(assert (= bs!12091 d!20050))

(assert (=> bs!12091 m!40685))

(assert (=> bs!12091 m!40687))

(assert (=> bs!12091 m!40685))

(assert (=> bs!12091 m!40687))

(declare-fun m!40733 () Bool)

(assert (=> bs!12091 m!40733))

(assert (=> b!39550 d!20050))

(push 1)

(assert (not b!39571))

(assert (not d!20038))

(assert (not b!39565))

(assert (not b!39558))

(assert (not d!20036))

(assert (not b!39568))

(assert (not b!39563))

(assert (not d!20040))

(assert (not d!20032))

(assert (not d!20048))

(assert (not d!20050))

(assert (not b!39573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

