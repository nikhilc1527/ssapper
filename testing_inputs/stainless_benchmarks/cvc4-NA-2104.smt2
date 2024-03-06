; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13160 () Bool)

(assert start!13160)

(declare-fun res!49126 () Bool)

(declare-fun e!51216 () Bool)

(assert (=> start!13160 (=> res!49126 e!51216)))

(declare-datatypes () ((P!12 (Charlie!12) (Alice!12) (Bob!12))))

(declare-datatypes () ((S!43 (S!44 (who!454 P!12) (amount!454 Int)))))

(declare-datatypes () ((List!819 (Cons!757 (h!1867 S!43) (t!49928 List!819)) (Nil!759))))

(declare-fun lt!21227 () List!819)

(declare-fun lt!21226 () List!819)

(declare-fun size!933 (List!819) Int)

(assert (=> start!13160 (= res!49126 (> (size!933 lt!21227) (size!933 lt!21226)))))

(assert (=> start!13160 (= lt!21227 Nil!759)))

(assert (=> start!13160 (= lt!21226 Nil!759)))

(assert (=> start!13160 e!51216))

(declare-fun b!93517 () Bool)

(declare-fun res!49127 () Bool)

(assert (=> b!93517 (=> res!49127 e!51216)))

(declare-fun content!184 (List!819) (Set S!43))

(assert (=> b!93517 (= res!49127 (not (subset (content!184 lt!21227) (content!184 lt!21226))))))

(declare-fun b!93518 () Bool)

(declare-fun lambda!11157 () Int)

(declare-fun forall!67 (List!819 Int) Bool)

(assert (=> b!93518 (= e!51216 (not (forall!67 lt!21227 lambda!11157)))))

(assert (= (and start!13160 (not res!49126)) b!93517))

(assert (= (and b!93517 (not res!49127)) b!93518))

(declare-fun m!89145 () Bool)

(assert (=> start!13160 m!89145))

(declare-fun m!89147 () Bool)

(assert (=> start!13160 m!89147))

(declare-fun m!89149 () Bool)

(assert (=> b!93517 m!89149))

(declare-fun m!89151 () Bool)

(assert (=> b!93517 m!89151))

(declare-fun m!89153 () Bool)

(assert (=> b!93518 m!89153))

(push 1)

(assert (not b!93518))

(assert (not b!93517))

