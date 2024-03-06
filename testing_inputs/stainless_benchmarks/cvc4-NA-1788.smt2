; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12202 () Bool)

(assert start!12202)

(declare-fun res!47820 () Bool)

(declare-fun e!49812 () Bool)

(assert (=> start!12202 (=> (not res!47820) (not e!49812))))

(declare-datatypes () ((List!780 (Cons!728 (h!1158 (_ BitVec 32)) (t!49090 List!780)) (Nil!730))))

(declare-fun nats!2 () List!780)

(declare-fun lambda!11124 () Int)

(declare-fun forall!63 (List!780 Int) Bool)

(assert (=> start!12202 (= res!47820 (forall!63 nats!2 lambda!11124))))

(assert (=> start!12202 e!49812))

(assert (=> start!12202 true))

(declare-fun b!91117 () Bool)

(declare-fun res!47821 () Bool)

(assert (=> b!91117 (=> (not res!47821) (not e!49812))))

(declare-fun x$4!144 () (_ BitVec 32))

(declare-fun lambda!11125 () Int)

(declare-fun foldLeft!7 (List!780 (_ BitVec 32) Int) (_ BitVec 32))

(assert (=> b!91117 (= res!47821 (= x$4!144 (foldLeft!7 nats!2 #b00000000000000000000000000000000 lambda!11125)))))

(declare-fun b!91118 () Bool)

(assert (=> b!91118 (= e!49812 (bvslt x$4!144 #b00000000000000000000000000000000))))

(assert (= (and start!12202 res!47820) b!91117))

(assert (= (and b!91117 res!47821) b!91118))

(declare-fun m!86848 () Bool)

(assert (=> start!12202 m!86848))

(declare-fun m!86850 () Bool)

(assert (=> b!91117 m!86850))

(push 1)

(assert (not b!91117))

(assert (not start!12202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59790 () Bool)

(declare-fun c!22178 () Bool)

(assert (=> d!59790 (= c!22178 (is-Nil!730 nats!2))))

(declare-fun e!49815 () (_ BitVec 32))

(assert (=> d!59790 (= (foldLeft!7 nats!2 #b00000000000000000000000000000000 lambda!11125) e!49815)))

(declare-fun b!91123 () Bool)

(assert (=> b!91123 (= e!49815 #b00000000000000000000000000000000)))

(declare-fun b!91124 () Bool)

(declare-fun dynLambda!1128 (Int (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!91124 (= e!49815 (foldLeft!7 (t!49090 nats!2) (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) lambda!11125))))

(assert (= (and d!59790 c!22178) b!91123))

(assert (= (and d!59790 (not c!22178)) b!91124))

(declare-fun b_lambda!18579 () Bool)

(assert (=> (not b_lambda!18579) (not b!91124)))

(declare-fun m!86852 () Bool)

(assert (=> b!91124 m!86852))

(assert (=> b!91124 m!86852))

(declare-fun m!86854 () Bool)

(assert (=> b!91124 m!86854))

(assert (=> b!91117 d!59790))

(declare-fun d!59792 () Bool)

(declare-fun res!47826 () Bool)

(declare-fun e!49820 () Bool)

(assert (=> d!59792 (=> res!47826 e!49820)))

(assert (=> d!59792 (= res!47826 (is-Nil!730 nats!2))))

(assert (=> d!59792 (= (forall!63 nats!2 lambda!11124) e!49820)))

(declare-fun b!91129 () Bool)

(declare-fun e!49821 () Bool)

(assert (=> b!91129 (= e!49820 e!49821)))

(declare-fun res!47827 () Bool)

(assert (=> b!91129 (=> (not res!47827) (not e!49821))))

(declare-fun dynLambda!1129 (Int (_ BitVec 32)) Bool)

(assert (=> b!91129 (= res!47827 (dynLambda!1129 lambda!11124 (h!1158 nats!2)))))

(declare-fun b!91130 () Bool)

(assert (=> b!91130 (= e!49821 (forall!63 (t!49090 nats!2) lambda!11124))))

(assert (= (and d!59792 (not res!47826)) b!91129))

(assert (= (and b!91129 res!47827) b!91130))

(declare-fun b_lambda!18581 () Bool)

(assert (=> (not b_lambda!18581) (not b!91129)))

(declare-fun m!86856 () Bool)

(assert (=> b!91129 m!86856))

(declare-fun m!86858 () Bool)

(assert (=> b!91130 m!86858))

(assert (=> start!12202 d!59792))

(declare-fun b_lambda!18583 () Bool)

(assert (= b_lambda!18581 (or start!12202 b_lambda!18583)))

(declare-fun bs!41777 () Bool)

(declare-fun d!59794 () Bool)

(assert (= bs!41777 (and d!59794 start!12202)))

(assert (=> bs!41777 (= (dynLambda!1129 lambda!11124 (h!1158 nats!2)) (bvsge (h!1158 nats!2) #b00000000000000000000000000000000))))

(assert (=> b!91129 d!59794))

(declare-fun b_lambda!18585 () Bool)

(assert (= b_lambda!18579 (or b!91117 b_lambda!18585)))

(declare-fun bs!41778 () Bool)

(declare-fun d!59796 () Bool)

(assert (= bs!41778 (and d!59796 b!91117)))

(assert (=> bs!41778 (= (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (bvadd #b00000000000000000000000000000000 (h!1158 nats!2)))))

(assert (=> b!91124 d!59796))

(push 1)

(assert (not b!91124))

(assert (not b!91130))

(assert (not b_lambda!18583))

(assert (not b_lambda!18585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59798 () Bool)

(declare-fun c!22179 () Bool)

(assert (=> d!59798 (= c!22179 (is-Nil!730 (t!49090 nats!2)))))

(declare-fun e!49822 () (_ BitVec 32))

(assert (=> d!59798 (= (foldLeft!7 (t!49090 nats!2) (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) lambda!11125) e!49822)))

(declare-fun b!91131 () Bool)

(assert (=> b!91131 (= e!49822 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)))))

(declare-fun b!91132 () Bool)

(assert (=> b!91132 (= e!49822 (foldLeft!7 (t!49090 (t!49090 nats!2)) (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) lambda!11125))))

(assert (= (and d!59798 c!22179) b!91131))

(assert (= (and d!59798 (not c!22179)) b!91132))

(declare-fun b_lambda!18587 () Bool)

(assert (=> (not b_lambda!18587) (not b!91132)))

(assert (=> b!91132 m!86852))

(declare-fun m!86860 () Bool)

(assert (=> b!91132 m!86860))

(assert (=> b!91132 m!86860))

(declare-fun m!86862 () Bool)

(assert (=> b!91132 m!86862))

(assert (=> b!91124 d!59798))

(declare-fun d!59800 () Bool)

(declare-fun res!47828 () Bool)

(declare-fun e!49823 () Bool)

(assert (=> d!59800 (=> res!47828 e!49823)))

(assert (=> d!59800 (= res!47828 (is-Nil!730 (t!49090 nats!2)))))

(assert (=> d!59800 (= (forall!63 (t!49090 nats!2) lambda!11124) e!49823)))

(declare-fun b!91133 () Bool)

(declare-fun e!49824 () Bool)

(assert (=> b!91133 (= e!49823 e!49824)))

(declare-fun res!47829 () Bool)

(assert (=> b!91133 (=> (not res!47829) (not e!49824))))

(assert (=> b!91133 (= res!47829 (dynLambda!1129 lambda!11124 (h!1158 (t!49090 nats!2))))))

(declare-fun b!91134 () Bool)

(assert (=> b!91134 (= e!49824 (forall!63 (t!49090 (t!49090 nats!2)) lambda!11124))))

(assert (= (and d!59800 (not res!47828)) b!91133))

(assert (= (and b!91133 res!47829) b!91134))

(declare-fun b_lambda!18589 () Bool)

(assert (=> (not b_lambda!18589) (not b!91133)))

(declare-fun m!86864 () Bool)

(assert (=> b!91133 m!86864))

(declare-fun m!86866 () Bool)

(assert (=> b!91134 m!86866))

(assert (=> b!91130 d!59800))

(declare-fun b_lambda!18591 () Bool)

(assert (= b_lambda!18587 (or b!91117 b_lambda!18591)))

(declare-fun bs!41779 () Bool)

(declare-fun d!59802 () Bool)

(assert (= bs!41779 (and d!59802 b!91117)))

(assert (=> bs!41779 (= (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) (bvadd (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))))))

(assert (=> b!91132 d!59802))

(declare-fun b_lambda!18593 () Bool)

(assert (= b_lambda!18589 (or start!12202 b_lambda!18593)))

(declare-fun bs!41780 () Bool)

(declare-fun d!59804 () Bool)

(assert (= bs!41780 (and d!59804 start!12202)))

(assert (=> bs!41780 (= (dynLambda!1129 lambda!11124 (h!1158 (t!49090 nats!2))) (bvsge (h!1158 (t!49090 nats!2)) #b00000000000000000000000000000000))))

(assert (=> b!91133 d!59804))

(push 1)

(assert (not b_lambda!18585))

(assert (not b_lambda!18593))

(assert (not b_lambda!18591))

(assert (not b_lambda!18583))

(assert (not b!91132))

(assert (not b!91134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59806 () Bool)

(declare-fun c!22180 () Bool)

(assert (=> d!59806 (= c!22180 (is-Nil!730 (t!49090 (t!49090 nats!2))))))

(declare-fun e!49825 () (_ BitVec 32))

(assert (=> d!59806 (= (foldLeft!7 (t!49090 (t!49090 nats!2)) (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) lambda!11125) e!49825)))

(declare-fun b!91135 () Bool)

(assert (=> b!91135 (= e!49825 (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))))))

(declare-fun b!91136 () Bool)

(assert (=> b!91136 (= e!49825 (foldLeft!7 (t!49090 (t!49090 (t!49090 nats!2))) (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) (h!1158 (t!49090 (t!49090 nats!2)))) lambda!11125))))

(assert (= (and d!59806 c!22180) b!91135))

(assert (= (and d!59806 (not c!22180)) b!91136))

(declare-fun b_lambda!18595 () Bool)

(assert (=> (not b_lambda!18595) (not b!91136)))

(assert (=> b!91136 m!86860))

(declare-fun m!86868 () Bool)

(assert (=> b!91136 m!86868))

(assert (=> b!91136 m!86868))

(declare-fun m!86870 () Bool)

(assert (=> b!91136 m!86870))

(assert (=> b!91132 d!59806))

(declare-fun d!59808 () Bool)

(declare-fun res!47830 () Bool)

(declare-fun e!49826 () Bool)

(assert (=> d!59808 (=> res!47830 e!49826)))

(assert (=> d!59808 (= res!47830 (is-Nil!730 (t!49090 (t!49090 nats!2))))))

(assert (=> d!59808 (= (forall!63 (t!49090 (t!49090 nats!2)) lambda!11124) e!49826)))

(declare-fun b!91137 () Bool)

(declare-fun e!49827 () Bool)

(assert (=> b!91137 (= e!49826 e!49827)))

(declare-fun res!47831 () Bool)

(assert (=> b!91137 (=> (not res!47831) (not e!49827))))

(assert (=> b!91137 (= res!47831 (dynLambda!1129 lambda!11124 (h!1158 (t!49090 (t!49090 nats!2)))))))

(declare-fun b!91138 () Bool)

(assert (=> b!91138 (= e!49827 (forall!63 (t!49090 (t!49090 (t!49090 nats!2))) lambda!11124))))

(assert (= (and d!59808 (not res!47830)) b!91137))

(assert (= (and b!91137 res!47831) b!91138))

(declare-fun b_lambda!18597 () Bool)

(assert (=> (not b_lambda!18597) (not b!91137)))

(declare-fun m!86872 () Bool)

(assert (=> b!91137 m!86872))

(declare-fun m!86874 () Bool)

(assert (=> b!91138 m!86874))

(assert (=> b!91134 d!59808))

(declare-fun b_lambda!18599 () Bool)

(assert (= b_lambda!18597 (or start!12202 b_lambda!18599)))

(declare-fun bs!41781 () Bool)

(declare-fun d!59810 () Bool)

(assert (= bs!41781 (and d!59810 start!12202)))

(assert (=> bs!41781 (= (dynLambda!1129 lambda!11124 (h!1158 (t!49090 (t!49090 nats!2)))) (bvsge (h!1158 (t!49090 (t!49090 nats!2))) #b00000000000000000000000000000000))))

(assert (=> b!91137 d!59810))

(declare-fun b_lambda!18601 () Bool)

(assert (= b_lambda!18595 (or b!91117 b_lambda!18601)))

(declare-fun bs!41782 () Bool)

(declare-fun d!59812 () Bool)

(assert (= bs!41782 (and d!59812 b!91117)))

(assert (=> bs!41782 (= (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) (h!1158 (t!49090 (t!49090 nats!2)))) (bvadd (dynLambda!1128 lambda!11125 (dynLambda!1128 lambda!11125 #b00000000000000000000000000000000 (h!1158 nats!2)) (h!1158 (t!49090 nats!2))) (h!1158 (t!49090 (t!49090 nats!2)))))))

(assert (=> b!91136 d!59812))

(push 1)

(assert (not b_lambda!18601))

(assert (not b!91136))

(assert (not b_lambda!18585))

(assert (not b!91138))

(assert (not b_lambda!18593))

(assert (not b_lambda!18591))

(assert (not b_lambda!18583))

(assert (not b_lambda!18599))

(check-sat)

(get-model)

(pop 1)

