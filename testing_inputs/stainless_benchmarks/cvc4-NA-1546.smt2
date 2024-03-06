; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10438 () Bool)

(assert start!10438)

(declare-fun b!79208 () Bool)

(declare-fun res!39957 () Bool)

(declare-fun e!42828 () Bool)

(assert (=> b!79208 (=> res!39957 e!42828)))

(declare-datatypes () ((List!643 (Cons!601 (h!887 Int) (t!47630 List!643)) (Nil!603))))

(declare-fun l!1417 () List!643)

(declare-fun x!29100 () Int)

(declare-fun contains!45 (List!643 Int) Bool)

(assert (=> b!79208 (= res!39957 (not (contains!45 l!1417 x!29100)))))

(declare-fun inst!484 () Bool)

(assert (=> b!79208 (= inst!484 (=> true e!42828))))

(declare-fun b!79210 () Bool)

(declare-fun x!29072 () Int)

(assert (=> b!79210 (= e!42828 (<= x!29100 x!29072))))

(assert (= (and b!79208 (not res!39957)) b!79210))

(declare-fun m!73656 () Bool)

(assert (=> b!79208 m!73656))

(declare-fun b!79209 () Bool)

(declare-fun res!39958 () Bool)

(declare-fun e!42829 () Bool)

(assert (=> b!79209 (=> res!39958 e!42829)))

(declare-fun r!609 () List!643)

(declare-fun x!29101 () Int)

(assert (=> b!79209 (= res!39958 (not (contains!45 r!609 x!29101)))))

(declare-fun inst!485 () Bool)

(assert (=> b!79209 (= inst!485 (=> true e!42829))))

(declare-fun b!79211 () Bool)

(assert (=> b!79211 (= e!42829 (< x!29072 x!29101))))

(assert (= (and b!79209 (not res!39958)) b!79211))

(declare-fun m!73658 () Bool)

(assert (=> b!79209 m!73658))

(declare-fun m!73660 () Bool)

(assert (=> b!79208 m!73660))

(declare-fun bs!37890 () Bool)

(declare-fun s!2097 () Bool)

(assert (= bs!37890 (and start!10438 b!79208 s!2097)))

(declare-fun content!106 (List!643) (Set Int))

(assert (=> bs!37890 (=> true (= (contains!45 l!1417 x!29100) (member x!29100 (content!106 l!1417))))))

(declare-fun bs!37891 () Bool)

(declare-fun m!73662 () Bool)

(assert (= bs!37891 m!73662))

(assert (=> bs!37891 s!2097))

(assert (=> m!73656 m!73662))

(assert (=> m!73656 s!2097))

(declare-fun bs!37892 () Bool)

(declare-fun neg-inst!437 () Bool)

(declare-fun s!2099 () Bool)

(assert (= bs!37892 (and neg-inst!437 s!2099)))

(declare-fun res!39959 () Bool)

(declare-fun e!42830 () Bool)

(assert (=> bs!37892 (=> res!39959 e!42830)))

(assert (=> bs!37892 (= res!39959 (not (contains!45 l!1417 x!29100)))))

(assert (=> bs!37892 (=> true e!42830)))

(declare-fun b!79212 () Bool)

(assert (=> b!79212 (= e!42830 (<= x!29100 x!29072))))

(assert (= (and bs!37892 (not res!39959)) b!79212))

(assert (=> m!73656 s!2099))

(declare-fun bs!37893 () Bool)

(assert (= bs!37893 (and neg-inst!437 b!79208)))

(assert (=> bs!37893 (= true inst!484)))

(declare-fun m!73664 () Bool)

(assert (=> b!79209 m!73664))

(declare-fun s!2101 () Bool)

(declare-fun bs!37894 () Bool)

(assert (= bs!37894 (and start!10438 b!79208 b!79209 s!2101)))

(assert (=> bs!37894 (=> true (= (contains!45 r!609 x!29101) (member x!29101 (content!106 r!609))))))

(declare-fun bs!37895 () Bool)

(declare-fun m!73666 () Bool)

(assert (= bs!37895 m!73666))

(assert (=> bs!37895 s!2101))

(assert (=> m!73658 m!73666))

(assert (=> m!73658 s!2101))

(declare-fun bs!37896 () Bool)

(assert (= bs!37896 (and b!79209 b!79208)))

(assert (=> (and bs!37896 (= r!609 l!1417) (= (content!106 r!609) (content!106 l!1417))) (= true true)))

(declare-fun res!39956 () Bool)

(declare-fun e!42827 () Bool)

(assert (=> start!10438 (=> (not res!39956) (not e!42827))))

(declare-fun list!1008 () List!643)

(declare-fun ls!25 () List!643)

(assert (=> start!10438 (= res!39956 (and (not (is-Nil!603 list!1008)) (= x!29072 (h!887 list!1008)) (= l!1417 Nil!603) (= r!609 Nil!603) (= ls!25 (t!47630 list!1008))))))

(assert (=> start!10438 e!42827))

(assert (=> start!10438 true))

(declare-fun e!42826 () Bool)

(assert (=> b!79208 (= e!42827 e!42826)))

(declare-fun res!39955 () Bool)

(assert (=> b!79208 (=> res!39955 e!42826)))

(assert (=> b!79208 (= res!39955 (not inst!484))))

(assert (=> b!79208 true))

(assert (=> b!79209 (= e!42826 (not inst!485))))

(assert (=> b!79209 true))

(assert (= (and start!10438 res!39956) b!79208))

(assert (= neg-inst!437 inst!484))

