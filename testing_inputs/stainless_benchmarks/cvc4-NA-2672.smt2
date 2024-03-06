; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14370 () Bool)

(assert start!14370)

(declare-fun res!49260 () Bool)

(declare-fun e!51437 () Bool)

(assert (=> start!14370 (=> res!49260 e!51437)))

(declare-datatypes () ((P!44 (Charlie!44) (Alice!44) (Bob!44))))

(declare-datatypes () ((S!107 (S!108 (who!1871 P!44) (amount!1871 Int)))))

(declare-datatypes () ((List!841 (Cons!779 (h!4061 S!107) (t!52214 List!841)) (Nil!781))))

(declare-fun lt!21423 () List!841)

(declare-fun lt!21422 () List!841)

(declare-fun size!955 (List!841) Int)

(assert (=> start!14370 (= res!49260 (> (size!955 lt!21423) (size!955 lt!21422)))))

(assert (=> start!14370 (= lt!21423 Nil!781)))

(assert (=> start!14370 (= lt!21422 Nil!781)))

(assert (=> start!14370 e!51437))

(declare-fun b!93897 () Bool)

(declare-fun res!49261 () Bool)

(assert (=> b!93897 (=> res!49261 e!51437)))

(declare-fun content!193 (List!841) (Set S!107))

(assert (=> b!93897 (= res!49261 (not (subset (content!193 lt!21423) (content!193 lt!21422))))))

(declare-fun b!93898 () Bool)

(declare-fun lambda!11184 () Int)

(declare-fun forall!76 (List!841 Int) Bool)

(assert (=> b!93898 (= e!51437 (not (forall!76 lt!21423 lambda!11184)))))

(assert (= (and start!14370 (not res!49260)) b!93897))

(assert (= (and b!93897 (not res!49261)) b!93898))

(declare-fun m!89529 () Bool)

(assert (=> start!14370 m!89529))

(declare-fun m!89531 () Bool)

(assert (=> start!14370 m!89531))

(declare-fun m!89533 () Bool)

(assert (=> b!93897 m!89533))

(declare-fun m!89535 () Bool)

(assert (=> b!93897 m!89535))

(declare-fun m!89537 () Bool)

(assert (=> b!93898 m!89537))

(push 1)

(assert (not b!93897))

(assert (not start!14370))

