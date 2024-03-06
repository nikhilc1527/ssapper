; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7766 () Bool)

(assert start!7766)

(declare-fun res!25498 () Bool)

(declare-fun e!29115 () Bool)

(assert (=> start!7766 (=> (not res!25498) (not e!29115))))

(declare-datatypes () ((A!1966 (A!1967 (val!148 Int)))))

(declare-datatypes () ((List!449 (Cons!426 (h!651 A!1966) (t!46891 List!449)) (Nil!427))))

(declare-fun xs!801 () List!449)

(assert (=> start!7766 (= res!25498 (is-Cons!426 xs!801))))

(assert (=> start!7766 e!29115))

(declare-fun e!29116 () Bool)

(assert (=> start!7766 e!29116))

(assert (=> start!7766 true))

(declare-fun b!55282 () Bool)

(declare-fun res!25497 () Bool)

(assert (=> b!55282 (=> (not res!25497) (not e!29115))))

(declare-fun inductVal!142 () Bool)

(declare-fun mapId!1 (List!449) Bool)

(assert (=> b!55282 (= res!25497 (= inductVal!142 (mapId!1 (t!46891 xs!801))))))

(declare-fun b!55283 () Bool)

(declare-fun lambda!8588 () Int)

(declare-fun map!333 (List!449 Int) List!449)

(assert (=> b!55283 (= e!29115 (not (= (map!333 xs!801 lambda!8588) xs!801)))))

(declare-fun b!55284 () Bool)

(declare-fun tp_is_empty!295 () Bool)

(declare-fun tp!15595 () Bool)

(assert (=> b!55284 (= e!29116 (and tp_is_empty!295 tp!15595))))

(assert (= (and start!7766 res!25498) b!55282))

(assert (= (and b!55282 res!25497) b!55283))

(assert (= (and start!7766 (is-Cons!426 xs!801)) b!55284))

(declare-fun m!60036 () Bool)

(assert (=> b!55282 m!60036))

(declare-fun m!60038 () Bool)

(assert (=> b!55283 m!60038))

(push 1)

(assert (not b!55282))

(assert (not b!55283))

(assert (not b!55284))

(assert tp_is_empty!295)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!27546 () Bool)

(declare-fun b!55289 () Bool)

(assert (= bs!27546 (and b!55289 b!55283)))

(declare-fun lambda!8593 () Int)

(assert (=> bs!27546 (= lambda!8593 lambda!8588)))

(declare-fun bs!27547 () Bool)

(declare-fun b!55290 () Bool)

(assert (= bs!27547 (and b!55290 b!55283)))

(declare-fun lambda!8594 () Int)

(assert (=> bs!27547 (= lambda!8594 lambda!8588)))

(declare-fun bs!27548 () Bool)

(assert (= bs!27548 (and b!55290 b!55289)))

(assert (=> bs!27548 (= lambda!8594 lambda!8593)))

(declare-fun e!29119 () Bool)

(assert (=> b!55289 (= e!29119 (= (map!333 (t!46891 xs!801) lambda!8593) (t!46891 xs!801)))))

(declare-fun lt!9831 () Bool)

(assert (=> b!55289 (= lt!9831 (mapId!1 (t!46891 (t!46891 xs!801))))))

(declare-fun d!45280 () Bool)

(assert (=> d!45280 e!29119))

(declare-fun c!12025 () Bool)

(assert (=> d!45280 (= c!12025 (is-Cons!426 (t!46891 xs!801)))))

(assert (=> d!45280 (= (mapId!1 (t!46891 xs!801)) true)))

(assert (=> b!55290 (= e!29119 (= (map!333 (t!46891 xs!801) lambda!8594) (t!46891 xs!801)))))

(assert (= (and d!45280 c!12025) b!55289))

(assert (= (and d!45280 (not c!12025)) b!55290))

(declare-fun m!60040 () Bool)

(assert (=> b!55289 m!60040))

(declare-fun m!60042 () Bool)

(assert (=> b!55289 m!60042))

(declare-fun m!60044 () Bool)

(assert (=> b!55290 m!60044))

