; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14256 () Bool)

(assert start!14256)

(declare-datatypes () ((P!38 (Charlie!38) (Alice!38) (Bob!38))))

(declare-datatypes () ((S!95 (S!96 (who!1692 P!38) (amount!1692 Int)))))

(declare-fun lt!21398 () S!95)

(declare-datatypes () ((List!839 (Cons!777 (h!3762 S!95) (t!51906 List!839)) (Nil!779))))

(declare-fun lt!21397 () List!839)

(assert (=> start!14256 (= lt!21398 (h!3762 lt!21397))))

(assert (=> start!14256 (= lt!21397 (Cons!777 (S!96 Charlie!38 4000) Nil!779))))

(declare-fun size!953 (List!839) Int)

(assert (=> start!14256 (not (= (size!953 (Cons!777 (S!96 (who!1692 lt!21398) (- 2000 (amount!1692 lt!21398))) Nil!779)) (size!953 lt!21397)))))

(declare-fun bs!42768 () Bool)

(assert (= bs!42768 start!14256))

(declare-fun m!89509 () Bool)

(assert (=> bs!42768 m!89509))

(declare-fun m!89511 () Bool)

(assert (=> bs!42768 m!89511))

(push 1)

(assert (not start!14256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61316 () Bool)

(declare-fun lt!21401 () Int)

(assert (=> d!61316 (>= lt!21401 0)))

(declare-fun e!51427 () Int)

(assert (=> d!61316 (= lt!21401 e!51427)))

(declare-fun c!23050 () Bool)

(assert (=> d!61316 (= c!23050 (is-Nil!779 (Cons!777 (S!96 (who!1692 lt!21398) (- 2000 (amount!1692 lt!21398))) Nil!779)))))

(assert (=> d!61316 (= (size!953 (Cons!777 (S!96 (who!1692 lt!21398) (- 2000 (amount!1692 lt!21398))) Nil!779)) lt!21401)))

(declare-fun b!93877 () Bool)

(assert (=> b!93877 (= e!51427 0)))

(declare-fun b!93878 () Bool)

(assert (=> b!93878 (= e!51427 (+ 1 (size!953 (t!51906 (Cons!777 (S!96 (who!1692 lt!21398) (- 2000 (amount!1692 lt!21398))) Nil!779)))))))

(assert (= (and d!61316 c!23050) b!93877))

(assert (= (and d!61316 (not c!23050)) b!93878))

(declare-fun m!89513 () Bool)

(assert (=> b!93878 m!89513))

(assert (=> start!14256 d!61316))

(declare-fun d!61318 () Bool)

(declare-fun lt!21402 () Int)

(assert (=> d!61318 (>= lt!21402 0)))

(declare-fun e!51428 () Int)

(assert (=> d!61318 (= lt!21402 e!51428)))

(declare-fun c!23051 () Bool)

(assert (=> d!61318 (= c!23051 (is-Nil!779 lt!21397))))

(assert (=> d!61318 (= (size!953 lt!21397) lt!21402)))

(declare-fun b!93879 () Bool)

(assert (=> b!93879 (= e!51428 0)))

(declare-fun b!93880 () Bool)

(assert (=> b!93880 (= e!51428 (+ 1 (size!953 (t!51906 lt!21397))))))

(assert (= (and d!61318 c!23051) b!93879))

(assert (= (and d!61318 (not c!23051)) b!93880))

(declare-fun m!89515 () Bool)

(assert (=> b!93880 m!89515))

(assert (=> start!14256 d!61318))

(push 1)

(assert (not b!93880))

(assert (not b!93878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

