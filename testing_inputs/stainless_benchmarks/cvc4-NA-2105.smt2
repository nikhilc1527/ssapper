; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13168 () Bool)

(assert start!13168)

(declare-fun res!49139 () Bool)

(declare-fun e!51233 () Bool)

(assert (=> start!13168 (=> res!49139 e!51233)))

(declare-datatypes () ((P!13 (Charlie!13) (Alice!13) (Bob!13))))

(declare-datatypes () ((S!45 (S!46 (who!459 P!13) (amount!459 Int)))))

(declare-datatypes () ((List!820 (Cons!758 (h!1875 S!45) (t!49936 List!820)) (Nil!760))))

(declare-fun lt!21237 () List!820)

(declare-fun lt!21236 () List!820)

(declare-fun size!934 (List!820) Int)

(assert (=> start!13168 (= res!49139 (> (size!934 lt!21237) (size!934 lt!21236)))))

(assert (=> start!13168 (= lt!21237 Nil!760)))

(assert (=> start!13168 (= lt!21236 (Cons!758 (S!46 Charlie!13 (- 2000)) Nil!760))))

(assert (=> start!13168 e!51233))

(declare-fun b!93545 () Bool)

(declare-fun res!49140 () Bool)

(assert (=> b!93545 (=> res!49140 e!51233)))

(declare-fun content!185 (List!820) (Set S!45))

(assert (=> b!93545 (= res!49140 (not (subset (content!185 lt!21237) (content!185 lt!21236))))))

(declare-fun b!93546 () Bool)

(declare-fun lambda!11160 () Int)

(declare-fun forall!68 (List!820 Int) Bool)

(assert (=> b!93546 (= e!51233 (not (forall!68 lt!21237 lambda!11160)))))

(assert (= (and start!13168 (not res!49139)) b!93545))

(assert (= (and b!93545 (not res!49140)) b!93546))

(declare-fun m!89171 () Bool)

(assert (=> start!13168 m!89171))

(declare-fun m!89173 () Bool)

(assert (=> start!13168 m!89173))

(declare-fun m!89175 () Bool)

(assert (=> b!93545 m!89175))

(declare-fun m!89177 () Bool)

(assert (=> b!93545 m!89177))

(declare-fun m!89179 () Bool)

(assert (=> b!93546 m!89179))

(push 1)

(assert (not b!93545))

(assert (not start!13168))