(assert (=> b!55282 d!45280))

(declare-fun d!45282 () Bool)

(declare-fun lt!9834 () List!449)

(declare-fun size!456 (List!449) Int)

(assert (=> d!45282 (= (size!456 lt!9834) (size!456 xs!801))))

(declare-fun e!29122 () List!449)

(assert (=> d!45282 (= lt!9834 e!29122)))

(declare-fun c!12028 () Bool)

(assert (=> d!45282 (= c!12028 (is-Nil!427 xs!801))))

(assert (=> d!45282 (= (map!333 xs!801 lambda!8588) lt!9834)))

(declare-fun b!55295 () Bool)

(assert (=> b!55295 (= e!29122 Nil!427)))

(declare-fun b!55296 () Bool)

(declare-fun $colon$colon!9 (List!449 A!1966) List!449)

(declare-fun dynLambda!896 (Int A!1966) A!1966)

(assert (=> b!55296 (= e!29122 ($colon$colon!9 (map!333 (t!46891 xs!801) lambda!8588) (dynLambda!896 lambda!8588 (h!651 xs!801))))))

(assert (= (and d!45282 c!12028) b!55295))

(assert (= (and d!45282 (not c!12028)) b!55296))

(declare-fun b_lambda!14627 () Bool)

(assert (=> (not b_lambda!14627) (not b!55296)))

(declare-fun m!60046 () Bool)

(assert (=> d!45282 m!60046))

(declare-fun m!60048 () Bool)

(assert (=> d!45282 m!60048))

(declare-fun m!60050 () Bool)

(assert (=> b!55296 m!60050))

(declare-fun m!60052 () Bool)

(assert (=> b!55296 m!60052))

(assert (=> b!55296 m!60050))

(assert (=> b!55296 m!60052))

(declare-fun m!60054 () Bool)

(assert (=> b!55296 m!60054))

(assert (=> b!55283 d!45282))

(declare-fun b!55301 () Bool)

(declare-fun e!29125 () Bool)

(declare-fun tp!15598 () Bool)

(assert (=> b!55301 (= e!29125 (and tp_is_empty!295 tp!15598))))

(assert (=> b!55284 (= tp!15595 e!29125)))

(assert (= (and b!55284 (is-Cons!426 (t!46891 xs!801))) b!55301))

(declare-fun b_lambda!14629 () Bool)

(assert (= b_lambda!14627 (or b!55283 b_lambda!14629)))

(declare-fun bs!27549 () Bool)

(declare-fun d!45284 () Bool)

(assert (= bs!27549 (and d!45284 b!55283)))

(declare-fun id!4457 (A!1966) A!1966)

(assert (=> bs!27549 (= (dynLambda!896 lambda!8588 (h!651 xs!801)) (id!4457 (h!651 xs!801)))))

(declare-fun m!60056 () Bool)

(assert (=> bs!27549 m!60056))

(assert (=> b!55296 d!45284))

(push 1)

(assert tp_is_empty!295)

(assert (not b_lambda!14629))

(assert (not b!55296))

(assert (not bs!27549))

(assert (not b!55289))

(assert (not b!55290))

(assert (not d!45282))

