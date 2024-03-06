; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5866 () Bool)

(assert start!5866)

(declare-fun b!44282 () Bool)

(declare-fun res!20936 () Bool)

(declare-fun e!22934 () Bool)

(assert (=> b!44282 (=> (not res!20936) (not e!22934))))

(declare-datatypes () ((Unit!456 (Unit!457))))

(declare-fun inductVal!81 () Unit!456)

(declare-datatypes () ((Nat!126 (Zero!110) (Succ!107 (n!1251 Nat!126)))))

(declare-fun n1!61 () Nat!126)

(declare-fun n2!72 () Nat!126)

(declare-fun increasing_plus_strict!0 (Nat!126 Nat!126) Unit!456)

(assert (=> b!44282 (= res!20936 (= inductVal!81 (increasing_plus_strict!0 (n!1251 n1!61) n2!72)))))

(declare-fun res!20934 () Bool)

(assert (=> start!5866 (=> (not res!20934) (not e!22934))))

(declare-fun >!2 (Nat!126 Nat!126) Bool)

(assert (=> start!5866 (= res!20934 (>!2 n2!72 Zero!110))))

(assert (=> start!5866 e!22934))

(assert (=> start!5866 true))

(declare-fun b!44283 () Bool)

(declare-fun res!20935 () Bool)

(assert (=> b!44283 (=> (not res!20935) (not e!22934))))

(declare-fun x$65!39 () Unit!456)

(declare-fun Unit!458 () Unit!456)

(assert (=> b!44283 (= res!20935 (= x$65!39 Unit!458))))

(declare-fun b!44281 () Bool)

(declare-fun res!20933 () Bool)

(assert (=> b!44281 (=> (not res!20933) (not e!22934))))

(assert (=> b!44281 (= res!20933 (not (is-Zero!110 n1!61)))))

(declare-fun b!44284 () Bool)

(declare-fun <!2 (Nat!126 Nat!126) Bool)

(declare-fun +!5 (Nat!126 Nat!126) Nat!126)

(assert (=> b!44284 (= e!22934 (not (<!2 n1!61 (+!5 n1!61 n2!72))))))

(assert (= (and start!5866 res!20934) b!44281))

(assert (= (and b!44281 res!20933) b!44282))

(assert (= (and b!44282 res!20936) b!44283))

(assert (= (and b!44283 res!20935) b!44284))

(declare-fun m!47493 () Bool)

(assert (=> b!44282 m!47493))

(declare-fun m!47495 () Bool)

(assert (=> start!5866 m!47495))

(declare-fun m!47497 () Bool)

(assert (=> b!44284 m!47497))

(assert (=> b!44284 m!47497))

(declare-fun m!47499 () Bool)

(assert (=> b!44284 m!47499))

(push 1)

(assert (not start!5866))

(assert (not b!44282))