(assert (not b!93546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61136 () Bool)

(declare-fun c!22936 () Bool)

(assert (=> d!61136 (= c!22936 (is-Nil!760 lt!21237))))

(declare-fun e!51236 () (Set S!45))

(assert (=> d!61136 (= (content!185 lt!21237) e!51236)))

(declare-fun b!93551 () Bool)

(assert (=> b!93551 (= e!51236 (as emptyset (Set S!45)))))

(declare-fun b!93552 () Bool)

(assert (=> b!93552 (= e!51236 (union (insert (h!1875 lt!21237) (as emptyset (Set S!45))) (content!185 (t!49936 lt!21237))))))

(assert (= (and d!61136 c!22936) b!93551))

(assert (= (and d!61136 (not c!22936)) b!93552))

(declare-fun m!89181 () Bool)

(assert (=> b!93552 m!89181))

(declare-fun m!89183 () Bool)

(assert (=> b!93552 m!89183))

(assert (=> b!93545 d!61136))

(declare-fun d!61138 () Bool)

(declare-fun c!22937 () Bool)

(assert (=> d!61138 (= c!22937 (is-Nil!760 lt!21236))))

(declare-fun e!51237 () (Set S!45))

(assert (=> d!61138 (= (content!185 lt!21236) e!51237)))

(declare-fun b!93553 () Bool)

(assert (=> b!93553 (= e!51237 (as emptyset (Set S!45)))))

(declare-fun b!93554 () Bool)

(assert (=> b!93554 (= e!51237 (union (insert (h!1875 lt!21236) (as emptyset (Set S!45))) (content!185 (t!49936 lt!21236))))))

(assert (= (and d!61138 c!22937) b!93553))

(assert (= (and d!61138 (not c!22937)) b!93554))

(declare-fun m!89185 () Bool)

(assert (=> b!93554 m!89185))

(declare-fun m!89187 () Bool)

(assert (=> b!93554 m!89187))

(assert (=> b!93545 d!61138))

(declare-fun d!61140 () Bool)

(declare-fun lt!21240 () Int)

(assert (=> d!61140 (>= lt!21240 0)))

(declare-fun e!51240 () Int)

(assert (=> d!61140 (= lt!21240 e!51240)))

(declare-fun c!22940 () Bool)

(assert (=> d!61140 (= c!22940 (is-Nil!760 lt!21237))))

(assert (=> d!61140 (= (size!934 lt!21237) lt!21240)))

(declare-fun b!93559 () Bool)

(assert (=> b!93559 (= e!51240 0)))

(declare-fun b!93560 () Bool)

(assert (=> b!93560 (= e!51240 (+ 1 (size!934 (t!49936 lt!21237))))))

(assert (= (and d!61140 c!22940) b!93559))

(assert (= (and d!61140 (not c!22940)) b!93560))

(declare-fun m!89189 () Bool)

(assert (=> b!93560 m!89189))

(assert (=> start!13168 d!61140))

(declare-fun d!61142 () Bool)

(declare-fun lt!21241 () Int)

(assert (=> d!61142 (>= lt!21241 0)))

(declare-fun e!51241 () Int)

(assert (=> d!61142 (= lt!21241 e!51241)))

(declare-fun c!22941 () Bool)

(assert (=> d!61142 (= c!22941 (is-Nil!760 lt!21236))))

(assert (=> d!61142 (= (size!934 lt!21236) lt!21241)))

(declare-fun b!93561 () Bool)

(assert (=> b!93561 (= e!51241 0)))

(declare-fun b!93562 () Bool)

(assert (=> b!93562 (= e!51241 (+ 1 (size!934 (t!49936 lt!21236))))))

(assert (= (and d!61142 c!22941) b!93561))

(assert (= (and d!61142 (not c!22941)) b!93562))

(declare-fun m!89191 () Bool)

(assert (=> b!93562 m!89191))

(assert (=> start!13168 d!61142))

(declare-fun d!61144 () Bool)

(declare-fun res!49145 () Bool)

(declare-fun e!51246 () Bool)

(assert (=> d!61144 (=> res!49145 e!51246)))

(assert (=> d!61144 (= res!49145 (is-Nil!760 lt!21237))))

(assert (=> d!61144 (= (forall!68 lt!21237 lambda!11160) e!51246)))

(declare-fun b!93567 () Bool)

(declare-fun e!51247 () Bool)

(assert (=> b!93567 (= e!51246 e!51247)))

(declare-fun res!49146 () Bool)

(assert (=> b!93567 (=> (not res!49146) (not e!51247))))

(declare-fun dynLambda!1138 (Int S!45) Bool)

(assert (=> b!93567 (= res!49146 (dynLambda!1138 lambda!11160 (h!1875 lt!21237)))))

(declare-fun b!93568 () Bool)

(assert (=> b!93568 (= e!51247 (forall!68 (t!49936 lt!21237) lambda!11160))))

(assert (= (and d!61144 (not res!49145)) b!93567))

(assert (= (and b!93567 res!49146) b!93568))

(declare-fun b_lambda!18907 () Bool)

(assert (=> (not b_lambda!18907) (not b!93567)))

(declare-fun m!89193 () Bool)

(assert (=> b!93567 m!89193))

(declare-fun m!89195 () Bool)

(assert (=> b!93568 m!89195))

(assert (=> b!93546 d!61144))

(declare-fun b_lambda!18909 () Bool)

(assert (= b_lambda!18907 (or b!93546 b_lambda!18909)))

(declare-fun bs!42235 () Bool)

(declare-fun d!61146 () Bool)

(assert (= bs!42235 (and d!61146 b!93546)))

(assert (=> bs!42235 (= (dynLambda!1138 lambda!11160 (h!1875 lt!21237)) (>= (amount!459 (h!1875 lt!21237)) 0))))

(assert (=> b!93567 d!61146))

(push 1)

(assert (not b_lambda!18909))

(assert (not b!93560))

(assert (not b!93552))

(assert (not b!93554))

(assert (not b!93568))

(assert (not b!93562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

