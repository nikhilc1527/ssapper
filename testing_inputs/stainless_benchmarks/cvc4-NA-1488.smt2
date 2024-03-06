; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10146 () Bool)

(assert start!10146)

(declare-fun b_free!7337 () Bool)

(declare-fun b_next!39113 () Bool)

(assert (=> start!10146 (= b_free!7337 (not b_next!39113))))

(declare-fun tp!16918 () Bool)

(declare-fun b_and!58829 () Bool)

(assert (=> start!10146 (= tp!16918 b_and!58829)))

(declare-fun res!35738 () Bool)

(declare-fun e!39478 () Bool)

(assert (=> start!10146 (=> (not res!35738) (not e!39478))))

(assert (=> start!10146 (= res!35738 true)))

(assert (=> start!10146 e!39478))

(assert (=> start!10146 tp!16918))

(assert (=> start!10146 true))

(declare-fun b!73060 () Bool)

(declare-fun res!35737 () Bool)

(assert (=> b!73060 (=> (not res!35737) (not e!39478))))

(declare-datatypes () ((List!639 (Cons!599 (head!1039 Int) (tail!1060 List!639)) (Nil!601))))

(declare-fun list!984 () List!639)

(assert (=> b!73060 (= res!35737 (is-Cons!599 list!984))))

(declare-fun b!73061 () Bool)

(declare-fun res!35739 () Bool)

(assert (=> b!73061 (=> (not res!35739) (not e!39478))))

(declare-fun res!35676 () List!639)

(declare-fun f!4416 () Int)

(declare-fun dynLambda!971 (Int Int) Int)

(declare-fun positiveMap_passing_2!0 (Int List!639) List!639)

(assert (=> b!73061 (= res!35739 (= res!35676 (Cons!599 (dynLambda!971 f!4416 (head!1039 list!984)) (positiveMap_passing_2!0 f!4416 (tail!1060 list!984)))))))

(declare-fun b!73062 () Bool)

(declare-fun positive!0 (List!639) Bool)

(assert (=> b!73062 (= e!39478 (not (positive!0 res!35676)))))

(assert (= (and start!10146 res!35738) b!73060))

(assert (= (and b!73060 res!35737) b!73061))

(assert (= (and b!73061 res!35739) b!73062))

(declare-fun b_lambda!15867 () Bool)

(assert (=> (not b_lambda!15867) (not b!73061)))

(declare-fun t!47567 () Bool)

(declare-fun tb!46183 () Bool)

(assert (=> (and start!10146 (= f!4416 f!4416) t!47567) tb!46183))

(declare-fun result!46613 () Bool)

(assert (=> tb!46183 (= result!46613 true)))

(assert (=> b!73061 t!47567))

(declare-fun b_and!58831 () Bool)

(assert (= b_and!58829 (and (=> t!47567 result!46613) b_and!58831)))

(declare-fun bs!37817 () Bool)

(declare-fun s!2066 () Bool)

(assert (= bs!37817 (and start!10146 s!2066)))

(assert (=> bs!37817 (=> true (> (dynLambda!971 f!4416 (head!1039 list!984)) (- 1)))))

(declare-fun b_lambda!15869 () Bool)

(assert (=> (not b_lambda!15869) (not bs!37817)))

(assert (=> bs!37817 t!47567))

(declare-fun b_and!58833 () Bool)

(assert (= b_and!58831 (and (=> t!47567 result!46613) b_and!58833)))

(declare-fun bs!37818 () Bool)

(declare-fun m!72734 () Bool)

(assert (= bs!37818 m!72734))

(assert (=> bs!37818 s!2066))

(assert (=> b!73061 m!72734))

(declare-fun m!72736 () Bool)

(assert (=> b!73061 m!72736))

(declare-fun m!72738 () Bool)

(assert (=> b!73062 m!72738))

(push 1)

(assert (not b_lambda!15867))

(assert b_and!58833)

(assert (not b!73062))

(assert (not b_next!39113))

(assert (not b!73061))

(assert (not b_lambda!15869))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58833)

(assert (not b_next!39113))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15871 () Bool)

(assert (= b_lambda!15869 (or (and start!10146 b_free!7337) b_lambda!15871)))

(declare-fun b_lambda!15873 () Bool)

(assert (= b_lambda!15867 (or (and start!10146 b_free!7337) b_lambda!15873)))

(push 1)

(assert (not b_lambda!15873))

(assert b_and!58833)

(assert (not b!73062))

(assert (not b_next!39113))

(assert (not b!73061))

(assert (not b_lambda!15871))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58833)

(assert (not b_next!39113))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54733 () Bool)

(declare-fun res!35744 () Bool)

(declare-fun e!39483 () Bool)

(assert (=> d!54733 (=> res!35744 e!39483)))

(assert (=> d!54733 (= res!35744 (not (is-Cons!599 res!35676)))))

(assert (=> d!54733 (= (positive!0 res!35676) e!39483)))

(declare-fun b!73067 () Bool)

(declare-fun e!39484 () Bool)

(assert (=> b!73067 (= e!39483 e!39484)))

(declare-fun res!35745 () Bool)

(assert (=> b!73067 (=> (not res!35745) (not e!39484))))

(assert (=> b!73067 (= res!35745 (not (< (head!1039 res!35676) 0)))))

(declare-fun b!73068 () Bool)

(assert (=> b!73068 (= e!39484 (positive!0 (tail!1060 res!35676)))))

