; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4720 () Bool)

(assert start!4720)

(declare-fun b!37148 () Bool)

(declare-fun b_free!2217 () Bool)

(declare-fun b_next!5375 () Bool)

(assert (=> b!37148 (= b_free!2217 (not b_next!5375))))

(declare-fun tp!7352 () Bool)

(declare-fun b_and!8089 () Bool)

(assert (=> b!37148 (= tp!7352 b_and!8089)))

(declare-fun b!37149 () Bool)

(declare-fun b_free!2219 () Bool)

(declare-fun b_next!5377 () Bool)

(assert (=> b!37149 (= b_free!2219 (not b_next!5377))))

(declare-fun tp!7351 () Bool)

(declare-fun b_and!8091 () Bool)

(assert (=> b!37149 (= tp!7351 b_and!8091)))

(declare-fun b!37150 () Bool)

(declare-fun b_free!2221 () Bool)

(declare-fun b_next!5379 () Bool)

(assert (=> b!37150 (= b_free!2221 (not b_next!5379))))

(declare-fun tp!7350 () Bool)

(declare-fun b_and!8093 () Bool)

(assert (=> b!37150 (= tp!7350 b_and!8093)))

(declare-datatypes () ((K!276 (K!277 (val!131 Int)))))

(declare-fun k0!9 () K!276)

(declare-datatypes () ((V!288 (V!289 (val!132 Int)))))

(declare-datatypes () ((Option!217 (Some!211 (v!679 V!288)) (None!211))))

(declare-datatypes () ((Env!9 (Env!10 (f!2521 Int)))))

(declare-fun env2!20 () Env!9)

(declare-fun env3!3 () Env!9)

(declare-fun env1!20 () Env!9)

(declare-fun apply!53 (Env!9 K!276) Option!217)

(declare-fun merge!9 (Env!9 Env!9) Env!9)

(assert (=> start!4720 (not (= (apply!53 (merge!9 (merge!9 env1!20 env2!20) env3!3) k0!9) (apply!53 (merge!9 env1!20 (merge!9 env2!20 env3!3)) k0!9)))))

(declare-fun e!19092 () Bool)

(assert (=> start!4720 e!19092))

(declare-fun e!19093 () Bool)

(assert (=> start!4720 e!19093))

(declare-fun e!19094 () Bool)

(assert (=> start!4720 e!19094))

(declare-fun tp_is_empty!261 () Bool)

(assert (=> start!4720 tp_is_empty!261))

(assert (=> b!37148 (= e!19092 tp!7352)))

(assert (=> b!37149 (= e!19093 tp!7351)))

(assert (=> b!37150 (= e!19094 tp!7350)))

(assert (= start!4720 b!37148))

(assert (= start!4720 b!37149))

(assert (= start!4720 b!37150))

(declare-fun m!38489 () Bool)

(assert (=> start!4720 m!38489))

(declare-fun m!38491 () Bool)

(assert (=> start!4720 m!38491))

(declare-fun m!38493 () Bool)

(assert (=> start!4720 m!38493))

(declare-fun m!38495 () Bool)

(assert (=> start!4720 m!38495))

(assert (=> start!4720 m!38489))

(declare-fun m!38497 () Bool)

(assert (=> start!4720 m!38497))

(assert (=> start!4720 m!38491))

(declare-fun m!38499 () Bool)

(assert (=> start!4720 m!38499))

(assert (=> start!4720 m!38497))

(assert (=> start!4720 m!38493))

(push 1)

(assert b_and!8089)

(assert tp_is_empty!261)

(assert (not b_next!5379))

(assert (not b_next!5377))

(assert b_and!8091)

(assert b_and!8093)

(assert (not start!4720))

(assert (not b_next!5375))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8089)

(assert (not b_next!5379))

(assert (not b_next!5377))

(assert b_and!8091)

(assert b_and!8093)

(assert (not b_next!5375))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!37155 () Bool)

(declare-fun e!19097 () Bool)

(assert (=> b!37155 (= e!19097 true)))

(declare-fun d!18710 () Bool)

(assert (=> d!18710 e!19097))

(assert (= d!18710 b!37155))

(declare-fun order!423 () Int)

(declare-fun lambda!4275 () Int)

(declare-fun dynLambda!670 (Int Int) Int)

(assert (=> b!37155 (< (dynLambda!670 order!423 (f!2521 env2!20)) (dynLambda!670 order!423 lambda!4275))))

(declare-fun b!37156 () Bool)

(declare-fun e!19098 () Bool)

(assert (=> b!37156 (= e!19098 true)))

(assert (=> d!18710 e!19098))

(assert (= d!18710 b!37156))

(assert (=> b!37156 (< (dynLambda!670 order!423 (f!2521 env1!20)) (dynLambda!670 order!423 lambda!4275))))

(declare-fun b_next!5381 () Bool)

(assert (=> b!37150 (= b_next!5379 (or (and d!18710 (= lambda!4275 (f!2521 env3!3))) b_next!5381))))

(assert (=> d!18710 (= (merge!9 env1!20 env2!20) (Env!10 lambda!4275))))

(assert (=> start!4720 d!18710))

(declare-fun bs!11444 () Bool)

(declare-fun d!18712 () Bool)

(assert (= bs!11444 (and d!18712 d!18710)))

(declare-fun lambda!4276 () Int)

(assert (=> bs!11444 (= (= (merge!9 env2!20 env3!3) env2!20) (= lambda!4276 lambda!4275))))

(declare-fun b!37157 () Bool)

(declare-fun e!19099 () Bool)

(assert (=> b!37157 (= e!19099 true)))

(assert (=> d!18712 e!19099))

(assert (= d!18712 b!37157))

(assert (=> b!37157 (< (dynLambda!670 order!423 (f!2521 (merge!9 env2!20 env3!3))) (dynLambda!670 order!423 lambda!4276))))

(declare-fun b!37158 () Bool)

(declare-fun e!19100 () Bool)

(assert (=> b!37158 (= e!19100 true)))

(assert (=> d!18712 e!19100))

(assert (= d!18712 b!37158))

(assert (=> b!37158 (< (dynLambda!670 order!423 (f!2521 env1!20)) (dynLambda!670 order!423 lambda!4276))))

(declare-fun b_next!5383 () Bool)

(assert (=> b!37149 (= b_next!5377 (or (and d!18712 (= lambda!4276 (f!2521 env2!20))) b_next!5383))))

(declare-fun b_next!5385 () Bool)

(assert (=> b!37150 (= b_next!5381 (or (and d!18712 (= lambda!4276 (f!2521 env3!3))) b_next!5385))))

(assert (=> d!18712 (= (merge!9 env1!20 (merge!9 env2!20 env3!3)) (Env!10 lambda!4276))))

(assert (=> start!4720 d!18712))

(declare-fun d!18714 () Bool)

(declare-fun dynLambda!671 (Int K!276) Option!217)

(assert (=> d!18714 (= (apply!53 (merge!9 env1!20 (merge!9 env2!20 env3!3)) k0!9) (dynLambda!671 (f!2521 (merge!9 env1!20 (merge!9 env2!20 env3!3))) k0!9))))

(declare-fun b_lambda!9887 () Bool)

(assert (=> (not b_lambda!9887) (not d!18714)))

(declare-fun bs!11445 () Bool)

(assert (= bs!11445 d!18714))

(declare-fun m!38501 () Bool)

(assert (=> bs!11445 m!38501))

(assert (=> start!4720 d!18714))

(declare-fun bs!11446 () Bool)

(declare-fun d!18716 () Bool)

(assert (= bs!11446 (and d!18716 d!18710)))

(declare-fun lambda!4277 () Int)

(assert (=> bs!11446 (= (and (= (merge!9 env1!20 env2!20) env1!20) (= env3!3 env2!20)) (= lambda!4277 lambda!4275))))

(declare-fun bs!11447 () Bool)

(assert (= bs!11447 (and d!18716 d!18712)))

(assert (=> bs!11447 (= (and (= (merge!9 env1!20 env2!20) env1!20) (= env3!3 (merge!9 env2!20 env3!3))) (= lambda!4277 lambda!4276))))

(declare-fun b!37159 () Bool)

(declare-fun e!19101 () Bool)

(assert (=> b!37159 (= e!19101 true)))

(assert (=> d!18716 e!19101))

(assert (= d!18716 b!37159))

(assert (=> b!37159 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!670 order!423 lambda!4277))))

(declare-fun b!37160 () Bool)

(declare-fun e!19102 () Bool)

(assert (=> b!37160 (= e!19102 true)))

(assert (=> d!18716 e!19102))

(assert (= d!18716 b!37160))

(assert (=> b!37160 (< (dynLambda!670 order!423 (f!2521 (merge!9 env1!20 env2!20))) (dynLambda!670 order!423 lambda!4277))))

(declare-fun b_next!5387 () Bool)

(assert (=> b!37148 (= b_next!5375 (or (and d!18716 (= lambda!4277 (f!2521 env1!20))) b_next!5387))))

