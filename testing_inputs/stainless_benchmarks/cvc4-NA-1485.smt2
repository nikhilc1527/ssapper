; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10134 () Bool)

(assert start!10134)

(declare-fun b_free!7329 () Bool)

(declare-fun b_next!39105 () Bool)

(assert (=> start!10134 (= b_free!7329 (not b_next!39105))))

(declare-fun tp!16906 () Bool)

(declare-fun b_and!58795 () Bool)

(assert (=> start!10134 (= tp!16906 b_and!58795)))

(declare-fun res!35698 () Bool)

(declare-fun e!39454 () Bool)

(assert (=> start!10134 (=> (not res!35698) (not e!39454))))

(assert (=> start!10134 (= res!35698 true)))

(assert (=> start!10134 e!39454))

(assert (=> start!10134 tp!16906))

(assert (=> start!10134 true))

(declare-fun b!73015 () Bool)

(declare-fun res!35697 () Bool)

(assert (=> b!73015 (=> (not res!35697) (not e!39454))))

(declare-datatypes () ((List!636 (Cons!596 (head!1036 Int) (tail!1057 List!636)) (Nil!598))))

(declare-fun list!974 () List!636)

(assert (=> b!73015 (= res!35697 (is-Cons!596 list!974))))

(declare-fun b!73016 () Bool)

(declare-fun res!35699 () Bool)

(assert (=> b!73016 (=> (not res!35699) (not e!39454))))

(declare-fun res!35673 () List!636)

(declare-fun f!4413 () Int)

(declare-fun dynLambda!968 (Int Int) Int)

(declare-fun positiveMap_passing_1!0 (Int List!636) List!636)

(assert (=> b!73016 (= res!35699 (= res!35673 (Cons!596 (dynLambda!968 f!4413 (head!1036 list!974)) (positiveMap_passing_1!0 f!4413 (tail!1057 list!974)))))))

(declare-fun b!73017 () Bool)

(declare-fun positive!0 (List!636) Bool)

(assert (=> b!73017 (= e!39454 (not (positive!0 res!35673)))))

(assert (= (and start!10134 res!35698) b!73015))

(assert (= (and b!73015 res!35697) b!73016))

(assert (= (and b!73016 res!35699) b!73017))

(declare-fun b_lambda!15835 () Bool)

(assert (=> (not b_lambda!15835) (not b!73016)))

(declare-fun t!47553 () Bool)

(declare-fun tb!46169 () Bool)

(assert (=> (and start!10134 (= f!4413 f!4413) t!47553) tb!46169))

(declare-fun result!46599 () Bool)

(assert (=> tb!46169 (= result!46599 true)))

(assert (=> b!73016 t!47553))

(declare-fun b_and!58797 () Bool)

(assert (= b_and!58795 (and (=> t!47553 result!46599) b_and!58797)))

(declare-fun bs!37801 () Bool)

(declare-fun s!2054 () Bool)

(assert (= bs!37801 (and start!10134 s!2054)))

(assert (=> bs!37801 (=> true (> (dynLambda!968 f!4413 (head!1036 list!974)) 0))))

(declare-fun b_lambda!15837 () Bool)

(assert (=> (not b_lambda!15837) (not bs!37801)))

(assert (=> bs!37801 t!47553))

(declare-fun b_and!58799 () Bool)

(assert (= b_and!58797 (and (=> t!47553 result!46599) b_and!58799)))

(declare-fun bs!37802 () Bool)

(declare-fun m!72710 () Bool)

(assert (= bs!37802 m!72710))

(assert (=> bs!37802 s!2054))

(assert (=> b!73016 m!72710))

(declare-fun m!72712 () Bool)

(assert (=> b!73016 m!72712))

(declare-fun m!72714 () Bool)

(assert (=> b!73017 m!72714))

(push 1)

(assert (not b_lambda!15835))

(assert (not b_lambda!15837))

(assert b_and!58799)

(assert (not b!73017))

(assert (not b_next!39105))

(assert (not b!73016))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58799)

(assert (not b_next!39105))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!15839 () Bool)

(assert (= b_lambda!15837 (or (and start!10134 b_free!7329) b_lambda!15839)))

(declare-fun b_lambda!15841 () Bool)

(assert (= b_lambda!15835 (or (and start!10134 b_free!7329) b_lambda!15841)))

(push 1)

(assert b_and!58799)

(assert (not b!73017))

(assert (not b_next!39105))

(assert (not b_lambda!15839))

(assert (not b!73016))

(assert (not b_lambda!15841))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58799)

(assert (not b_next!39105))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54727 () Bool)

(declare-fun res!35704 () Bool)

(declare-fun e!39459 () Bool)

(assert (=> d!54727 (=> res!35704 e!39459)))

(assert (=> d!54727 (= res!35704 (not (is-Cons!596 res!35673)))))

(assert (=> d!54727 (= (positive!0 res!35673) e!39459)))

(declare-fun b!73022 () Bool)

(declare-fun e!39460 () Bool)

(assert (=> b!73022 (= e!39459 e!39460)))

(declare-fun res!35705 () Bool)

(assert (=> b!73022 (=> (not res!35705) (not e!39460))))

(assert (=> b!73022 (= res!35705 (not (< (head!1036 res!35673) 0)))))

(declare-fun b!73023 () Bool)

(assert (=> b!73023 (= e!39460 (positive!0 (tail!1057 res!35673)))))

