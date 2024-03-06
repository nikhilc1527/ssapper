; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12800 () Bool)

(assert start!12800)

(declare-datatypes () ((P!3 (Charlie!3) (Alice!3) (Bob!3))))

(declare-datatypes () ((S!25 (S!26 (who!46 P!3) (amount!46 Int)))))

(declare-datatypes () ((List!812 (Cons!750 (h!1244 S!25) (t!49292 List!812)) (Nil!752))))

(declare-fun lt!21172 () List!812)

(assert (=> start!12800 (= lt!21172 (Cons!750 (S!26 Charlie!3 4000) Nil!752))))

(declare-datatypes () ((List!813 (Cons!751 (h!1245 P!3) (t!49293 List!813)) (Nil!753))))

(declare-fun size!926 (List!813) Int)

(declare-fun size!927 (List!812) Int)

(assert (=> start!12800 (not (= (size!926 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753)) (size!927 lt!21172)))))

(declare-fun bs!42054 () Bool)

(assert (= bs!42054 start!12800))

(declare-fun m!89095 () Bool)

(assert (=> bs!42054 m!89095))

(declare-fun m!89097 () Bool)

(assert (=> bs!42054 m!89097))

(push 1)

(assert (not start!12800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61092 () Bool)

(declare-fun lt!21175 () Int)

(assert (=> d!61092 (>= lt!21175 0)))

(declare-fun e!51188 () Int)

(assert (=> d!61092 (= lt!21175 e!51188)))

(declare-fun c!22900 () Bool)

(assert (=> d!61092 (= c!22900 (is-Nil!753 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753)))))

(assert (=> d!61092 (= (size!926 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753)) lt!21175)))

(declare-fun b!93461 () Bool)

(assert (=> b!93461 (= e!51188 0)))

(declare-fun b!93462 () Bool)

(assert (=> b!93462 (= e!51188 (+ 1 (size!926 (t!49293 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753)))))))

(assert (= (and d!61092 c!22900) b!93461))

(assert (= (and d!61092 (not c!22900)) b!93462))

(declare-fun m!89099 () Bool)

(assert (=> b!93462 m!89099))

(assert (=> start!12800 d!61092))

(declare-fun d!61094 () Bool)

(declare-fun lt!21178 () Int)

(assert (=> d!61094 (>= lt!21178 0)))

(declare-fun e!51191 () Int)

(assert (=> d!61094 (= lt!21178 e!51191)))

(declare-fun c!22903 () Bool)

(assert (=> d!61094 (= c!22903 (is-Nil!752 lt!21172))))

(assert (=> d!61094 (= (size!927 lt!21172) lt!21178)))

(declare-fun b!93467 () Bool)

(assert (=> b!93467 (= e!51191 0)))

(declare-fun b!93468 () Bool)

(assert (=> b!93468 (= e!51191 (+ 1 (size!927 (t!49292 lt!21172))))))

(assert (= (and d!61094 c!22903) b!93467))

(assert (= (and d!61094 (not c!22903)) b!93468))

(declare-fun m!89101 () Bool)

(assert (=> b!93468 m!89101))

(assert (=> start!12800 d!61094))

(push 1)

(assert (not b!93462))

(assert (not b!93468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61096 () Bool)

(declare-fun lt!21179 () Int)

(assert (=> d!61096 (>= lt!21179 0)))

(declare-fun e!51192 () Int)

(assert (=> d!61096 (= lt!21179 e!51192)))

(declare-fun c!22904 () Bool)

(assert (=> d!61096 (= c!22904 (is-Nil!753 (t!49293 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753))))))

(assert (=> d!61096 (= (size!926 (t!49293 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753))) lt!21179)))

(declare-fun b!93469 () Bool)

(assert (=> b!93469 (= e!51192 0)))

(declare-fun b!93470 () Bool)

(assert (=> b!93470 (= e!51192 (+ 1 (size!926 (t!49293 (t!49293 (Cons!751 (who!46 (h!1244 lt!21172)) Nil!753))))))))

(assert (= (and d!61096 c!22904) b!93469))

(assert (= (and d!61096 (not c!22904)) b!93470))

(declare-fun m!89103 () Bool)

(assert (=> b!93470 m!89103))

(assert (=> b!93462 d!61096))

(declare-fun d!61098 () Bool)

(declare-fun lt!21180 () Int)

(assert (=> d!61098 (>= lt!21180 0)))

(declare-fun e!51193 () Int)

(assert (=> d!61098 (= lt!21180 e!51193)))

(declare-fun c!22905 () Bool)

(assert (=> d!61098 (= c!22905 (is-Nil!752 (t!49292 lt!21172)))))

(assert (=> d!61098 (= (size!927 (t!49292 lt!21172)) lt!21180)))

(declare-fun b!93471 () Bool)

(assert (=> b!93471 (= e!51193 0)))

(declare-fun b!93472 () Bool)

(assert (=> b!93472 (= e!51193 (+ 1 (size!927 (t!49292 (t!49292 lt!21172)))))))

(assert (= (and d!61098 c!22905) b!93471))

(assert (= (and d!61098 (not c!22905)) b!93472))

(declare-fun m!89105 () Bool)

(assert (=> b!93472 m!89105))

(assert (=> b!93468 d!61098))

(push 1)

(assert (not b!93470))

(assert (not b!93472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

