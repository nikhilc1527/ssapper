; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13594 () Bool)

(assert start!13594)

(declare-fun res!49171 () Bool)

(declare-fun e!51283 () Bool)

(assert (=> start!13594 (=> res!49171 e!51283)))

(declare-datatypes () ((P!22 (Charlie!22) (Alice!22) (Bob!22))))

(declare-datatypes () ((S!63 (S!64 (who!926 P!22) (amount!926 Int)))))

(declare-datatypes () ((List!825 (Cons!763 (h!2605 S!63) (t!50676 List!825)) (Nil!765))))

(declare-fun lt!21286 () List!825)

(declare-fun lt!21287 () List!825)

(declare-fun size!939 (List!825) Int)

(assert (=> start!13594 (= res!49171 (> (size!939 lt!21286) (size!939 lt!21287)))))

(assert (=> start!13594 (= lt!21286 Nil!765)))

(assert (=> start!13594 (= lt!21287 Nil!765)))

(assert (=> start!13594 e!51283))

(declare-fun b!93631 () Bool)

(declare-fun res!49170 () Bool)

(assert (=> b!93631 (=> res!49170 e!51283)))

(declare-fun content!187 (List!825) (Set S!63))

(assert (=> b!93631 (= res!49170 (not (subset (content!187 lt!21286) (content!187 lt!21287))))))

(declare-fun b!93632 () Bool)

(declare-fun lambda!11166 () Int)

(declare-fun forall!70 (List!825 Int) Bool)

(assert (=> b!93632 (= e!51283 (not (forall!70 lt!21286 lambda!11166)))))

(assert (= (and start!13594 (not res!49171)) b!93631))

(assert (= (and b!93631 (not res!49170)) b!93632))

(declare-fun m!89261 () Bool)

(assert (=> start!13594 m!89261))

(declare-fun m!89263 () Bool)

(assert (=> start!13594 m!89263))

(declare-fun m!89265 () Bool)

(assert (=> b!93631 m!89265))

(declare-fun m!89267 () Bool)

(assert (=> b!93631 m!89267))

(declare-fun m!89269 () Bool)

(assert (=> b!93632 m!89269))

(push 1)

(assert (not b!93632))

(assert (not b!93631))