(assert (not b!55301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45286 () Bool)

(declare-fun lt!9835 () List!449)

(assert (=> d!45286 (= (size!456 lt!9835) (size!456 (t!46891 xs!801)))))

(declare-fun e!29126 () List!449)

(assert (=> d!45286 (= lt!9835 e!29126)))

(declare-fun c!12029 () Bool)

(assert (=> d!45286 (= c!12029 (is-Nil!427 (t!46891 xs!801)))))

(assert (=> d!45286 (= (map!333 (t!46891 xs!801) lambda!8594) lt!9835)))

(declare-fun b!55302 () Bool)

(assert (=> b!55302 (= e!29126 Nil!427)))

(declare-fun b!55303 () Bool)

(assert (=> b!55303 (= e!29126 ($colon$colon!9 (map!333 (t!46891 (t!46891 xs!801)) lambda!8594) (dynLambda!896 lambda!8594 (h!651 (t!46891 xs!801)))))))

(assert (= (and d!45286 c!12029) b!55302))

(assert (= (and d!45286 (not c!12029)) b!55303))

(declare-fun b_lambda!14631 () Bool)

(assert (=> (not b_lambda!14631) (not b!55303)))

(declare-fun m!60058 () Bool)

(assert (=> d!45286 m!60058))

(declare-fun m!60060 () Bool)

(assert (=> d!45286 m!60060))

(declare-fun m!60062 () Bool)

(assert (=> b!55303 m!60062))

(declare-fun m!60064 () Bool)

(assert (=> b!55303 m!60064))

(assert (=> b!55303 m!60062))

(assert (=> b!55303 m!60064))

(declare-fun m!60066 () Bool)

(assert (=> b!55303 m!60066))

(assert (=> b!55290 d!45286))

(declare-fun d!45288 () Bool)

(declare-fun lt!9838 () Int)

(assert (=> d!45288 (>= lt!9838 0)))

(declare-fun e!29129 () Int)

(assert (=> d!45288 (= lt!9838 e!29129)))

(declare-fun c!12032 () Bool)

(assert (=> d!45288 (= c!12032 (is-Nil!427 lt!9834))))

(assert (=> d!45288 (= (size!456 lt!9834) lt!9838)))

(declare-fun b!55308 () Bool)

(assert (=> b!55308 (= e!29129 0)))

(declare-fun b!55309 () Bool)

(assert (=> b!55309 (= e!29129 (+ 1 (size!456 (t!46891 lt!9834))))))

(assert (= (and d!45288 c!12032) b!55308))

(assert (= (and d!45288 (not c!12032)) b!55309))

(declare-fun m!60068 () Bool)

(assert (=> b!55309 m!60068))

(assert (=> d!45282 d!45288))

(declare-fun d!45290 () Bool)

(declare-fun lt!9839 () Int)

(assert (=> d!45290 (>= lt!9839 0)))

(declare-fun e!29130 () Int)

(assert (=> d!45290 (= lt!9839 e!29130)))

(declare-fun c!12033 () Bool)

(assert (=> d!45290 (= c!12033 (is-Nil!427 xs!801))))

(assert (=> d!45290 (= (size!456 xs!801) lt!9839)))

(declare-fun b!55310 () Bool)

(assert (=> b!55310 (= e!29130 0)))

(declare-fun b!55311 () Bool)

(assert (=> b!55311 (= e!29130 (+ 1 (size!456 (t!46891 xs!801))))))

(assert (= (and d!45290 c!12033) b!55310))

(assert (= (and d!45290 (not c!12033)) b!55311))

(assert (=> b!55311 m!60060))

(assert (=> d!45282 d!45290))

(declare-fun d!45292 () Bool)

(declare-fun lt!9840 () List!449)

(assert (=> d!45292 (= (size!456 lt!9840) (size!456 (t!46891 xs!801)))))

(declare-fun e!29131 () List!449)

(assert (=> d!45292 (= lt!9840 e!29131)))

(declare-fun c!12034 () Bool)

(assert (=> d!45292 (= c!12034 (is-Nil!427 (t!46891 xs!801)))))

(assert (=> d!45292 (= (map!333 (t!46891 xs!801) lambda!8593) lt!9840)))

(declare-fun b!55312 () Bool)

(assert (=> b!55312 (= e!29131 Nil!427)))

(declare-fun b!55313 () Bool)

(assert (=> b!55313 (= e!29131 ($colon$colon!9 (map!333 (t!46891 (t!46891 xs!801)) lambda!8593) (dynLambda!896 lambda!8593 (h!651 (t!46891 xs!801)))))))

(assert (= (and d!45292 c!12034) b!55312))

(assert (= (and d!45292 (not c!12034)) b!55313))

(declare-fun b_lambda!14633 () Bool)

(assert (=> (not b_lambda!14633) (not b!55313)))

(declare-fun m!60070 () Bool)

(assert (=> d!45292 m!60070))

(assert (=> d!45292 m!60060))

(declare-fun m!60072 () Bool)

(assert (=> b!55313 m!60072))

(declare-fun m!60074 () Bool)

(assert (=> b!55313 m!60074))

(assert (=> b!55313 m!60072))

(assert (=> b!55313 m!60074))

(declare-fun m!60076 () Bool)

(assert (=> b!55313 m!60076))

(assert (=> b!55289 d!45292))

(declare-fun bs!27550 () Bool)

(declare-fun b!55314 () Bool)

(assert (= bs!27550 (and b!55314 b!55283)))

(declare-fun lambda!8595 () Int)

(assert (=> bs!27550 (= lambda!8595 lambda!8588)))

(declare-fun bs!27551 () Bool)

(assert (= bs!27551 (and b!55314 b!55289)))

(assert (=> bs!27551 (= lambda!8595 lambda!8593)))

(declare-fun bs!27552 () Bool)

(assert (= bs!27552 (and b!55314 b!55290)))

(assert (=> bs!27552 (= lambda!8595 lambda!8594)))

(declare-fun bs!27553 () Bool)

(declare-fun b!55315 () Bool)

(assert (= bs!27553 (and b!55315 b!55283)))

(declare-fun lambda!8596 () Int)

(assert (=> bs!27553 (= lambda!8596 lambda!8588)))

(declare-fun bs!27554 () Bool)

(assert (= bs!27554 (and b!55315 b!55289)))

(assert (=> bs!27554 (= lambda!8596 lambda!8593)))

(declare-fun bs!27555 () Bool)

(assert (= bs!27555 (and b!55315 b!55290)))

(assert (=> bs!27555 (= lambda!8596 lambda!8594)))

(declare-fun bs!27556 () Bool)

(assert (= bs!27556 (and b!55315 b!55314)))

(assert (=> bs!27556 (= lambda!8596 lambda!8595)))

(declare-fun e!29132 () Bool)

(assert (=> b!55314 (= e!29132 (= (map!333 (t!46891 (t!46891 xs!801)) lambda!8595) (t!46891 (t!46891 xs!801))))))

(declare-fun lt!9841 () Bool)

(assert (=> b!55314 (= lt!9841 (mapId!1 (t!46891 (t!46891 (t!46891 xs!801)))))))

(declare-fun d!45294 () Bool)

(assert (=> d!45294 e!29132))

(declare-fun c!12035 () Bool)

(assert (=> d!45294 (= c!12035 (is-Cons!426 (t!46891 (t!46891 xs!801))))))

(assert (=> d!45294 (= (mapId!1 (t!46891 (t!46891 xs!801))) true)))

(assert (=> b!55315 (= e!29132 (= (map!333 (t!46891 (t!46891 xs!801)) lambda!8596) (t!46891 (t!46891 xs!801))))))

(assert (= (and d!45294 c!12035) b!55314))

(assert (= (and d!45294 (not c!12035)) b!55315))

(declare-fun m!60078 () Bool)

(assert (=> b!55314 m!60078))

(declare-fun m!60080 () Bool)

(assert (=> b!55314 m!60080))

(declare-fun m!60082 () Bool)

(assert (=> b!55315 m!60082))

(assert (=> b!55289 d!45294))

(declare-fun d!45296 () Bool)

(assert (=> d!45296 (= (id!4457 (h!651 xs!801)) (h!651 xs!801))))

(assert (=> bs!27549 d!45296))

(declare-fun d!45298 () Bool)

(assert (=> d!45298 (= ($colon$colon!9 (map!333 (t!46891 xs!801) lambda!8588) (dynLambda!896 lambda!8588 (h!651 xs!801))) (Cons!426 (dynLambda!896 lambda!8588 (h!651 xs!801)) (map!333 (t!46891 xs!801) lambda!8588)))))

(assert (=> b!55296 d!45298))

(declare-fun d!45300 () Bool)

(declare-fun lt!9842 () List!449)

(assert (=> d!45300 (= (size!456 lt!9842) (size!456 (t!46891 xs!801)))))

(declare-fun e!29133 () List!449)

(assert (=> d!45300 (= lt!9842 e!29133)))

(declare-fun c!12036 () Bool)

(assert (=> d!45300 (= c!12036 (is-Nil!427 (t!46891 xs!801)))))

(assert (=> d!45300 (= (map!333 (t!46891 xs!801) lambda!8588) lt!9842)))

(declare-fun b!55316 () Bool)

(assert (=> b!55316 (= e!29133 Nil!427)))

(declare-fun b!55317 () Bool)

(assert (=> b!55317 (= e!29133 ($colon$colon!9 (map!333 (t!46891 (t!46891 xs!801)) lambda!8588) (dynLambda!896 lambda!8588 (h!651 (t!46891 xs!801)))))))

(assert (= (and d!45300 c!12036) b!55316))

(assert (= (and d!45300 (not c!12036)) b!55317))

(declare-fun b_lambda!14635 () Bool)

(assert (=> (not b_lambda!14635) (not b!55317)))

(declare-fun m!60084 () Bool)

(assert (=> d!45300 m!60084))

(assert (=> d!45300 m!60060))

(declare-fun m!60086 () Bool)

(assert (=> b!55317 m!60086))

(declare-fun m!60088 () Bool)

(assert (=> b!55317 m!60088))

(assert (=> b!55317 m!60086))

(assert (=> b!55317 m!60088))

(declare-fun m!60090 () Bool)

(assert (=> b!55317 m!60090))

(assert (=> b!55296 d!45300))

(declare-fun b!55318 () Bool)

(declare-fun e!29134 () Bool)

(declare-fun tp!15599 () Bool)

(assert (=> b!55318 (= e!29134 (and tp_is_empty!295 tp!15599))))

(assert (=> b!55301 (= tp!15598 e!29134)))

(assert (= (and b!55301 (is-Cons!426 (t!46891 (t!46891 xs!801)))) b!55318))

(declare-fun b_lambda!14637 () Bool)

(assert (= b_lambda!14631 (or b!55290 b_lambda!14637)))

(declare-fun bs!27557 () Bool)

(declare-fun d!45302 () Bool)

(assert (= bs!27557 (and d!45302 b!55290)))

(assert (=> bs!27557 (= (dynLambda!896 lambda!8594 (h!651 (t!46891 xs!801))) (id!4457 (h!651 (t!46891 xs!801))))))

(declare-fun m!60092 () Bool)

(assert (=> bs!27557 m!60092))

(assert (=> b!55303 d!45302))

(declare-fun b_lambda!14639 () Bool)

(assert (= b_lambda!14635 (or b!55283 b_lambda!14639)))

(declare-fun bs!27558 () Bool)

(declare-fun d!45304 () Bool)

(assert (= bs!27558 (and d!45304 b!55283)))

(assert (=> bs!27558 (= (dynLambda!896 lambda!8588 (h!651 (t!46891 xs!801))) (id!4457 (h!651 (t!46891 xs!801))))))

(assert (=> bs!27558 m!60092))

(assert (=> b!55317 d!45304))

(declare-fun b_lambda!14641 () Bool)

(assert (= b_lambda!14633 (or b!55289 b_lambda!14641)))

(declare-fun bs!27559 () Bool)

(declare-fun d!45306 () Bool)

(assert (= bs!27559 (and d!45306 b!55289)))

(assert (=> bs!27559 (= (dynLambda!896 lambda!8593 (h!651 (t!46891 xs!801))) (id!4457 (h!651 (t!46891 xs!801))))))

(assert (=> bs!27559 m!60092))

(assert (=> b!55313 d!45306))

(push 1)

(assert (not b!55317))

(assert tp_is_empty!295)

(assert (not bs!27557))

(assert (not b_lambda!14637))

(assert (not b_lambda!14629))

(assert (not bs!27558))

(assert (not b!55314))

(assert (not b!55313))

(assert (not bs!27559))

(assert (not d!45292))

(assert (not d!45286))

(assert (not b!55311))

(assert (not b!55315))

(assert (not b!55303))

(assert (not d!45300))

(assert (not b!55318))

(assert (not b_lambda!14639))

(assert (not b!55309))

(assert (not b_lambda!14641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

