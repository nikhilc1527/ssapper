; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13610 () Bool)

(assert start!13610)

(declare-fun res!49199 () Bool)

(declare-fun e!51323 () Bool)

(assert (=> start!13610 (=> res!49199 e!51323)))

(declare-datatypes () ((P!24 (Charlie!24) (Alice!24) (Bob!24))))

(declare-datatypes () ((S!67 (S!68 (who!937 P!24) (amount!937 Int)))))

(declare-datatypes () ((List!827 (Cons!765 (h!2626 S!67) (t!50697 List!827)) (Nil!767))))

(declare-fun lt!21310 () List!827)

(declare-fun lt!21312 () List!827)

(declare-fun size!941 (List!827) Int)

(assert (=> start!13610 (= res!49199 (> (size!941 lt!21310) (size!941 lt!21312)))))

(declare-fun lt!21311 () List!827)

(assert (=> start!13610 (= lt!21310 (Cons!765 (h!2626 lt!21311) Nil!767))))

(assert (=> start!13610 (= lt!21312 (Cons!765 (S!68 Alice!24 2000) lt!21311))))

(assert (=> start!13610 (= lt!21311 (Cons!765 (S!68 Charlie!24 (- 2000)) Nil!767))))

(assert (=> start!13610 e!51323))

(declare-fun b!93697 () Bool)

(declare-fun res!49198 () Bool)

(assert (=> b!93697 (=> res!49198 e!51323)))

(declare-fun content!189 (List!827) (Set S!67))

(assert (=> b!93697 (= res!49198 (not (subset (content!189 lt!21310) (content!189 lt!21312))))))

(declare-fun b!93698 () Bool)

(declare-fun lambda!11172 () Int)

(declare-fun forall!72 (List!827 Int) Bool)

(assert (=> b!93698 (= e!51323 (not (forall!72 lt!21310 lambda!11172)))))

(assert (= (and start!13610 (not res!49199)) b!93697))

(assert (= (and b!93697 (not res!49198)) b!93698))

(declare-fun m!89329 () Bool)

(assert (=> start!13610 m!89329))

(declare-fun m!89331 () Bool)

(assert (=> start!13610 m!89331))

(declare-fun m!89333 () Bool)

(assert (=> b!93697 m!89333))

(declare-fun m!89335 () Bool)

(assert (=> b!93697 m!89335))

(declare-fun m!89337 () Bool)

(assert (=> b!93698 m!89337))

(push 1)

(assert (not b!93697))

(assert (not b!93698))