(declare-fun b_next!5389 () Bool)

(assert (=> b!37149 (= b_next!5383 (or (and d!18716 (= lambda!4277 (f!2521 env2!20))) b_next!5389))))

(assert (=> d!18716 (= (merge!9 (merge!9 env1!20 env2!20) env3!3) (Env!10 lambda!4277))))

(assert (=> start!4720 d!18716))

(declare-fun bs!11448 () Bool)

(declare-fun d!18718 () Bool)

(assert (= bs!11448 (and d!18718 d!18710)))

(declare-fun lambda!4278 () Int)

(assert (=> bs!11448 (= (and (= env2!20 env1!20) (= env3!3 env2!20)) (= lambda!4278 lambda!4275))))

(declare-fun bs!11449 () Bool)

(assert (= bs!11449 (and d!18718 d!18712)))

(assert (=> bs!11449 (= (and (= env2!20 env1!20) (= env3!3 (merge!9 env2!20 env3!3))) (= lambda!4278 lambda!4276))))

(declare-fun bs!11450 () Bool)

(assert (= bs!11450 (and d!18718 d!18716)))

(assert (=> bs!11450 (= (= env2!20 (merge!9 env1!20 env2!20)) (= lambda!4278 lambda!4277))))

(declare-fun b!37161 () Bool)

(declare-fun e!19103 () Bool)

(assert (=> b!37161 (= e!19103 true)))

(assert (=> d!18718 e!19103))

(assert (= d!18718 b!37161))

(assert (=> b!37161 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!670 order!423 lambda!4278))))

(declare-fun b!37162 () Bool)

(declare-fun e!19104 () Bool)

(assert (=> b!37162 (= e!19104 true)))

(assert (=> d!18718 e!19104))

(assert (= d!18718 b!37162))

(assert (=> b!37162 (< (dynLambda!670 order!423 (f!2521 env2!20)) (dynLambda!670 order!423 lambda!4278))))

(declare-fun b_next!5391 () Bool)

(assert (=> b!37148 (= b_next!5387 (or (and d!18718 (= lambda!4278 (f!2521 env1!20))) b_next!5391))))

(assert (=> d!18718 (= (merge!9 env2!20 env3!3) (Env!10 lambda!4278))))

(assert (=> start!4720 d!18718))

(declare-fun d!18720 () Bool)

(assert (=> d!18720 (= (apply!53 (merge!9 (merge!9 env1!20 env2!20) env3!3) k0!9) (dynLambda!671 (f!2521 (merge!9 (merge!9 env1!20 env2!20) env3!3)) k0!9))))

(declare-fun b_lambda!9889 () Bool)

(assert (=> (not b_lambda!9889) (not d!18720)))

(declare-fun bs!11451 () Bool)

(assert (= bs!11451 d!18720))

(declare-fun m!38503 () Bool)

(assert (=> bs!11451 m!38503))

(assert (=> start!4720 d!18720))

(declare-fun b_lambda!9891 () Bool)

(assert (= b_lambda!9887 (or d!18712 b_lambda!9891)))

(declare-fun bs!11452 () Bool)

(declare-fun d!18722 () Bool)

(assert (= bs!11452 (and d!18722 d!18712)))

(assert (=> bs!11452 m!38489))

(declare-fun m!38505 () Bool)

(assert (=> bs!11452 m!38505))

(assert (=> bs!11452 true))

(declare-fun b!37169 () Bool)

(declare-fun e!19107 () Bool)

(assert (=> b!37169 (= e!19107 true)))

(assert (=> bs!11452 e!19107))

(assert (= bs!11452 b!37169))

(declare-fun lambda!4279 () Int)

(declare-fun order!425 () Int)

(declare-fun dynLambda!672 (Int Int) Int)

(assert (=> b!37169 (< (dynLambda!670 order!423 (f!2521 (merge!9 env2!20 env3!3))) (dynLambda!672 order!425 lambda!4279))))

(declare-fun orElse!8 (Option!217 Int) Option!217)

(assert (=> bs!11452 (= (dynLambda!671 lambda!4276 k0!9) (orElse!8 (apply!53 env1!20 k0!9) lambda!4279))))

(declare-fun m!38507 () Bool)

(assert (=> bs!11452 m!38507))

(assert (=> bs!11452 m!38507))

(declare-fun m!38509 () Bool)

(assert (=> bs!11452 m!38509))

(assert (=> d!18714 d!18722))

(declare-fun b_lambda!9893 () Bool)

(assert (= b_lambda!9889 (or d!18716 b_lambda!9893)))

(declare-fun bs!11453 () Bool)

(declare-fun d!18724 () Bool)

(assert (= bs!11453 (and d!18724 d!18716)))

(declare-fun m!38511 () Bool)

(assert (=> bs!11453 m!38511))

(declare-fun bs!11454 () Bool)

(assert (= bs!11454 (and d!18724 d!18716 d!18722 d!18712)))

(declare-fun lambda!4280 () Int)

(assert (=> bs!11454 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4280 lambda!4279))))

(assert (=> bs!11453 true))

(declare-fun b!37170 () Bool)

(declare-fun e!19108 () Bool)

(assert (=> b!37170 (= e!19108 true)))

(assert (=> bs!11453 e!19108))

(assert (= bs!11453 b!37170))

(assert (=> b!37170 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!672 order!425 lambda!4280))))

(assert (=> bs!11453 (= (dynLambda!671 lambda!4277 k0!9) (orElse!8 (apply!53 (merge!9 env1!20 env2!20) k0!9) lambda!4280))))

(assert (=> bs!11453 m!38497))

(declare-fun m!38513 () Bool)

(assert (=> bs!11453 m!38513))

(assert (=> bs!11453 m!38513))

(declare-fun m!38515 () Bool)

(assert (=> bs!11453 m!38515))

(assert (=> d!18720 d!18724))

(push 1)

(assert b_and!8089)

(assert tp_is_empty!261)

(assert (not b_lambda!9893))

(assert (not bs!11452))

(assert (not b_next!5385))

(assert b_and!8091)

(assert (not b_next!5391))

(assert b_and!8093)

(assert (not b_next!5389))

(assert (not b_lambda!9891))

(assert (not bs!11453))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8089)

(assert (not b_next!5385))

(assert b_and!8091)

(assert (not b_next!5391))

(assert b_and!8093)

(assert (not b_next!5389))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18726 () Bool)

(assert (=> d!18726 (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (dynLambda!671 (f!2521 (merge!9 env2!20 env3!3)) k0!9))))

(declare-fun b_lambda!9895 () Bool)

(assert (=> (not b_lambda!9895) (not d!18726)))

(declare-fun bs!11455 () Bool)

(assert (= bs!11455 d!18726))

(declare-fun m!38517 () Bool)

(assert (=> bs!11455 m!38517))

(assert (=> bs!11452 d!18726))

(declare-fun d!18728 () Bool)

(declare-fun e!19113 () Bool)

(assert (=> d!18728 e!19113))

(declare-fun res!17545 () Bool)

(assert (=> d!18728 (=> res!17545 e!19113)))

(declare-fun lt!7440 () Option!217)

(declare-fun isDefined!9 (Option!217) Bool)

(assert (=> d!18728 (= res!17545 (= (isDefined!9 lt!7440) (isDefined!9 (apply!53 env1!20 k0!9))))))

(declare-fun e!19114 () Option!217)

(assert (=> d!18728 (= lt!7440 e!19114)))

(declare-fun c!8143 () Bool)

(assert (=> d!18728 (= c!8143 (is-Some!211 (apply!53 env1!20 k0!9)))))

(assert (=> d!18728 (= (orElse!8 (apply!53 env1!20 k0!9) lambda!4279) lt!7440)))

(declare-fun b!37177 () Bool)

(assert (=> b!37177 (= e!19114 (apply!53 env1!20 k0!9))))

(declare-fun b!37178 () Bool)

(declare-fun dynLambda!673 (Int) Option!217)

(assert (=> b!37178 (= e!19114 (dynLambda!673 lambda!4279))))

(declare-fun b!37179 () Bool)

(assert (=> b!37179 (= e!19113 (isDefined!9 (dynLambda!673 lambda!4279)))))

(assert (= (and d!18728 c!8143) b!37177))

(assert (= (and d!18728 (not c!8143)) b!37178))

(assert (= (and d!18728 (not res!17545)) b!37179))

(declare-fun b_lambda!9897 () Bool)

(assert (=> (not b_lambda!9897) (not b!37178)))

(declare-fun b_lambda!9899 () Bool)

(assert (=> (not b_lambda!9899) (not b!37179)))

(declare-fun m!38519 () Bool)

(assert (=> d!18728 m!38519))

(assert (=> d!18728 m!38507))

(declare-fun m!38521 () Bool)

(assert (=> d!18728 m!38521))

(declare-fun m!38523 () Bool)

(assert (=> b!37178 m!38523))

(assert (=> b!37179 m!38523))

(assert (=> b!37179 m!38523))

