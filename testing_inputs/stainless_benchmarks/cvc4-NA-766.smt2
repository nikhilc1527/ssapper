; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5876 () Bool)

(assert start!5876)

(declare-fun res!20946 () Bool)

(declare-fun e!22949 () Bool)

(assert (=> start!5876 (=> (not res!20946) (not e!22949))))

(declare-datatypes () ((Nat!127 (Zero!111) (Succ!108 (n!1252 Nat!127)))))

(declare-fun n1!127 () Nat!127)

(declare-fun n2!138 () Nat!127)

(declare-fun <!2 (Nat!127 Nat!127) Bool)

(assert (=> start!5876 (= res!20946 (<!2 n1!127 n2!138))))

(assert (=> start!5876 e!22949))

(assert (=> start!5876 true))

(declare-fun b!44312 () Bool)

(declare-fun res!20947 () Bool)

(assert (=> b!44312 (=> (not res!20947) (not e!22949))))

(declare-fun n3!36 () Nat!127)

(assert (=> b!44312 (= res!20947 (<!2 n2!138 n3!36))))

(declare-fun b!44313 () Bool)

(declare-fun res!20948 () Bool)

(assert (=> b!44313 (=> (not res!20948) (not e!22949))))

(declare-fun n2!141 () Nat!127)

(declare-fun n1!130 () Nat!127)

(assert (=> b!44313 (= res!20948 (and (not (is-Zero!111 n3!36)) (= (n!1252 n3!36) n2!138) (= n1!130 n1!127) (= n2!141 (n!1252 n3!36))))))

(declare-fun b!44314 () Bool)

(declare-fun <=!2 (Nat!127 Nat!127) Bool)

(assert (=> b!44314 (= e!22949 (not (<=!2 n1!130 n2!141)))))

(assert (= (and start!5876 res!20946) b!44312))

(assert (= (and b!44312 res!20947) b!44313))

(assert (= (and b!44313 res!20948) b!44314))

(declare-fun m!47515 () Bool)

(assert (=> start!5876 m!47515))

(declare-fun m!47517 () Bool)

(assert (=> b!44312 m!47517))

(declare-fun m!47519 () Bool)

(assert (=> b!44314 m!47519))

(push 1)

(assert (not b!44312))

(assert (not b!44314))

(assert (not start!5876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31332 () Bool)

(declare-fun lt!8085 () Bool)

(declare-fun repr!0 (Nat!127) Int)

(assert (=> d!31332 (= lt!8085 (< (repr!0 n2!138) (repr!0 n3!36)))))

(declare-fun e!22952 () Bool)

(assert (=> d!31332 (= lt!8085 e!22952)))

(declare-fun c!9473 () Bool)

(assert (=> d!31332 (= c!9473 (and (is-Succ!108 n2!138) (is-Succ!108 n3!36)))))

(assert (=> d!31332 (= (<!2 n2!138 n3!36) lt!8085)))

(declare-fun b!44319 () Bool)

(assert (=> b!44319 (= e!22952 (<!2 (n!1252 n2!138) (n!1252 n3!36)))))

(declare-fun b!44320 () Bool)

(assert (=> b!44320 (= e!22952 (and (is-Zero!111 n2!138) (is-Succ!108 n3!36)))))

(assert (= (and d!31332 c!9473) b!44319))

(assert (= (and d!31332 (not c!9473)) b!44320))

(declare-fun m!47521 () Bool)

(assert (=> d!31332 m!47521))

(declare-fun m!47523 () Bool)

(assert (=> d!31332 m!47523))

(declare-fun m!47525 () Bool)

(assert (=> b!44319 m!47525))

(assert (=> b!44312 d!31332))

(declare-fun d!31334 () Bool)

(declare-fun res!20951 () Bool)

(declare-fun e!22955 () Bool)

(assert (=> d!31334 (=> res!20951 e!22955)))

(assert (=> d!31334 (= res!20951 (<!2 n1!130 n2!141))))

(assert (=> d!31334 (= (<=!2 n1!130 n2!141) e!22955)))

(declare-fun b!44323 () Bool)

(assert (=> b!44323 (= e!22955 (= n1!130 n2!141))))

(assert (= (and d!31334 (not res!20951)) b!44323))

(declare-fun m!47527 () Bool)

(assert (=> d!31334 m!47527))

(assert (=> b!44314 d!31334))

(declare-fun d!31336 () Bool)

(declare-fun lt!8086 () Bool)

(assert (=> d!31336 (= lt!8086 (< (repr!0 n1!127) (repr!0 n2!138)))))

(declare-fun e!22956 () Bool)

(assert (=> d!31336 (= lt!8086 e!22956)))

(declare-fun c!9474 () Bool)

(assert (=> d!31336 (= c!9474 (and (is-Succ!108 n1!127) (is-Succ!108 n2!138)))))

(assert (=> d!31336 (= (<!2 n1!127 n2!138) lt!8086)))

(declare-fun b!44324 () Bool)

(assert (=> b!44324 (= e!22956 (<!2 (n!1252 n1!127) (n!1252 n2!138)))))

(declare-fun b!44325 () Bool)

(assert (=> b!44325 (= e!22956 (and (is-Zero!111 n1!127) (is-Succ!108 n2!138)))))

(assert (= (and d!31336 c!9474) b!44324))

(assert (= (and d!31336 (not c!9474)) b!44325))

(declare-fun m!47529 () Bool)

(assert (=> d!31336 m!47529))

(assert (=> d!31336 m!47521))

(declare-fun m!47531 () Bool)

(assert (=> b!44324 m!47531))

(assert (=> start!5876 d!31336))

(push 1)

(assert (not d!31334))

(assert (not b!44319))

(assert (not d!31336))

(assert (not b!44324))

(assert (not d!31332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

