; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15168 () Bool)

(assert start!15168)

(declare-fun res!49356 () Bool)

(declare-fun e!51701 () Bool)

(assert (=> start!15168 (=> res!49356 e!51701)))

(declare-datatypes () ((P!79 (Charlie!79) (Alice!79) (Bob!79))))

(declare-datatypes () ((tuple2!504 (tuple2!505 (_1!291 P!79) (_2!291 P!79)))))

(declare-datatypes () ((List!881 (Cons!819 (h!6638 tuple2!504) (t!54943 List!881)) (Nil!821))))

(declare-fun lt!21710 () List!881)

(declare-fun lt!21712 () List!881)

(declare-fun size!992 (List!881) Int)

(assert (=> start!15168 (= res!49356 (> (size!992 lt!21710) (size!992 lt!21712)))))

(assert (=> start!15168 (= lt!21710 Nil!821)))

(declare-fun lt!21711 () List!881)

(assert (=> start!15168 (= lt!21712 (t!54943 (t!54943 (t!54943 (Cons!819 (tuple2!505 Alice!79 Charlie!79) (Cons!819 (h!6638 lt!21711) (Cons!819 (h!6638 (t!54943 lt!21711)) Nil!821)))))))))

(assert (=> start!15168 (= lt!21711 (Cons!819 (tuple2!505 Charlie!79 Alice!79) (Cons!819 (tuple2!505 Charlie!79 Charlie!79) Nil!821)))))

(assert (=> start!15168 e!51701))

(declare-fun b!94746 () Bool)

(declare-fun res!49357 () Bool)

(assert (=> b!94746 (=> res!49357 e!51701)))

(declare-fun content!202 (List!881) (Set tuple2!504))

(assert (=> b!94746 (= res!49357 (not (subset (content!202 lt!21710) (content!202 lt!21712))))))

(declare-fun b!94747 () Bool)

(declare-fun lambda!11193 () Int)

(declare-fun forall!79 (List!881 Int) Bool)

(assert (=> b!94747 (= e!51701 (not (forall!79 lt!21710 lambda!11193)))))

(assert (= (and start!15168 (not res!49356)) b!94746))

(assert (= (and b!94746 (not res!49357)) b!94747))

(declare-fun m!90011 () Bool)

(assert (=> start!15168 m!90011))

(declare-fun m!90013 () Bool)

(assert (=> start!15168 m!90013))

(declare-fun m!90015 () Bool)

(assert (=> b!94746 m!90015))

(declare-fun m!90017 () Bool)

(assert (=> b!94746 m!90017))

(declare-fun m!90019 () Bool)

(assert (=> b!94747 m!90019))

(push 1)

(assert (not b!94747))

(assert (not b!94746))

