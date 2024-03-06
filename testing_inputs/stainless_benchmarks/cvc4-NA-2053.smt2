; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13056 () Bool)

(assert start!13056)

(declare-datatypes () ((P!7 (Charlie!7) (Alice!7) (Bob!7))))

(declare-datatypes () ((S!33 (S!34 (who!293 P!7) (amount!293 Int)))))

(declare-fun lt!21215 () S!33)

(declare-datatypes () ((List!818 (Cons!756 (h!1598 S!33) (t!49645 List!818)) (Nil!758))))

(declare-fun lt!21214 () List!818)

(assert (=> start!13056 (= lt!21215 (h!1598 lt!21214))))

(assert (=> start!13056 (= lt!21214 (Cons!756 (S!34 Charlie!7 4000) Nil!758))))

(declare-fun lt!21213 () P!7)

(assert (=> start!13056 (= lt!21213 Alice!7)))

(declare-fun size!932 (List!818) Int)

(assert (=> start!13056 (not (= (size!932 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758))) (size!932 (Cons!756 (S!34 lt!21213 0) lt!21214))))))

(declare-fun bs!42181 () Bool)

(assert (= bs!42181 start!13056))

(declare-fun m!89133 () Bool)

(assert (=> bs!42181 m!89133))

(declare-fun m!89135 () Bool)

(assert (=> bs!42181 m!89135))

(push 1)

(assert (not start!13056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61116 () Bool)

(declare-fun lt!21218 () Int)

(assert (=> d!61116 (>= lt!21218 0)))

(declare-fun e!51210 () Int)

(assert (=> d!61116 (= lt!21218 e!51210)))

(declare-fun c!22922 () Bool)

(assert (=> d!61116 (= c!22922 (is-Nil!758 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758))))))

(assert (=> d!61116 (= (size!932 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758))) lt!21218)))

(declare-fun b!93505 () Bool)

(assert (=> b!93505 (= e!51210 0)))

(declare-fun b!93506 () Bool)

(assert (=> b!93506 (= e!51210 (+ 1 (size!932 (t!49645 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758))))))))

(assert (= (and d!61116 c!22922) b!93505))

(assert (= (and d!61116 (not c!22922)) b!93506))

(declare-fun m!89137 () Bool)

(assert (=> b!93506 m!89137))

(assert (=> start!13056 d!61116))

(declare-fun d!61118 () Bool)

(declare-fun lt!21219 () Int)

(assert (=> d!61118 (>= lt!21219 0)))

(declare-fun e!51211 () Int)

(assert (=> d!61118 (= lt!21219 e!51211)))

(declare-fun c!22923 () Bool)

(assert (=> d!61118 (= c!22923 (is-Nil!758 (Cons!756 (S!34 lt!21213 0) lt!21214)))))

(assert (=> d!61118 (= (size!932 (Cons!756 (S!34 lt!21213 0) lt!21214)) lt!21219)))

(declare-fun b!93507 () Bool)

(assert (=> b!93507 (= e!51211 0)))

(declare-fun b!93508 () Bool)

(assert (=> b!93508 (= e!51211 (+ 1 (size!932 (t!49645 (Cons!756 (S!34 lt!21213 0) lt!21214)))))))

(assert (= (and d!61118 c!22923) b!93507))

(assert (= (and d!61118 (not c!22923)) b!93508))

(declare-fun m!89139 () Bool)

(assert (=> b!93508 m!89139))

(assert (=> start!13056 d!61118))

(push 1)

(assert (not b!93506))

(assert (not b!93508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61120 () Bool)

(declare-fun lt!21220 () Int)

(assert (=> d!61120 (>= lt!21220 0)))

(declare-fun e!51212 () Int)

(assert (=> d!61120 (= lt!21220 e!51212)))

(declare-fun c!22924 () Bool)

(assert (=> d!61120 (= c!22924 (is-Nil!758 (t!49645 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758)))))))

(assert (=> d!61120 (= (size!932 (t!49645 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758)))) lt!21220)))

(declare-fun b!93509 () Bool)

(assert (=> b!93509 (= e!51212 0)))

(declare-fun b!93510 () Bool)

(assert (=> b!93510 (= e!51212 (+ 1 (size!932 (t!49645 (t!49645 (Cons!756 (S!34 lt!21213 2000) (Cons!756 (S!34 (who!293 lt!21215) (- 2000 (amount!293 lt!21215))) Nil!758)))))))))

(assert (= (and d!61120 c!22924) b!93509))

(assert (= (and d!61120 (not c!22924)) b!93510))

(declare-fun m!89141 () Bool)

(assert (=> b!93510 m!89141))

(assert (=> b!93506 d!61120))

(declare-fun d!61122 () Bool)

(declare-fun lt!21221 () Int)

(assert (=> d!61122 (>= lt!21221 0)))

(declare-fun e!51213 () Int)

(assert (=> d!61122 (= lt!21221 e!51213)))

(declare-fun c!22925 () Bool)

(assert (=> d!61122 (= c!22925 (is-Nil!758 (t!49645 (Cons!756 (S!34 lt!21213 0) lt!21214))))))

(assert (=> d!61122 (= (size!932 (t!49645 (Cons!756 (S!34 lt!21213 0) lt!21214))) lt!21221)))

(declare-fun b!93511 () Bool)

(assert (=> b!93511 (= e!51213 0)))

(declare-fun b!93512 () Bool)

(assert (=> b!93512 (= e!51213 (+ 1 (size!932 (t!49645 (t!49645 (Cons!756 (S!34 lt!21213 0) lt!21214))))))))

(assert (= (and d!61122 c!22925) b!93511))

(assert (= (and d!61122 (not c!22925)) b!93512))

(declare-fun m!89143 () Bool)

(assert (=> b!93512 m!89143))

(assert (=> b!93508 d!61122))

(push 1)

(assert (not b!93510))

(assert (not b!93512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

