; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5912 () Bool)

(assert start!5912)

(declare-fun res!21031 () Bool)

(declare-fun e!23010 () Bool)

(assert (=> start!5912 (=> (not res!21031) (not e!23010))))

(declare-datatypes () ((Nat!133 (Zero!117) (Succ!114 (n!1261 Nat!133)))))

(declare-fun n1!110 () Nat!133)

(declare-fun n2!121 () Nat!133)

(declare-fun <=!2 (Nat!133 Nat!133) Bool)

(assert (=> start!5912 (= res!21031 (<=!2 n1!110 n2!121))))

(assert (=> start!5912 e!23010))

(assert (=> start!5912 true))

(declare-fun b!44447 () Bool)

(declare-fun res!21032 () Bool)

(assert (=> b!44447 (=> (not res!21032) (not e!23010))))

(declare-fun p2!24 () Nat!133)

(declare-fun n1!112 () Nat!133)

(declare-fun n2!123 () Nat!133)

(assert (=> b!44447 (= res!21032 (and (not (is-Zero!117 n1!110)) (= p2!24 (n!1261 n2!121)) (= n1!112 (n!1261 n1!110)) (= n2!123 p2!24)))))

(declare-fun b!44448 () Bool)

(assert (=> b!44448 (= e!23010 (not (<=!2 n1!112 n2!123)))))

(assert (= (and start!5912 res!21031) b!44447))

(assert (= (and b!44447 res!21032) b!44448))

(declare-fun m!47631 () Bool)

(assert (=> start!5912 m!47631))

(declare-fun m!47633 () Bool)

(assert (=> b!44448 m!47633))

(push 1)

(assert (not b!44448))

(assert (not start!5912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31370 () Bool)

(declare-fun res!21035 () Bool)

(declare-fun e!23013 () Bool)

(assert (=> d!31370 (=> res!21035 e!23013)))

(declare-fun <!2 (Nat!133 Nat!133) Bool)

(assert (=> d!31370 (= res!21035 (<!2 n1!112 n2!123))))

(assert (=> d!31370 (= (<=!2 n1!112 n2!123) e!23013)))

(declare-fun b!44451 () Bool)

(assert (=> b!44451 (= e!23013 (= n1!112 n2!123))))

(assert (= (and d!31370 (not res!21035)) b!44451))

(declare-fun m!47635 () Bool)

(assert (=> d!31370 m!47635))

(assert (=> b!44448 d!31370))

(declare-fun d!31372 () Bool)

(declare-fun res!21036 () Bool)

(declare-fun e!23014 () Bool)

(assert (=> d!31372 (=> res!21036 e!23014)))

(assert (=> d!31372 (= res!21036 (<!2 n1!110 n2!121))))

(assert (=> d!31372 (= (<=!2 n1!110 n2!121) e!23014)))

(declare-fun b!44452 () Bool)

(assert (=> b!44452 (= e!23014 (= n1!110 n2!121))))

(assert (= (and d!31372 (not res!21036)) b!44452))

(declare-fun m!47637 () Bool)

(assert (=> d!31372 m!47637))

(assert (=> start!5912 d!31372))

(push 1)

(assert (not d!31370))

(assert (not d!31372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31374 () Bool)

(declare-fun lt!8119 () Bool)

(declare-fun repr!0 (Nat!133) Int)

(assert (=> d!31374 (= lt!8119 (< (repr!0 n1!112) (repr!0 n2!123)))))

(declare-fun e!23017 () Bool)

(assert (=> d!31374 (= lt!8119 e!23017)))

(declare-fun c!9498 () Bool)

(assert (=> d!31374 (= c!9498 (and (is-Succ!114 n1!112) (is-Succ!114 n2!123)))))

(assert (=> d!31374 (= (<!2 n1!112 n2!123) lt!8119)))

(declare-fun b!44457 () Bool)

(assert (=> b!44457 (= e!23017 (<!2 (n!1261 n1!112) (n!1261 n2!123)))))

(declare-fun b!44458 () Bool)

(assert (=> b!44458 (= e!23017 (and (is-Zero!117 n1!112) (is-Succ!114 n2!123)))))

(assert (= (and d!31374 c!9498) b!44457))

(assert (= (and d!31374 (not c!9498)) b!44458))

(declare-fun m!47639 () Bool)

(assert (=> d!31374 m!47639))

(declare-fun m!47641 () Bool)

(assert (=> d!31374 m!47641))

(declare-fun m!47643 () Bool)

(assert (=> b!44457 m!47643))

(assert (=> d!31370 d!31374))

(declare-fun d!31376 () Bool)

(declare-fun lt!8120 () Bool)

(assert (=> d!31376 (= lt!8120 (< (repr!0 n1!110) (repr!0 n2!121)))))

(declare-fun e!23018 () Bool)

(assert (=> d!31376 (= lt!8120 e!23018)))

(declare-fun c!9499 () Bool)

(assert (=> d!31376 (= c!9499 (and (is-Succ!114 n1!110) (is-Succ!114 n2!121)))))

(assert (=> d!31376 (= (<!2 n1!110 n2!121) lt!8120)))

(declare-fun b!44459 () Bool)

(assert (=> b!44459 (= e!23018 (<!2 (n!1261 n1!110) (n!1261 n2!121)))))

(declare-fun b!44460 () Bool)

(assert (=> b!44460 (= e!23018 (and (is-Zero!117 n1!110) (is-Succ!114 n2!121)))))

(assert (= (and d!31376 c!9499) b!44459))

(assert (= (and d!31376 (not c!9499)) b!44460))

(declare-fun m!47645 () Bool)

(assert (=> d!31376 m!47645))

(declare-fun m!47647 () Bool)

(assert (=> d!31376 m!47647))

(declare-fun m!47649 () Bool)

(assert (=> b!44459 m!47649))

(assert (=> d!31372 d!31376))

(push 1)

(assert (not d!31374))

(assert (not b!44459))

(assert (not b!44457))

(assert (not d!31376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