(assert (not start!13594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61184 () Bool)

(declare-fun res!49176 () Bool)

(declare-fun e!51288 () Bool)

(assert (=> d!61184 (=> res!49176 e!51288)))

(assert (=> d!61184 (= res!49176 (is-Nil!765 lt!21286))))

(assert (=> d!61184 (= (forall!70 lt!21286 lambda!11166) e!51288)))

(declare-fun b!93637 () Bool)

(declare-fun e!51289 () Bool)

(assert (=> b!93637 (= e!51288 e!51289)))

(declare-fun res!49177 () Bool)

(assert (=> b!93637 (=> (not res!49177) (not e!51289))))

(declare-fun dynLambda!1140 (Int S!63) Bool)

(assert (=> b!93637 (= res!49177 (dynLambda!1140 lambda!11166 (h!2605 lt!21286)))))

(declare-fun b!93638 () Bool)

(assert (=> b!93638 (= e!51289 (forall!70 (t!50676 lt!21286) lambda!11166))))

(assert (= (and d!61184 (not res!49176)) b!93637))

(assert (= (and b!93637 res!49177) b!93638))

(declare-fun b_lambda!18919 () Bool)

(assert (=> (not b_lambda!18919) (not b!93637)))

(declare-fun m!89271 () Bool)

(assert (=> b!93637 m!89271))

(declare-fun m!89273 () Bool)

(assert (=> b!93638 m!89273))

(assert (=> b!93632 d!61184))

(declare-fun d!61186 () Bool)

(declare-fun c!22966 () Bool)

(assert (=> d!61186 (= c!22966 (is-Nil!765 lt!21286))))

(declare-fun e!51292 () (Set S!63))

(assert (=> d!61186 (= (content!187 lt!21286) e!51292)))

(declare-fun b!93643 () Bool)

(assert (=> b!93643 (= e!51292 (as emptyset (Set S!63)))))

(declare-fun b!93644 () Bool)

(assert (=> b!93644 (= e!51292 (union (insert (h!2605 lt!21286) (as emptyset (Set S!63))) (content!187 (t!50676 lt!21286))))))

(assert (= (and d!61186 c!22966) b!93643))

(assert (= (and d!61186 (not c!22966)) b!93644))

(declare-fun m!89275 () Bool)

(assert (=> b!93644 m!89275))

(declare-fun m!89277 () Bool)

(assert (=> b!93644 m!89277))

(assert (=> b!93631 d!61186))

(declare-fun d!61188 () Bool)

(declare-fun c!22967 () Bool)

(assert (=> d!61188 (= c!22967 (is-Nil!765 lt!21287))))

(declare-fun e!51293 () (Set S!63))

(assert (=> d!61188 (= (content!187 lt!21287) e!51293)))

(declare-fun b!93645 () Bool)

(assert (=> b!93645 (= e!51293 (as emptyset (Set S!63)))))

(declare-fun b!93646 () Bool)

(assert (=> b!93646 (= e!51293 (union (insert (h!2605 lt!21287) (as emptyset (Set S!63))) (content!187 (t!50676 lt!21287))))))

(assert (= (and d!61188 c!22967) b!93645))

(assert (= (and d!61188 (not c!22967)) b!93646))

(declare-fun m!89279 () Bool)

(assert (=> b!93646 m!89279))

(declare-fun m!89281 () Bool)

(assert (=> b!93646 m!89281))

(assert (=> b!93631 d!61188))

(declare-fun d!61190 () Bool)

(declare-fun lt!21290 () Int)

(assert (=> d!61190 (>= lt!21290 0)))

(declare-fun e!51296 () Int)

(assert (=> d!61190 (= lt!21290 e!51296)))

(declare-fun c!22970 () Bool)

(assert (=> d!61190 (= c!22970 (is-Nil!765 lt!21286))))

(assert (=> d!61190 (= (size!939 lt!21286) lt!21290)))

(declare-fun b!93651 () Bool)

(assert (=> b!93651 (= e!51296 0)))

(declare-fun b!93652 () Bool)

(assert (=> b!93652 (= e!51296 (+ 1 (size!939 (t!50676 lt!21286))))))

(assert (= (and d!61190 c!22970) b!93651))

(assert (= (and d!61190 (not c!22970)) b!93652))

(declare-fun m!89283 () Bool)

(assert (=> b!93652 m!89283))

(assert (=> start!13594 d!61190))

(declare-fun d!61192 () Bool)

(declare-fun lt!21291 () Int)

(assert (=> d!61192 (>= lt!21291 0)))

(declare-fun e!51297 () Int)

(assert (=> d!61192 (= lt!21291 e!51297)))

(declare-fun c!22971 () Bool)

(assert (=> d!61192 (= c!22971 (is-Nil!765 lt!21287))))

(assert (=> d!61192 (= (size!939 lt!21287) lt!21291)))

(declare-fun b!93653 () Bool)

(assert (=> b!93653 (= e!51297 0)))

(declare-fun b!93654 () Bool)

(assert (=> b!93654 (= e!51297 (+ 1 (size!939 (t!50676 lt!21287))))))

(assert (= (and d!61192 c!22971) b!93653))

(assert (= (and d!61192 (not c!22971)) b!93654))

(declare-fun m!89285 () Bool)

(assert (=> b!93654 m!89285))

(assert (=> start!13594 d!61192))

(declare-fun b_lambda!18921 () Bool)

(assert (= b_lambda!18919 (or b!93632 b_lambda!18921)))

(declare-fun bs!42446 () Bool)

(declare-fun d!61194 () Bool)

(assert (= bs!42446 (and d!61194 b!93632)))

(assert (=> bs!42446 (= (dynLambda!1140 lambda!11166 (h!2605 lt!21286)) (< (amount!926 (h!2605 lt!21286)) 0))))

(assert (=> b!93637 d!61194))

(push 1)

(assert (not b!93652))

(assert (not b!93638))

(assert (not b!93644))

(assert (not b_lambda!18921))

(assert (not b!93646))

(assert (not b!93654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