(declare-fun m!38525 () Bool)

(assert (=> b!37179 m!38525))

(assert (=> bs!11452 d!18728))

(declare-fun d!18730 () Bool)

(assert (=> d!18730 (= (apply!53 env1!20 k0!9) (dynLambda!671 (f!2521 env1!20) k0!9))))

(declare-fun b_lambda!9901 () Bool)

(assert (=> (not b_lambda!9901) (not d!18730)))

(declare-fun t!5070 () Bool)

(declare-fun tb!4347 () Bool)

(assert (=> (and b!37148 (= (f!2521 env1!20) (f!2521 env1!20)) t!5070) tb!4347))

(declare-fun b!37184 () Bool)

(declare-fun e!19117 () Bool)

(declare-fun tp_is_empty!263 () Bool)

(assert (=> b!37184 (= e!19117 tp_is_empty!263)))

(declare-fun result!4613 () Bool)

(assert (=> tb!4347 (= result!4613 e!19117)))

(assert (= (and tb!4347 (is-Some!211 (dynLambda!671 (f!2521 env1!20) k0!9))) b!37184))

(assert (=> d!18730 t!5070))

(declare-fun b_and!8095 () Bool)

(assert (= b_and!8089 (and (=> t!5070 result!4613) b_and!8095)))

(declare-fun tb!4349 () Bool)

(declare-fun t!5072 () Bool)

(assert (=> (and b!37149 (= (f!2521 env2!20) (f!2521 env1!20)) t!5072) tb!4349))

(declare-fun result!4617 () Bool)

(assert (= result!4617 result!4613))

(assert (=> d!18730 t!5072))

(declare-fun b_and!8097 () Bool)

(assert (= b_and!8091 (and (=> t!5072 result!4617) b_and!8097)))

(declare-fun t!5074 () Bool)

(declare-fun tb!4351 () Bool)

(assert (=> (and b!37150 (= (f!2521 env3!3) (f!2521 env1!20)) t!5074) tb!4351))

(declare-fun result!4619 () Bool)

(assert (= result!4619 result!4613))

(assert (=> d!18730 t!5074))

(declare-fun b_and!8099 () Bool)

(assert (= b_and!8093 (and (=> t!5074 result!4619) b_and!8099)))

(declare-fun m!38527 () Bool)

(assert (=> d!18730 m!38527))

(assert (=> bs!11452 d!18730))

(declare-fun d!18732 () Bool)

(assert (=> d!18732 (= (apply!53 env3!3 k0!9) (dynLambda!671 (f!2521 env3!3) k0!9))))

(declare-fun b_lambda!9903 () Bool)

(assert (=> (not b_lambda!9903) (not d!18732)))

(declare-fun t!5076 () Bool)

(declare-fun tb!4353 () Bool)

(assert (=> (and b!37148 (= (f!2521 env1!20) (f!2521 env3!3)) t!5076) tb!4353))

(declare-fun b!37185 () Bool)

(declare-fun e!19118 () Bool)

(assert (=> b!37185 (= e!19118 tp_is_empty!263)))

(declare-fun result!4621 () Bool)

(assert (=> tb!4353 (= result!4621 e!19118)))

(assert (= (and tb!4353 (is-Some!211 (dynLambda!671 (f!2521 env3!3) k0!9))) b!37185))

(assert (=> d!18732 t!5076))

(declare-fun b_and!8101 () Bool)

(assert (= b_and!8095 (and (=> t!5076 result!4621) b_and!8101)))

(declare-fun t!5078 () Bool)

(declare-fun tb!4355 () Bool)

(assert (=> (and b!37149 (= (f!2521 env2!20) (f!2521 env3!3)) t!5078) tb!4355))

(declare-fun result!4623 () Bool)

(assert (= result!4623 result!4621))

(assert (=> d!18732 t!5078))

(declare-fun b_and!8103 () Bool)

(assert (= b_and!8097 (and (=> t!5078 result!4623) b_and!8103)))

(declare-fun t!5080 () Bool)

(declare-fun tb!4357 () Bool)

(assert (=> (and b!37150 (= (f!2521 env3!3) (f!2521 env3!3)) t!5080) tb!4357))

(declare-fun result!4625 () Bool)

(assert (= result!4625 result!4621))

(assert (=> d!18732 t!5080))

(declare-fun b_and!8105 () Bool)

(assert (= b_and!8099 (and (=> t!5080 result!4625) b_and!8105)))

(declare-fun m!38529 () Bool)

(assert (=> d!18732 m!38529))

(assert (=> bs!11453 d!18732))

(declare-fun d!18734 () Bool)

(declare-fun e!19119 () Bool)

(assert (=> d!18734 e!19119))

(declare-fun res!17546 () Bool)

(assert (=> d!18734 (=> res!17546 e!19119)))

(declare-fun lt!7441 () Option!217)

(assert (=> d!18734 (= res!17546 (= (isDefined!9 lt!7441) (isDefined!9 (apply!53 (merge!9 env1!20 env2!20) k0!9))))))

(declare-fun e!19120 () Option!217)

(assert (=> d!18734 (= lt!7441 e!19120)))

(declare-fun c!8144 () Bool)

(assert (=> d!18734 (= c!8144 (is-Some!211 (apply!53 (merge!9 env1!20 env2!20) k0!9)))))

(assert (=> d!18734 (= (orElse!8 (apply!53 (merge!9 env1!20 env2!20) k0!9) lambda!4280) lt!7441)))

(declare-fun b!37186 () Bool)

(assert (=> b!37186 (= e!19120 (apply!53 (merge!9 env1!20 env2!20) k0!9))))

(declare-fun b!37187 () Bool)

(assert (=> b!37187 (= e!19120 (dynLambda!673 lambda!4280))))

(declare-fun b!37188 () Bool)

(assert (=> b!37188 (= e!19119 (isDefined!9 (dynLambda!673 lambda!4280)))))

(assert (= (and d!18734 c!8144) b!37186))

(assert (= (and d!18734 (not c!8144)) b!37187))

(assert (= (and d!18734 (not res!17546)) b!37188))

(declare-fun b_lambda!9905 () Bool)

(assert (=> (not b_lambda!9905) (not b!37187)))

(declare-fun b_lambda!9907 () Bool)

(assert (=> (not b_lambda!9907) (not b!37188)))

(declare-fun m!38531 () Bool)

(assert (=> d!18734 m!38531))

(assert (=> d!18734 m!38513))

(declare-fun m!38533 () Bool)

(assert (=> d!18734 m!38533))

(declare-fun m!38535 () Bool)

(assert (=> b!37187 m!38535))

(assert (=> b!37188 m!38535))

(assert (=> b!37188 m!38535))

(declare-fun m!38537 () Bool)

(assert (=> b!37188 m!38537))

(assert (=> bs!11453 d!18734))

(declare-fun d!18736 () Bool)

(assert (=> d!18736 (= (apply!53 (merge!9 env1!20 env2!20) k0!9) (dynLambda!671 (f!2521 (merge!9 env1!20 env2!20)) k0!9))))

(declare-fun b_lambda!9909 () Bool)

(assert (=> (not b_lambda!9909) (not d!18736)))

(declare-fun bs!11456 () Bool)

(assert (= bs!11456 d!18736))

(declare-fun m!38539 () Bool)

(assert (=> bs!11456 m!38539))

(assert (=> bs!11453 d!18736))

(declare-fun b_lambda!9911 () Bool)

(assert (= b_lambda!9901 (or (and b!37150 b_free!2221 (= (f!2521 env3!3) (f!2521 env1!20))) (and b!37149 b_free!2219 (= (f!2521 env2!20) (f!2521 env1!20))) (and d!18716 (= lambda!4277 (f!2521 env1!20))) (and b!37148 b_free!2217) (and d!18718 (= lambda!4278 (f!2521 env1!20))) b_lambda!9911)))

(declare-fun bs!11457 () Bool)

(declare-fun d!18738 () Bool)

(assert (= bs!11457 (and d!18738 d!18718)))

(assert (=> bs!11457 m!38511))

(declare-fun bs!11458 () Bool)

(assert (= bs!11458 (and d!18738 d!18718 d!18722 d!18712)))

(declare-fun lambda!4281 () Int)

(assert (=> bs!11458 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4281 lambda!4279))))

(declare-fun bs!11459 () Bool)

(assert (= bs!11459 (and d!18738 d!18718 d!18724 d!18716)))

(assert (=> bs!11459 (= lambda!4281 lambda!4280)))

(assert (=> bs!11457 true))

(declare-fun b!37189 () Bool)

(declare-fun e!19121 () Bool)

(assert (=> b!37189 (= e!19121 true)))

(assert (=> bs!11457 e!19121))

(assert (= bs!11457 b!37189))

(assert (=> b!37189 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!672 order!425 lambda!4281))))

(assert (=> bs!11457 (= (dynLambda!671 lambda!4278 k0!9) (orElse!8 (apply!53 env2!20 k0!9) lambda!4281))))