(assert (not b!93898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61328 () Bool)

(declare-fun c!23060 () Bool)

(assert (=> d!61328 (= c!23060 (is-Nil!781 lt!21423))))

(declare-fun e!51440 () (Set S!107))

(assert (=> d!61328 (= (content!193 lt!21423) e!51440)))

(declare-fun b!93903 () Bool)

(assert (=> b!93903 (= e!51440 (as emptyset (Set S!107)))))

(declare-fun b!93904 () Bool)

(assert (=> b!93904 (= e!51440 (union (insert (h!4061 lt!21423) (as emptyset (Set S!107))) (content!193 (t!52214 lt!21423))))))

(assert (= (and d!61328 c!23060) b!93903))

(assert (= (and d!61328 (not c!23060)) b!93904))

(declare-fun m!89539 () Bool)

(assert (=> b!93904 m!89539))

(declare-fun m!89541 () Bool)

(assert (=> b!93904 m!89541))

(assert (=> b!93897 d!61328))

(declare-fun d!61330 () Bool)

(declare-fun c!23061 () Bool)

(assert (=> d!61330 (= c!23061 (is-Nil!781 lt!21422))))

(declare-fun e!51441 () (Set S!107))

(assert (=> d!61330 (= (content!193 lt!21422) e!51441)))

(declare-fun b!93905 () Bool)

(assert (=> b!93905 (= e!51441 (as emptyset (Set S!107)))))

(declare-fun b!93906 () Bool)

(assert (=> b!93906 (= e!51441 (union (insert (h!4061 lt!21422) (as emptyset (Set S!107))) (content!193 (t!52214 lt!21422))))))

(assert (= (and d!61330 c!23061) b!93905))

(assert (= (and d!61330 (not c!23061)) b!93906))

(declare-fun m!89543 () Bool)

(assert (=> b!93906 m!89543))

(declare-fun m!89545 () Bool)

(assert (=> b!93906 m!89545))

(assert (=> b!93897 d!61330))

(declare-fun d!61332 () Bool)

(declare-fun lt!21426 () Int)

(assert (=> d!61332 (>= lt!21426 0)))

(declare-fun e!51444 () Int)

(assert (=> d!61332 (= lt!21426 e!51444)))

(declare-fun c!23064 () Bool)

(assert (=> d!61332 (= c!23064 (is-Nil!781 lt!21423))))

(assert (=> d!61332 (= (size!955 lt!21423) lt!21426)))

(declare-fun b!93911 () Bool)

(assert (=> b!93911 (= e!51444 0)))

(declare-fun b!93912 () Bool)

(assert (=> b!93912 (= e!51444 (+ 1 (size!955 (t!52214 lt!21423))))))

(assert (= (and d!61332 c!23064) b!93911))

(assert (= (and d!61332 (not c!23064)) b!93912))

(declare-fun m!89547 () Bool)

(assert (=> b!93912 m!89547))

(assert (=> start!14370 d!61332))

(declare-fun d!61334 () Bool)

(declare-fun lt!21427 () Int)

(assert (=> d!61334 (>= lt!21427 0)))

(declare-fun e!51445 () Int)

(assert (=> d!61334 (= lt!21427 e!51445)))

(declare-fun c!23065 () Bool)

(assert (=> d!61334 (= c!23065 (is-Nil!781 lt!21422))))

(assert (=> d!61334 (= (size!955 lt!21422) lt!21427)))

(declare-fun b!93913 () Bool)

(assert (=> b!93913 (= e!51445 0)))

(declare-fun b!93914 () Bool)

(assert (=> b!93914 (= e!51445 (+ 1 (size!955 (t!52214 lt!21422))))))

(assert (= (and d!61334 c!23065) b!93913))

(assert (= (and d!61334 (not c!23065)) b!93914))

(declare-fun m!89549 () Bool)

(assert (=> b!93914 m!89549))

(assert (=> start!14370 d!61334))

(declare-fun d!61336 () Bool)

(declare-fun res!49266 () Bool)

(declare-fun e!51450 () Bool)

(assert (=> d!61336 (=> res!49266 e!51450)))

(assert (=> d!61336 (= res!49266 (is-Nil!781 lt!21423))))

(assert (=> d!61336 (= (forall!76 lt!21423 lambda!11184) e!51450)))

(declare-fun b!93919 () Bool)

(declare-fun e!51451 () Bool)

(assert (=> b!93919 (= e!51450 e!51451)))

(declare-fun res!49267 () Bool)

(assert (=> b!93919 (=> (not res!49267) (not e!51451))))

(declare-fun dynLambda!1146 (Int S!107) Bool)

(assert (=> b!93919 (= res!49267 (dynLambda!1146 lambda!11184 (h!4061 lt!21423)))))

(declare-fun b!93920 () Bool)

(assert (=> b!93920 (= e!51451 (forall!76 (t!52214 lt!21423) lambda!11184))))

(assert (= (and d!61336 (not res!49266)) b!93919))

(assert (= (and b!93919 res!49267) b!93920))

(declare-fun b_lambda!18955 () Bool)

(assert (=> (not b_lambda!18955) (not b!93919)))

(declare-fun m!89551 () Bool)

(assert (=> b!93919 m!89551))

(declare-fun m!89553 () Bool)

(assert (=> b!93920 m!89553))

(assert (=> b!93898 d!61336))

(declare-fun b_lambda!18957 () Bool)

(assert (= b_lambda!18955 (or b!93898 b_lambda!18957)))

(declare-fun bs!42825 () Bool)

(declare-fun d!61338 () Bool)

(assert (= bs!42825 (and d!61338 b!93898)))

(assert (=> bs!42825 (= (dynLambda!1146 lambda!11184 (h!4061 lt!21423)) (< (amount!1871 (h!4061 lt!21423)) 0))))

(assert (=> b!93919 d!61338))

(push 1)

(assert (not b!93914))

(assert (not b!93904))

(assert (not b!93906))

(assert (not b!93912))

(assert (not b_lambda!18957))

(assert (not b!93920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

