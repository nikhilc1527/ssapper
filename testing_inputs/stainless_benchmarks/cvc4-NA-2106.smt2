; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13176 () Bool)

(assert start!13176)

(declare-fun res!49153 () Bool)

(declare-fun e!51250 () Bool)

(assert (=> start!13176 (=> res!49153 e!51250)))

(declare-datatypes () ((P!14 (Charlie!14) (Alice!14) (Bob!14))))

(declare-datatypes () ((S!47 (S!48 (who!464 P!14) (amount!464 Int)))))

(declare-datatypes () ((List!821 (Cons!759 (h!1886 S!47) (t!49947 List!821)) (Nil!761))))

(declare-fun lt!21248 () List!821)

(declare-fun lt!21249 () List!821)

(declare-fun size!935 (List!821) Int)

(assert (=> start!13176 (= res!49153 (> (size!935 lt!21248) (size!935 lt!21249)))))

(declare-fun lt!21250 () P!14)

(assert (=> start!13176 (= lt!21248 (Cons!759 (S!48 lt!21250 2000) Nil!761))))

(assert (=> start!13176 (= lt!21249 (Cons!759 (S!48 lt!21250 2000) (Cons!759 (S!48 Charlie!14 (- 2000)) Nil!761)))))

(assert (=> start!13176 (= lt!21250 Alice!14)))

(assert (=> start!13176 e!51250))

(declare-fun b!93573 () Bool)

(declare-fun res!49152 () Bool)

(assert (=> b!93573 (=> res!49152 e!51250)))

(declare-fun content!186 (List!821) (Set S!47))

(assert (=> b!93573 (= res!49152 (not (subset (content!186 lt!21248) (content!186 lt!21249))))))

(declare-fun b!93574 () Bool)

(declare-fun lambda!11163 () Int)

(declare-fun forall!69 (List!821 Int) Bool)

(assert (=> b!93574 (= e!51250 (not (forall!69 lt!21248 lambda!11163)))))

(assert (= (and start!13176 (not res!49153)) b!93573))

(assert (= (and b!93573 (not res!49152)) b!93574))

(declare-fun m!89197 () Bool)

(assert (=> start!13176 m!89197))

(declare-fun m!89199 () Bool)

(assert (=> start!13176 m!89199))

(declare-fun m!89201 () Bool)

(assert (=> b!93573 m!89201))

(declare-fun m!89203 () Bool)

(assert (=> b!93573 m!89203))

(declare-fun m!89205 () Bool)

(assert (=> b!93574 m!89205))

(push 1)

(assert (not start!13176))

(assert (not b!93573))