(declare-fun m!38541 () Bool)

(assert (=> bs!11457 m!38541))

(assert (=> bs!11457 m!38541))

(declare-fun m!38543 () Bool)

(assert (=> bs!11457 m!38543))

(assert (=> (and d!18718 (= lambda!4278 (f!2521 env1!20)) d!18730) d!18738))

(declare-fun bs!11460 () Bool)

(declare-fun d!18740 () Bool)

(assert (= bs!11460 (and d!18740 d!18716)))

(assert (=> bs!11460 m!38511))

(declare-fun bs!11461 () Bool)

(assert (= bs!11461 (and d!18740 d!18716 d!18722 d!18712)))

(declare-fun lambda!4282 () Int)

(assert (=> bs!11461 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4282 lambda!4279))))

(declare-fun bs!11462 () Bool)

(assert (= bs!11462 (and d!18740 d!18716 d!18724)))

(assert (=> bs!11462 (= lambda!4282 lambda!4280)))

(declare-fun bs!11463 () Bool)

(assert (= bs!11463 (and d!18740 d!18716 d!18738 d!18718)))

(assert (=> bs!11463 (= lambda!4282 lambda!4281)))

(assert (=> bs!11460 true))

(declare-fun b!37190 () Bool)

(declare-fun e!19122 () Bool)

(assert (=> b!37190 (= e!19122 true)))

(assert (=> bs!11460 e!19122))

(assert (= bs!11460 b!37190))

(assert (=> b!37190 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!672 order!425 lambda!4282))))

(assert (=> bs!11460 (= (dynLambda!671 lambda!4277 k0!9) (orElse!8 (apply!53 (merge!9 env1!20 env2!20) k0!9) lambda!4282))))

(assert (=> bs!11460 m!38497))

(assert (=> bs!11460 m!38513))

(assert (=> bs!11460 m!38513))

(declare-fun m!38545 () Bool)

(assert (=> bs!11460 m!38545))

(assert (=> (and d!18716 (= lambda!4277 (f!2521 env1!20)) d!18730) d!18740))

(declare-fun b_lambda!9913 () Bool)

(assert (= b_lambda!9897 (or bs!11452 b_lambda!9913)))

(declare-fun bs!11464 () Bool)

(declare-fun d!18742 () Bool)

(assert (= bs!11464 (and d!18742 d!18722 d!18712)))

(assert (=> bs!11464 (= (dynLambda!673 lambda!4279) (apply!53 (merge!9 env2!20 env3!3) k0!9))))

(assert (=> b!37178 d!18742))

(declare-fun b_lambda!9915 () Bool)

(assert (= b_lambda!9905 (or bs!11453 b_lambda!9915)))

(declare-fun bs!11465 () Bool)

(declare-fun d!18744 () Bool)

(assert (= bs!11465 (and d!18744 d!18724 d!18716)))

(assert (=> bs!11465 (= (dynLambda!673 lambda!4280) (apply!53 env3!3 k0!9))))

(assert (=> b!37187 d!18744))

(declare-fun b_lambda!9917 () Bool)

(assert (= b_lambda!9899 (or bs!11452 b_lambda!9917)))

(assert (=> b!37179 d!18742))

(declare-fun b_lambda!9919 () Bool)

(assert (= b_lambda!9903 (or (and b!37149 b_free!2219 (= (f!2521 env2!20) (f!2521 env3!3))) (and d!18710 (= lambda!4275 (f!2521 env3!3))) (and b!37150 b_free!2221) (and b!37148 b_free!2217 (= (f!2521 env1!20) (f!2521 env3!3))) (and d!18712 (= lambda!4276 (f!2521 env3!3))) b_lambda!9919)))

(declare-fun bs!11466 () Bool)

(declare-fun d!18746 () Bool)

(assert (= bs!11466 (and d!18746 d!18710)))

(assert (=> bs!11466 m!38541))

(declare-fun bs!11467 () Bool)

(assert (= bs!11467 (and d!18746 d!18710 d!18722 d!18712)))

(declare-fun lambda!4283 () Int)

(assert (=> bs!11467 (= (= (apply!53 env2!20 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4283 lambda!4279))))

(declare-fun bs!11468 () Bool)

(assert (= bs!11468 (and d!18746 d!18710 d!18724 d!18716)))

(assert (=> bs!11468 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4283 lambda!4280))))

(declare-fun bs!11469 () Bool)

(assert (= bs!11469 (and d!18746 d!18710 d!18738 d!18718)))

(assert (=> bs!11469 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4283 lambda!4281))))

(declare-fun bs!11470 () Bool)

(assert (= bs!11470 (and d!18746 d!18710 d!18740 d!18716)))

(assert (=> bs!11470 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4283 lambda!4282))))

(assert (=> bs!11466 true))

(declare-fun b!37191 () Bool)

(declare-fun e!19123 () Bool)

(assert (=> b!37191 (= e!19123 true)))

(assert (=> bs!11466 e!19123))

(assert (= bs!11466 b!37191))

(assert (=> b!37191 (< (dynLambda!670 order!423 (f!2521 env2!20)) (dynLambda!672 order!425 lambda!4283))))

(assert (=> bs!11466 (= (dynLambda!671 lambda!4275 k0!9) (orElse!8 (apply!53 env1!20 k0!9) lambda!4283))))

(assert (=> bs!11466 m!38507))

(assert (=> bs!11466 m!38507))

(declare-fun m!38547 () Bool)

(assert (=> bs!11466 m!38547))

(assert (=> (and d!18710 (= lambda!4275 (f!2521 env3!3)) d!18732) d!18746))

(declare-fun bs!11471 () Bool)

(declare-fun d!18748 () Bool)

(assert (= bs!11471 (and d!18748 d!18712)))

(assert (=> bs!11471 m!38489))

(assert (=> bs!11471 m!38505))

(declare-fun bs!11472 () Bool)

(assert (= bs!11472 (and d!18748 d!18712 d!18738 d!18718)))

(declare-fun lambda!4284 () Int)

(assert (=> bs!11472 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4284 lambda!4281))))

(declare-fun bs!11473 () Bool)

(assert (= bs!11473 (and d!18748 d!18712 d!18740 d!18716)))

(assert (=> bs!11473 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4284 lambda!4282))))

(declare-fun bs!11474 () Bool)

(assert (= bs!11474 (and d!18748 d!18712 d!18746 d!18710)))

(assert (=> bs!11474 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env2!20 k0!9)) (= lambda!4284 lambda!4283))))

(declare-fun bs!11475 () Bool)

(assert (= bs!11475 (and d!18748 d!18712 d!18724 d!18716)))

(assert (=> bs!11475 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4284 lambda!4280))))

(declare-fun bs!11476 () Bool)

(assert (= bs!11476 (and d!18748 d!18712 d!18722)))

(assert (=> bs!11476 (= lambda!4284 lambda!4279)))

(assert (=> bs!11471 true))

(declare-fun b!37192 () Bool)

(declare-fun e!19124 () Bool)

(assert (=> b!37192 (= e!19124 true)))

(assert (=> bs!11471 e!19124))

(assert (= bs!11471 b!37192))

(assert (=> b!37192 (< (dynLambda!670 order!423 (f!2521 (merge!9 env2!20 env3!3))) (dynLambda!672 order!425 lambda!4284))))

(assert (=> bs!11471 (= (dynLambda!671 lambda!4276 k0!9) (orElse!8 (apply!53 env1!20 k0!9) lambda!4284))))

(assert (=> bs!11471 m!38507))

(assert (=> bs!11471 m!38507))

(declare-fun m!38549 () Bool)

(assert (=> bs!11471 m!38549))

(assert (=> (and d!18712 (= lambda!4276 (f!2521 env3!3)) d!18732) d!18748))

(declare-fun b_lambda!9921 () Bool)

(assert (= b_lambda!9909 (or d!18710 b_lambda!9921)))

(declare-fun bs!11477 () Bool)

(declare-fun d!18750 () Bool)

(assert (= bs!11477 (and d!18750 d!18710)))

(assert (=> bs!11477 m!38541))

(declare-fun bs!11478 () Bool)

(assert (= bs!11478 (and d!18750 d!18710 d!18748 d!18712)))

(declare-fun lambda!4285 () Int)

(assert (=> bs!11478 (= (= (apply!53 env2!20 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4285 lambda!4284))))

(declare-fun bs!11479 () Bool)

(assert (= bs!11479 (and d!18750 d!18710 d!18738 d!18718)))

(assert (=> bs!11479 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4285 lambda!4281))))

(declare-fun bs!11480 () Bool)

(assert (= bs!11480 (and d!18750 d!18710 d!18740 d!18716)))

(assert (=> bs!11480 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4285 lambda!4282))))

(declare-fun bs!11481 () Bool)

(assert (= bs!11481 (and d!18750 d!18710 d!18746)))

(assert (=> bs!11481 (= lambda!4285 lambda!4283)))

(declare-fun bs!11482 () Bool)

