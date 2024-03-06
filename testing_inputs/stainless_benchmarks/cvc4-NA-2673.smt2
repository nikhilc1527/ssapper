; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14378 () Bool)

(assert start!14378)

(declare-fun res!49274 () Bool)

(declare-fun e!51454 () Bool)

(assert (=> start!14378 (=> res!49274 e!51454)))

(declare-datatypes () ((P!45 (Charlie!45) (Alice!45) (Bob!45))))

(declare-datatypes () ((S!109 (S!110 (who!1876 P!45) (amount!1876 Int)))))

(declare-datatypes () ((List!842 (Cons!780 (h!4071 S!109) (t!52224 List!842)) (Nil!782))))

(declare-fun lt!21433 () List!842)

(declare-fun lt!21432 () List!842)

(declare-fun size!956 (List!842) Int)

(assert (=> start!14378 (= res!49274 (> (size!956 lt!21433) (size!956 lt!21432)))))

(assert (=> start!14378 (= lt!21433 (Cons!780 (h!4071 lt!21432) Nil!782))))

(assert (=> start!14378 (= lt!21432 (Cons!780 (S!110 Charlie!45 (- 2000)) Nil!782))))

(assert (=> start!14378 e!51454))

(declare-fun b!93925 () Bool)

(declare-fun res!49273 () Bool)

(assert (=> b!93925 (=> res!49273 e!51454)))

(declare-fun content!194 (List!842) (Set S!109))

(assert (=> b!93925 (= res!49273 (not (subset (content!194 lt!21433) (content!194 lt!21432))))))

(declare-fun b!93926 () Bool)

(declare-fun lambda!11187 () Int)

(declare-fun forall!77 (List!842 Int) Bool)

(assert (=> b!93926 (= e!51454 (not (forall!77 lt!21433 lambda!11187)))))

(assert (= (and start!14378 (not res!49274)) b!93925))

(assert (= (and b!93925 (not res!49273)) b!93926))

(declare-fun m!89555 () Bool)

(assert (=> start!14378 m!89555))

(declare-fun m!89557 () Bool)

(assert (=> start!14378 m!89557))

(declare-fun m!89559 () Bool)

(assert (=> b!93925 m!89559))

(declare-fun m!89561 () Bool)

(assert (=> b!93925 m!89561))

(declare-fun m!89563 () Bool)

(assert (=> b!93926 m!89563))

(push 1)

(assert (not b!93925))

(assert (not start!14378))

