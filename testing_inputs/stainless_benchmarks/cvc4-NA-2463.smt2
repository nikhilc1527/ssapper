; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13928 () Bool)

(assert start!13928)

(declare-fun res!49229 () Bool)

(declare-fun e!51373 () Bool)

(assert (=> start!13928 (=> res!49229 e!51373)))

(declare-datatypes () ((P!33 (Charlie!33) (Alice!33) (Bob!33))))

(declare-datatypes () ((S!85 (S!86 (who!1318 P!33) (amount!1318 Int)))))

(declare-datatypes () ((List!832 (Cons!770 (h!3215 S!85) (t!51309 List!832)) (Nil!772))))

(declare-fun lt!21358 () List!832)

(declare-fun lt!21359 () List!832)

(declare-fun size!946 (List!832) Int)

(assert (=> start!13928 (= res!49229 (> (size!946 lt!21358) (size!946 lt!21359)))))

(assert (=> start!13928 (= lt!21358 Nil!772)))

(assert (=> start!13928 (= lt!21359 (Cons!770 (S!86 Charlie!33 (- 2000)) Nil!772))))

(assert (=> start!13928 e!51373))

(declare-fun b!93783 () Bool)

(declare-fun res!49230 () Bool)

(assert (=> b!93783 (=> res!49230 e!51373)))

(declare-fun content!191 (List!832) (Set S!85))

(assert (=> b!93783 (= res!49230 (not (subset (content!191 lt!21358) (content!191 lt!21359))))))

(declare-fun b!93784 () Bool)

(declare-fun lambda!11178 () Int)

(declare-fun forall!74 (List!832 Int) Bool)

(assert (=> b!93784 (= e!51373 (not (forall!74 lt!21358 lambda!11178)))))

(assert (= (and start!13928 (not res!49229)) b!93783))

(assert (= (and b!93783 (not res!49230)) b!93784))

(declare-fun m!89419 () Bool)

(assert (=> start!13928 m!89419))

(declare-fun m!89421 () Bool)

(assert (=> start!13928 m!89421))

(declare-fun m!89423 () Bool)

(assert (=> b!93783 m!89423))

(declare-fun m!89425 () Bool)

(assert (=> b!93783 m!89425))

(declare-fun m!89427 () Bool)

(assert (=> b!93784 m!89427))

(push 1)

(assert (not b!93783))

(assert (not start!13928))