(assert (= bs!11482 (and d!18750 d!18710 d!18724 d!18716)))

(assert (=> bs!11482 (= (= (apply!53 env2!20 k0!9) (apply!53 env3!3 k0!9)) (= lambda!4285 lambda!4280))))

(declare-fun bs!11483 () Bool)

(assert (= bs!11483 (and d!18750 d!18710 d!18722 d!18712)))

(assert (=> bs!11483 (= (= (apply!53 env2!20 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4285 lambda!4279))))

(assert (=> bs!11477 true))

(declare-fun b!37193 () Bool)

(declare-fun e!19125 () Bool)

(assert (=> b!37193 (= e!19125 true)))

(assert (=> bs!11477 e!19125))

(assert (= bs!11477 b!37193))

(assert (=> b!37193 (< (dynLambda!670 order!423 (f!2521 env2!20)) (dynLambda!672 order!425 lambda!4285))))

(assert (=> bs!11477 (= (dynLambda!671 lambda!4275 k0!9) (orElse!8 (apply!53 env1!20 k0!9) lambda!4285))))

(assert (=> bs!11477 m!38507))

(assert (=> bs!11477 m!38507))

(declare-fun m!38551 () Bool)

(assert (=> bs!11477 m!38551))

(assert (=> d!18736 d!18750))

(declare-fun b_lambda!9923 () Bool)

(assert (= b_lambda!9907 (or bs!11453 b_lambda!9923)))

(assert (=> b!37188 d!18744))

(declare-fun b_lambda!9925 () Bool)

(assert (= b_lambda!9895 (or d!18718 b_lambda!9925)))

(declare-fun bs!11484 () Bool)

(declare-fun d!18752 () Bool)

(assert (= bs!11484 (and d!18752 d!18718)))

(assert (=> bs!11484 m!38511))

(declare-fun bs!11485 () Bool)

(assert (= bs!11485 (and d!18752 d!18718 d!18748 d!18712)))

(declare-fun lambda!4286 () Int)

(assert (=> bs!11485 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4286 lambda!4284))))

(declare-fun bs!11486 () Bool)

(assert (= bs!11486 (and d!18752 d!18718 d!18738)))

(assert (=> bs!11486 (= lambda!4286 lambda!4281)))

(declare-fun bs!11487 () Bool)

(assert (= bs!11487 (and d!18752 d!18718 d!18740 d!18716)))

(assert (=> bs!11487 (= lambda!4286 lambda!4282)))

(declare-fun bs!11488 () Bool)

(assert (= bs!11488 (and d!18752 d!18718 d!18746 d!18710)))

(assert (=> bs!11488 (= (= (apply!53 env3!3 k0!9) (apply!53 env2!20 k0!9)) (= lambda!4286 lambda!4283))))

(declare-fun bs!11489 () Bool)

(assert (= bs!11489 (and d!18752 d!18718 d!18724 d!18716)))

(assert (=> bs!11489 (= lambda!4286 lambda!4280)))

(declare-fun bs!11490 () Bool)

(assert (= bs!11490 (and d!18752 d!18718 d!18722 d!18712)))

(assert (=> bs!11490 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4286 lambda!4279))))

(declare-fun bs!11491 () Bool)

(assert (= bs!11491 (and d!18752 d!18718 d!18750 d!18710)))

(assert (=> bs!11491 (= (= (apply!53 env3!3 k0!9) (apply!53 env2!20 k0!9)) (= lambda!4286 lambda!4285))))

(assert (=> bs!11484 true))

(declare-fun b!37194 () Bool)

(declare-fun e!19126 () Bool)

(assert (=> b!37194 (= e!19126 true)))

(assert (=> bs!11484 e!19126))

(assert (= bs!11484 b!37194))

(assert (=> b!37194 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!672 order!425 lambda!4286))))

(assert (=> bs!11484 (= (dynLambda!671 lambda!4278 k0!9) (orElse!8 (apply!53 env2!20 k0!9) lambda!4286))))

(assert (=> bs!11484 m!38541))

(assert (=> bs!11484 m!38541))

(declare-fun m!38553 () Bool)

(assert (=> bs!11484 m!38553))

(assert (=> d!18726 d!18752))

(push 1)

(assert (not bs!11466))

(assert (not b!37188))

(assert tp_is_empty!261)

(assert (not b_lambda!9917))

(assert (not bs!11471))

(assert (not b_lambda!9923))

(assert (not b_lambda!9919))

(assert b_and!8105)

(assert (not b_lambda!9893))

(assert (not b_next!5385))

(assert (not bs!11457))

(assert (not b_lambda!9913))

(assert (not b_next!5391))

(assert (not b_lambda!9915))

(assert b_and!8101)

(assert (not d!18734))

(assert b_and!8103)

(assert (not b_lambda!9921))

(assert (not b_next!5389))

(assert (not b_lambda!9891))

(assert (not b_lambda!9925))

(assert (not d!18728))

(assert (not bs!11460))

(assert (not bs!11484))

(assert (not bs!11477))

(assert (not b_lambda!9911))

(assert (not b!37179))

(assert tp_is_empty!263)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8105)

(assert (not b_next!5385))

(assert (not b_next!5391))

(assert b_and!8101)

(assert b_and!8103)

(assert (not b_next!5389))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18754 () Bool)

(declare-fun isEmpty!409 (Option!217) Bool)

(assert (=> d!18754 (= (isDefined!9 (dynLambda!673 lambda!4280)) (not (isEmpty!409 (dynLambda!673 lambda!4280))))))

(declare-fun bs!11492 () Bool)

(assert (= bs!11492 d!18754))

(assert (=> bs!11492 m!38535))

(declare-fun m!38555 () Bool)

(assert (=> bs!11492 m!38555))

(assert (=> b!37188 d!18754))

(declare-fun d!18756 () Bool)

(assert (=> d!18756 (= (isDefined!9 (dynLambda!673 lambda!4279)) (not (isEmpty!409 (dynLambda!673 lambda!4279))))))

(declare-fun bs!11493 () Bool)

(assert (= bs!11493 d!18756))

(assert (=> bs!11493 m!38523))

(declare-fun m!38557 () Bool)

(assert (=> bs!11493 m!38557))

(assert (=> b!37179 d!18756))

(declare-fun d!18758 () Bool)

(assert (=> d!18758 (= (apply!53 env2!20 k0!9) (dynLambda!671 (f!2521 env2!20) k0!9))))

(declare-fun b_lambda!9927 () Bool)

(assert (=> (not b_lambda!9927) (not d!18758)))

(declare-fun tb!4359 () Bool)

(declare-fun t!5082 () Bool)

(assert (=> (and b!37148 (= (f!2521 env1!20) (f!2521 env2!20)) t!5082) tb!4359))

(declare-fun b!37195 () Bool)

(declare-fun e!19127 () Bool)

(assert (=> b!37195 (= e!19127 tp_is_empty!263)))

(declare-fun result!4627 () Bool)

(assert (=> tb!4359 (= result!4627 e!19127)))

(assert (= (and tb!4359 (is-Some!211 (dynLambda!671 (f!2521 env2!20) k0!9))) b!37195))

(assert (=> d!18758 t!5082))

(declare-fun b_and!8107 () Bool)

(assert (= b_and!8101 (and (=> t!5082 result!4627) b_and!8107)))

(declare-fun t!5084 () Bool)

(declare-fun tb!4361 () Bool)

(assert (=> (and b!37149 (= (f!2521 env2!20) (f!2521 env2!20)) t!5084) tb!4361))

(declare-fun result!4629 () Bool)

(assert (= result!4629 result!4627))

(assert (=> d!18758 t!5084))

(declare-fun b_and!8109 () Bool)

(assert (= b_and!8103 (and (=> t!5084 result!4629) b_and!8109)))

(declare-fun t!5086 () Bool)

(declare-fun tb!4363 () Bool)

(assert (=> (and b!37150 (= (f!2521 env3!3) (f!2521 env2!20)) t!5086) tb!4363))

(declare-fun result!4631 () Bool)

(assert (= result!4631 result!4627))

(assert (=> d!18758 t!5086))

(declare-fun b_and!8111 () Bool)

(assert (= b_and!8105 (and (=> t!5086 result!4631) b_and!8111)))

(declare-fun m!38559 () Bool)

(assert (=> d!18758 m!38559))

(assert (=> bs!11466 d!18758))

(declare-fun d!18760 () Bool)

(declare-fun e!19128 () Bool)

(assert (=> d!18760 e!19128))

(declare-fun res!17547 () Bool)

(assert (=> d!18760 (=> res!17547 e!19128)))

(declare-fun lt!7442 () Option!217)

(assert (=> d!18760 (= res!17547 (= (isDefined!9 lt!7442) (isDefined!9 (apply!53 env1!20 k0!9))))))

(declare-fun e!19129 () Option!217)

(assert (=> d!18760 (= lt!7442 e!19129)))

(declare-fun c!8145 () Bool)

