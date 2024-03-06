; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13936 () Bool)

(assert start!13936)

(declare-fun res!49243 () Bool)

(declare-fun e!51390 () Bool)

(assert (=> start!13936 (=> res!49243 e!51390)))

(declare-datatypes () ((P!34 (Charlie!34) (Alice!34) (Bob!34))))

(declare-datatypes () ((S!87 (S!88 (who!1323 P!34) (amount!1323 Int)))))

(declare-datatypes () ((List!833 (Cons!771 (h!3226 S!87) (t!51320 List!833)) (Nil!773))))

(declare-fun lt!21372 () List!833)

(declare-fun lt!21371 () List!833)

(declare-fun size!947 (List!833) Int)

(assert (=> start!13936 (= res!49243 (> (size!947 lt!21372) (size!947 lt!21371)))))

(declare-fun lt!21370 () P!34)

(assert (=> start!13936 (= lt!21372 (Cons!771 (S!88 lt!21370 2000) Nil!773))))

(assert (=> start!13936 (= lt!21371 (Cons!771 (S!88 lt!21370 2000) (Cons!771 (S!88 Charlie!34 (- 2000)) Nil!773)))))

(assert (=> start!13936 (= lt!21370 Alice!34)))

(assert (=> start!13936 e!51390))

(declare-fun b!93811 () Bool)

(declare-fun res!49242 () Bool)

(assert (=> b!93811 (=> res!49242 e!51390)))

(declare-fun content!192 (List!833) (Set S!87))

(assert (=> b!93811 (= res!49242 (not (subset (content!192 lt!21372) (content!192 lt!21371))))))

(declare-fun b!93812 () Bool)

(declare-fun lambda!11181 () Int)

(declare-fun forall!75 (List!833 Int) Bool)

(assert (=> b!93812 (= e!51390 (not (forall!75 lt!21372 lambda!11181)))))

(assert (= (and start!13936 (not res!49243)) b!93811))

(assert (= (and b!93811 (not res!49242)) b!93812))

(declare-fun m!89445 () Bool)

(assert (=> start!13936 m!89445))

(declare-fun m!89447 () Bool)

(assert (=> start!13936 m!89447))

(declare-fun m!89449 () Bool)

(assert (=> b!93811 m!89449))

(declare-fun m!89451 () Bool)

(assert (=> b!93811 m!89451))

(declare-fun m!89453 () Bool)

(assert (=> b!93812 m!89453))

(push 1)

(assert (not start!13936))

(assert (not b!93811))