(assert (not b!93926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61340 () Bool)

(declare-fun c!23068 () Bool)

(assert (=> d!61340 (= c!23068 (is-Nil!782 lt!21433))))

(declare-fun e!51457 () (Set S!109))

(assert (=> d!61340 (= (content!194 lt!21433) e!51457)))

(declare-fun b!93931 () Bool)

(assert (=> b!93931 (= e!51457 (as emptyset (Set S!109)))))

(declare-fun b!93932 () Bool)

(assert (=> b!93932 (= e!51457 (union (insert (h!4071 lt!21433) (as emptyset (Set S!109))) (content!194 (t!52224 lt!21433))))))

(assert (= (and d!61340 c!23068) b!93931))

(assert (= (and d!61340 (not c!23068)) b!93932))

(declare-fun m!89565 () Bool)

(assert (=> b!93932 m!89565))

(declare-fun m!89567 () Bool)

(assert (=> b!93932 m!89567))

(assert (=> b!93925 d!61340))

(declare-fun d!61342 () Bool)

(declare-fun c!23069 () Bool)

(assert (=> d!61342 (= c!23069 (is-Nil!782 lt!21432))))

(declare-fun e!51458 () (Set S!109))

(assert (=> d!61342 (= (content!194 lt!21432) e!51458)))

(declare-fun b!93933 () Bool)

(assert (=> b!93933 (= e!51458 (as emptyset (Set S!109)))))

(declare-fun b!93934 () Bool)

(assert (=> b!93934 (= e!51458 (union (insert (h!4071 lt!21432) (as emptyset (Set S!109))) (content!194 (t!52224 lt!21432))))))

(assert (= (and d!61342 c!23069) b!93933))

(assert (= (and d!61342 (not c!23069)) b!93934))

(declare-fun m!89569 () Bool)

(assert (=> b!93934 m!89569))

(declare-fun m!89571 () Bool)

(assert (=> b!93934 m!89571))

(assert (=> b!93925 d!61342))

(declare-fun d!61344 () Bool)

(declare-fun lt!21436 () Int)

(assert (=> d!61344 (>= lt!21436 0)))

(declare-fun e!51461 () Int)

(assert (=> d!61344 (= lt!21436 e!51461)))

(declare-fun c!23072 () Bool)

(assert (=> d!61344 (= c!23072 (is-Nil!782 lt!21433))))

(assert (=> d!61344 (= (size!956 lt!21433) lt!21436)))

(declare-fun b!93939 () Bool)

(assert (=> b!93939 (= e!51461 0)))

(declare-fun b!93940 () Bool)

(assert (=> b!93940 (= e!51461 (+ 1 (size!956 (t!52224 lt!21433))))))

(assert (= (and d!61344 c!23072) b!93939))

(assert (= (and d!61344 (not c!23072)) b!93940))

(declare-fun m!89573 () Bool)

(assert (=> b!93940 m!89573))

(assert (=> start!14378 d!61344))

(declare-fun d!61346 () Bool)

(declare-fun lt!21437 () Int)

(assert (=> d!61346 (>= lt!21437 0)))

(declare-fun e!51462 () Int)

(assert (=> d!61346 (= lt!21437 e!51462)))

(declare-fun c!23073 () Bool)

(assert (=> d!61346 (= c!23073 (is-Nil!782 lt!21432))))

(assert (=> d!61346 (= (size!956 lt!21432) lt!21437)))

(declare-fun b!93941 () Bool)

(assert (=> b!93941 (= e!51462 0)))

(declare-fun b!93942 () Bool)

(assert (=> b!93942 (= e!51462 (+ 1 (size!956 (t!52224 lt!21432))))))

(assert (= (and d!61346 c!23073) b!93941))

(assert (= (and d!61346 (not c!23073)) b!93942))

(declare-fun m!89575 () Bool)

(assert (=> b!93942 m!89575))

(assert (=> start!14378 d!61346))

(declare-fun d!61348 () Bool)

(declare-fun res!49279 () Bool)

(declare-fun e!51467 () Bool)

(assert (=> d!61348 (=> res!49279 e!51467)))

(assert (=> d!61348 (= res!49279 (is-Nil!782 lt!21433))))

(assert (=> d!61348 (= (forall!77 lt!21433 lambda!11187) e!51467)))

(declare-fun b!93947 () Bool)

(declare-fun e!51468 () Bool)

(assert (=> b!93947 (= e!51467 e!51468)))

(declare-fun res!49280 () Bool)

(assert (=> b!93947 (=> (not res!49280) (not e!51468))))

(declare-fun dynLambda!1147 (Int S!109) Bool)

(assert (=> b!93947 (= res!49280 (dynLambda!1147 lambda!11187 (h!4071 lt!21433)))))

(declare-fun b!93948 () Bool)

(assert (=> b!93948 (= e!51468 (forall!77 (t!52224 lt!21433) lambda!11187))))

(assert (= (and d!61348 (not res!49279)) b!93947))

(assert (= (and b!93947 res!49280) b!93948))

(declare-fun b_lambda!18959 () Bool)

(assert (=> (not b_lambda!18959) (not b!93947)))

(declare-fun m!89577 () Bool)

(assert (=> b!93947 m!89577))

(declare-fun m!89579 () Bool)

(assert (=> b!93948 m!89579))

(assert (=> b!93926 d!61348))

(declare-fun b_lambda!18961 () Bool)

(assert (= b_lambda!18959 (or b!93926 b_lambda!18961)))

(declare-fun bs!42827 () Bool)

(declare-fun d!61350 () Bool)

(assert (= bs!42827 (and d!61350 b!93926)))

(assert (=> bs!42827 (= (dynLambda!1147 lambda!11187 (h!4071 lt!21433)) (< (amount!1876 (h!4071 lt!21433)) 0))))

(assert (=> b!93947 d!61350))

(push 1)

(assert (not b!93932))

(assert (not b!93940))

(assert (not b_lambda!18961))

(assert (not b!93942))

(assert (not b!93934))

(assert (not b!93948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61352 () Bool)

(declare-fun c!23074 () Bool)

(assert (=> d!61352 (= c!23074 (is-Nil!782 (t!52224 lt!21432)))))

(declare-fun e!51469 () (Set S!109))

(assert (=> d!61352 (= (content!194 (t!52224 lt!21432)) e!51469)))

(declare-fun b!93949 () Bool)

(assert (=> b!93949 (= e!51469 (as emptyset (Set S!109)))))

(declare-fun b!93950 () Bool)

(assert (=> b!93950 (= e!51469 (union (insert (h!4071 (t!52224 lt!21432)) (as emptyset (Set S!109))) (content!194 (t!52224 (t!52224 lt!21432)))))))

(assert (= (and d!61352 c!23074) b!93949))

(assert (= (and d!61352 (not c!23074)) b!93950))

(declare-fun m!89581 () Bool)

(assert (=> b!93950 m!89581))

(declare-fun m!89583 () Bool)

(assert (=> b!93950 m!89583))

(assert (=> b!93934 d!61352))

(declare-fun d!61354 () Bool)

(declare-fun lt!21438 () Int)

(assert (=> d!61354 (>= lt!21438 0)))

(declare-fun e!51470 () Int)

(assert (=> d!61354 (= lt!21438 e!51470)))

(declare-fun c!23075 () Bool)

(assert (=> d!61354 (= c!23075 (is-Nil!782 (t!52224 lt!21433)))))

(assert (=> d!61354 (= (size!956 (t!52224 lt!21433)) lt!21438)))

(declare-fun b!93951 () Bool)

(assert (=> b!93951 (= e!51470 0)))

(declare-fun b!93952 () Bool)

(assert (=> b!93952 (= e!51470 (+ 1 (size!956 (t!52224 (t!52224 lt!21433)))))))

(assert (= (and d!61354 c!23075) b!93951))

(assert (= (and d!61354 (not c!23075)) b!93952))

(declare-fun m!89585 () Bool)

(assert (=> b!93952 m!89585))

(assert (=> b!93940 d!61354))

(declare-fun d!61356 () Bool)

(declare-fun lt!21439 () Int)

(assert (=> d!61356 (>= lt!21439 0)))

(declare-fun e!51471 () Int)

(assert (=> d!61356 (= lt!21439 e!51471)))

(declare-fun c!23076 () Bool)

(assert (=> d!61356 (= c!23076 (is-Nil!782 (t!52224 lt!21432)))))

(assert (=> d!61356 (= (size!956 (t!52224 lt!21432)) lt!21439)))

(declare-fun b!93953 () Bool)

(assert (=> b!93953 (= e!51471 0)))

(declare-fun b!93954 () Bool)

(assert (=> b!93954 (= e!51471 (+ 1 (size!956 (t!52224 (t!52224 lt!21432)))))))

(assert (= (and d!61356 c!23076) b!93953))

(assert (= (and d!61356 (not c!23076)) b!93954))

(declare-fun m!89587 () Bool)

(assert (=> b!93954 m!89587))

(assert (=> b!93942 d!61356))

(declare-fun d!61358 () Bool)

(declare-fun res!49281 () Bool)

(declare-fun e!51472 () Bool)

(assert (=> d!61358 (=> res!49281 e!51472)))

(assert (=> d!61358 (= res!49281 (is-Nil!782 (t!52224 lt!21433)))))

(assert (=> d!61358 (= (forall!77 (t!52224 lt!21433) lambda!11187) e!51472)))

(declare-fun b!93955 () Bool)

(declare-fun e!51473 () Bool)

(assert (=> b!93955 (= e!51472 e!51473)))

(declare-fun res!49282 () Bool)

(assert (=> b!93955 (=> (not res!49282) (not e!51473))))

(assert (=> b!93955 (= res!49282 (dynLambda!1147 lambda!11187 (h!4071 (t!52224 lt!21433))))))

(declare-fun b!93956 () Bool)

(assert (=> b!93956 (= e!51473 (forall!77 (t!52224 (t!52224 lt!21433)) lambda!11187))))

(assert (= (and d!61358 (not res!49281)) b!93955))

(assert (= (and b!93955 res!49282) b!93956))

(declare-fun b_lambda!18963 () Bool)

(assert (=> (not b_lambda!18963) (not b!93955)))

(declare-fun m!89589 () Bool)

(assert (=> b!93955 m!89589))

(declare-fun m!89591 () Bool)

(assert (=> b!93956 m!89591))

(assert (=> b!93948 d!61358))

(declare-fun d!61360 () Bool)

(declare-fun c!23077 () Bool)

(assert (=> d!61360 (= c!23077 (is-Nil!782 (t!52224 lt!21433)))))

(declare-fun e!51474 () (Set S!109))

(assert (=> d!61360 (= (content!194 (t!52224 lt!21433)) e!51474)))

(declare-fun b!93957 () Bool)

(assert (=> b!93957 (= e!51474 (as emptyset (Set S!109)))))

(declare-fun b!93958 () Bool)

(assert (=> b!93958 (= e!51474 (union (insert (h!4071 (t!52224 lt!21433)) (as emptyset (Set S!109))) (content!194 (t!52224 (t!52224 lt!21433)))))))

(assert (= (and d!61360 c!23077) b!93957))

(assert (= (and d!61360 (not c!23077)) b!93958))

(declare-fun m!89593 () Bool)

(assert (=> b!93958 m!89593))

(declare-fun m!89595 () Bool)

(assert (=> b!93958 m!89595))

(assert (=> b!93932 d!61360))

(declare-fun b_lambda!18965 () Bool)

(assert (= b_lambda!18963 (or b!93926 b_lambda!18965)))

(declare-fun bs!42828 () Bool)

(declare-fun d!61362 () Bool)

(assert (= bs!42828 (and d!61362 b!93926)))

(assert (=> bs!42828 (= (dynLambda!1147 lambda!11187 (h!4071 (t!52224 lt!21433))) (< (amount!1876 (h!4071 (t!52224 lt!21433))) 0))))

(assert (=> b!93955 d!61362))

(push 1)

(assert (not b!93952))

(assert (not b!93956))

(assert (not b!93958))

(assert (not b_lambda!18961))

(assert (not b!93950))

(assert (not b_lambda!18965))

(assert (not b!93954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