(assert (not b!93574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61148 () Bool)

(declare-fun lt!21253 () Int)

(assert (=> d!61148 (>= lt!21253 0)))

(declare-fun e!51253 () Int)

(assert (=> d!61148 (= lt!21253 e!51253)))

(declare-fun c!22944 () Bool)

(assert (=> d!61148 (= c!22944 (is-Nil!761 lt!21248))))

(assert (=> d!61148 (= (size!935 lt!21248) lt!21253)))

(declare-fun b!93579 () Bool)

(assert (=> b!93579 (= e!51253 0)))

(declare-fun b!93580 () Bool)

(assert (=> b!93580 (= e!51253 (+ 1 (size!935 (t!49947 lt!21248))))))

(assert (= (and d!61148 c!22944) b!93579))

(assert (= (and d!61148 (not c!22944)) b!93580))

(declare-fun m!89207 () Bool)

(assert (=> b!93580 m!89207))

(assert (=> start!13176 d!61148))

(declare-fun d!61150 () Bool)

(declare-fun lt!21254 () Int)

(assert (=> d!61150 (>= lt!21254 0)))

(declare-fun e!51254 () Int)

(assert (=> d!61150 (= lt!21254 e!51254)))

(declare-fun c!22945 () Bool)

(assert (=> d!61150 (= c!22945 (is-Nil!761 lt!21249))))

(assert (=> d!61150 (= (size!935 lt!21249) lt!21254)))

(declare-fun b!93581 () Bool)

(assert (=> b!93581 (= e!51254 0)))

(declare-fun b!93582 () Bool)

(assert (=> b!93582 (= e!51254 (+ 1 (size!935 (t!49947 lt!21249))))))

(assert (= (and d!61150 c!22945) b!93581))

(assert (= (and d!61150 (not c!22945)) b!93582))

(declare-fun m!89209 () Bool)

(assert (=> b!93582 m!89209))

(assert (=> start!13176 d!61150))

(declare-fun d!61152 () Bool)

(declare-fun c!22948 () Bool)

(assert (=> d!61152 (= c!22948 (is-Nil!761 lt!21248))))

(declare-fun e!51257 () (Set S!47))

(assert (=> d!61152 (= (content!186 lt!21248) e!51257)))

(declare-fun b!93587 () Bool)

(assert (=> b!93587 (= e!51257 (as emptyset (Set S!47)))))

(declare-fun b!93588 () Bool)

(assert (=> b!93588 (= e!51257 (union (insert (h!1886 lt!21248) (as emptyset (Set S!47))) (content!186 (t!49947 lt!21248))))))

(assert (= (and d!61152 c!22948) b!93587))

(assert (= (and d!61152 (not c!22948)) b!93588))

(declare-fun m!89211 () Bool)

(assert (=> b!93588 m!89211))

(declare-fun m!89213 () Bool)

(assert (=> b!93588 m!89213))

(assert (=> b!93573 d!61152))

(declare-fun d!61154 () Bool)

(declare-fun c!22949 () Bool)

(assert (=> d!61154 (= c!22949 (is-Nil!761 lt!21249))))

(declare-fun e!51258 () (Set S!47))

(assert (=> d!61154 (= (content!186 lt!21249) e!51258)))

(declare-fun b!93589 () Bool)

(assert (=> b!93589 (= e!51258 (as emptyset (Set S!47)))))

(declare-fun b!93590 () Bool)

(assert (=> b!93590 (= e!51258 (union (insert (h!1886 lt!21249) (as emptyset (Set S!47))) (content!186 (t!49947 lt!21249))))))

(assert (= (and d!61154 c!22949) b!93589))

(assert (= (and d!61154 (not c!22949)) b!93590))

(declare-fun m!89215 () Bool)

(assert (=> b!93590 m!89215))

(declare-fun m!89217 () Bool)

(assert (=> b!93590 m!89217))

(assert (=> b!93573 d!61154))

(declare-fun d!61156 () Bool)

(declare-fun res!49158 () Bool)

(declare-fun e!51263 () Bool)

(assert (=> d!61156 (=> res!49158 e!51263)))

(assert (=> d!61156 (= res!49158 (is-Nil!761 lt!21248))))

(assert (=> d!61156 (= (forall!69 lt!21248 lambda!11163) e!51263)))

(declare-fun b!93595 () Bool)

(declare-fun e!51264 () Bool)

(assert (=> b!93595 (= e!51263 e!51264)))

(declare-fun res!49159 () Bool)

(assert (=> b!93595 (=> (not res!49159) (not e!51264))))

(declare-fun dynLambda!1139 (Int S!47) Bool)

(assert (=> b!93595 (= res!49159 (dynLambda!1139 lambda!11163 (h!1886 lt!21248)))))

(declare-fun b!93596 () Bool)

(assert (=> b!93596 (= e!51264 (forall!69 (t!49947 lt!21248) lambda!11163))))

(assert (= (and d!61156 (not res!49158)) b!93595))

(assert (= (and b!93595 res!49159) b!93596))

(declare-fun b_lambda!18911 () Bool)

(assert (=> (not b_lambda!18911) (not b!93595)))

(declare-fun m!89219 () Bool)

(assert (=> b!93595 m!89219))

(declare-fun m!89221 () Bool)

(assert (=> b!93596 m!89221))

(assert (=> b!93574 d!61156))

(declare-fun b_lambda!18913 () Bool)

(assert (= b_lambda!18911 (or b!93574 b_lambda!18913)))

(declare-fun bs!42237 () Bool)

(declare-fun d!61158 () Bool)

(assert (= bs!42237 (and d!61158 b!93574)))

(assert (=> bs!42237 (= (dynLambda!1139 lambda!11163 (h!1886 lt!21248)) (>= (amount!464 (h!1886 lt!21248)) 0))))

(assert (=> b!93595 d!61158))

(push 1)

(assert (not b_lambda!18913))

(assert (not b!93582))

(assert (not b!93590))

(assert (not b!93588))

(assert (not b!93596))

(assert (not b!93580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61160 () Bool)

(declare-fun lt!21255 () Int)

(assert (=> d!61160 (>= lt!21255 0)))

(declare-fun e!51265 () Int)

(assert (=> d!61160 (= lt!21255 e!51265)))

(declare-fun c!22950 () Bool)

(assert (=> d!61160 (= c!22950 (is-Nil!761 (t!49947 lt!21249)))))

(assert (=> d!61160 (= (size!935 (t!49947 lt!21249)) lt!21255)))

(declare-fun b!93597 () Bool)

(assert (=> b!93597 (= e!51265 0)))

(declare-fun b!93598 () Bool)

(assert (=> b!93598 (= e!51265 (+ 1 (size!935 (t!49947 (t!49947 lt!21249)))))))

(assert (= (and d!61160 c!22950) b!93597))

(assert (= (and d!61160 (not c!22950)) b!93598))

(declare-fun m!89223 () Bool)

(assert (=> b!93598 m!89223))

(assert (=> b!93582 d!61160))

(declare-fun d!61162 () Bool)

(declare-fun c!22951 () Bool)

(assert (=> d!61162 (= c!22951 (is-Nil!761 (t!49947 lt!21248)))))

(declare-fun e!51266 () (Set S!47))

(assert (=> d!61162 (= (content!186 (t!49947 lt!21248)) e!51266)))

(declare-fun b!93599 () Bool)

(assert (=> b!93599 (= e!51266 (as emptyset (Set S!47)))))

(declare-fun b!93600 () Bool)

(assert (=> b!93600 (= e!51266 (union (insert (h!1886 (t!49947 lt!21248)) (as emptyset (Set S!47))) (content!186 (t!49947 (t!49947 lt!21248)))))))

(assert (= (and d!61162 c!22951) b!93599))

(assert (= (and d!61162 (not c!22951)) b!93600))

(declare-fun m!89225 () Bool)

(assert (=> b!93600 m!89225))

(declare-fun m!89227 () Bool)

(assert (=> b!93600 m!89227))

(assert (=> b!93588 d!61162))

(declare-fun d!61164 () Bool)

(declare-fun lt!21256 () Int)

(assert (=> d!61164 (>= lt!21256 0)))

(declare-fun e!51267 () Int)

(assert (=> d!61164 (= lt!21256 e!51267)))

(declare-fun c!22952 () Bool)

(assert (=> d!61164 (= c!22952 (is-Nil!761 (t!49947 lt!21248)))))

(assert (=> d!61164 (= (size!935 (t!49947 lt!21248)) lt!21256)))

(declare-fun b!93601 () Bool)

(assert (=> b!93601 (= e!51267 0)))

(declare-fun b!93602 () Bool)

(assert (=> b!93602 (= e!51267 (+ 1 (size!935 (t!49947 (t!49947 lt!21248)))))))

(assert (= (and d!61164 c!22952) b!93601))

(assert (= (and d!61164 (not c!22952)) b!93602))

(declare-fun m!89229 () Bool)

(assert (=> b!93602 m!89229))

(assert (=> b!93580 d!61164))

(declare-fun d!61166 () Bool)

(declare-fun c!22953 () Bool)

(assert (=> d!61166 (= c!22953 (is-Nil!761 (t!49947 lt!21249)))))

(declare-fun e!51268 () (Set S!47))

(assert (=> d!61166 (= (content!186 (t!49947 lt!21249)) e!51268)))

(declare-fun b!93603 () Bool)

(assert (=> b!93603 (= e!51268 (as emptyset (Set S!47)))))

(declare-fun b!93604 () Bool)

(assert (=> b!93604 (= e!51268 (union (insert (h!1886 (t!49947 lt!21249)) (as emptyset (Set S!47))) (content!186 (t!49947 (t!49947 lt!21249)))))))

(assert (= (and d!61166 c!22953) b!93603))

(assert (= (and d!61166 (not c!22953)) b!93604))

(declare-fun m!89231 () Bool)

(assert (=> b!93604 m!89231))

(declare-fun m!89233 () Bool)

(assert (=> b!93604 m!89233))

(assert (=> b!93590 d!61166))

(declare-fun d!61168 () Bool)

(declare-fun res!49160 () Bool)

(declare-fun e!51269 () Bool)

(assert (=> d!61168 (=> res!49160 e!51269)))

(assert (=> d!61168 (= res!49160 (is-Nil!761 (t!49947 lt!21248)))))

(assert (=> d!61168 (= (forall!69 (t!49947 lt!21248) lambda!11163) e!51269)))

(declare-fun b!93605 () Bool)

(declare-fun e!51270 () Bool)

(assert (=> b!93605 (= e!51269 e!51270)))

(declare-fun res!49161 () Bool)

(assert (=> b!93605 (=> (not res!49161) (not e!51270))))

(assert (=> b!93605 (= res!49161 (dynLambda!1139 lambda!11163 (h!1886 (t!49947 lt!21248))))))

(declare-fun b!93606 () Bool)

(assert (=> b!93606 (= e!51270 (forall!69 (t!49947 (t!49947 lt!21248)) lambda!11163))))

(assert (= (and d!61168 (not res!49160)) b!93605))

(assert (= (and b!93605 res!49161) b!93606))

(declare-fun b_lambda!18915 () Bool)

(assert (=> (not b_lambda!18915) (not b!93605)))

(declare-fun m!89235 () Bool)

(assert (=> b!93605 m!89235))

(declare-fun m!89237 () Bool)

(assert (=> b!93606 m!89237))

(assert (=> b!93596 d!61168))

(declare-fun b_lambda!18917 () Bool)

(assert (= b_lambda!18915 (or b!93574 b_lambda!18917)))

(declare-fun bs!42238 () Bool)

(declare-fun d!61170 () Bool)

(assert (= bs!42238 (and d!61170 b!93574)))

(assert (=> bs!42238 (= (dynLambda!1139 lambda!11163 (h!1886 (t!49947 lt!21248))) (>= (amount!464 (h!1886 (t!49947 lt!21248))) 0))))

(assert (=> b!93605 d!61170))

(push 1)

(assert (not b!93600))

(assert (not b_lambda!18913))

(assert (not b!93606))

(assert (not b!93604))

(assert (not b_lambda!18917))

(assert (not b!93602))

(assert (not b!93598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

