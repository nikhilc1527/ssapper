; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5890 () Bool)

(assert start!5890)

(declare-fun b!44380 () Bool)

(declare-fun res!20996 () Bool)

(declare-fun e!22977 () Bool)

(assert (=> b!44380 (=> (not res!20996) (not e!22977))))

(declare-datatypes () ((Nat!130 (Zero!114) (Succ!111 (n!1256 Nat!130)))))

(declare-fun n2!138 () Nat!130)

(declare-datatypes () ((Unit!463 (Unit!464))))

(declare-fun tmp!165 () Unit!463)

(declare-fun n3!36 () Nat!130)

(declare-fun pred_<!0 (Nat!130 Nat!130) Unit!463)

(assert (=> b!44380 (= res!20996 (= tmp!165 (pred_<!0 n2!138 n3!36)))))

(declare-fun b!44381 () Bool)

(declare-fun res!20994 () Bool)

(assert (=> b!44381 (=> (not res!20994) (not e!22977))))

(assert (=> b!44381 (= res!20994 (and (not (is-Zero!114 n3!36)) (not (= (n!1256 n3!36) n2!138))))))

(declare-fun b!44382 () Bool)

(declare-fun n1!136 () Nat!130)

(declare-fun n2!147 () Nat!130)

(declare-fun <=!2 (Nat!130 Nat!130) Bool)

(assert (=> b!44382 (= e!22977 (not (<=!2 n1!136 n2!147)))))

(declare-fun b!44383 () Bool)

(declare-fun res!20999 () Bool)

(assert (=> b!44383 (=> (not res!20999) (not e!22977))))

(declare-fun n1!127 () Nat!130)

(assert (=> b!44383 (= res!20999 (and (= n1!136 n1!127) (= n2!147 (n!1256 n3!36))))))

(declare-fun res!20995 () Bool)

(assert (=> start!5890 (=> (not res!20995) (not e!22977))))

(declare-fun <!2 (Nat!130 Nat!130) Bool)

(assert (=> start!5890 (= res!20995 (<!2 n1!127 n2!138))))

(assert (=> start!5890 e!22977))

(assert (=> start!5890 true))

(declare-fun b!44384 () Bool)

(declare-fun res!20998 () Bool)

(assert (=> b!44384 (=> (not res!20998) (not e!22977))))

(assert (=> b!44384 (= res!20998 (<!2 n2!138 n3!36))))

(declare-fun b!44385 () Bool)

(declare-fun res!20997 () Bool)

(assert (=> b!44385 (=> (not res!20997) (not e!22977))))

(declare-fun tmp!166 () Unit!463)

(declare-fun transitive_<!0 (Nat!130 Nat!130 Nat!130) Unit!463)

(assert (=> b!44385 (= res!20997 (= tmp!166 (transitive_<!0 n1!127 n2!138 (n!1256 n3!36))))))

(assert (= (and start!5890 res!20995) b!44384))

(assert (= (and b!44384 res!20998) b!44381))

(assert (= (and b!44381 res!20994) b!44380))

(assert (= (and b!44380 res!20996) b!44385))

(assert (= (and b!44385 res!20997) b!44383))

(assert (= (and b!44383 res!20999) b!44382))

(declare-fun m!47571 () Bool)

(assert (=> b!44384 m!47571))

(declare-fun m!47573 () Bool)

(assert (=> b!44380 m!47573))

(declare-fun m!47575 () Bool)

(assert (=> b!44385 m!47575))

(declare-fun m!47577 () Bool)

(assert (=> b!44382 m!47577))

(declare-fun m!47579 () Bool)

(assert (=> start!5890 m!47579))

(push 1)

(assert (not b!44384))

(assert (not b!44382))

(assert (not b!44380))

(assert (not b!44385))

