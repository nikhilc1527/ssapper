; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13808 () Bool)

(assert start!13808)

(declare-datatypes () ((P!26 (Charlie!26) (Alice!26) (Bob!26))))

(declare-datatypes () ((S!71 (S!72 (who!1138 P!26) (amount!1138 Int)))))

(declare-fun lt!21324 () S!71)

(declare-datatypes () ((List!829 (Cons!767 (h!2921 S!71) (t!50998 List!829)) (Nil!769))))

(declare-fun lt!21323 () List!829)

(assert (=> start!13808 (= lt!21324 (h!2921 lt!21323))))

(assert (=> start!13808 (= lt!21323 (Cons!767 (S!72 Charlie!26 4000) Nil!769))))

(declare-fun size!943 (List!829) Int)

(assert (=> start!13808 (not (= (size!943 (Cons!767 (S!72 (who!1138 lt!21324) (- 2000 (amount!1138 lt!21324))) Nil!769)) (size!943 lt!21323)))))

(declare-fun bs!42550 () Bool)

(assert (= bs!42550 start!13808))

(declare-fun m!89373 () Bool)

(assert (=> bs!42550 m!89373))

(declare-fun m!89375 () Bool)

(assert (=> bs!42550 m!89375))

(push 1)

(assert (not start!13808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61244 () Bool)

(declare-fun lt!21327 () Int)

(assert (=> d!61244 (>= lt!21327 0)))

(declare-fun e!51346 () Int)

(assert (=> d!61244 (= lt!21327 e!51346)))

(declare-fun c!22998 () Bool)

(assert (=> d!61244 (= c!22998 (is-Nil!769 (Cons!767 (S!72 (who!1138 lt!21324) (- 2000 (amount!1138 lt!21324))) Nil!769)))))

(assert (=> d!61244 (= (size!943 (Cons!767 (S!72 (who!1138 lt!21324) (- 2000 (amount!1138 lt!21324))) Nil!769)) lt!21327)))

(declare-fun b!93735 () Bool)

(assert (=> b!93735 (= e!51346 0)))

(declare-fun b!93736 () Bool)

(assert (=> b!93736 (= e!51346 (+ 1 (size!943 (t!50998 (Cons!767 (S!72 (who!1138 lt!21324) (- 2000 (amount!1138 lt!21324))) Nil!769)))))))

(assert (= (and d!61244 c!22998) b!93735))

(assert (= (and d!61244 (not c!22998)) b!93736))

(declare-fun m!89377 () Bool)

(assert (=> b!93736 m!89377))

(assert (=> start!13808 d!61244))

(declare-fun d!61246 () Bool)

(declare-fun lt!21328 () Int)

(assert (=> d!61246 (>= lt!21328 0)))

(declare-fun e!51347 () Int)

(assert (=> d!61246 (= lt!21328 e!51347)))

(declare-fun c!22999 () Bool)

(assert (=> d!61246 (= c!22999 (is-Nil!769 lt!21323))))

(assert (=> d!61246 (= (size!943 lt!21323) lt!21328)))

(declare-fun b!93737 () Bool)

(assert (=> b!93737 (= e!51347 0)))

(declare-fun b!93738 () Bool)

(assert (=> b!93738 (= e!51347 (+ 1 (size!943 (t!50998 lt!21323))))))

(assert (= (and d!61246 c!22999) b!93737))

(assert (= (and d!61246 (not c!22999)) b!93738))

(declare-fun m!89379 () Bool)

(assert (=> b!93738 m!89379))

(assert (=> start!13808 d!61246))

(push 1)

(assert (not b!93738))

(assert (not b!93736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