(assert (not b!93812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61280 () Bool)

(declare-fun lt!21375 () Int)

(assert (=> d!61280 (>= lt!21375 0)))

(declare-fun e!51393 () Int)

(assert (=> d!61280 (= lt!21375 e!51393)))

(declare-fun c!23024 () Bool)

(assert (=> d!61280 (= c!23024 (is-Nil!773 lt!21372))))

(assert (=> d!61280 (= (size!947 lt!21372) lt!21375)))

(declare-fun b!93817 () Bool)

(assert (=> b!93817 (= e!51393 0)))

(declare-fun b!93818 () Bool)

(assert (=> b!93818 (= e!51393 (+ 1 (size!947 (t!51320 lt!21372))))))

(assert (= (and d!61280 c!23024) b!93817))

(assert (= (and d!61280 (not c!23024)) b!93818))

(declare-fun m!89455 () Bool)

(assert (=> b!93818 m!89455))

(assert (=> start!13936 d!61280))

(declare-fun d!61282 () Bool)

(declare-fun lt!21376 () Int)

(assert (=> d!61282 (>= lt!21376 0)))

(declare-fun e!51394 () Int)

(assert (=> d!61282 (= lt!21376 e!51394)))

(declare-fun c!23025 () Bool)

(assert (=> d!61282 (= c!23025 (is-Nil!773 lt!21371))))

(assert (=> d!61282 (= (size!947 lt!21371) lt!21376)))

(declare-fun b!93819 () Bool)

(assert (=> b!93819 (= e!51394 0)))

(declare-fun b!93820 () Bool)

(assert (=> b!93820 (= e!51394 (+ 1 (size!947 (t!51320 lt!21371))))))

(assert (= (and d!61282 c!23025) b!93819))

(assert (= (and d!61282 (not c!23025)) b!93820))

(declare-fun m!89457 () Bool)

(assert (=> b!93820 m!89457))

(assert (=> start!13936 d!61282))

(declare-fun d!61284 () Bool)

(declare-fun c!23028 () Bool)

(assert (=> d!61284 (= c!23028 (is-Nil!773 lt!21372))))

(declare-fun e!51397 () (Set S!87))

(assert (=> d!61284 (= (content!192 lt!21372) e!51397)))

(declare-fun b!93825 () Bool)

(assert (=> b!93825 (= e!51397 (as emptyset (Set S!87)))))

(declare-fun b!93826 () Bool)

(assert (=> b!93826 (= e!51397 (union (insert (h!3226 lt!21372) (as emptyset (Set S!87))) (content!192 (t!51320 lt!21372))))))

(assert (= (and d!61284 c!23028) b!93825))

(assert (= (and d!61284 (not c!23028)) b!93826))

(declare-fun m!89459 () Bool)

(assert (=> b!93826 m!89459))

(declare-fun m!89461 () Bool)

(assert (=> b!93826 m!89461))

(assert (=> b!93811 d!61284))

(declare-fun d!61286 () Bool)

(declare-fun c!23029 () Bool)

(assert (=> d!61286 (= c!23029 (is-Nil!773 lt!21371))))

(declare-fun e!51398 () (Set S!87))

(assert (=> d!61286 (= (content!192 lt!21371) e!51398)))

(declare-fun b!93827 () Bool)

(assert (=> b!93827 (= e!51398 (as emptyset (Set S!87)))))

(declare-fun b!93828 () Bool)

(assert (=> b!93828 (= e!51398 (union (insert (h!3226 lt!21371) (as emptyset (Set S!87))) (content!192 (t!51320 lt!21371))))))

(assert (= (and d!61286 c!23029) b!93827))

(assert (= (and d!61286 (not c!23029)) b!93828))

(declare-fun m!89463 () Bool)

(assert (=> b!93828 m!89463))

(declare-fun m!89465 () Bool)

(assert (=> b!93828 m!89465))

(assert (=> b!93811 d!61286))

(declare-fun d!61288 () Bool)

(declare-fun res!49248 () Bool)

(declare-fun e!51403 () Bool)

(assert (=> d!61288 (=> res!49248 e!51403)))

(assert (=> d!61288 (= res!49248 (is-Nil!773 lt!21372))))

(assert (=> d!61288 (= (forall!75 lt!21372 lambda!11181) e!51403)))

(declare-fun b!93833 () Bool)

(declare-fun e!51404 () Bool)

(assert (=> b!93833 (= e!51403 e!51404)))

(declare-fun res!49249 () Bool)

(assert (=> b!93833 (=> (not res!49249) (not e!51404))))

(declare-fun dynLambda!1145 (Int S!87) Bool)

(assert (=> b!93833 (= res!49249 (dynLambda!1145 lambda!11181 (h!3226 lt!21372)))))

(declare-fun b!93834 () Bool)

(assert (=> b!93834 (= e!51404 (forall!75 (t!51320 lt!21372) lambda!11181))))

(assert (= (and d!61288 (not res!49248)) b!93833))

(assert (= (and b!93833 res!49249) b!93834))

(declare-fun b_lambda!18947 () Bool)

(assert (=> (not b_lambda!18947) (not b!93833)))

(declare-fun m!89467 () Bool)

(assert (=> b!93833 m!89467))

(declare-fun m!89469 () Bool)

(assert (=> b!93834 m!89469))

(assert (=> b!93812 d!61288))

(declare-fun b_lambda!18949 () Bool)

(assert (= b_lambda!18947 (or b!93812 b_lambda!18949)))

(declare-fun bs!42610 () Bool)

(declare-fun d!61290 () Bool)

(assert (= bs!42610 (and d!61290 b!93812)))

(assert (=> bs!42610 (= (dynLambda!1145 lambda!11181 (h!3226 lt!21372)) (>= (amount!1323 (h!3226 lt!21372)) 0))))

(assert (=> b!93833 d!61290))

(push 1)

(assert (not b!93826))

(assert (not b!93828))

(assert (not b!93820))

(assert (not b!93818))

(assert (not b!93834))

(assert (not b_lambda!18949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61292 () Bool)

(declare-fun c!23030 () Bool)

(assert (=> d!61292 (= c!23030 (is-Nil!773 (t!51320 lt!21372)))))

(declare-fun e!51405 () (Set S!87))

(assert (=> d!61292 (= (content!192 (t!51320 lt!21372)) e!51405)))

(declare-fun b!93835 () Bool)

(assert (=> b!93835 (= e!51405 (as emptyset (Set S!87)))))

(declare-fun b!93836 () Bool)

(assert (=> b!93836 (= e!51405 (union (insert (h!3226 (t!51320 lt!21372)) (as emptyset (Set S!87))) (content!192 (t!51320 (t!51320 lt!21372)))))))

(assert (= (and d!61292 c!23030) b!93835))

(assert (= (and d!61292 (not c!23030)) b!93836))

(declare-fun m!89471 () Bool)

(assert (=> b!93836 m!89471))

(declare-fun m!89473 () Bool)

(assert (=> b!93836 m!89473))

(assert (=> b!93826 d!61292))

(declare-fun d!61294 () Bool)

(declare-fun lt!21377 () Int)

(assert (=> d!61294 (>= lt!21377 0)))

(declare-fun e!51406 () Int)

(assert (=> d!61294 (= lt!21377 e!51406)))

(declare-fun c!23031 () Bool)

(assert (=> d!61294 (= c!23031 (is-Nil!773 (t!51320 lt!21372)))))

(assert (=> d!61294 (= (size!947 (t!51320 lt!21372)) lt!21377)))

(declare-fun b!93837 () Bool)

(assert (=> b!93837 (= e!51406 0)))

(declare-fun b!93838 () Bool)

(assert (=> b!93838 (= e!51406 (+ 1 (size!947 (t!51320 (t!51320 lt!21372)))))))

(assert (= (and d!61294 c!23031) b!93837))

(assert (= (and d!61294 (not c!23031)) b!93838))

(declare-fun m!89475 () Bool)

(assert (=> b!93838 m!89475))

(assert (=> b!93818 d!61294))

(declare-fun d!61296 () Bool)

(declare-fun lt!21378 () Int)

(assert (=> d!61296 (>= lt!21378 0)))

(declare-fun e!51407 () Int)

(assert (=> d!61296 (= lt!21378 e!51407)))

(declare-fun c!23032 () Bool)

(assert (=> d!61296 (= c!23032 (is-Nil!773 (t!51320 lt!21371)))))

(assert (=> d!61296 (= (size!947 (t!51320 lt!21371)) lt!21378)))

(declare-fun b!93839 () Bool)

(assert (=> b!93839 (= e!51407 0)))

(declare-fun b!93840 () Bool)

(assert (=> b!93840 (= e!51407 (+ 1 (size!947 (t!51320 (t!51320 lt!21371)))))))

(assert (= (and d!61296 c!23032) b!93839))

(assert (= (and d!61296 (not c!23032)) b!93840))

(declare-fun m!89477 () Bool)

(assert (=> b!93840 m!89477))

(assert (=> b!93820 d!61296))

(declare-fun d!61298 () Bool)

(declare-fun c!23033 () Bool)

(assert (=> d!61298 (= c!23033 (is-Nil!773 (t!51320 lt!21371)))))

(declare-fun e!51408 () (Set S!87))

(assert (=> d!61298 (= (content!192 (t!51320 lt!21371)) e!51408)))

(declare-fun b!93841 () Bool)

(assert (=> b!93841 (= e!51408 (as emptyset (Set S!87)))))

(declare-fun b!93842 () Bool)

(assert (=> b!93842 (= e!51408 (union (insert (h!3226 (t!51320 lt!21371)) (as emptyset (Set S!87))) (content!192 (t!51320 (t!51320 lt!21371)))))))

(assert (= (and d!61298 c!23033) b!93841))

(assert (= (and d!61298 (not c!23033)) b!93842))

(declare-fun m!89479 () Bool)

(assert (=> b!93842 m!89479))

(declare-fun m!89481 () Bool)

(assert (=> b!93842 m!89481))

(assert (=> b!93828 d!61298))

(declare-fun d!61300 () Bool)

(declare-fun res!49250 () Bool)

(declare-fun e!51409 () Bool)

(assert (=> d!61300 (=> res!49250 e!51409)))

(assert (=> d!61300 (= res!49250 (is-Nil!773 (t!51320 lt!21372)))))

(assert (=> d!61300 (= (forall!75 (t!51320 lt!21372) lambda!11181) e!51409)))

(declare-fun b!93843 () Bool)

(declare-fun e!51410 () Bool)

(assert (=> b!93843 (= e!51409 e!51410)))

(declare-fun res!49251 () Bool)

(assert (=> b!93843 (=> (not res!49251) (not e!51410))))

(assert (=> b!93843 (= res!49251 (dynLambda!1145 lambda!11181 (h!3226 (t!51320 lt!21372))))))

(declare-fun b!93844 () Bool)

(assert (=> b!93844 (= e!51410 (forall!75 (t!51320 (t!51320 lt!21372)) lambda!11181))))

(assert (= (and d!61300 (not res!49250)) b!93843))

(assert (= (and b!93843 res!49251) b!93844))

(declare-fun b_lambda!18951 () Bool)

(assert (=> (not b_lambda!18951) (not b!93843)))

(declare-fun m!89483 () Bool)

(assert (=> b!93843 m!89483))

(declare-fun m!89485 () Bool)

(assert (=> b!93844 m!89485))

(assert (=> b!93834 d!61300))

(declare-fun b_lambda!18953 () Bool)

(assert (= b_lambda!18951 (or b!93812 b_lambda!18953)))

(declare-fun bs!42611 () Bool)

(declare-fun d!61302 () Bool)

(assert (= bs!42611 (and d!61302 b!93812)))

(assert (=> bs!42611 (= (dynLambda!1145 lambda!11181 (h!3226 (t!51320 lt!21372))) (>= (amount!1323 (h!3226 (t!51320 lt!21372))) 0))))

(assert (=> b!93843 d!61302))

(push 1)

(assert (not b!93842))

(assert (not b_lambda!18953))

(assert (not b!93844))

(assert (not b!93838))

(assert (not b!93840))

(assert (not b!93836))

(assert (not b_lambda!18949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

