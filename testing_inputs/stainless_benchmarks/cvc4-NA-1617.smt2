; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11246 () Bool)

(assert start!11246)

(declare-fun b!85849 () Bool)

(assert (=> b!85849 true))

(declare-fun res!44594 () Bool)

(declare-fun e!46574 () Bool)

(assert (=> start!11246 (=> (not res!44594) (not e!46574))))

(declare-datatypes () ((List!715 (Cons!672 (h!1045 Int) (t!48160 List!715)) (Nil!674))))

(declare-fun ls!53 () List!715)

(assert (=> start!11246 (= res!44594 (not (is-Cons!672 ls!53)))))

(assert (=> start!11246 e!46574))

(assert (=> start!11246 true))

(declare-fun lambda!10818 () Int)

(declare-fun isSorted!1 (List!715) Bool)

(declare-fun filter!48 (List!715 Int) List!715)

(assert (=> b!85849 (= e!46574 (not (isSorted!1 (filter!48 ls!53 lambda!10818))))))

(assert (= (and start!11246 res!44594) b!85849))

(declare-fun m!81708 () Bool)

(assert (=> b!85849 m!81708))

(assert (=> b!85849 m!81708))

(declare-fun m!81710 () Bool)

(assert (=> b!85849 m!81710))

(push 1)

(assert (not b!85849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57553 () Bool)

(declare-fun res!44599 () Bool)

(declare-fun e!46579 () Bool)

(assert (=> d!57553 (=> res!44599 e!46579)))

(assert (=> d!57553 (= res!44599 (not (and (is-Cons!672 (filter!48 ls!53 lambda!10818)) (is-Cons!672 (t!48160 (filter!48 ls!53 lambda!10818))))))))

(assert (=> d!57553 (= (isSorted!1 (filter!48 ls!53 lambda!10818)) e!46579)))

(declare-fun b!85856 () Bool)

(declare-fun e!46580 () Bool)

(assert (=> b!85856 (= e!46579 e!46580)))

(declare-fun res!44600 () Bool)

(assert (=> b!85856 (=> (not res!44600) (not e!46580))))

(assert (=> b!85856 (= res!44600 (<= (h!1045 (filter!48 ls!53 lambda!10818)) (h!1045 (t!48160 (filter!48 ls!53 lambda!10818)))))))

(declare-fun b!85857 () Bool)

(assert (=> b!85857 (= e!46580 (isSorted!1 (t!48160 (filter!48 ls!53 lambda!10818))))))

(assert (= (and d!57553 (not res!44599)) b!85856))

(assert (= (and b!85856 res!44600) b!85857))

(declare-fun m!81712 () Bool)

(assert (=> b!85857 m!81712))

(assert (=> b!85849 d!57553))

(declare-fun b!85872 () Bool)

(declare-fun res!44611 () Bool)

(declare-fun e!46589 () Bool)

(assert (=> b!85872 (=> (not res!44611) (not e!46589))))

(declare-fun lt!19981 () List!715)

(declare-fun content!156 (List!715) (Set Int))

(assert (=> b!85872 (= res!44611 (subset (content!156 lt!19981) (content!156 ls!53)))))

(declare-fun b!85873 () Bool)

(declare-fun e!46590 () List!715)

(declare-fun lt!19980 () List!715)

(assert (=> b!85873 (= e!46590 lt!19980)))

(declare-fun b!85874 () Bool)

(declare-fun e!46591 () List!715)

(assert (=> b!85874 (= e!46591 e!46590)))

(declare-fun c!21306 () Bool)

(declare-fun e!46592 () Bool)

(assert (=> b!85874 (= c!21306 e!46592)))

(declare-fun res!44612 () Bool)

(assert (=> b!85874 (=> (not res!44612) (not e!46592))))

(assert (=> b!85874 (= res!44612 (is-Cons!672 ls!53))))

(assert (=> b!85874 (= lt!19980 (filter!48 (t!48160 ls!53) lambda!10818))))

(declare-fun b!85875 () Bool)

(declare-fun forall!62 (List!715 Int) Bool)

(assert (=> b!85875 (= e!46589 (forall!62 lt!19981 lambda!10818))))

(declare-fun b!85876 () Bool)

(assert (=> b!85876 (= e!46591 Nil!674)))

(declare-fun d!57555 () Bool)

(assert (=> d!57555 e!46589))

(declare-fun res!44613 () Bool)

(assert (=> d!57555 (=> (not res!44613) (not e!46589))))

(declare-fun size!684 (List!715) Int)

(assert (=> d!57555 (= res!44613 (<= (size!684 lt!19981) (size!684 ls!53)))))

(assert (=> d!57555 (= lt!19981 e!46591)))

(declare-fun c!21307 () Bool)

(assert (=> d!57555 (= c!21307 (is-Nil!674 ls!53))))

(assert (=> d!57555 (= (filter!48 ls!53 lambda!10818) lt!19981)))

(declare-fun b!85877 () Bool)

(declare-fun dynLambda!1023 (Int Int) Bool)

(assert (=> b!85877 (= e!46592 (dynLambda!1023 lambda!10818 (h!1045 ls!53)))))

(declare-fun b!85878 () Bool)

(assert (=> b!85878 (= e!46590 (Cons!672 (h!1045 ls!53) lt!19980))))

(assert (= (and b!85874 res!44612) b!85877))

(assert (= (and b!85874 c!21306) b!85878))

(assert (= (and b!85874 (not c!21306)) b!85873))

(assert (= (and d!57555 c!21307) b!85876))

(assert (= (and d!57555 (not c!21307)) b!85874))

(assert (= (and d!57555 res!44613) b!85872))

(assert (= (and b!85872 res!44611) b!85875))

(declare-fun b_lambda!16959 () Bool)

(assert (=> (not b_lambda!16959) (not b!85877)))

(declare-fun m!81714 () Bool)

(assert (=> b!85877 m!81714))

(declare-fun m!81716 () Bool)

(assert (=> b!85874 m!81716))

(declare-fun m!81718 () Bool)

(assert (=> d!57555 m!81718))

(declare-fun m!81720 () Bool)

(assert (=> d!57555 m!81720))

(declare-fun m!81722 () Bool)

(assert (=> b!85872 m!81722))

(declare-fun m!81724 () Bool)

(assert (=> b!85872 m!81724))

(declare-fun m!81726 () Bool)

(assert (=> b!85875 m!81726))

(assert (=> b!85849 d!57555))

(declare-fun b_lambda!16961 () Bool)

(assert (= b_lambda!16959 (or b!85849 b_lambda!16961)))

(declare-fun bs!41121 () Bool)

(declare-fun d!57557 () Bool)

(assert (= bs!41121 (and d!57557 b!85849)))

(declare-fun x!29255 () Int)

(assert (=> bs!41121 (= (dynLambda!1023 lambda!10818 (h!1045 ls!53)) (= (h!1045 ls!53) x!29255))))

(assert (=> b!85877 d!57557))

(push 1)

(assert (not b!85875))

(assert (not d!57555))

(assert (not b_lambda!16961))

(assert (not b!85874))

(assert (not b!85872))

(assert (not b!85857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

