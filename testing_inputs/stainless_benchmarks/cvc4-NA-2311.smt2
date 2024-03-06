; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13602 () Bool)

(assert start!13602)

(declare-fun res!49183 () Bool)

(declare-fun e!51300 () Bool)

(assert (=> start!13602 (=> res!49183 e!51300)))

(declare-datatypes () ((P!23 (Charlie!23) (Alice!23) (Bob!23))))

(declare-datatypes () ((S!65 (S!66 (who!931 P!23) (amount!931 Int)))))

(declare-datatypes () ((List!826 (Cons!764 (h!2615 S!65) (t!50686 List!826)) (Nil!766))))

(declare-fun lt!21297 () List!826)

(declare-fun lt!21296 () List!826)

(declare-fun size!940 (List!826) Int)

(assert (=> start!13602 (= res!49183 (> (size!940 lt!21297) (size!940 lt!21296)))))

(assert (=> start!13602 (= lt!21297 (Cons!764 (h!2615 lt!21296) Nil!766))))

(assert (=> start!13602 (= lt!21296 (Cons!764 (S!66 Charlie!23 (- 2000)) Nil!766))))

(assert (=> start!13602 e!51300))

(declare-fun b!93659 () Bool)

(declare-fun res!49184 () Bool)

(assert (=> b!93659 (=> res!49184 e!51300)))

(declare-fun content!188 (List!826) (Set S!65))

(assert (=> b!93659 (= res!49184 (not (subset (content!188 lt!21297) (content!188 lt!21296))))))

(declare-fun b!93660 () Bool)

(declare-fun lambda!11169 () Int)

(declare-fun forall!71 (List!826 Int) Bool)

(assert (=> b!93660 (= e!51300 (not (forall!71 lt!21297 lambda!11169)))))

(assert (= (and start!13602 (not res!49183)) b!93659))

(assert (= (and b!93659 (not res!49184)) b!93660))

(declare-fun m!89287 () Bool)

(assert (=> start!13602 m!89287))

(declare-fun m!89289 () Bool)

(assert (=> start!13602 m!89289))

(declare-fun m!89291 () Bool)

(assert (=> b!93659 m!89291))

(declare-fun m!89293 () Bool)

(assert (=> b!93659 m!89293))

(declare-fun m!89295 () Bool)

(assert (=> b!93660 m!89295))

(push 1)

(assert (not b!93660))

(assert (not start!13602))