(assert (=> d!18760 (= c!8145 (is-Some!211 (apply!53 env1!20 k0!9)))))

(assert (=> d!18760 (= (orElse!8 (apply!53 env1!20 k0!9) lambda!4283) lt!7442)))

(declare-fun b!37196 () Bool)

(assert (=> b!37196 (= e!19129 (apply!53 env1!20 k0!9))))

(declare-fun b!37197 () Bool)

(assert (=> b!37197 (= e!19129 (dynLambda!673 lambda!4283))))

(declare-fun b!37198 () Bool)

(assert (=> b!37198 (= e!19128 (isDefined!9 (dynLambda!673 lambda!4283)))))

(assert (= (and d!18760 c!8145) b!37196))

(assert (= (and d!18760 (not c!8145)) b!37197))

(assert (= (and d!18760 (not res!17547)) b!37198))

(declare-fun b_lambda!9929 () Bool)

(assert (=> (not b_lambda!9929) (not b!37197)))

(declare-fun b_lambda!9931 () Bool)

(assert (=> (not b_lambda!9931) (not b!37198)))

(declare-fun m!38561 () Bool)

(assert (=> d!18760 m!38561))

(assert (=> d!18760 m!38507))

(assert (=> d!18760 m!38521))

(declare-fun m!38563 () Bool)

(assert (=> b!37197 m!38563))

(assert (=> b!37198 m!38563))

(assert (=> b!37198 m!38563))

(declare-fun m!38565 () Bool)

(assert (=> b!37198 m!38565))

(assert (=> bs!11466 d!18760))

(assert (=> bs!11466 d!18730))

(assert (=> bs!11477 d!18758))

(declare-fun d!18762 () Bool)

(declare-fun e!19130 () Bool)

(assert (=> d!18762 e!19130))

(declare-fun res!17548 () Bool)

(assert (=> d!18762 (=> res!17548 e!19130)))

(declare-fun lt!7443 () Option!217)

(assert (=> d!18762 (= res!17548 (= (isDefined!9 lt!7443) (isDefined!9 (apply!53 env1!20 k0!9))))))

(declare-fun e!19131 () Option!217)

(assert (=> d!18762 (= lt!7443 e!19131)))

(declare-fun c!8146 () Bool)

(assert (=> d!18762 (= c!8146 (is-Some!211 (apply!53 env1!20 k0!9)))))

(assert (=> d!18762 (= (orElse!8 (apply!53 env1!20 k0!9) lambda!4285) lt!7443)))

(declare-fun b!37199 () Bool)

(assert (=> b!37199 (= e!19131 (apply!53 env1!20 k0!9))))

(declare-fun b!37200 () Bool)

(assert (=> b!37200 (= e!19131 (dynLambda!673 lambda!4285))))

(declare-fun b!37201 () Bool)

(assert (=> b!37201 (= e!19130 (isDefined!9 (dynLambda!673 lambda!4285)))))

(assert (= (and d!18762 c!8146) b!37199))

(assert (= (and d!18762 (not c!8146)) b!37200))

(assert (= (and d!18762 (not res!17548)) b!37201))

(declare-fun b_lambda!9933 () Bool)

(assert (=> (not b_lambda!9933) (not b!37200)))

(declare-fun b_lambda!9935 () Bool)

(assert (=> (not b_lambda!9935) (not b!37201)))

(declare-fun m!38567 () Bool)

(assert (=> d!18762 m!38567))

(assert (=> d!18762 m!38507))

(assert (=> d!18762 m!38521))

(declare-fun m!38569 () Bool)

(assert (=> b!37200 m!38569))

(assert (=> b!37201 m!38569))

(assert (=> b!37201 m!38569))

(declare-fun m!38571 () Bool)

(assert (=> b!37201 m!38571))

(assert (=> bs!11477 d!18762))

(assert (=> bs!11477 d!18730))

(declare-fun d!18764 () Bool)

(assert (=> d!18764 (= (isDefined!9 lt!7441) (not (isEmpty!409 lt!7441)))))

(declare-fun bs!11494 () Bool)

(assert (= bs!11494 d!18764))

(declare-fun m!38573 () Bool)

(assert (=> bs!11494 m!38573))

(assert (=> d!18734 d!18764))

(declare-fun d!18766 () Bool)

(assert (=> d!18766 (= (isDefined!9 (apply!53 (merge!9 env1!20 env2!20) k0!9)) (not (isEmpty!409 (apply!53 (merge!9 env1!20 env2!20) k0!9))))))

(declare-fun bs!11495 () Bool)

(assert (= bs!11495 d!18766))

(assert (=> bs!11495 m!38513))

(declare-fun m!38575 () Bool)

(assert (=> bs!11495 m!38575))

(assert (=> d!18734 d!18766))

(assert (=> bs!11484 d!18732))

(declare-fun d!18768 () Bool)

(declare-fun e!19132 () Bool)

(assert (=> d!18768 e!19132))

(declare-fun res!17549 () Bool)

(assert (=> d!18768 (=> res!17549 e!19132)))

(declare-fun lt!7444 () Option!217)

(assert (=> d!18768 (= res!17549 (= (isDefined!9 lt!7444) (isDefined!9 (apply!53 env2!20 k0!9))))))

(declare-fun e!19133 () Option!217)

(assert (=> d!18768 (= lt!7444 e!19133)))

(declare-fun c!8147 () Bool)

(assert (=> d!18768 (= c!8147 (is-Some!211 (apply!53 env2!20 k0!9)))))

(assert (=> d!18768 (= (orElse!8 (apply!53 env2!20 k0!9) lambda!4286) lt!7444)))

(declare-fun b!37202 () Bool)

(assert (=> b!37202 (= e!19133 (apply!53 env2!20 k0!9))))

(declare-fun b!37203 () Bool)

(assert (=> b!37203 (= e!19133 (dynLambda!673 lambda!4286))))

(declare-fun b!37204 () Bool)

(assert (=> b!37204 (= e!19132 (isDefined!9 (dynLambda!673 lambda!4286)))))

(assert (= (and d!18768 c!8147) b!37202))

(assert (= (and d!18768 (not c!8147)) b!37203))

(assert (= (and d!18768 (not res!17549)) b!37204))

(declare-fun b_lambda!9937 () Bool)

(assert (=> (not b_lambda!9937) (not b!37203)))

(declare-fun b_lambda!9939 () Bool)

(assert (=> (not b_lambda!9939) (not b!37204)))

(declare-fun m!38577 () Bool)

(assert (=> d!18768 m!38577))

(assert (=> d!18768 m!38541))

(declare-fun m!38579 () Bool)

(assert (=> d!18768 m!38579))

(declare-fun m!38581 () Bool)

(assert (=> b!37203 m!38581))

(assert (=> b!37204 m!38581))

(assert (=> b!37204 m!38581))

(declare-fun m!38583 () Bool)

(assert (=> b!37204 m!38583))

(assert (=> bs!11484 d!18768))

(assert (=> bs!11484 d!18758))

(assert (=> bs!11457 d!18732))

(declare-fun d!18770 () Bool)

(declare-fun e!19134 () Bool)

(assert (=> d!18770 e!19134))

(declare-fun res!17550 () Bool)

(assert (=> d!18770 (=> res!17550 e!19134)))

(declare-fun lt!7445 () Option!217)

(assert (=> d!18770 (= res!17550 (= (isDefined!9 lt!7445) (isDefined!9 (apply!53 env2!20 k0!9))))))

(declare-fun e!19135 () Option!217)

(assert (=> d!18770 (= lt!7445 e!19135)))

(declare-fun c!8148 () Bool)

(assert (=> d!18770 (= c!8148 (is-Some!211 (apply!53 env2!20 k0!9)))))

(assert (=> d!18770 (= (orElse!8 (apply!53 env2!20 k0!9) lambda!4281) lt!7445)))

(declare-fun b!37205 () Bool)

(assert (=> b!37205 (= e!19135 (apply!53 env2!20 k0!9))))

(declare-fun b!37206 () Bool)

(assert (=> b!37206 (= e!19135 (dynLambda!673 lambda!4281))))

(declare-fun b!37207 () Bool)

(assert (=> b!37207 (= e!19134 (isDefined!9 (dynLambda!673 lambda!4281)))))

(assert (= (and d!18770 c!8148) b!37205))

(assert (= (and d!18770 (not c!8148)) b!37206))

(assert (= (and d!18770 (not res!17550)) b!37207))

(declare-fun b_lambda!9941 () Bool)

(assert (=> (not b_lambda!9941) (not b!37206)))

(declare-fun b_lambda!9943 () Bool)

(assert (=> (not b_lambda!9943) (not b!37207)))

(declare-fun m!38585 () Bool)

(assert (=> d!18770 m!38585))

(assert (=> d!18770 m!38541))

(assert (=> d!18770 m!38579))

(declare-fun m!38587 () Bool)

(assert (=> b!37206 m!38587))

(assert (=> b!37207 m!38587))

(assert (=> b!37207 m!38587))