(assert (= (and b!79208 (not res!39955)) b!79209))

(push 1)

(assert (not bs!37894))

(assert (not b!79208))

(assert (not bs!37890))

(assert (not bs!37892))

(assert (not b!79209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55013 () Bool)

(declare-fun lt!18200 () Bool)

(assert (=> d!55013 (= lt!18200 (member x!29100 (content!106 l!1417)))))

(declare-fun e!42836 () Bool)

(assert (=> d!55013 (= lt!18200 e!42836)))

(declare-fun res!39965 () Bool)

(assert (=> d!55013 (=> (not res!39965) (not e!42836))))

(assert (=> d!55013 (= res!39965 (is-Cons!601 l!1417))))

(assert (=> d!55013 (= (contains!45 l!1417 x!29100) lt!18200)))

(declare-fun b!79217 () Bool)

(declare-fun e!42835 () Bool)

(assert (=> b!79217 (= e!42836 e!42835)))

(declare-fun res!39964 () Bool)

(assert (=> b!79217 (=> res!39964 e!42835)))

(assert (=> b!79217 (= res!39964 (= (h!887 l!1417) x!29100))))

(declare-fun b!79218 () Bool)

(assert (=> b!79218 (= e!42835 (contains!45 (t!47630 l!1417) x!29100))))

(assert (= (and d!55013 res!39965) b!79217))

(assert (= (and b!79217 (not res!39964)) b!79218))

(assert (=> d!55013 m!73660))

(assert (=> d!55013 m!73662))

(declare-fun bs!37897 () Bool)

(declare-fun m!73668 () Bool)

(assert (= bs!37897 m!73668))

(assert (=> bs!37897 s!2097))

(assert (=> bs!37897 s!2099))

(assert (=> b!79218 m!73668))

(assert (=> bs!37892 d!55013))

(declare-fun d!55015 () Bool)

(declare-fun lt!18201 () Bool)

(assert (=> d!55015 (= lt!18201 (member x!29101 (content!106 r!609)))))

(declare-fun e!42838 () Bool)

(assert (=> d!55015 (= lt!18201 e!42838)))

(declare-fun res!39967 () Bool)

(assert (=> d!55015 (=> (not res!39967) (not e!42838))))

(assert (=> d!55015 (= res!39967 (is-Cons!601 r!609))))

(assert (=> d!55015 (= (contains!45 r!609 x!29101) lt!18201)))

(declare-fun b!79219 () Bool)

(declare-fun e!42837 () Bool)

(assert (=> b!79219 (= e!42838 e!42837)))

(declare-fun res!39966 () Bool)

(assert (=> b!79219 (=> res!39966 e!42837)))

(assert (=> b!79219 (= res!39966 (= (h!887 r!609) x!29101))))

(declare-fun b!79220 () Bool)

(assert (=> b!79220 (= e!42837 (contains!45 (t!47630 r!609) x!29101))))

(assert (= (and d!55015 res!39967) b!79219))

(assert (= (and b!79219 (not res!39966)) b!79220))

(assert (=> d!55015 m!73664))

(assert (=> d!55015 m!73666))

(declare-fun bs!37898 () Bool)

(declare-fun m!73670 () Bool)

(assert (= bs!37898 m!73670))

(assert (=> bs!37898 s!2101))

(assert (=> b!79220 m!73670))

(assert (=> b!79209 d!55015))

(declare-fun d!55017 () Bool)

(declare-fun c!20158 () Bool)

(assert (=> d!55017 (= c!20158 (is-Nil!603 r!609))))

(declare-fun e!42841 () (Set Int))

(assert (=> d!55017 (= (content!106 r!609) e!42841)))

(declare-fun b!79225 () Bool)

(assert (=> b!79225 (= e!42841 (as emptyset (Set Int)))))

(declare-fun b!79226 () Bool)

(assert (=> b!79226 (= e!42841 (union (insert (h!887 r!609) (as emptyset (Set Int))) (content!106 (t!47630 r!609))))))

(assert (= (and d!55017 c!20158) b!79225))

(assert (= (and d!55017 (not c!20158)) b!79226))

(declare-fun m!73672 () Bool)

(assert (=> b!79226 m!73672))

(declare-fun m!73674 () Bool)

(assert (=> b!79226 m!73674))

(assert (=> b!79209 d!55017))

(assert (=> b!79208 d!55013))

(declare-fun d!55019 () Bool)

(declare-fun c!20159 () Bool)

(assert (=> d!55019 (= c!20159 (is-Nil!603 l!1417))))

(declare-fun e!42842 () (Set Int))

(assert (=> d!55019 (= (content!106 l!1417) e!42842)))

(declare-fun b!79227 () Bool)

(assert (=> b!79227 (= e!42842 (as emptyset (Set Int)))))

(declare-fun b!79228 () Bool)

(assert (=> b!79228 (= e!42842 (union (insert (h!887 l!1417) (as emptyset (Set Int))) (content!106 (t!47630 l!1417))))))

(assert (= (and d!55019 c!20159) b!79227))

(assert (= (and d!55019 (not c!20159)) b!79228))

(declare-fun m!73676 () Bool)

(assert (=> b!79228 m!73676))

(declare-fun m!73678 () Bool)

(assert (=> b!79228 m!73678))

(assert (=> b!79208 d!55019))

(assert (=> bs!37894 d!55015))

(push 1)

(assert (not b!79226))

(assert (not b!79218))

(assert (not bs!37890))

(assert (not d!55013))

(assert (not b!79220))

(assert (not d!55015))

(assert (not b!79228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