(assert (not start!13610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61220 () Bool)

(declare-fun c!22986 () Bool)

(assert (=> d!61220 (= c!22986 (is-Nil!767 lt!21310))))

(declare-fun e!51326 () (Set S!67))

(assert (=> d!61220 (= (content!189 lt!21310) e!51326)))

(declare-fun b!93703 () Bool)

(assert (=> b!93703 (= e!51326 (as emptyset (Set S!67)))))

(declare-fun b!93704 () Bool)

(assert (=> b!93704 (= e!51326 (union (insert (h!2626 lt!21310) (as emptyset (Set S!67))) (content!189 (t!50697 lt!21310))))))

(assert (= (and d!61220 c!22986) b!93703))

(assert (= (and d!61220 (not c!22986)) b!93704))

(declare-fun m!89339 () Bool)

(assert (=> b!93704 m!89339))

(declare-fun m!89341 () Bool)

(assert (=> b!93704 m!89341))

(assert (=> b!93697 d!61220))

(declare-fun d!61222 () Bool)

(declare-fun c!22987 () Bool)

(assert (=> d!61222 (= c!22987 (is-Nil!767 lt!21312))))

(declare-fun e!51327 () (Set S!67))

(assert (=> d!61222 (= (content!189 lt!21312) e!51327)))

(declare-fun b!93705 () Bool)

(assert (=> b!93705 (= e!51327 (as emptyset (Set S!67)))))

(declare-fun b!93706 () Bool)

(assert (=> b!93706 (= e!51327 (union (insert (h!2626 lt!21312) (as emptyset (Set S!67))) (content!189 (t!50697 lt!21312))))))

(assert (= (and d!61222 c!22987) b!93705))

(assert (= (and d!61222 (not c!22987)) b!93706))

(declare-fun m!89343 () Bool)

(assert (=> b!93706 m!89343))

(declare-fun m!89345 () Bool)

(assert (=> b!93706 m!89345))

(assert (=> b!93697 d!61222))

(declare-fun d!61224 () Bool)

(declare-fun res!49204 () Bool)

(declare-fun e!51332 () Bool)

(assert (=> d!61224 (=> res!49204 e!51332)))

(assert (=> d!61224 (= res!49204 (is-Nil!767 lt!21310))))

(assert (=> d!61224 (= (forall!72 lt!21310 lambda!11172) e!51332)))

(declare-fun b!93711 () Bool)

(declare-fun e!51333 () Bool)

(assert (=> b!93711 (= e!51332 e!51333)))

(declare-fun res!49205 () Bool)

(assert (=> b!93711 (=> (not res!49205) (not e!51333))))

(declare-fun dynLambda!1142 (Int S!67) Bool)

(assert (=> b!93711 (= res!49205 (dynLambda!1142 lambda!11172 (h!2626 lt!21310)))))

(declare-fun b!93712 () Bool)

(assert (=> b!93712 (= e!51333 (forall!72 (t!50697 lt!21310) lambda!11172))))

(assert (= (and d!61224 (not res!49204)) b!93711))

(assert (= (and b!93711 res!49205) b!93712))

(declare-fun b_lambda!18931 () Bool)

(assert (=> (not b_lambda!18931) (not b!93711)))

(declare-fun m!89347 () Bool)

(assert (=> b!93711 m!89347))

(declare-fun m!89349 () Bool)

(assert (=> b!93712 m!89349))

(assert (=> b!93698 d!61224))

(declare-fun d!61226 () Bool)

(declare-fun lt!21315 () Int)

(assert (=> d!61226 (>= lt!21315 0)))

(declare-fun e!51336 () Int)

(assert (=> d!61226 (= lt!21315 e!51336)))

(declare-fun c!22990 () Bool)

(assert (=> d!61226 (= c!22990 (is-Nil!767 lt!21310))))

(assert (=> d!61226 (= (size!941 lt!21310) lt!21315)))

(declare-fun b!93717 () Bool)

(assert (=> b!93717 (= e!51336 0)))

(declare-fun b!93718 () Bool)

(assert (=> b!93718 (= e!51336 (+ 1 (size!941 (t!50697 lt!21310))))))

(assert (= (and d!61226 c!22990) b!93717))

(assert (= (and d!61226 (not c!22990)) b!93718))

(declare-fun m!89351 () Bool)

(assert (=> b!93718 m!89351))

(assert (=> start!13610 d!61226))

(declare-fun d!61228 () Bool)

(declare-fun lt!21316 () Int)

(assert (=> d!61228 (>= lt!21316 0)))

(declare-fun e!51337 () Int)

(assert (=> d!61228 (= lt!21316 e!51337)))

(declare-fun c!22991 () Bool)

(assert (=> d!61228 (= c!22991 (is-Nil!767 lt!21312))))

(assert (=> d!61228 (= (size!941 lt!21312) lt!21316)))

(declare-fun b!93719 () Bool)

(assert (=> b!93719 (= e!51337 0)))

(declare-fun b!93720 () Bool)

(assert (=> b!93720 (= e!51337 (+ 1 (size!941 (t!50697 lt!21312))))))

(assert (= (and d!61228 c!22991) b!93719))

(assert (= (and d!61228 (not c!22991)) b!93720))

(declare-fun m!89353 () Bool)

(assert (=> b!93720 m!89353))

(assert (=> start!13610 d!61228))

(declare-fun b_lambda!18933 () Bool)

(assert (= b_lambda!18931 (or b!93698 b_lambda!18933)))

(declare-fun bs!42451 () Bool)

(declare-fun d!61230 () Bool)

(assert (= bs!42451 (and d!61230 b!93698)))

(assert (=> bs!42451 (= (dynLambda!1142 lambda!11172 (h!2626 lt!21310)) (< (amount!937 (h!2626 lt!21310)) 0))))

(assert (=> b!93711 d!61230))

(push 1)

(assert (not b!93720))

(assert (not b_lambda!18933))

(assert (not b!93704))

(assert (not b!93712))

(assert (not b!93718))

(assert (not b!93706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61232 () Bool)

(declare-fun c!22992 () Bool)

(assert (=> d!61232 (= c!22992 (is-Nil!767 (t!50697 lt!21312)))))

(declare-fun e!51338 () (Set S!67))

(assert (=> d!61232 (= (content!189 (t!50697 lt!21312)) e!51338)))

(declare-fun b!93721 () Bool)

(assert (=> b!93721 (= e!51338 (as emptyset (Set S!67)))))

(declare-fun b!93722 () Bool)

(assert (=> b!93722 (= e!51338 (union (insert (h!2626 (t!50697 lt!21312)) (as emptyset (Set S!67))) (content!189 (t!50697 (t!50697 lt!21312)))))))

(assert (= (and d!61232 c!22992) b!93721))

(assert (= (and d!61232 (not c!22992)) b!93722))

(declare-fun m!89355 () Bool)

(assert (=> b!93722 m!89355))

(declare-fun m!89357 () Bool)

(assert (=> b!93722 m!89357))

(assert (=> b!93706 d!61232))

(declare-fun d!61234 () Bool)

(declare-fun lt!21317 () Int)

(assert (=> d!61234 (>= lt!21317 0)))

(declare-fun e!51339 () Int)

(assert (=> d!61234 (= lt!21317 e!51339)))

(declare-fun c!22993 () Bool)

(assert (=> d!61234 (= c!22993 (is-Nil!767 (t!50697 lt!21312)))))

(assert (=> d!61234 (= (size!941 (t!50697 lt!21312)) lt!21317)))

(declare-fun b!93723 () Bool)

(assert (=> b!93723 (= e!51339 0)))

(declare-fun b!93724 () Bool)

(assert (=> b!93724 (= e!51339 (+ 1 (size!941 (t!50697 (t!50697 lt!21312)))))))

(assert (= (and d!61234 c!22993) b!93723))

(assert (= (and d!61234 (not c!22993)) b!93724))

(declare-fun m!89359 () Bool)

(assert (=> b!93724 m!89359))

(assert (=> b!93720 d!61234))

(declare-fun d!61236 () Bool)

(declare-fun res!49206 () Bool)

(declare-fun e!51340 () Bool)

(assert (=> d!61236 (=> res!49206 e!51340)))

(assert (=> d!61236 (= res!49206 (is-Nil!767 (t!50697 lt!21310)))))

(assert (=> d!61236 (= (forall!72 (t!50697 lt!21310) lambda!11172) e!51340)))

(declare-fun b!93725 () Bool)

(declare-fun e!51341 () Bool)

(assert (=> b!93725 (= e!51340 e!51341)))

(declare-fun res!49207 () Bool)

(assert (=> b!93725 (=> (not res!49207) (not e!51341))))

(assert (=> b!93725 (= res!49207 (dynLambda!1142 lambda!11172 (h!2626 (t!50697 lt!21310))))))

(declare-fun b!93726 () Bool)

(assert (=> b!93726 (= e!51341 (forall!72 (t!50697 (t!50697 lt!21310)) lambda!11172))))

(assert (= (and d!61236 (not res!49206)) b!93725))

(assert (= (and b!93725 res!49207) b!93726))

(declare-fun b_lambda!18935 () Bool)

(assert (=> (not b_lambda!18935) (not b!93725)))

(declare-fun m!89361 () Bool)

(assert (=> b!93725 m!89361))

(declare-fun m!89363 () Bool)

(assert (=> b!93726 m!89363))

(assert (=> b!93712 d!61236))

(declare-fun d!61238 () Bool)

(declare-fun c!22994 () Bool)

(assert (=> d!61238 (= c!22994 (is-Nil!767 (t!50697 lt!21310)))))

(declare-fun e!51342 () (Set S!67))

(assert (=> d!61238 (= (content!189 (t!50697 lt!21310)) e!51342)))

(declare-fun b!93727 () Bool)

(assert (=> b!93727 (= e!51342 (as emptyset (Set S!67)))))

(declare-fun b!93728 () Bool)

(assert (=> b!93728 (= e!51342 (union (insert (h!2626 (t!50697 lt!21310)) (as emptyset (Set S!67))) (content!189 (t!50697 (t!50697 lt!21310)))))))

(assert (= (and d!61238 c!22994) b!93727))

(assert (= (and d!61238 (not c!22994)) b!93728))

(declare-fun m!89365 () Bool)

(assert (=> b!93728 m!89365))

(declare-fun m!89367 () Bool)

(assert (=> b!93728 m!89367))

(assert (=> b!93704 d!61238))

(declare-fun d!61240 () Bool)

(declare-fun lt!21318 () Int)

(assert (=> d!61240 (>= lt!21318 0)))

(declare-fun e!51343 () Int)

(assert (=> d!61240 (= lt!21318 e!51343)))

(declare-fun c!22995 () Bool)

(assert (=> d!61240 (= c!22995 (is-Nil!767 (t!50697 lt!21310)))))

(assert (=> d!61240 (= (size!941 (t!50697 lt!21310)) lt!21318)))

(declare-fun b!93729 () Bool)

(assert (=> b!93729 (= e!51343 0)))

(declare-fun b!93730 () Bool)

(assert (=> b!93730 (= e!51343 (+ 1 (size!941 (t!50697 (t!50697 lt!21310)))))))

(assert (= (and d!61240 c!22995) b!93729))

(assert (= (and d!61240 (not c!22995)) b!93730))

(declare-fun m!89369 () Bool)

(assert (=> b!93730 m!89369))

(assert (=> b!93718 d!61240))

(declare-fun b_lambda!18937 () Bool)

(assert (= b_lambda!18935 (or b!93698 b_lambda!18937)))

(declare-fun bs!42452 () Bool)

(declare-fun d!61242 () Bool)

(assert (= bs!42452 (and d!61242 b!93698)))

(assert (=> bs!42452 (= (dynLambda!1142 lambda!11172 (h!2626 (t!50697 lt!21310))) (< (amount!937 (h!2626 (t!50697 lt!21310))) 0))))

(assert (=> b!93725 d!61242))

(push 1)

(assert (not b_lambda!18933))

(assert (not b!93730))

(assert (not b!93722))

(assert (not b!93724))

(assert (not b_lambda!18937))

(assert (not b!93728))

(assert (not b!93726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