(assert (= (and d!54733 (not res!35744)) b!73067))

(assert (= (and b!73067 res!35745) b!73068))

(declare-fun m!72740 () Bool)

(assert (=> b!73068 m!72740))

(assert (=> b!73062 d!54733))

(declare-fun bs!37819 () Bool)

(declare-fun d!54735 () Bool)

(declare-fun s!2068 () Bool)

(assert (= bs!37819 (and d!54735 s!2068)))

(assert (=> bs!37819 (=> true (> (dynLambda!971 f!4416 (head!1039 list!984)) (- 1)))))

(declare-fun b_lambda!15875 () Bool)

(assert (=> (not b_lambda!15875) (not bs!37819)))

(assert (=> bs!37819 t!47567))

(declare-fun b_and!58835 () Bool)

(assert (= b_and!58833 (and (=> t!47567 result!46613) b_and!58835)))

(assert (=> m!72734 s!2068))

(declare-fun bs!37820 () Bool)

(assert (= bs!37820 (and d!54735 start!10146)))

(assert (=> bs!37820 (= true true)))

(declare-fun lt!15507 () List!639)

(assert (=> d!54735 (positive!0 lt!15507)))

(declare-fun e!39487 () List!639)

(assert (=> d!54735 (= lt!15507 e!39487)))

(declare-fun c!17599 () Bool)

(assert (=> d!54735 (= c!17599 (is-Cons!599 (tail!1060 list!984)))))

(assert (=> d!54735 true))

(assert (=> d!54735 (= (positiveMap_passing_2!0 f!4416 (tail!1060 list!984)) lt!15507)))

(declare-fun b!73073 () Bool)

(assert (=> b!73073 (= e!39487 (Cons!599 (dynLambda!971 f!4416 (head!1039 (tail!1060 list!984))) (positiveMap_passing_2!0 f!4416 (tail!1060 (tail!1060 list!984)))))))

(declare-fun b!73074 () Bool)

(assert (=> b!73074 (= e!39487 Nil!601)))

(assert (= (and d!54735 c!17599) b!73073))

(assert (= (and d!54735 (not c!17599)) b!73074))

(declare-fun b_lambda!15877 () Bool)

(assert (=> (not b_lambda!15877) (not b!73073)))

(declare-fun t!47569 () Bool)

(declare-fun tb!46185 () Bool)

(assert (=> (and start!10146 (= f!4416 f!4416) t!47569) tb!46185))

(declare-fun result!46615 () Bool)

(assert (=> tb!46185 (= result!46615 true)))

(assert (=> b!73073 t!47569))

(declare-fun b_and!58837 () Bool)

(assert (= b_and!58835 (and (=> t!47569 result!46615) b_and!58837)))

(declare-fun m!72742 () Bool)

(assert (=> d!54735 m!72742))

(declare-fun bs!37821 () Bool)

(declare-fun s!2070 () Bool)

(assert (= bs!37821 (and start!10146 s!2070)))

(assert (=> bs!37821 (=> true (> (dynLambda!971 f!4416 (head!1039 (tail!1060 list!984))) (- 1)))))

(declare-fun b_lambda!15879 () Bool)

(assert (=> (not b_lambda!15879) (not bs!37821)))

(assert (=> bs!37821 t!47569))

(declare-fun b_and!58839 () Bool)

(assert (= b_and!58837 (and (=> t!47569 result!46615) b_and!58839)))

(declare-fun bs!37822 () Bool)

(declare-fun m!72744 () Bool)

(assert (= bs!37822 m!72744))

(assert (=> bs!37822 s!2070))

(declare-fun bs!37823 () Bool)

(declare-fun s!2072 () Bool)

(assert (= bs!37823 (and d!54735 s!2072)))

(assert (=> bs!37823 (=> true (> (dynLambda!971 f!4416 (head!1039 (tail!1060 list!984))) (- 1)))))

(declare-fun b_lambda!15881 () Bool)

(assert (=> (not b_lambda!15881) (not bs!37823)))

(assert (=> bs!37823 t!47569))

(declare-fun b_and!58841 () Bool)

(assert (= b_and!58839 (and (=> t!47569 result!46615) b_and!58841)))

(assert (=> bs!37822 s!2072))

(assert (=> b!73073 m!72744))

(declare-fun m!72746 () Bool)

(assert (=> b!73073 m!72746))

(assert (=> b!73061 d!54735))

(declare-fun b_lambda!15883 () Bool)

(assert (= b_lambda!15875 (or (and start!10146 b_free!7337) b_lambda!15883)))

(declare-fun b_lambda!15885 () Bool)

(assert (= b_lambda!15881 (or (and start!10146 b_free!7337) b_lambda!15885)))

(declare-fun b_lambda!15887 () Bool)

(assert (= b_lambda!15879 (or (and start!10146 b_free!7337) b_lambda!15887)))

(declare-fun b_lambda!15889 () Bool)

(assert (= b_lambda!15877 (or (and start!10146 b_free!7337) b_lambda!15889)))

(push 1)

(assert (not b_lambda!15883))

(assert (not b_lambda!15873))

(assert (not b!73073))

(assert (not b_next!39113))

(assert (not b_lambda!15889))

(assert b_and!58841)

(assert (not d!54735))

(assert (not b_lambda!15885))

(assert (not b_lambda!15887))

(assert (not b!73068))

(assert (not b_lambda!15871))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58841)

(assert (not b_next!39113))

(check-sat)

(pop 1)