(declare-fun m!38589 () Bool)

(assert (=> b!37207 m!38589))

(assert (=> bs!11457 d!18770))

(assert (=> bs!11457 d!18758))

(assert (=> bs!11471 d!18726))

(declare-fun d!18772 () Bool)

(declare-fun e!19136 () Bool)

(assert (=> d!18772 e!19136))

(declare-fun res!17551 () Bool)

(assert (=> d!18772 (=> res!17551 e!19136)))

(declare-fun lt!7446 () Option!217)

(assert (=> d!18772 (= res!17551 (= (isDefined!9 lt!7446) (isDefined!9 (apply!53 env1!20 k0!9))))))

(declare-fun e!19137 () Option!217)

(assert (=> d!18772 (= lt!7446 e!19137)))

(declare-fun c!8149 () Bool)

(assert (=> d!18772 (= c!8149 (is-Some!211 (apply!53 env1!20 k0!9)))))

(assert (=> d!18772 (= (orElse!8 (apply!53 env1!20 k0!9) lambda!4284) lt!7446)))

(declare-fun b!37208 () Bool)

(assert (=> b!37208 (= e!19137 (apply!53 env1!20 k0!9))))

(declare-fun b!37209 () Bool)

(assert (=> b!37209 (= e!19137 (dynLambda!673 lambda!4284))))

(declare-fun b!37210 () Bool)

(assert (=> b!37210 (= e!19136 (isDefined!9 (dynLambda!673 lambda!4284)))))

(assert (= (and d!18772 c!8149) b!37208))

(assert (= (and d!18772 (not c!8149)) b!37209))

(assert (= (and d!18772 (not res!17551)) b!37210))

(declare-fun b_lambda!9945 () Bool)

(assert (=> (not b_lambda!9945) (not b!37209)))

(declare-fun b_lambda!9947 () Bool)

(assert (=> (not b_lambda!9947) (not b!37210)))

(declare-fun m!38591 () Bool)

(assert (=> d!18772 m!38591))

(assert (=> d!18772 m!38507))

(assert (=> d!18772 m!38521))

(declare-fun m!38593 () Bool)

(assert (=> b!37209 m!38593))

(assert (=> b!37210 m!38593))

(assert (=> b!37210 m!38593))

(declare-fun m!38595 () Bool)

(assert (=> b!37210 m!38595))

(assert (=> bs!11471 d!18772))

(assert (=> bs!11471 d!18730))

(assert (=> bs!11460 d!18732))

(declare-fun d!18774 () Bool)

(declare-fun e!19138 () Bool)

(assert (=> d!18774 e!19138))

(declare-fun res!17552 () Bool)

(assert (=> d!18774 (=> res!17552 e!19138)))

(declare-fun lt!7447 () Option!217)

(assert (=> d!18774 (= res!17552 (= (isDefined!9 lt!7447) (isDefined!9 (apply!53 (merge!9 env1!20 env2!20) k0!9))))))

(declare-fun e!19139 () Option!217)

(assert (=> d!18774 (= lt!7447 e!19139)))

(declare-fun c!8150 () Bool)

(assert (=> d!18774 (= c!8150 (is-Some!211 (apply!53 (merge!9 env1!20 env2!20) k0!9)))))

(assert (=> d!18774 (= (orElse!8 (apply!53 (merge!9 env1!20 env2!20) k0!9) lambda!4282) lt!7447)))

(declare-fun b!37211 () Bool)

(assert (=> b!37211 (= e!19139 (apply!53 (merge!9 env1!20 env2!20) k0!9))))

(declare-fun b!37212 () Bool)

(assert (=> b!37212 (= e!19139 (dynLambda!673 lambda!4282))))

(declare-fun b!37213 () Bool)

(assert (=> b!37213 (= e!19138 (isDefined!9 (dynLambda!673 lambda!4282)))))

(assert (= (and d!18774 c!8150) b!37211))

(assert (= (and d!18774 (not c!8150)) b!37212))

(assert (= (and d!18774 (not res!17552)) b!37213))

(declare-fun b_lambda!9949 () Bool)

(assert (=> (not b_lambda!9949) (not b!37212)))

(declare-fun b_lambda!9951 () Bool)

(assert (=> (not b_lambda!9951) (not b!37213)))

(declare-fun m!38597 () Bool)

(assert (=> d!18774 m!38597))

(assert (=> d!18774 m!38513))

(assert (=> d!18774 m!38533))

(declare-fun m!38599 () Bool)

(assert (=> b!37212 m!38599))

(assert (=> b!37213 m!38599))

(assert (=> b!37213 m!38599))

(declare-fun m!38601 () Bool)

(assert (=> b!37213 m!38601))

(assert (=> bs!11460 d!18774))

(assert (=> bs!11460 d!18736))

(declare-fun d!18776 () Bool)

(assert (=> d!18776 (= (isDefined!9 lt!7440) (not (isEmpty!409 lt!7440)))))

(declare-fun bs!11496 () Bool)

(assert (= bs!11496 d!18776))

(declare-fun m!38603 () Bool)

(assert (=> bs!11496 m!38603))

(assert (=> d!18728 d!18776))

(declare-fun d!18778 () Bool)

(assert (=> d!18778 (= (isDefined!9 (apply!53 env1!20 k0!9)) (not (isEmpty!409 (apply!53 env1!20 k0!9))))))

(declare-fun bs!11497 () Bool)

(assert (= bs!11497 d!18778))

(assert (=> bs!11497 m!38507))

(declare-fun m!38605 () Bool)

(assert (=> bs!11497 m!38605))

(assert (=> d!18728 d!18778))

(declare-fun b_lambda!9953 () Bool)

(assert (= b_lambda!9933 (or bs!11477 b_lambda!9953)))

(declare-fun bs!11498 () Bool)

(declare-fun d!18780 () Bool)

(assert (= bs!11498 (and d!18780 d!18750 d!18710)))

(assert (=> bs!11498 (= (dynLambda!673 lambda!4285) (apply!53 env2!20 k0!9))))

(assert (=> b!37200 d!18780))

(declare-fun b_lambda!9955 () Bool)

(assert (= b_lambda!9943 (or bs!11457 b_lambda!9955)))

(declare-fun bs!11499 () Bool)

(declare-fun d!18782 () Bool)

(assert (= bs!11499 (and d!18782 d!18738 d!18718)))

(assert (=> bs!11499 (= (dynLambda!673 lambda!4281) (apply!53 env3!3 k0!9))))

(assert (=> b!37207 d!18782))

(declare-fun b_lambda!9957 () Bool)

(assert (= b_lambda!9945 (or bs!11471 b_lambda!9957)))

(declare-fun bs!11500 () Bool)

(declare-fun d!18784 () Bool)

(assert (= bs!11500 (and d!18784 d!18748 d!18712)))

(assert (=> bs!11500 (= (dynLambda!673 lambda!4284) (apply!53 (merge!9 env2!20 env3!3) k0!9))))

(assert (=> b!37209 d!18784))

(declare-fun b_lambda!9959 () Bool)

(assert (= b_lambda!9927 (or (and d!18712 (= lambda!4276 (f!2521 env2!20))) (and d!18716 (= lambda!4277 (f!2521 env2!20))) (and b!37149 b_free!2219) (and b!37150 b_free!2221 (= (f!2521 env3!3) (f!2521 env2!20))) (and b!37148 b_free!2217 (= (f!2521 env1!20) (f!2521 env2!20))) b_lambda!9959)))

(declare-fun bs!11501 () Bool)

(declare-fun d!18786 () Bool)

(assert (= bs!11501 (and d!18786 d!18712)))

(assert (=> bs!11501 m!38489))

(assert (=> bs!11501 m!38505))

(declare-fun bs!11502 () Bool)

(assert (= bs!11502 (and d!18786 d!18712 d!18748)))

(declare-fun lambda!4287 () Int)

(assert (=> bs!11502 (= lambda!4287 lambda!4284)))

(declare-fun bs!11503 () Bool)

(assert (= bs!11503 (and d!18786 d!18712 d!18738 d!18718)))

(assert (=> bs!11503 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4287 lambda!4281))))

(declare-fun bs!11504 () Bool)

(assert (= bs!11504 (and d!18786 d!18712 d!18740 d!18716)))

(assert (=> bs!11504 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4287 lambda!4282))))

(declare-fun bs!11505 () Bool)

(assert (= bs!11505 (and d!18786 d!18712 d!18746 d!18710)))

(assert (=> bs!11505 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env2!20 k0!9)) (= lambda!4287 lambda!4283))))

(declare-fun bs!11506 () Bool)

(assert (= bs!11506 (and d!18786 d!18712 d!18724 d!18716)))

(assert (=> bs!11506 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4287 lambda!4280))))

(declare-fun bs!11507 () Bool)

(assert (= bs!11507 (and d!18786 d!18712 d!18722)))

(assert (=> bs!11507 (= lambda!4287 lambda!4279)))

(declare-fun bs!11508 () Bool)

