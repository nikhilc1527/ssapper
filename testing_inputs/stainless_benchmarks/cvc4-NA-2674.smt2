; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14386 () Bool)

(assert start!14386)

(declare-fun res!49289 () Bool)

(declare-fun e!51477 () Bool)

(assert (=> start!14386 (=> res!49289 e!51477)))

(declare-datatypes () ((P!46 (Charlie!46) (Alice!46) (Bob!46))))

(declare-datatypes () ((S!111 (S!112 (who!1882 P!46) (amount!1882 Int)))))

(declare-datatypes () ((List!843 (Cons!781 (h!4082 S!111) (t!52235 List!843)) (Nil!783))))

(declare-fun lt!21447 () List!843)

(declare-fun lt!21448 () List!843)

(declare-fun size!957 (List!843) Int)

(assert (=> start!14386 (= res!49289 (> (size!957 lt!21447) (size!957 lt!21448)))))

(declare-fun lt!21446 () List!843)

(assert (=> start!14386 (= lt!21447 (Cons!781 (h!4082 lt!21446) Nil!783))))

(assert (=> start!14386 (= lt!21448 (Cons!781 (S!112 Alice!46 2000) lt!21446))))

(assert (=> start!14386 (= lt!21446 (Cons!781 (S!112 Charlie!46 (- 2000)) Nil!783))))

(assert (=> start!14386 e!51477))

(declare-fun b!93963 () Bool)

(declare-fun res!49288 () Bool)

(assert (=> b!93963 (=> res!49288 e!51477)))

(declare-fun content!195 (List!843) (Set S!111))

(assert (=> b!93963 (= res!49288 (not (subset (content!195 lt!21447) (content!195 lt!21448))))))

(declare-fun b!93964 () Bool)

(declare-fun lambda!11190 () Int)

(declare-fun forall!78 (List!843 Int) Bool)

(assert (=> b!93964 (= e!51477 (not (forall!78 lt!21447 lambda!11190)))))

(assert (= (and start!14386 (not res!49289)) b!93963))

(assert (= (and b!93963 (not res!49288)) b!93964))

(declare-fun m!89597 () Bool)

(assert (=> start!14386 m!89597))

(declare-fun m!89599 () Bool)

(assert (=> start!14386 m!89599))

(declare-fun m!89601 () Bool)

(assert (=> b!93963 m!89601))

(declare-fun m!89603 () Bool)

(assert (=> b!93963 m!89603))

(declare-fun m!89605 () Bool)

(assert (=> b!93964 m!89605))

(push 1)

(assert (not b!93964))

(assert (not start!14386))