(assert (not start!5890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31348 () Bool)

(declare-fun res!21002 () Bool)

(declare-fun e!22980 () Bool)

(assert (=> d!31348 (=> res!21002 e!22980)))

(assert (=> d!31348 (= res!21002 (<!2 n1!136 n2!147))))

(assert (=> d!31348 (= (<=!2 n1!136 n2!147) e!22980)))

(declare-fun b!44388 () Bool)

(assert (=> b!44388 (= e!22980 (= n1!136 n2!147))))

(assert (= (and d!31348 (not res!21002)) b!44388))

(declare-fun m!47581 () Bool)

(assert (=> d!31348 m!47581))

(assert (=> b!44382 d!31348))

(declare-fun d!31350 () Bool)

(declare-fun e!22983 () Bool)

(assert (=> d!31350 e!22983))

(declare-fun res!21005 () Bool)

(assert (=> d!31350 (=> res!21005 e!22983)))

(declare-fun lt!8098 () Nat!130)

(assert (=> d!31350 (= res!21005 (= n2!138 lt!8098))))

(assert (=> d!31350 (= lt!8098 (n!1256 n3!36))))

(assert (=> d!31350 true))

(declare-fun x$45!81 () Unit!463)

(assert (=> d!31350 (= (pred_<!0 n2!138 n3!36) x$45!81)))

(declare-fun b!44391 () Bool)

(assert (=> b!44391 (= e!22983 (<!2 n2!138 lt!8098))))

(assert (= (and d!31350 (not res!21005)) b!44391))

(declare-fun m!47583 () Bool)

(assert (=> b!44391 m!47583))

(assert (=> b!44380 d!31350))

(declare-fun d!31352 () Bool)

(declare-fun lt!8101 () Bool)

(declare-fun repr!0 (Nat!130) Int)

(assert (=> d!31352 (= lt!8101 (< (repr!0 n1!127) (repr!0 n2!138)))))

(declare-fun e!22986 () Bool)

(assert (=> d!31352 (= lt!8101 e!22986)))

(declare-fun c!9483 () Bool)

(assert (=> d!31352 (= c!9483 (and (is-Succ!111 n1!127) (is-Succ!111 n2!138)))))

(assert (=> d!31352 (= (<!2 n1!127 n2!138) lt!8101)))

(declare-fun b!44396 () Bool)

(assert (=> b!44396 (= e!22986 (<!2 (n!1256 n1!127) (n!1256 n2!138)))))

(declare-fun b!44397 () Bool)

(assert (=> b!44397 (= e!22986 (and (is-Zero!114 n1!127) (is-Succ!111 n2!138)))))

(assert (= (and d!31352 c!9483) b!44396))

(assert (= (and d!31352 (not c!9483)) b!44397))

(declare-fun m!47585 () Bool)

(assert (=> d!31352 m!47585))

(declare-fun m!47587 () Bool)

(assert (=> d!31352 m!47587))

(declare-fun m!47589 () Bool)

(assert (=> b!44396 m!47589))

(assert (=> start!5890 d!31352))

(declare-fun d!31354 () Bool)

(declare-fun lt!8102 () Bool)

(assert (=> d!31354 (= lt!8102 (< (repr!0 n2!138) (repr!0 n3!36)))))

(declare-fun e!22987 () Bool)

(assert (=> d!31354 (= lt!8102 e!22987)))

(declare-fun c!9484 () Bool)

(assert (=> d!31354 (= c!9484 (and (is-Succ!111 n2!138) (is-Succ!111 n3!36)))))

(assert (=> d!31354 (= (<!2 n2!138 n3!36) lt!8102)))

(declare-fun b!44398 () Bool)

(assert (=> b!44398 (= e!22987 (<!2 (n!1256 n2!138) (n!1256 n3!36)))))

(declare-fun b!44399 () Bool)

(assert (=> b!44399 (= e!22987 (and (is-Zero!114 n2!138) (is-Succ!111 n3!36)))))

(assert (= (and d!31354 c!9484) b!44398))

(assert (= (and d!31354 (not c!9484)) b!44399))

(assert (=> d!31354 m!47587))

(declare-fun m!47591 () Bool)

(assert (=> d!31354 m!47591))

(declare-fun m!47593 () Bool)

(assert (=> b!44398 m!47593))

(assert (=> b!44384 d!31354))

(declare-fun d!31356 () Bool)

(assert (=> d!31356 (<!2 n1!127 (n!1256 n3!36))))

(assert (=> d!31356 true))

(declare-fun x$47!59 () Unit!463)

(assert (=> d!31356 (= (transitive_<!0 n1!127 n2!138 (n!1256 n3!36)) x$47!59)))

(declare-fun bs!17755 () Bool)

(assert (= bs!17755 d!31356))

(declare-fun m!47595 () Bool)

(assert (=> bs!17755 m!47595))

(assert (=> b!44385 d!31356))

(push 1)

(assert (not d!31352))

(assert (not b!44391))

(assert (not b!44398))

(assert (not d!31354))

(assert (not d!31356))

(assert (not b!44396))

(assert (not d!31348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