(assert (= bs!11508 (and d!18786 d!18712 d!18752 d!18718)))

(assert (=> bs!11508 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env3!3 k0!9)) (= lambda!4287 lambda!4286))))

(declare-fun bs!11509 () Bool)

(assert (= bs!11509 (and d!18786 d!18712 d!18750 d!18710)))

(assert (=> bs!11509 (= (= (apply!53 (merge!9 env2!20 env3!3) k0!9) (apply!53 env2!20 k0!9)) (= lambda!4287 lambda!4285))))

(assert (=> bs!11501 true))

(declare-fun b!37214 () Bool)

(declare-fun e!19140 () Bool)

(assert (=> b!37214 (= e!19140 true)))

(assert (=> bs!11501 e!19140))

(assert (= bs!11501 b!37214))

(assert (=> b!37214 (< (dynLambda!670 order!423 (f!2521 (merge!9 env2!20 env3!3))) (dynLambda!672 order!425 lambda!4287))))

(assert (=> bs!11501 (= (dynLambda!671 lambda!4276 k0!9) (orElse!8 (apply!53 env1!20 k0!9) lambda!4287))))

(assert (=> bs!11501 m!38507))

(assert (=> bs!11501 m!38507))

(declare-fun m!38607 () Bool)

(assert (=> bs!11501 m!38607))

(assert (=> (and d!18712 (= lambda!4276 (f!2521 env2!20)) d!18758) d!18786))

(declare-fun bs!11510 () Bool)

(declare-fun d!18788 () Bool)

(assert (= bs!11510 (and d!18788 d!18716)))

(assert (=> bs!11510 m!38511))

(declare-fun bs!11511 () Bool)

(assert (= bs!11511 (and d!18788 d!18716 d!18748 d!18712)))

(declare-fun lambda!4288 () Int)

(assert (=> bs!11511 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4288 lambda!4284))))

(declare-fun bs!11512 () Bool)

(assert (= bs!11512 (and d!18788 d!18716 d!18738 d!18718)))

(assert (=> bs!11512 (= lambda!4288 lambda!4281)))

(declare-fun bs!11513 () Bool)

(assert (= bs!11513 (and d!18788 d!18716 d!18740)))

(assert (=> bs!11513 (= lambda!4288 lambda!4282)))

(declare-fun bs!11514 () Bool)

(assert (= bs!11514 (and d!18788 d!18716 d!18746 d!18710)))

(assert (=> bs!11514 (= (= (apply!53 env3!3 k0!9) (apply!53 env2!20 k0!9)) (= lambda!4288 lambda!4283))))

(declare-fun bs!11515 () Bool)

(assert (= bs!11515 (and d!18788 d!18716 d!18724)))

(assert (=> bs!11515 (= lambda!4288 lambda!4280)))

(declare-fun bs!11516 () Bool)

(assert (= bs!11516 (and d!18788 d!18716 d!18722 d!18712)))

(assert (=> bs!11516 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4288 lambda!4279))))

(declare-fun bs!11517 () Bool)

(assert (= bs!11517 (and d!18788 d!18716 d!18752 d!18718)))

(assert (=> bs!11517 (= lambda!4288 lambda!4286)))

(declare-fun bs!11518 () Bool)

(assert (= bs!11518 (and d!18788 d!18716 d!18750 d!18710)))

(assert (=> bs!11518 (= (= (apply!53 env3!3 k0!9) (apply!53 env2!20 k0!9)) (= lambda!4288 lambda!4285))))

(declare-fun bs!11519 () Bool)

(assert (= bs!11519 (and d!18788 d!18716 d!18786 d!18712)))

(assert (=> bs!11519 (= (= (apply!53 env3!3 k0!9) (apply!53 (merge!9 env2!20 env3!3) k0!9)) (= lambda!4288 lambda!4287))))

(assert (=> bs!11510 true))

(declare-fun b!37215 () Bool)

(declare-fun e!19141 () Bool)

(assert (=> b!37215 (= e!19141 true)))

(assert (=> bs!11510 e!19141))

(assert (= bs!11510 b!37215))

(assert (=> b!37215 (< (dynLambda!670 order!423 (f!2521 env3!3)) (dynLambda!672 order!425 lambda!4288))))

(assert (=> bs!11510 (= (dynLambda!671 lambda!4277 k0!9) (orElse!8 (apply!53 (merge!9 env1!20 env2!20) k0!9) lambda!4288))))

(assert (=> bs!11510 m!38497))

(assert (=> bs!11510 m!38513))

(assert (=> bs!11510 m!38513))

(declare-fun m!38609 () Bool)

(assert (=> bs!11510 m!38609))

(assert (=> (and d!18716 (= lambda!4277 (f!2521 env2!20)) d!18758) d!18788))

(declare-fun b_lambda!9961 () Bool)

(assert (= b_lambda!9947 (or bs!11471 b_lambda!9961)))

(assert (=> b!37210 d!18784))

(declare-fun b_lambda!9963 () Bool)

(assert (= b_lambda!9951 (or bs!11460 b_lambda!9963)))

(declare-fun bs!11520 () Bool)

(declare-fun d!18790 () Bool)

(assert (= bs!11520 (and d!18790 d!18740 d!18716)))

(assert (=> bs!11520 (= (dynLambda!673 lambda!4282) (apply!53 env3!3 k0!9))))

(assert (=> b!37213 d!18790))

(declare-fun b_lambda!9965 () Bool)

(assert (= b_lambda!9929 (or bs!11466 b_lambda!9965)))

(declare-fun bs!11521 () Bool)

(declare-fun d!18792 () Bool)

(assert (= bs!11521 (and d!18792 d!18746 d!18710)))

(assert (=> bs!11521 (= (dynLambda!673 lambda!4283) (apply!53 env2!20 k0!9))))

(assert (=> b!37197 d!18792))

(declare-fun b_lambda!9967 () Bool)

(assert (= b_lambda!9931 (or bs!11466 b_lambda!9967)))

(assert (=> b!37198 d!18792))

(declare-fun b_lambda!9969 () Bool)

(assert (= b_lambda!9949 (or bs!11460 b_lambda!9969)))

(assert (=> b!37212 d!18790))

(declare-fun b_lambda!9971 () Bool)

(assert (= b_lambda!9939 (or bs!11484 b_lambda!9971)))

(declare-fun bs!11522 () Bool)

(declare-fun d!18794 () Bool)

(assert (= bs!11522 (and d!18794 d!18752 d!18718)))

(assert (=> bs!11522 (= (dynLambda!673 lambda!4286) (apply!53 env3!3 k0!9))))

(assert (=> b!37204 d!18794))

(declare-fun b_lambda!9973 () Bool)

(assert (= b_lambda!9937 (or bs!11484 b_lambda!9973)))

(assert (=> b!37203 d!18794))

(declare-fun b_lambda!9975 () Bool)

(assert (= b_lambda!9941 (or bs!11457 b_lambda!9975)))

(assert (=> b!37206 d!18782))

(declare-fun b_lambda!9977 () Bool)

(assert (= b_lambda!9935 (or bs!11477 b_lambda!9977)))

(assert (=> b!37201 d!18780))

(push 1)

(assert tp_is_empty!261)

(assert (not d!18756))

(assert (not b_lambda!9953))

(assert (not b_lambda!9917))

(assert b_and!8111)

(assert (not b_lambda!9965))

(assert (not d!18754))

(assert (not d!18772))

(assert (not b_lambda!9923))

(assert (not b_lambda!9919))

(assert (not b!37198))

(assert (not b_lambda!9959))

(assert (not bs!11501))

(assert (not b_lambda!9893))

(assert (not b_lambda!9971))

(assert (not d!18760))

(assert b_and!8109)

(assert (not b!37201))

(assert (not b_next!5385))

(assert (not d!18770))

(assert (not b_lambda!9913))

(assert (not b_lambda!9969))

(assert (not b_next!5391))

(assert (not b!37207))

(assert (not d!18776))

(assert (not b_lambda!9915))

(assert b_and!8107)

(assert (not b_lambda!9957))

(assert (not b!37204))

(assert (not b!37210))

(assert (not d!18762))

(assert (not b_lambda!9963))

(assert (not b_lambda!9921))

(assert (not b_next!5389))

(assert (not b_lambda!9891))

(assert (not b_lambda!9925))

(assert (not b!37213))

(assert (not d!18764))

(assert (not b_lambda!9967))

(assert (not b_lambda!9973))

(assert (not b_lambda!9977))

(assert (not d!18768))

(assert (not d!18766))

(assert (not b_lambda!9975))

(assert (not d!18774))

(assert (not b_lambda!9955))

(assert (not b_lambda!9961))

(assert (not b_lambda!9911))

(assert (not d!18778))

(assert (not bs!11510))

(assert tp_is_empty!263)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8111)

(assert b_and!8109)

(assert (not b_next!5385))

(assert (not b_next!5391))

(assert b_and!8107)

(assert (not b_next!5389))

(check-sat)

(pop 1)

