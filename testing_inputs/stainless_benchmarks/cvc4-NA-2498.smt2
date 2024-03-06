; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14014 () Bool)

(assert start!14014)

(declare-datatypes () ((List!836 (Cons!774 (h!3372 Int) (t!51499 List!836)) (Nil!776))))

(declare-fun size!950 (List!836) Int)

(declare-datatypes () ((P!36 (Charlie!36) (Alice!36) (Bob!36))))

(declare-datatypes () ((S!91 (S!92 (who!1421 P!36) (amount!1421 Int)))))

(declare-datatypes () ((List!837 (Cons!775 (h!3373 S!91) (t!51500 List!837)) (Nil!777))))

(declare-fun size!951 (List!837) Int)

(assert (=> start!14014 (not (= (size!950 (Cons!774 2000 Nil!776)) (size!951 (Cons!775 (S!92 Alice!36 2000) Nil!777))))))

(declare-fun bs!42647 () Bool)

(assert (= bs!42647 start!14014))

(declare-fun m!89495 () Bool)

(assert (=> bs!42647 m!89495))

(declare-fun m!89497 () Bool)

(assert (=> bs!42647 m!89497))

(push 1)

(assert (not start!14014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61308 () Bool)

(declare-fun lt!21387 () Int)

(assert (=> d!61308 (>= lt!21387 0)))

(declare-fun e!51419 () Int)

(assert (=> d!61308 (= lt!21387 e!51419)))

(declare-fun c!23042 () Bool)

(assert (=> d!61308 (= c!23042 (is-Nil!776 (Cons!774 2000 Nil!776)))))

(assert (=> d!61308 (= (size!950 (Cons!774 2000 Nil!776)) lt!21387)))

(declare-fun b!93861 () Bool)

(assert (=> b!93861 (= e!51419 0)))

(declare-fun b!93862 () Bool)

(assert (=> b!93862 (= e!51419 (+ 1 (size!950 (t!51499 (Cons!774 2000 Nil!776)))))))

(assert (= (and d!61308 c!23042) b!93861))

(assert (= (and d!61308 (not c!23042)) b!93862))

(declare-fun m!89499 () Bool)

(assert (=> b!93862 m!89499))

(assert (=> start!14014 d!61308))

(declare-fun d!61310 () Bool)

(declare-fun lt!21390 () Int)

(assert (=> d!61310 (>= lt!21390 0)))

(declare-fun e!51422 () Int)

(assert (=> d!61310 (= lt!21390 e!51422)))

(declare-fun c!23045 () Bool)

(assert (=> d!61310 (= c!23045 (is-Nil!777 (Cons!775 (S!92 Alice!36 2000) Nil!777)))))

(assert (=> d!61310 (= (size!951 (Cons!775 (S!92 Alice!36 2000) Nil!777)) lt!21390)))

(declare-fun b!93867 () Bool)

(assert (=> b!93867 (= e!51422 0)))

(declare-fun b!93868 () Bool)

(assert (=> b!93868 (= e!51422 (+ 1 (size!951 (t!51500 (Cons!775 (S!92 Alice!36 2000) Nil!777)))))))

(assert (= (and d!61310 c!23045) b!93867))

(assert (= (and d!61310 (not c!23045)) b!93868))

(declare-fun m!89501 () Bool)

(assert (=> b!93868 m!89501))

(assert (=> start!14014 d!61310))

(push 1)

(assert (not b!93862))

(assert (not b!93868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61312 () Bool)

(declare-fun lt!21391 () Int)

(assert (=> d!61312 (>= lt!21391 0)))

(declare-fun e!51423 () Int)

(assert (=> d!61312 (= lt!21391 e!51423)))

(declare-fun c!23046 () Bool)

(assert (=> d!61312 (= c!23046 (is-Nil!776 (t!51499 (Cons!774 2000 Nil!776))))))

(assert (=> d!61312 (= (size!950 (t!51499 (Cons!774 2000 Nil!776))) lt!21391)))

(declare-fun b!93869 () Bool)

(assert (=> b!93869 (= e!51423 0)))

(declare-fun b!93870 () Bool)

(assert (=> b!93870 (= e!51423 (+ 1 (size!950 (t!51499 (t!51499 (Cons!774 2000 Nil!776))))))))

(assert (= (and d!61312 c!23046) b!93869))

(assert (= (and d!61312 (not c!23046)) b!93870))

(declare-fun m!89503 () Bool)

(assert (=> b!93870 m!89503))

(assert (=> b!93862 d!61312))

(declare-fun d!61314 () Bool)

(declare-fun lt!21392 () Int)

(assert (=> d!61314 (>= lt!21392 0)))

(declare-fun e!51424 () Int)

(assert (=> d!61314 (= lt!21392 e!51424)))

(declare-fun c!23047 () Bool)

(assert (=> d!61314 (= c!23047 (is-Nil!777 (t!51500 (Cons!775 (S!92 Alice!36 2000) Nil!777))))))

(assert (=> d!61314 (= (size!951 (t!51500 (Cons!775 (S!92 Alice!36 2000) Nil!777))) lt!21392)))

(declare-fun b!93871 () Bool)

(assert (=> b!93871 (= e!51424 0)))

(declare-fun b!93872 () Bool)

(assert (=> b!93872 (= e!51424 (+ 1 (size!951 (t!51500 (t!51500 (Cons!775 (S!92 Alice!36 2000) Nil!777))))))))

(assert (= (and d!61314 c!23047) b!93871))

(assert (= (and d!61314 (not c!23047)) b!93872))

(declare-fun m!89505 () Bool)

(assert (=> b!93872 m!89505))

(assert (=> b!93868 d!61314))

(push 1)

(assert (not b!93872))

(assert (not b!93870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