(assert (= (and d!54727 (not res!35704)) b!73022))

(assert (= (and b!73022 res!35705) b!73023))

(declare-fun m!72716 () Bool)

(assert (=> b!73023 m!72716))

(assert (=> b!73017 d!54727))

(declare-fun bs!37803 () Bool)

(declare-fun d!54729 () Bool)

(declare-fun s!2056 () Bool)

(assert (= bs!37803 (and d!54729 s!2056)))

(assert (=> bs!37803 (=> true (> (dynLambda!968 f!4413 (head!1036 list!974)) 0))))

(declare-fun b_lambda!15843 () Bool)

(assert (=> (not b_lambda!15843) (not bs!37803)))

(assert (=> bs!37803 t!47553))

(declare-fun b_and!58801 () Bool)

(assert (= b_and!58799 (and (=> t!47553 result!46599) b_and!58801)))

(assert (=> m!72710 s!2056))

(declare-fun bs!37804 () Bool)

(assert (= bs!37804 (and d!54729 start!10134)))

(assert (=> bs!37804 (= true true)))

(declare-fun lt!15504 () List!636)

(assert (=> d!54729 (positive!0 lt!15504)))

(declare-fun e!39463 () List!636)

(assert (=> d!54729 (= lt!15504 e!39463)))

(declare-fun c!17596 () Bool)

(assert (=> d!54729 (= c!17596 (is-Cons!596 (tail!1057 list!974)))))

(assert (=> d!54729 true))

(assert (=> d!54729 (= (positiveMap_passing_1!0 f!4413 (tail!1057 list!974)) lt!15504)))

(declare-fun b!73028 () Bool)

(assert (=> b!73028 (= e!39463 (Cons!596 (dynLambda!968 f!4413 (head!1036 (tail!1057 list!974))) (positiveMap_passing_1!0 f!4413 (tail!1057 (tail!1057 list!974)))))))

(declare-fun b!73029 () Bool)

(assert (=> b!73029 (= e!39463 Nil!598)))

(assert (= (and d!54729 c!17596) b!73028))

(assert (= (and d!54729 (not c!17596)) b!73029))

(declare-fun b_lambda!15845 () Bool)

(assert (=> (not b_lambda!15845) (not b!73028)))

(declare-fun t!47555 () Bool)

(declare-fun tb!46171 () Bool)

(assert (=> (and start!10134 (= f!4413 f!4413) t!47555) tb!46171))

(declare-fun result!46601 () Bool)

(assert (=> tb!46171 (= result!46601 true)))

(assert (=> b!73028 t!47555))

(declare-fun b_and!58803 () Bool)

(assert (= b_and!58801 (and (=> t!47555 result!46601) b_and!58803)))

(declare-fun m!72718 () Bool)

(assert (=> d!54729 m!72718))

(declare-fun bs!37805 () Bool)

(declare-fun s!2058 () Bool)

(assert (= bs!37805 (and start!10134 s!2058)))

(assert (=> bs!37805 (=> true (> (dynLambda!968 f!4413 (head!1036 (tail!1057 list!974))) 0))))

(declare-fun b_lambda!15847 () Bool)

(assert (=> (not b_lambda!15847) (not bs!37805)))

(assert (=> bs!37805 t!47555))

(declare-fun b_and!58805 () Bool)

(assert (= b_and!58803 (and (=> t!47555 result!46601) b_and!58805)))

(declare-fun bs!37806 () Bool)

(declare-fun m!72720 () Bool)

(assert (= bs!37806 m!72720))

(assert (=> bs!37806 s!2058))

(declare-fun bs!37807 () Bool)

(declare-fun s!2060 () Bool)

(assert (= bs!37807 (and d!54729 s!2060)))

(assert (=> bs!37807 (=> true (> (dynLambda!968 f!4413 (head!1036 (tail!1057 list!974))) 0))))

(declare-fun b_lambda!15849 () Bool)

(assert (=> (not b_lambda!15849) (not bs!37807)))

(assert (=> bs!37807 t!47555))

(declare-fun b_and!58807 () Bool)

(assert (= b_and!58805 (and (=> t!47555 result!46601) b_and!58807)))

(assert (=> bs!37806 s!2060))

(assert (=> b!73028 m!72720))

(declare-fun m!72722 () Bool)

(assert (=> b!73028 m!72722))

(assert (=> b!73016 d!54729))

(declare-fun b_lambda!15851 () Bool)

(assert (= b_lambda!15845 (or (and start!10134 b_free!7329) b_lambda!15851)))

(declare-fun b_lambda!15853 () Bool)

(assert (= b_lambda!15847 (or (and start!10134 b_free!7329) b_lambda!15853)))

(declare-fun b_lambda!15855 () Bool)

(assert (= b_lambda!15849 (or (and start!10134 b_free!7329) b_lambda!15855)))

(declare-fun b_lambda!15857 () Bool)

(assert (= b_lambda!15843 (or (and start!10134 b_free!7329) b_lambda!15857)))

(push 1)

(assert (not b_lambda!15851))

(assert (not d!54729))

(assert (not b!73028))

(assert (not b_lambda!15855))

(assert b_and!58807)

(assert (not b_lambda!15857))

(assert (not b_lambda!15853))

(assert (not b_next!39105))

(assert (not b_lambda!15839))

(assert (not b!73023))

(assert (not b_lambda!15841))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58807)

(assert (not b_next!39105))

(check-sat)

(pop 1)