(assert (not b!93963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61364 () Bool)

(declare-fun res!49294 () Bool)

(declare-fun e!51482 () Bool)

(assert (=> d!61364 (=> res!49294 e!51482)))

(assert (=> d!61364 (= res!49294 (is-Nil!783 lt!21447))))

(assert (=> d!61364 (= (forall!78 lt!21447 lambda!11190) e!51482)))

(declare-fun b!93969 () Bool)

(declare-fun e!51483 () Bool)

(assert (=> b!93969 (= e!51482 e!51483)))

(declare-fun res!49295 () Bool)

(assert (=> b!93969 (=> (not res!49295) (not e!51483))))

(declare-fun dynLambda!1148 (Int S!111) Bool)

(assert (=> b!93969 (= res!49295 (dynLambda!1148 lambda!11190 (h!4082 lt!21447)))))

(declare-fun b!93970 () Bool)

(assert (=> b!93970 (= e!51483 (forall!78 (t!52235 lt!21447) lambda!11190))))

(assert (= (and d!61364 (not res!49294)) b!93969))

(assert (= (and b!93969 res!49295) b!93970))

(declare-fun b_lambda!18967 () Bool)

(assert (=> (not b_lambda!18967) (not b!93969)))

(declare-fun m!89607 () Bool)

(assert (=> b!93969 m!89607))

(declare-fun m!89609 () Bool)

(assert (=> b!93970 m!89609))

(assert (=> b!93964 d!61364))

(declare-fun d!61366 () Bool)

(declare-fun lt!21451 () Int)

(assert (=> d!61366 (>= lt!21451 0)))

(declare-fun e!51486 () Int)

(assert (=> d!61366 (= lt!21451 e!51486)))

(declare-fun c!23080 () Bool)

(assert (=> d!61366 (= c!23080 (is-Nil!783 lt!21447))))

(assert (=> d!61366 (= (size!957 lt!21447) lt!21451)))

(declare-fun b!93975 () Bool)

(assert (=> b!93975 (= e!51486 0)))

(declare-fun b!93976 () Bool)

(assert (=> b!93976 (= e!51486 (+ 1 (size!957 (t!52235 lt!21447))))))

(assert (= (and d!61366 c!23080) b!93975))

(assert (= (and d!61366 (not c!23080)) b!93976))

(declare-fun m!89611 () Bool)

(assert (=> b!93976 m!89611))

(assert (=> start!14386 d!61366))

(declare-fun d!61368 () Bool)

(declare-fun lt!21452 () Int)

(assert (=> d!61368 (>= lt!21452 0)))

(declare-fun e!51487 () Int)

(assert (=> d!61368 (= lt!21452 e!51487)))

(declare-fun c!23081 () Bool)

(assert (=> d!61368 (= c!23081 (is-Nil!783 lt!21448))))

(assert (=> d!61368 (= (size!957 lt!21448) lt!21452)))

(declare-fun b!93977 () Bool)

(assert (=> b!93977 (= e!51487 0)))

(declare-fun b!93978 () Bool)

(assert (=> b!93978 (= e!51487 (+ 1 (size!957 (t!52235 lt!21448))))))

(assert (= (and d!61368 c!23081) b!93977))

(assert (= (and d!61368 (not c!23081)) b!93978))

(declare-fun m!89613 () Bool)

(assert (=> b!93978 m!89613))

(assert (=> start!14386 d!61368))

(declare-fun d!61370 () Bool)

(declare-fun c!23084 () Bool)

(assert (=> d!61370 (= c!23084 (is-Nil!783 lt!21447))))

(declare-fun e!51490 () (Set S!111))

(assert (=> d!61370 (= (content!195 lt!21447) e!51490)))

(declare-fun b!93983 () Bool)

(assert (=> b!93983 (= e!51490 (as emptyset (Set S!111)))))

(declare-fun b!93984 () Bool)

(assert (=> b!93984 (= e!51490 (union (insert (h!4082 lt!21447) (as emptyset (Set S!111))) (content!195 (t!52235 lt!21447))))))

(assert (= (and d!61370 c!23084) b!93983))

(assert (= (and d!61370 (not c!23084)) b!93984))

(declare-fun m!89615 () Bool)

(assert (=> b!93984 m!89615))

(declare-fun m!89617 () Bool)

(assert (=> b!93984 m!89617))

(assert (=> b!93963 d!61370))

(declare-fun d!61372 () Bool)

(declare-fun c!23085 () Bool)

(assert (=> d!61372 (= c!23085 (is-Nil!783 lt!21448))))

(declare-fun e!51491 () (Set S!111))

(assert (=> d!61372 (= (content!195 lt!21448) e!51491)))

(declare-fun b!93985 () Bool)

(assert (=> b!93985 (= e!51491 (as emptyset (Set S!111)))))

(declare-fun b!93986 () Bool)

(assert (=> b!93986 (= e!51491 (union (insert (h!4082 lt!21448) (as emptyset (Set S!111))) (content!195 (t!52235 lt!21448))))))

(assert (= (and d!61372 c!23085) b!93985))

(assert (= (and d!61372 (not c!23085)) b!93986))

(declare-fun m!89619 () Bool)

(assert (=> b!93986 m!89619))

(declare-fun m!89621 () Bool)

(assert (=> b!93986 m!89621))

(assert (=> b!93963 d!61372))

(declare-fun b_lambda!18969 () Bool)

(assert (= b_lambda!18967 (or b!93964 b_lambda!18969)))

(declare-fun bs!42830 () Bool)

(declare-fun d!61374 () Bool)

(assert (= bs!42830 (and d!61374 b!93964)))

(assert (=> bs!42830 (= (dynLambda!1148 lambda!11190 (h!4082 lt!21447)) (< (amount!1882 (h!4082 lt!21447)) 0))))

(assert (=> b!93969 d!61374))

(push 1)

(assert (not b!93978))

(assert (not b!93984))

(assert (not b!93970))

(assert (not b!93986))

(assert (not b!93976))

(assert (not b_lambda!18969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61376 () Bool)

(declare-fun c!23086 () Bool)

(assert (=> d!61376 (= c!23086 (is-Nil!783 (t!52235 lt!21447)))))

(declare-fun e!51492 () (Set S!111))

(assert (=> d!61376 (= (content!195 (t!52235 lt!21447)) e!51492)))

(declare-fun b!93987 () Bool)

(assert (=> b!93987 (= e!51492 (as emptyset (Set S!111)))))

(declare-fun b!93988 () Bool)

(assert (=> b!93988 (= e!51492 (union (insert (h!4082 (t!52235 lt!21447)) (as emptyset (Set S!111))) (content!195 (t!52235 (t!52235 lt!21447)))))))

(assert (= (and d!61376 c!23086) b!93987))

(assert (= (and d!61376 (not c!23086)) b!93988))

(declare-fun m!89623 () Bool)

(assert (=> b!93988 m!89623))

(declare-fun m!89625 () Bool)

(assert (=> b!93988 m!89625))

(assert (=> b!93984 d!61376))

(declare-fun d!61378 () Bool)

(declare-fun lt!21453 () Int)

(assert (=> d!61378 (>= lt!21453 0)))

(declare-fun e!51493 () Int)

(assert (=> d!61378 (= lt!21453 e!51493)))

(declare-fun c!23087 () Bool)

(assert (=> d!61378 (= c!23087 (is-Nil!783 (t!52235 lt!21447)))))

(assert (=> d!61378 (= (size!957 (t!52235 lt!21447)) lt!21453)))

(declare-fun b!93989 () Bool)

(assert (=> b!93989 (= e!51493 0)))

(declare-fun b!93990 () Bool)

(assert (=> b!93990 (= e!51493 (+ 1 (size!957 (t!52235 (t!52235 lt!21447)))))))

(assert (= (and d!61378 c!23087) b!93989))

(assert (= (and d!61378 (not c!23087)) b!93990))

(declare-fun m!89627 () Bool)

(assert (=> b!93990 m!89627))

(assert (=> b!93976 d!61378))

(declare-fun d!61380 () Bool)

(declare-fun c!23088 () Bool)

(assert (=> d!61380 (= c!23088 (is-Nil!783 (t!52235 lt!21448)))))

(declare-fun e!51494 () (Set S!111))

(assert (=> d!61380 (= (content!195 (t!52235 lt!21448)) e!51494)))

(declare-fun b!93991 () Bool)

(assert (=> b!93991 (= e!51494 (as emptyset (Set S!111)))))

(declare-fun b!93992 () Bool)

(assert (=> b!93992 (= e!51494 (union (insert (h!4082 (t!52235 lt!21448)) (as emptyset (Set S!111))) (content!195 (t!52235 (t!52235 lt!21448)))))))

(assert (= (and d!61380 c!23088) b!93991))

(assert (= (and d!61380 (not c!23088)) b!93992))

(declare-fun m!89629 () Bool)

(assert (=> b!93992 m!89629))

(declare-fun m!89631 () Bool)

(assert (=> b!93992 m!89631))

(assert (=> b!93986 d!61380))

(declare-fun d!61382 () Bool)

(declare-fun res!49296 () Bool)

(declare-fun e!51495 () Bool)

(assert (=> d!61382 (=> res!49296 e!51495)))

(assert (=> d!61382 (= res!49296 (is-Nil!783 (t!52235 lt!21447)))))

(assert (=> d!61382 (= (forall!78 (t!52235 lt!21447) lambda!11190) e!51495)))

(declare-fun b!93993 () Bool)

(declare-fun e!51496 () Bool)

(assert (=> b!93993 (= e!51495 e!51496)))

(declare-fun res!49297 () Bool)

(assert (=> b!93993 (=> (not res!49297) (not e!51496))))

(assert (=> b!93993 (= res!49297 (dynLambda!1148 lambda!11190 (h!4082 (t!52235 lt!21447))))))

(declare-fun b!93994 () Bool)

(assert (=> b!93994 (= e!51496 (forall!78 (t!52235 (t!52235 lt!21447)) lambda!11190))))

(assert (= (and d!61382 (not res!49296)) b!93993))

(assert (= (and b!93993 res!49297) b!93994))

(declare-fun b_lambda!18971 () Bool)

(assert (=> (not b_lambda!18971) (not b!93993)))

(declare-fun m!89633 () Bool)

(assert (=> b!93993 m!89633))

(declare-fun m!89635 () Bool)

(assert (=> b!93994 m!89635))

(assert (=> b!93970 d!61382))

(declare-fun d!61384 () Bool)

(declare-fun lt!21454 () Int)

(assert (=> d!61384 (>= lt!21454 0)))

(declare-fun e!51497 () Int)

(assert (=> d!61384 (= lt!21454 e!51497)))

(declare-fun c!23089 () Bool)

(assert (=> d!61384 (= c!23089 (is-Nil!783 (t!52235 lt!21448)))))

(assert (=> d!61384 (= (size!957 (t!52235 lt!21448)) lt!21454)))

(declare-fun b!93995 () Bool)

(assert (=> b!93995 (= e!51497 0)))

(declare-fun b!93996 () Bool)

(assert (=> b!93996 (= e!51497 (+ 1 (size!957 (t!52235 (t!52235 lt!21448)))))))

(assert (= (and d!61384 c!23089) b!93995))

(assert (= (and d!61384 (not c!23089)) b!93996))

(declare-fun m!89637 () Bool)

(assert (=> b!93996 m!89637))

(assert (=> b!93978 d!61384))

(declare-fun b_lambda!18973 () Bool)

(assert (= b_lambda!18971 (or b!93964 b_lambda!18973)))

(declare-fun bs!42831 () Bool)

(declare-fun d!61386 () Bool)

(assert (= bs!42831 (and d!61386 b!93964)))

(assert (=> bs!42831 (= (dynLambda!1148 lambda!11190 (h!4082 (t!52235 lt!21447))) (< (amount!1882 (h!4082 (t!52235 lt!21447))) 0))))

(assert (=> b!93993 d!61386))

(push 1)

(assert (not b!93994))

(assert (not b!93988))

(assert (not b!93992))

(assert (not b!93990))

(assert (not b_lambda!18973))

(assert (not b!93996))

(assert (not b_lambda!18969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

