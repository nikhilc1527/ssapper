; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13488 () Bool)

(assert start!13488)

(declare-datatypes () ((P!17 (Charlie!17) (Alice!17) (Bob!17))))

(declare-datatypes () ((S!53 (S!54 (who!761 P!17) (amount!761 Int)))))

(declare-fun lt!21275 () S!53)

(declare-datatypes () ((List!824 (Cons!762 (h!2323 S!53) (t!50388 List!824)) (Nil!764))))

(declare-fun lt!21274 () List!824)

(assert (=> start!13488 (= lt!21275 (h!2323 lt!21274))))

(assert (=> start!13488 (= lt!21274 (Cons!762 (S!54 Charlie!17 4000) Nil!764))))

(declare-fun lt!21273 () P!17)

(assert (=> start!13488 (= lt!21273 Alice!17)))

(declare-fun size!938 (List!824) Int)

(assert (=> start!13488 (not (= (size!938 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764))) (size!938 (Cons!762 (S!54 lt!21273 0) lt!21274))))))

(declare-fun bs!42393 () Bool)

(assert (= bs!42393 start!13488))

(declare-fun m!89249 () Bool)

(assert (=> bs!42393 m!89249))

(declare-fun m!89251 () Bool)

(assert (=> bs!42393 m!89251))

(push 1)

(assert (not start!13488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61176 () Bool)

(declare-fun lt!21278 () Int)

(assert (=> d!61176 (>= lt!21278 0)))

(declare-fun e!51277 () Int)

(assert (=> d!61176 (= lt!21278 e!51277)))

(declare-fun c!22960 () Bool)

(assert (=> d!61176 (= c!22960 (is-Nil!764 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764))))))

(assert (=> d!61176 (= (size!938 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764))) lt!21278)))

(declare-fun b!93619 () Bool)

(assert (=> b!93619 (= e!51277 0)))

(declare-fun b!93620 () Bool)

(assert (=> b!93620 (= e!51277 (+ 1 (size!938 (t!50388 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764))))))))

(assert (= (and d!61176 c!22960) b!93619))

(assert (= (and d!61176 (not c!22960)) b!93620))

(declare-fun m!89253 () Bool)

(assert (=> b!93620 m!89253))

(assert (=> start!13488 d!61176))

(declare-fun d!61178 () Bool)

(declare-fun lt!21279 () Int)

(assert (=> d!61178 (>= lt!21279 0)))

(declare-fun e!51278 () Int)

(assert (=> d!61178 (= lt!21279 e!51278)))

(declare-fun c!22961 () Bool)

(assert (=> d!61178 (= c!22961 (is-Nil!764 (Cons!762 (S!54 lt!21273 0) lt!21274)))))

(assert (=> d!61178 (= (size!938 (Cons!762 (S!54 lt!21273 0) lt!21274)) lt!21279)))

(declare-fun b!93621 () Bool)

(assert (=> b!93621 (= e!51278 0)))

(declare-fun b!93622 () Bool)

(assert (=> b!93622 (= e!51278 (+ 1 (size!938 (t!50388 (Cons!762 (S!54 lt!21273 0) lt!21274)))))))

(assert (= (and d!61178 c!22961) b!93621))

(assert (= (and d!61178 (not c!22961)) b!93622))

(declare-fun m!89255 () Bool)

(assert (=> b!93622 m!89255))

(assert (=> start!13488 d!61178))

(push 1)

(assert (not b!93622))

(assert (not b!93620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61180 () Bool)

(declare-fun lt!21280 () Int)

(assert (=> d!61180 (>= lt!21280 0)))

(declare-fun e!51279 () Int)

(assert (=> d!61180 (= lt!21280 e!51279)))

(declare-fun c!22962 () Bool)

(assert (=> d!61180 (= c!22962 (is-Nil!764 (t!50388 (Cons!762 (S!54 lt!21273 0) lt!21274))))))

(assert (=> d!61180 (= (size!938 (t!50388 (Cons!762 (S!54 lt!21273 0) lt!21274))) lt!21280)))

(declare-fun b!93623 () Bool)

(assert (=> b!93623 (= e!51279 0)))

(declare-fun b!93624 () Bool)

(assert (=> b!93624 (= e!51279 (+ 1 (size!938 (t!50388 (t!50388 (Cons!762 (S!54 lt!21273 0) lt!21274))))))))

(assert (= (and d!61180 c!22962) b!93623))

(assert (= (and d!61180 (not c!22962)) b!93624))

(declare-fun m!89257 () Bool)

(assert (=> b!93624 m!89257))

(assert (=> b!93622 d!61180))

(declare-fun d!61182 () Bool)

(declare-fun lt!21281 () Int)

(assert (=> d!61182 (>= lt!21281 0)))

(declare-fun e!51280 () Int)

(assert (=> d!61182 (= lt!21281 e!51280)))

(declare-fun c!22963 () Bool)

(assert (=> d!61182 (= c!22963 (is-Nil!764 (t!50388 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764)))))))

(assert (=> d!61182 (= (size!938 (t!50388 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764)))) lt!21281)))

(declare-fun b!93625 () Bool)

(assert (=> b!93625 (= e!51280 0)))

(declare-fun b!93626 () Bool)

(assert (=> b!93626 (= e!51280 (+ 1 (size!938 (t!50388 (t!50388 (Cons!762 (S!54 lt!21273 2000) (Cons!762 (S!54 (who!761 lt!21275) (- 2000 (amount!761 lt!21275))) Nil!764)))))))))

(assert (= (and d!61182 c!22963) b!93625))

(assert (= (and d!61182 (not c!22963)) b!93626))

(declare-fun m!89259 () Bool)

(assert (=> b!93626 m!89259))

(assert (=> b!93620 d!61182))

(push 1)

(assert (not b!93624))

(assert (not b!93626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