(assert (not b!93784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61268 () Bool)

(declare-fun c!23016 () Bool)

(assert (=> d!61268 (= c!23016 (is-Nil!772 lt!21358))))

(declare-fun e!51376 () (Set S!85))

(assert (=> d!61268 (= (content!191 lt!21358) e!51376)))

(declare-fun b!93789 () Bool)

(assert (=> b!93789 (= e!51376 (as emptyset (Set S!85)))))

(declare-fun b!93790 () Bool)

(assert (=> b!93790 (= e!51376 (union (insert (h!3215 lt!21358) (as emptyset (Set S!85))) (content!191 (t!51309 lt!21358))))))

(assert (= (and d!61268 c!23016) b!93789))

(assert (= (and d!61268 (not c!23016)) b!93790))

(declare-fun m!89429 () Bool)

(assert (=> b!93790 m!89429))

(declare-fun m!89431 () Bool)

(assert (=> b!93790 m!89431))

(assert (=> b!93783 d!61268))

(declare-fun d!61270 () Bool)

(declare-fun c!23017 () Bool)

(assert (=> d!61270 (= c!23017 (is-Nil!772 lt!21359))))

(declare-fun e!51377 () (Set S!85))

(assert (=> d!61270 (= (content!191 lt!21359) e!51377)))

(declare-fun b!93791 () Bool)

(assert (=> b!93791 (= e!51377 (as emptyset (Set S!85)))))

(declare-fun b!93792 () Bool)

(assert (=> b!93792 (= e!51377 (union (insert (h!3215 lt!21359) (as emptyset (Set S!85))) (content!191 (t!51309 lt!21359))))))

(assert (= (and d!61270 c!23017) b!93791))

(assert (= (and d!61270 (not c!23017)) b!93792))

(declare-fun m!89433 () Bool)

(assert (=> b!93792 m!89433))

(declare-fun m!89435 () Bool)

(assert (=> b!93792 m!89435))

(assert (=> b!93783 d!61270))

(declare-fun d!61272 () Bool)

(declare-fun lt!21362 () Int)

(assert (=> d!61272 (>= lt!21362 0)))

(declare-fun e!51380 () Int)

(assert (=> d!61272 (= lt!21362 e!51380)))

(declare-fun c!23020 () Bool)

(assert (=> d!61272 (= c!23020 (is-Nil!772 lt!21358))))

(assert (=> d!61272 (= (size!946 lt!21358) lt!21362)))

(declare-fun b!93797 () Bool)

(assert (=> b!93797 (= e!51380 0)))

(declare-fun b!93798 () Bool)

(assert (=> b!93798 (= e!51380 (+ 1 (size!946 (t!51309 lt!21358))))))

(assert (= (and d!61272 c!23020) b!93797))

(assert (= (and d!61272 (not c!23020)) b!93798))

(declare-fun m!89437 () Bool)

(assert (=> b!93798 m!89437))

(assert (=> start!13928 d!61272))

(declare-fun d!61274 () Bool)

(declare-fun lt!21363 () Int)

(assert (=> d!61274 (>= lt!21363 0)))

(declare-fun e!51381 () Int)

(assert (=> d!61274 (= lt!21363 e!51381)))

(declare-fun c!23021 () Bool)

(assert (=> d!61274 (= c!23021 (is-Nil!772 lt!21359))))

(assert (=> d!61274 (= (size!946 lt!21359) lt!21363)))

(declare-fun b!93799 () Bool)

(assert (=> b!93799 (= e!51381 0)))

(declare-fun b!93800 () Bool)

(assert (=> b!93800 (= e!51381 (+ 1 (size!946 (t!51309 lt!21359))))))

(assert (= (and d!61274 c!23021) b!93799))

(assert (= (and d!61274 (not c!23021)) b!93800))

(declare-fun m!89439 () Bool)

(assert (=> b!93800 m!89439))

(assert (=> start!13928 d!61274))

(declare-fun d!61276 () Bool)

(declare-fun res!49235 () Bool)

(declare-fun e!51386 () Bool)

(assert (=> d!61276 (=> res!49235 e!51386)))

(assert (=> d!61276 (= res!49235 (is-Nil!772 lt!21358))))

(assert (=> d!61276 (= (forall!74 lt!21358 lambda!11178) e!51386)))

(declare-fun b!93805 () Bool)

(declare-fun e!51387 () Bool)

(assert (=> b!93805 (= e!51386 e!51387)))

(declare-fun res!49236 () Bool)

(assert (=> b!93805 (=> (not res!49236) (not e!51387))))

(declare-fun dynLambda!1144 (Int S!85) Bool)

(assert (=> b!93805 (= res!49236 (dynLambda!1144 lambda!11178 (h!3215 lt!21358)))))

(declare-fun b!93806 () Bool)

(assert (=> b!93806 (= e!51387 (forall!74 (t!51309 lt!21358) lambda!11178))))

(assert (= (and d!61276 (not res!49235)) b!93805))

(assert (= (and b!93805 res!49236) b!93806))

(declare-fun b_lambda!18943 () Bool)

(assert (=> (not b_lambda!18943) (not b!93805)))

(declare-fun m!89441 () Bool)

(assert (=> b!93805 m!89441))

(declare-fun m!89443 () Bool)

(assert (=> b!93806 m!89443))

(assert (=> b!93784 d!61276))

(declare-fun b_lambda!18945 () Bool)

(assert (= b_lambda!18943 (or b!93784 b_lambda!18945)))

(declare-fun bs!42608 () Bool)

(declare-fun d!61278 () Bool)

(assert (= bs!42608 (and d!61278 b!93784)))

(assert (=> bs!42608 (= (dynLambda!1144 lambda!11178 (h!3215 lt!21358)) (>= (amount!1318 (h!3215 lt!21358)) 0))))

(assert (=> b!93805 d!61278))

(push 1)

(assert (not b!93806))

(assert (not b_lambda!18945))

(assert (not b!93800))

(assert (not b!93798))

(assert (not b!93790))

(assert (not b!93792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