(assert (not start!15168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61594 () Bool)

(declare-fun res!49362 () Bool)

(declare-fun e!51706 () Bool)

(assert (=> d!61594 (=> res!49362 e!51706)))

(assert (=> d!61594 (= res!49362 (is-Nil!821 lt!21710))))

(assert (=> d!61594 (= (forall!79 lt!21710 lambda!11193) e!51706)))

(declare-fun b!94752 () Bool)

(declare-fun e!51707 () Bool)

(assert (=> b!94752 (= e!51706 e!51707)))

(declare-fun res!49363 () Bool)

(assert (=> b!94752 (=> (not res!49363) (not e!51707))))

(declare-fun dynLambda!1149 (Int tuple2!504) Bool)

(assert (=> b!94752 (= res!49363 (dynLambda!1149 lambda!11193 (h!6638 lt!21710)))))

(declare-fun b!94753 () Bool)

(assert (=> b!94753 (= e!51707 (forall!79 (t!54943 lt!21710) lambda!11193))))

(assert (= (and d!61594 (not res!49362)) b!94752))

(assert (= (and b!94752 res!49363) b!94753))

(declare-fun b_lambda!18975 () Bool)

(assert (=> (not b_lambda!18975) (not b!94752)))

(declare-fun m!90021 () Bool)

(assert (=> b!94752 m!90021))

(declare-fun m!90023 () Bool)

(assert (=> b!94753 m!90023))

(assert (=> b!94747 d!61594))

(declare-fun d!61596 () Bool)

(declare-fun c!23275 () Bool)

(assert (=> d!61596 (= c!23275 (is-Nil!821 lt!21710))))

(declare-fun e!51710 () (Set tuple2!504))

(assert (=> d!61596 (= (content!202 lt!21710) e!51710)))

(declare-fun b!94758 () Bool)

(assert (=> b!94758 (= e!51710 (as emptyset (Set tuple2!504)))))

(declare-fun b!94759 () Bool)

(assert (=> b!94759 (= e!51710 (union (insert (h!6638 lt!21710) (as emptyset (Set tuple2!504))) (content!202 (t!54943 lt!21710))))))

(assert (= (and d!61596 c!23275) b!94758))

(assert (= (and d!61596 (not c!23275)) b!94759))

(declare-fun m!90025 () Bool)

(assert (=> b!94759 m!90025))

(declare-fun m!90027 () Bool)

(assert (=> b!94759 m!90027))

(assert (=> b!94746 d!61596))

(declare-fun d!61598 () Bool)

(declare-fun c!23276 () Bool)

(assert (=> d!61598 (= c!23276 (is-Nil!821 lt!21712))))

(declare-fun e!51711 () (Set tuple2!504))

(assert (=> d!61598 (= (content!202 lt!21712) e!51711)))

(declare-fun b!94760 () Bool)

(assert (=> b!94760 (= e!51711 (as emptyset (Set tuple2!504)))))

(declare-fun b!94761 () Bool)

(assert (=> b!94761 (= e!51711 (union (insert (h!6638 lt!21712) (as emptyset (Set tuple2!504))) (content!202 (t!54943 lt!21712))))))

(assert (= (and d!61598 c!23276) b!94760))

(assert (= (and d!61598 (not c!23276)) b!94761))

(declare-fun m!90029 () Bool)

(assert (=> b!94761 m!90029))

(declare-fun m!90031 () Bool)

(assert (=> b!94761 m!90031))

(assert (=> b!94746 d!61598))

(declare-fun d!61600 () Bool)

(declare-fun lt!21715 () Int)

(assert (=> d!61600 (>= lt!21715 0)))

(declare-fun e!51714 () Int)

(assert (=> d!61600 (= lt!21715 e!51714)))

(declare-fun c!23279 () Bool)

(assert (=> d!61600 (= c!23279 (is-Nil!821 lt!21710))))

(assert (=> d!61600 (= (size!992 lt!21710) lt!21715)))

(declare-fun b!94766 () Bool)

(assert (=> b!94766 (= e!51714 0)))

(declare-fun b!94767 () Bool)

(assert (=> b!94767 (= e!51714 (+ 1 (size!992 (t!54943 lt!21710))))))

(assert (= (and d!61600 c!23279) b!94766))

(assert (= (and d!61600 (not c!23279)) b!94767))

(declare-fun m!90033 () Bool)

(assert (=> b!94767 m!90033))

(assert (=> start!15168 d!61600))

(declare-fun d!61602 () Bool)

(declare-fun lt!21716 () Int)

(assert (=> d!61602 (>= lt!21716 0)))

(declare-fun e!51715 () Int)

(assert (=> d!61602 (= lt!21716 e!51715)))

(declare-fun c!23280 () Bool)

(assert (=> d!61602 (= c!23280 (is-Nil!821 lt!21712))))

(assert (=> d!61602 (= (size!992 lt!21712) lt!21716)))

(declare-fun b!94768 () Bool)

(assert (=> b!94768 (= e!51715 0)))

(declare-fun b!94769 () Bool)

(assert (=> b!94769 (= e!51715 (+ 1 (size!992 (t!54943 lt!21712))))))

(assert (= (and d!61602 c!23280) b!94768))

(assert (= (and d!61602 (not c!23280)) b!94769))

(declare-fun m!90035 () Bool)

(assert (=> b!94769 m!90035))

(assert (=> start!15168 d!61602))

(declare-fun b_lambda!18977 () Bool)

(assert (= b_lambda!18975 (or b!94747 b_lambda!18977)))

(declare-fun bs!43194 () Bool)

(declare-fun d!61604 () Bool)

(assert (= bs!43194 (and d!61604 b!94747)))

(assert (=> bs!43194 (= (dynLambda!1149 lambda!11193 (h!6638 lt!21710)) (not (= (_1!291 (h!6638 lt!21710)) (_2!291 (h!6638 lt!21710)))))))

(assert (=> b!94752 d!61604))

(push 1)

(assert (not b!94767))

(assert (not b!94761))

(assert (not b!94759))

(assert (not b_lambda!18977))

(assert (not b!94769))

(assert (not b!94753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