(assert (not start!13160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61124 () Bool)

(declare-fun res!49132 () Bool)

(declare-fun e!51221 () Bool)

(assert (=> d!61124 (=> res!49132 e!51221)))

(assert (=> d!61124 (= res!49132 (is-Nil!759 lt!21227))))

(assert (=> d!61124 (= (forall!67 lt!21227 lambda!11157) e!51221)))

(declare-fun b!93523 () Bool)

(declare-fun e!51222 () Bool)

(assert (=> b!93523 (= e!51221 e!51222)))

(declare-fun res!49133 () Bool)

(assert (=> b!93523 (=> (not res!49133) (not e!51222))))

(declare-fun dynLambda!1137 (Int S!43) Bool)

(assert (=> b!93523 (= res!49133 (dynLambda!1137 lambda!11157 (h!1867 lt!21227)))))

(declare-fun b!93524 () Bool)

(assert (=> b!93524 (= e!51222 (forall!67 (t!49928 lt!21227) lambda!11157))))

(assert (= (and d!61124 (not res!49132)) b!93523))

(assert (= (and b!93523 res!49133) b!93524))

(declare-fun b_lambda!18903 () Bool)

(assert (=> (not b_lambda!18903) (not b!93523)))

(declare-fun m!89155 () Bool)

(assert (=> b!93523 m!89155))

(declare-fun m!89157 () Bool)

(assert (=> b!93524 m!89157))

(assert (=> b!93518 d!61124))

(declare-fun d!61126 () Bool)

(declare-fun c!22928 () Bool)

(assert (=> d!61126 (= c!22928 (is-Nil!759 lt!21227))))

(declare-fun e!51225 () (Set S!43))

(assert (=> d!61126 (= (content!184 lt!21227) e!51225)))

(declare-fun b!93529 () Bool)

(assert (=> b!93529 (= e!51225 (as emptyset (Set S!43)))))

(declare-fun b!93530 () Bool)

(assert (=> b!93530 (= e!51225 (union (insert (h!1867 lt!21227) (as emptyset (Set S!43))) (content!184 (t!49928 lt!21227))))))

(assert (= (and d!61126 c!22928) b!93529))

(assert (= (and d!61126 (not c!22928)) b!93530))

(declare-fun m!89159 () Bool)

(assert (=> b!93530 m!89159))

(declare-fun m!89161 () Bool)

(assert (=> b!93530 m!89161))

(assert (=> b!93517 d!61126))

(declare-fun d!61128 () Bool)

(declare-fun c!22929 () Bool)

(assert (=> d!61128 (= c!22929 (is-Nil!759 lt!21226))))

(declare-fun e!51226 () (Set S!43))

(assert (=> d!61128 (= (content!184 lt!21226) e!51226)))

(declare-fun b!93531 () Bool)

(assert (=> b!93531 (= e!51226 (as emptyset (Set S!43)))))

(declare-fun b!93532 () Bool)

(assert (=> b!93532 (= e!51226 (union (insert (h!1867 lt!21226) (as emptyset (Set S!43))) (content!184 (t!49928 lt!21226))))))

(assert (= (and d!61128 c!22929) b!93531))

(assert (= (and d!61128 (not c!22929)) b!93532))

(declare-fun m!89163 () Bool)

(assert (=> b!93532 m!89163))

(declare-fun m!89165 () Bool)

(assert (=> b!93532 m!89165))

(assert (=> b!93517 d!61128))

(declare-fun d!61130 () Bool)

(declare-fun lt!21230 () Int)

(assert (=> d!61130 (>= lt!21230 0)))

(declare-fun e!51229 () Int)

(assert (=> d!61130 (= lt!21230 e!51229)))

(declare-fun c!22932 () Bool)

(assert (=> d!61130 (= c!22932 (is-Nil!759 lt!21227))))

(assert (=> d!61130 (= (size!933 lt!21227) lt!21230)))

(declare-fun b!93537 () Bool)

(assert (=> b!93537 (= e!51229 0)))

(declare-fun b!93538 () Bool)

(assert (=> b!93538 (= e!51229 (+ 1 (size!933 (t!49928 lt!21227))))))

(assert (= (and d!61130 c!22932) b!93537))

(assert (= (and d!61130 (not c!22932)) b!93538))

(declare-fun m!89167 () Bool)

(assert (=> b!93538 m!89167))

(assert (=> start!13160 d!61130))

(declare-fun d!61132 () Bool)

(declare-fun lt!21231 () Int)

(assert (=> d!61132 (>= lt!21231 0)))

(declare-fun e!51230 () Int)

(assert (=> d!61132 (= lt!21231 e!51230)))

(declare-fun c!22933 () Bool)

(assert (=> d!61132 (= c!22933 (is-Nil!759 lt!21226))))

(assert (=> d!61132 (= (size!933 lt!21226) lt!21231)))

(declare-fun b!93539 () Bool)

(assert (=> b!93539 (= e!51230 0)))

(declare-fun b!93540 () Bool)

(assert (=> b!93540 (= e!51230 (+ 1 (size!933 (t!49928 lt!21226))))))

(assert (= (and d!61132 c!22933) b!93539))

(assert (= (and d!61132 (not c!22933)) b!93540))

(declare-fun m!89169 () Bool)

(assert (=> b!93540 m!89169))

(assert (=> start!13160 d!61132))

(declare-fun b_lambda!18905 () Bool)

(assert (= b_lambda!18903 (or b!93518 b_lambda!18905)))

(declare-fun bs!42233 () Bool)

(declare-fun d!61134 () Bool)

(assert (= bs!42233 (and d!61134 b!93518)))

(assert (=> bs!42233 (= (dynLambda!1137 lambda!11157 (h!1867 lt!21227)) (>= (amount!454 (h!1867 lt!21227)) 0))))

(assert (=> b!93523 d!61134))

(push 1)

(assert (not b!93530))

(assert (not b!93524))

(assert (not b!93540))

(assert (not b_lambda!18905))

(assert (not b!93532))

(assert (not b!93538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