(assert (not b!93659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61196 () Bool)

(declare-fun res!49189 () Bool)

(declare-fun e!51305 () Bool)

(assert (=> d!61196 (=> res!49189 e!51305)))

(assert (=> d!61196 (= res!49189 (is-Nil!766 lt!21297))))

(assert (=> d!61196 (= (forall!71 lt!21297 lambda!11169) e!51305)))

(declare-fun b!93665 () Bool)

(declare-fun e!51306 () Bool)

(assert (=> b!93665 (= e!51305 e!51306)))

(declare-fun res!49190 () Bool)

(assert (=> b!93665 (=> (not res!49190) (not e!51306))))

(declare-fun dynLambda!1141 (Int S!65) Bool)

(assert (=> b!93665 (= res!49190 (dynLambda!1141 lambda!11169 (h!2615 lt!21297)))))

(declare-fun b!93666 () Bool)

(assert (=> b!93666 (= e!51306 (forall!71 (t!50686 lt!21297) lambda!11169))))

(assert (= (and d!61196 (not res!49189)) b!93665))

(assert (= (and b!93665 res!49190) b!93666))

(declare-fun b_lambda!18923 () Bool)

(assert (=> (not b_lambda!18923) (not b!93665)))

(declare-fun m!89297 () Bool)

(assert (=> b!93665 m!89297))

(declare-fun m!89299 () Bool)

(assert (=> b!93666 m!89299))

(assert (=> b!93660 d!61196))

(declare-fun d!61198 () Bool)

(declare-fun lt!21300 () Int)

(assert (=> d!61198 (>= lt!21300 0)))

(declare-fun e!51309 () Int)

(assert (=> d!61198 (= lt!21300 e!51309)))

(declare-fun c!22974 () Bool)

(assert (=> d!61198 (= c!22974 (is-Nil!766 lt!21297))))

(assert (=> d!61198 (= (size!940 lt!21297) lt!21300)))

(declare-fun b!93671 () Bool)

(assert (=> b!93671 (= e!51309 0)))

(declare-fun b!93672 () Bool)

(assert (=> b!93672 (= e!51309 (+ 1 (size!940 (t!50686 lt!21297))))))

(assert (= (and d!61198 c!22974) b!93671))

(assert (= (and d!61198 (not c!22974)) b!93672))

(declare-fun m!89301 () Bool)

(assert (=> b!93672 m!89301))

(assert (=> start!13602 d!61198))

(declare-fun d!61200 () Bool)

(declare-fun lt!21301 () Int)

(assert (=> d!61200 (>= lt!21301 0)))

(declare-fun e!51310 () Int)

(assert (=> d!61200 (= lt!21301 e!51310)))

(declare-fun c!22975 () Bool)

(assert (=> d!61200 (= c!22975 (is-Nil!766 lt!21296))))

(assert (=> d!61200 (= (size!940 lt!21296) lt!21301)))

(declare-fun b!93673 () Bool)

(assert (=> b!93673 (= e!51310 0)))

(declare-fun b!93674 () Bool)

(assert (=> b!93674 (= e!51310 (+ 1 (size!940 (t!50686 lt!21296))))))

(assert (= (and d!61200 c!22975) b!93673))

(assert (= (and d!61200 (not c!22975)) b!93674))

(declare-fun m!89303 () Bool)

(assert (=> b!93674 m!89303))

(assert (=> start!13602 d!61200))

(declare-fun d!61202 () Bool)

(declare-fun c!22978 () Bool)

(assert (=> d!61202 (= c!22978 (is-Nil!766 lt!21297))))

(declare-fun e!51313 () (Set S!65))

(assert (=> d!61202 (= (content!188 lt!21297) e!51313)))

(declare-fun b!93679 () Bool)

(assert (=> b!93679 (= e!51313 (as emptyset (Set S!65)))))

(declare-fun b!93680 () Bool)

(assert (=> b!93680 (= e!51313 (union (insert (h!2615 lt!21297) (as emptyset (Set S!65))) (content!188 (t!50686 lt!21297))))))

(assert (= (and d!61202 c!22978) b!93679))

(assert (= (and d!61202 (not c!22978)) b!93680))

(declare-fun m!89305 () Bool)

(assert (=> b!93680 m!89305))

(declare-fun m!89307 () Bool)

(assert (=> b!93680 m!89307))

(assert (=> b!93659 d!61202))

(declare-fun d!61204 () Bool)

(declare-fun c!22979 () Bool)

(assert (=> d!61204 (= c!22979 (is-Nil!766 lt!21296))))

(declare-fun e!51314 () (Set S!65))

(assert (=> d!61204 (= (content!188 lt!21296) e!51314)))

(declare-fun b!93681 () Bool)

(assert (=> b!93681 (= e!51314 (as emptyset (Set S!65)))))

(declare-fun b!93682 () Bool)

(assert (=> b!93682 (= e!51314 (union (insert (h!2615 lt!21296) (as emptyset (Set S!65))) (content!188 (t!50686 lt!21296))))))

(assert (= (and d!61204 c!22979) b!93681))

(assert (= (and d!61204 (not c!22979)) b!93682))

(declare-fun m!89309 () Bool)

(assert (=> b!93682 m!89309))

(declare-fun m!89311 () Bool)

(assert (=> b!93682 m!89311))

(assert (=> b!93659 d!61204))

(declare-fun b_lambda!18925 () Bool)

(assert (= b_lambda!18923 (or b!93660 b_lambda!18925)))

(declare-fun bs!42448 () Bool)

(declare-fun d!61206 () Bool)

(assert (= bs!42448 (and d!61206 b!93660)))

(assert (=> bs!42448 (= (dynLambda!1141 lambda!11169 (h!2615 lt!21297)) (< (amount!931 (h!2615 lt!21297)) 0))))

(assert (=> b!93665 d!61206))

(push 1)

(assert (not b!93666))

(assert (not b!93682))

(assert (not b!93674))

(assert (not b!93680))

(assert (not b_lambda!18925))

(assert (not b!93672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61208 () Bool)

(declare-fun lt!21302 () Int)

(assert (=> d!61208 (>= lt!21302 0)))

(declare-fun e!51315 () Int)

(assert (=> d!61208 (= lt!21302 e!51315)))

(declare-fun c!22980 () Bool)

(assert (=> d!61208 (= c!22980 (is-Nil!766 (t!50686 lt!21297)))))

(assert (=> d!61208 (= (size!940 (t!50686 lt!21297)) lt!21302)))

(declare-fun b!93683 () Bool)

(assert (=> b!93683 (= e!51315 0)))

(declare-fun b!93684 () Bool)

(assert (=> b!93684 (= e!51315 (+ 1 (size!940 (t!50686 (t!50686 lt!21297)))))))

(assert (= (and d!61208 c!22980) b!93683))

(assert (= (and d!61208 (not c!22980)) b!93684))

(declare-fun m!89313 () Bool)

(assert (=> b!93684 m!89313))

(assert (=> b!93672 d!61208))

(declare-fun d!61210 () Bool)

(declare-fun c!22981 () Bool)

(assert (=> d!61210 (= c!22981 (is-Nil!766 (t!50686 lt!21296)))))

(declare-fun e!51316 () (Set S!65))

(assert (=> d!61210 (= (content!188 (t!50686 lt!21296)) e!51316)))

(declare-fun b!93685 () Bool)

(assert (=> b!93685 (= e!51316 (as emptyset (Set S!65)))))

(declare-fun b!93686 () Bool)

(assert (=> b!93686 (= e!51316 (union (insert (h!2615 (t!50686 lt!21296)) (as emptyset (Set S!65))) (content!188 (t!50686 (t!50686 lt!21296)))))))

(assert (= (and d!61210 c!22981) b!93685))

(assert (= (and d!61210 (not c!22981)) b!93686))

(declare-fun m!89315 () Bool)

(assert (=> b!93686 m!89315))

(declare-fun m!89317 () Bool)

(assert (=> b!93686 m!89317))

(assert (=> b!93682 d!61210))

(declare-fun d!61212 () Bool)

(declare-fun lt!21303 () Int)

(assert (=> d!61212 (>= lt!21303 0)))

(declare-fun e!51317 () Int)

(assert (=> d!61212 (= lt!21303 e!51317)))

(declare-fun c!22982 () Bool)

(assert (=> d!61212 (= c!22982 (is-Nil!766 (t!50686 lt!21296)))))

(assert (=> d!61212 (= (size!940 (t!50686 lt!21296)) lt!21303)))

(declare-fun b!93687 () Bool)

(assert (=> b!93687 (= e!51317 0)))

(declare-fun b!93688 () Bool)

(assert (=> b!93688 (= e!51317 (+ 1 (size!940 (t!50686 (t!50686 lt!21296)))))))

(assert (= (and d!61212 c!22982) b!93687))

(assert (= (and d!61212 (not c!22982)) b!93688))

(declare-fun m!89319 () Bool)

(assert (=> b!93688 m!89319))

(assert (=> b!93674 d!61212))

(declare-fun d!61214 () Bool)

(declare-fun c!22983 () Bool)

(assert (=> d!61214 (= c!22983 (is-Nil!766 (t!50686 lt!21297)))))

(declare-fun e!51318 () (Set S!65))

(assert (=> d!61214 (= (content!188 (t!50686 lt!21297)) e!51318)))

(declare-fun b!93689 () Bool)

(assert (=> b!93689 (= e!51318 (as emptyset (Set S!65)))))

(declare-fun b!93690 () Bool)

(assert (=> b!93690 (= e!51318 (union (insert (h!2615 (t!50686 lt!21297)) (as emptyset (Set S!65))) (content!188 (t!50686 (t!50686 lt!21297)))))))

(assert (= (and d!61214 c!22983) b!93689))

(assert (= (and d!61214 (not c!22983)) b!93690))

(declare-fun m!89321 () Bool)

(assert (=> b!93690 m!89321))

(declare-fun m!89323 () Bool)

(assert (=> b!93690 m!89323))

(assert (=> b!93680 d!61214))

(declare-fun d!61216 () Bool)

(declare-fun res!49191 () Bool)

(declare-fun e!51319 () Bool)

(assert (=> d!61216 (=> res!49191 e!51319)))

(assert (=> d!61216 (= res!49191 (is-Nil!766 (t!50686 lt!21297)))))

(assert (=> d!61216 (= (forall!71 (t!50686 lt!21297) lambda!11169) e!51319)))

(declare-fun b!93691 () Bool)

(declare-fun e!51320 () Bool)

(assert (=> b!93691 (= e!51319 e!51320)))

(declare-fun res!49192 () Bool)

(assert (=> b!93691 (=> (not res!49192) (not e!51320))))

(assert (=> b!93691 (= res!49192 (dynLambda!1141 lambda!11169 (h!2615 (t!50686 lt!21297))))))

(declare-fun b!93692 () Bool)

(assert (=> b!93692 (= e!51320 (forall!71 (t!50686 (t!50686 lt!21297)) lambda!11169))))

(assert (= (and d!61216 (not res!49191)) b!93691))

(assert (= (and b!93691 res!49192) b!93692))

(declare-fun b_lambda!18927 () Bool)

(assert (=> (not b_lambda!18927) (not b!93691)))

(declare-fun m!89325 () Bool)

(assert (=> b!93691 m!89325))

(declare-fun m!89327 () Bool)

(assert (=> b!93692 m!89327))

(assert (=> b!93666 d!61216))

(declare-fun b_lambda!18929 () Bool)

(assert (= b_lambda!18927 (or b!93660 b_lambda!18929)))

(declare-fun bs!42449 () Bool)

(declare-fun d!61218 () Bool)

(assert (= bs!42449 (and d!61218 b!93660)))

(assert (=> bs!42449 (= (dynLambda!1141 lambda!11169 (h!2615 (t!50686 lt!21297))) (< (amount!931 (h!2615 (t!50686 lt!21297))) 0))))

(assert (=> b!93691 d!61218))

(push 1)

(assert (not b!93684))

(assert (not b!93690))

(assert (not b_lambda!18929))

(assert (not b!93692))

(assert (not b!93688))

(assert (not b_lambda!18925))

(assert (not b!93686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