(assert (not b!44284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31324 () Bool)

(declare-fun res!20939 () Bool)

(declare-fun e!22937 () Bool)

(assert (=> d!31324 (=> (not res!20939) (not e!22937))))

(assert (=> d!31324 (= res!20939 (not (<!2 n2!72 Zero!110)))))

(assert (=> d!31324 (= (>!2 n2!72 Zero!110) e!22937)))

(declare-fun b!44287 () Bool)

(assert (=> b!44287 (= e!22937 (not (= n2!72 Zero!110)))))

(assert (= (and d!31324 res!20939) b!44287))

(declare-fun m!47501 () Bool)

(assert (=> d!31324 m!47501))

(assert (=> start!5866 d!31324))

(declare-fun d!31326 () Bool)

(assert (=> d!31326 (<!2 (n!1251 n1!61) (+!5 (n!1251 n1!61) n2!72))))

(declare-fun lt!8078 () Unit!456)

(declare-fun e!22940 () Unit!456)

(assert (=> d!31326 (= lt!8078 e!22940)))

(declare-fun c!9464 () Bool)

(assert (=> d!31326 (= c!9464 (is-Zero!110 (n!1251 n1!61)))))

(assert (=> d!31326 (>!2 n2!72 Zero!110)))

(assert (=> d!31326 (= (increasing_plus_strict!0 (n!1251 n1!61) n2!72) lt!8078)))

(declare-fun b!44293 () Bool)

(declare-fun Unit!459 () Unit!456)

(assert (=> b!44293 (= e!22940 Unit!459)))

(declare-fun lt!8079 () Unit!456)

(assert (=> b!44293 (= lt!8079 (increasing_plus_strict!0 (n!1251 (n!1251 n1!61)) n2!72))))

(declare-fun b!44292 () Bool)

(declare-fun Unit!460 () Unit!456)

(assert (=> b!44292 (= e!22940 Unit!460)))

(assert (= (and d!31326 c!9464) b!44292))

(assert (= (and d!31326 (not c!9464)) b!44293))

(declare-fun m!47503 () Bool)

(assert (=> d!31326 m!47503))

(assert (=> d!31326 m!47503))

(declare-fun m!47505 () Bool)

(assert (=> d!31326 m!47505))

(assert (=> d!31326 m!47495))

(declare-fun m!47507 () Bool)

(assert (=> b!44293 m!47507))

(assert (=> b!44282 d!31326))

(declare-fun d!31328 () Bool)

(declare-fun lt!8082 () Bool)

(declare-fun repr!0 (Nat!126) Int)

(assert (=> d!31328 (= lt!8082 (< (repr!0 n1!61) (repr!0 (+!5 n1!61 n2!72))))))

(declare-fun e!22943 () Bool)

(assert (=> d!31328 (= lt!8082 e!22943)))

(declare-fun c!9467 () Bool)

(assert (=> d!31328 (= c!9467 (and (is-Succ!107 n1!61) (is-Succ!107 (+!5 n1!61 n2!72))))))

(assert (=> d!31328 (= (<!2 n1!61 (+!5 n1!61 n2!72)) lt!8082)))

(declare-fun b!44298 () Bool)

(assert (=> b!44298 (= e!22943 (<!2 (n!1251 n1!61) (n!1251 (+!5 n1!61 n2!72))))))

(declare-fun b!44299 () Bool)

(assert (=> b!44299 (= e!22943 (and (is-Zero!110 n1!61) (is-Succ!107 (+!5 n1!61 n2!72))))))

(assert (= (and d!31328 c!9467) b!44298))

(assert (= (and d!31328 (not c!9467)) b!44299))

(declare-fun m!47509 () Bool)

(assert (=> d!31328 m!47509))

(assert (=> d!31328 m!47497))

(declare-fun m!47511 () Bool)

(assert (=> d!31328 m!47511))

(declare-fun m!47513 () Bool)

(assert (=> b!44298 m!47513))

(assert (=> b!44284 d!31328))

(declare-fun d!31330 () Bool)

(declare-fun c!9470 () Bool)

(assert (=> d!31330 (= c!9470 (is-Zero!110 n1!61))))

(declare-fun e!22946 () Nat!126)

(assert (=> d!31330 (= (+!5 n1!61 n2!72) e!22946)))

(declare-fun b!44304 () Bool)

(assert (=> b!44304 (= e!22946 n2!72)))

(declare-fun b!44305 () Bool)

(assert (=> b!44305 (= e!22946 (Succ!107 (+!5 (n!1251 n1!61) n2!72)))))

(assert (= (and d!31330 c!9470) b!44304))

(assert (= (and d!31330 (not c!9470)) b!44305))

(assert (=> b!44305 m!47503))

(assert (=> b!44284 d!31330))

(push 1)

(assert (not b!44298))

(assert (not b!44293))

(assert (not b!44305))

(assert (not d!31324))

(assert (not d!31326))

(assert (not d!31328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

