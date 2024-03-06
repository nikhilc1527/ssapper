; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13048 () Bool)

(assert start!13048)

(declare-datatypes () ((P!6 (Charlie!6) (Alice!6) (Bob!6))))

(declare-datatypes () ((S!31 (S!32 (who!279 P!6) (amount!279 Int)))))

(declare-fun lt!21202 () S!31)

(declare-datatypes () ((List!817 (Cons!755 (h!1581 S!31) (t!49625 List!817)) (Nil!757))))

(declare-fun lt!21201 () List!817)

(assert (=> start!13048 (= lt!21202 (h!1581 lt!21201))))

(assert (=> start!13048 (= lt!21201 (Cons!755 (S!32 Charlie!6 4000) Nil!757))))

(declare-fun size!931 (List!817) Int)

(assert (=> start!13048 (not (= (size!931 (Cons!755 (S!32 (who!279 lt!21202) (- 2000 (amount!279 lt!21202))) Nil!757)) (size!931 lt!21201)))))

(declare-fun bs!42177 () Bool)

(assert (= bs!42177 start!13048))

(declare-fun m!89125 () Bool)

(assert (=> bs!42177 m!89125))

(declare-fun m!89127 () Bool)

(assert (=> bs!42177 m!89127))

(push 1)

(assert (not start!13048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61112 () Bool)

(declare-fun lt!21205 () Int)

(assert (=> d!61112 (>= lt!21205 0)))

(declare-fun e!51206 () Int)

(assert (=> d!61112 (= lt!21205 e!51206)))

(declare-fun c!22918 () Bool)

(assert (=> d!61112 (= c!22918 (is-Nil!757 (Cons!755 (S!32 (who!279 lt!21202) (- 2000 (amount!279 lt!21202))) Nil!757)))))

(assert (=> d!61112 (= (size!931 (Cons!755 (S!32 (who!279 lt!21202) (- 2000 (amount!279 lt!21202))) Nil!757)) lt!21205)))

(declare-fun b!93497 () Bool)

(assert (=> b!93497 (= e!51206 0)))

(declare-fun b!93498 () Bool)

(assert (=> b!93498 (= e!51206 (+ 1 (size!931 (t!49625 (Cons!755 (S!32 (who!279 lt!21202) (- 2000 (amount!279 lt!21202))) Nil!757)))))))

(assert (= (and d!61112 c!22918) b!93497))

(assert (= (and d!61112 (not c!22918)) b!93498))

(declare-fun m!89129 () Bool)

(assert (=> b!93498 m!89129))

(assert (=> start!13048 d!61112))

(declare-fun d!61114 () Bool)

(declare-fun lt!21206 () Int)

(assert (=> d!61114 (>= lt!21206 0)))

(declare-fun e!51207 () Int)

(assert (=> d!61114 (= lt!21206 e!51207)))

(declare-fun c!22919 () Bool)

(assert (=> d!61114 (= c!22919 (is-Nil!757 lt!21201))))

(assert (=> d!61114 (= (size!931 lt!21201) lt!21206)))

(declare-fun b!93499 () Bool)

(assert (=> b!93499 (= e!51207 0)))

(declare-fun b!93500 () Bool)

(assert (=> b!93500 (= e!51207 (+ 1 (size!931 (t!49625 lt!21201))))))

(assert (= (and d!61114 c!22919) b!93499))

(assert (= (and d!61114 (not c!22919)) b!93500))

(declare-fun m!89131 () Bool)

(assert (=> b!93500 m!89131))

(assert (=> start!13048 d!61114))

(push 1)

(assert (not b!93500))

(assert (not b!93498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

