; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4692 () Bool)

(assert start!4692)

(declare-fun b_free!2205 () Bool)

(declare-fun b_next!5345 () Bool)

(assert (=> start!4692 (= b_free!2205 (not b_next!5345))))

(declare-fun tp!7328 () Bool)

(declare-fun b_and!7965 () Bool)

(assert (=> start!4692 (= tp!7328 b_and!7965)))

(declare-fun b_next!5347 () Bool)

(declare-fun env!10 () Int)

(declare-fun lambda!4227 () Int)

(assert (=> start!4692 (= b_next!5345 (or (and start!4692 (= lambda!4227 env!10)) b_next!5347))))

(declare-datatypes () ((K!245 (K!246 (val!123 Int)))))

(declare-fun k0!7 () K!245)

(declare-datatypes () ((V!257 (V!258 (val!124 Int)))))

(declare-datatypes () ((Option!210 (Some!205 (v!665 V!257)) (None!205))))

(declare-fun dynLambda!654 (Int K!245) Option!210)

(declare-fun merge!5 (Int Int) Int)

(assert (=> start!4692 (not (= (dynLambda!654 (merge!5 env!10 lambda!4227) k0!7) (dynLambda!654 env!10 k0!7)))))

(assert (=> start!4692 tp!7328))

(declare-fun tp_is_empty!245 () Bool)

(assert (=> start!4692 tp_is_empty!245))

(declare-fun b_lambda!9649 () Bool)

(assert (=> (not b_lambda!9649) (not start!4692)))

(declare-fun tb!4305 () Bool)

(declare-fun t!5027 () Bool)

(assert (=> (and start!4692 (= env!10 (merge!5 env!10 lambda!4227)) t!5027) tb!4305))

(declare-fun b!37012 () Bool)

(declare-fun e!19007 () Bool)

(declare-fun tp_is_empty!247 () Bool)

(assert (=> b!37012 (= e!19007 tp_is_empty!247)))

(declare-fun result!4563 () Bool)

(assert (=> tb!4305 (= result!4563 e!19007)))

(assert (= (and tb!4305 (is-Some!205 (dynLambda!654 (merge!5 env!10 lambda!4227) k0!7))) b!37012))

(assert (=> start!4692 t!5027))

(declare-fun b_and!7967 () Bool)

(assert (= b_and!7965 (and (=> t!5027 result!4563) b_and!7967)))

(declare-fun b_lambda!9651 () Bool)

(assert (=> (not b_lambda!9651) (not start!4692)))

(declare-fun t!5029 () Bool)

(declare-fun tb!4307 () Bool)

(assert (=> (and start!4692 (= env!10 env!10) t!5029) tb!4307))

(declare-fun b!37013 () Bool)

(declare-fun e!19008 () Bool)

(assert (=> b!37013 (= e!19008 tp_is_empty!247)))

(declare-fun result!4567 () Bool)

(assert (=> tb!4307 (= result!4567 e!19008)))

(assert (= (and tb!4307 (is-Some!205 (dynLambda!654 env!10 k0!7))) b!37013))

(assert (=> start!4692 t!5029))

(declare-fun b_and!7969 () Bool)

(assert (= b_and!7967 (and (=> t!5029 result!4567) b_and!7969)))

(declare-fun m!38313 () Bool)

(assert (=> start!4692 m!38313))

(declare-fun m!38315 () Bool)

(assert (=> start!4692 m!38315))

(declare-fun m!38317 () Bool)

(assert (=> start!4692 m!38317))

(push 1)

(assert tp_is_empty!245)

(assert (not start!4692))

(assert (not b_next!5347))

(assert (not b_lambda!9651))

(assert b_and!7969)

(assert tp_is_empty!247)

(assert (not b_lambda!9649))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7969)

(assert (not b_next!5347))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9653 () Bool)

(assert (= b_lambda!9651 (or (and start!4692 (= lambda!4227 env!10)) (and start!4692 b_free!2205) b_lambda!9653)))

(declare-fun bs!11350 () Bool)

(declare-fun d!18590 () Bool)

(assert (= bs!11350 (and d!18590 start!4692)))

(assert (=> bs!11350 (= (dynLambda!654 lambda!4227 k0!7) None!205)))

(assert (=> (and start!4692 (= lambda!4227 env!10)) d!18590))

(push 1)

(assert tp_is_empty!245)

(assert (not start!4692))

(assert (not b_next!5347))

(assert (not b_lambda!9653))

(assert b_and!7969)

(assert tp_is_empty!247)

(assert (not b_lambda!9649))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7969)

(assert (not b_next!5347))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11351 () Bool)

(declare-fun d!18592 () Bool)

(assert (= bs!11351 (and d!18592 start!4692)))

(declare-fun lambda!4232 () Int)

(assert (=> bs!11351 (not (= lambda!4232 lambda!4227))))

(assert (=> d!18592 true))

(declare-fun order!407 () Int)

(declare-fun dynLambda!655 (Int Int) Int)

(assert (=> d!18592 (< (dynLambda!655 order!407 env!10) (dynLambda!655 order!407 lambda!4232))))

(assert (=> d!18592 true))

(assert (=> d!18592 (< (dynLambda!655 order!407 lambda!4227) (dynLambda!655 order!407 lambda!4232))))

(assert (=> d!18592 (= (merge!5 env!10 lambda!4227) lambda!4232)))

(assert (=> start!4692 d!18592))

(declare-fun b_lambda!9655 () Bool)

(assert (= b_lambda!9649 (or d!18592 b_lambda!9655)))

(declare-fun bs!11352 () Bool)

(declare-fun d!18594 () Bool)

(assert (= bs!11352 (and d!18594 d!18592)))

(declare-fun b_lambda!9657 () Bool)

(assert (=> (not b_lambda!9657) (not bs!11352)))

(declare-fun m!38319 () Bool)

(assert (=> bs!11352 m!38319))

(assert (=> bs!11352 true))

(assert (=> bs!11352 true))

(declare-fun lambda!4233 () Int)

(declare-fun order!409 () Int)

(declare-fun dynLambda!656 (Int Int) Int)

(assert (=> bs!11352 (< (dynLambda!655 order!407 lambda!4227) (dynLambda!656 order!409 lambda!4233))))

(declare-fun orElse!4 (Option!210 Int) Option!210)

(assert (=> bs!11352 (= (dynLambda!654 lambda!4232 k0!7) (orElse!4 (dynLambda!654 env!10 k0!7) lambda!4233))))

(declare-fun b_lambda!9659 () Bool)

(assert (=> (not b_lambda!9659) (not bs!11352)))

(assert (=> bs!11352 t!5029))

(declare-fun b_and!7971 () Bool)

(assert (= b_and!7969 (and (=> t!5029 result!4567) b_and!7971)))

(assert (=> bs!11352 m!38317))

(assert (=> bs!11352 m!38317))

(declare-fun m!38321 () Bool)

(assert (=> bs!11352 m!38321))

(assert (=> start!4692 d!18594))

(push 1)

(assert (not b_lambda!9657))

(assert b_and!7971)

(assert tp_is_empty!245)

(assert (not b_lambda!9655))

(assert (not b_next!5347))

(assert (not b_lambda!9659))

(assert (not bs!11352))

(assert (not b_lambda!9653))

(assert tp_is_empty!247)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7971)

(assert (not b_next!5347))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9661 () Bool)

(assert (= b_lambda!9657 (or start!4692 b_lambda!9661)))

(declare-fun bs!11353 () Bool)

(declare-fun d!18596 () Bool)

(assert (= bs!11353 (and d!18596 start!4692)))

(assert (=> bs!11353 (= (dynLambda!654 lambda!4227 k0!7) None!205)))

(assert (=> bs!11352 d!18596))

(declare-fun b_lambda!9663 () Bool)

(assert (= b_lambda!9659 (or (and start!4692 (= lambda!4227 env!10)) (and start!4692 b_free!2205) b_lambda!9663)))

(assert (=> (and start!4692 (= lambda!4227 env!10) bs!11352) d!18590))

(push 1)

(assert (not b_lambda!9663))

(assert b_and!7971)

(assert tp_is_empty!245)

(assert (not b_lambda!9655))

(assert (not b_next!5347))

(assert (not bs!11352))

(assert (not b_lambda!9661))

(assert (not b_lambda!9653))

(assert tp_is_empty!247)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7971)

(assert (not b_next!5347))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18598 () Bool)

(declare-fun e!19014 () Bool)

(assert (=> d!18598 e!19014))

(declare-fun res!17521 () Bool)

(assert (=> d!18598 (=> res!17521 e!19014)))

(declare-fun lt!7419 () Option!210)

(declare-fun isDefined!5 (Option!210) Bool)

(assert (=> d!18598 (= res!17521 (= (isDefined!5 lt!7419) (isDefined!5 (dynLambda!654 env!10 k0!7))))))

(declare-fun e!19013 () Option!210)

(assert (=> d!18598 (= lt!7419 e!19013)))

(declare-fun c!8122 () Bool)

(assert (=> d!18598 (= c!8122 (is-Some!205 (dynLambda!654 env!10 k0!7)))))

(assert (=> d!18598 (= (orElse!4 (dynLambda!654 env!10 k0!7) lambda!4233) lt!7419)))

(declare-fun b!37026 () Bool)

(assert (=> b!37026 (= e!19013 (dynLambda!654 env!10 k0!7))))

(declare-fun b!37027 () Bool)

(declare-fun dynLambda!657 (Int) Option!210)

(assert (=> b!37027 (= e!19013 (dynLambda!657 lambda!4233))))

(declare-fun b!37028 () Bool)

(assert (=> b!37028 (= e!19014 (isDefined!5 (dynLambda!657 lambda!4233)))))

(assert (= (and d!18598 c!8122) b!37026))

(assert (= (and d!18598 (not c!8122)) b!37027))

(assert (= (and d!18598 (not res!17521)) b!37028))

(declare-fun b_lambda!9665 () Bool)

(assert (=> (not b_lambda!9665) (not b!37027)))

(declare-fun b_lambda!9667 () Bool)

(assert (=> (not b_lambda!9667) (not b!37028)))

(declare-fun m!38323 () Bool)

(assert (=> d!18598 m!38323))

(assert (=> d!18598 m!38317))

(declare-fun m!38325 () Bool)

(assert (=> d!18598 m!38325))

(declare-fun m!38327 () Bool)

(assert (=> b!37027 m!38327))

(assert (=> b!37028 m!38327))

(assert (=> b!37028 m!38327))

(declare-fun m!38329 () Bool)

(assert (=> b!37028 m!38329))

(assert (=> bs!11352 d!18598))

(declare-fun b_lambda!9669 () Bool)

(assert (= b_lambda!9667 (or bs!11352 b_lambda!9669)))

(declare-fun bs!11354 () Bool)

(declare-fun d!18600 () Bool)

(assert (= bs!11354 (and d!18600 d!18594 d!18592)))

(assert (=> bs!11354 (= (dynLambda!657 lambda!4233) (dynLambda!654 lambda!4227 k0!7))))

(assert (=> b!37028 d!18600))

(declare-fun b_lambda!9671 () Bool)

(assert (= b_lambda!9665 (or bs!11352 b_lambda!9671)))

(assert (=> b!37027 d!18600))

(declare-fun b_lambda!9673 () Bool)

(assert (= b_lambda!9653 (or (and d!18592 (= lambda!4232 env!10)) b_lambda!9673)))

(declare-fun bs!11355 () Bool)

(declare-fun d!18602 () Bool)

(assert (= bs!11355 (and d!18602 d!18592)))

(declare-fun b_lambda!9675 () Bool)

(assert (=> (not b_lambda!9675) (not bs!11355)))

(assert (=> bs!11355 m!38319))

(declare-fun bs!11356 () Bool)

(assert (= bs!11356 (and d!18602 d!18592 d!18594)))

(declare-fun lambda!4234 () Int)

(assert (=> bs!11356 (= lambda!4234 lambda!4233)))

(assert (=> bs!11355 true))

(assert (=> bs!11355 true))

(assert (=> bs!11355 (< (dynLambda!655 order!407 lambda!4227) (dynLambda!656 order!409 lambda!4234))))

(assert (=> bs!11355 (= (dynLambda!654 lambda!4232 k0!7) (orElse!4 (dynLambda!654 env!10 k0!7) lambda!4234))))

(declare-fun b_lambda!9677 () Bool)

(assert (=> (not b_lambda!9677) (not bs!11355)))

(assert (=> bs!11355 t!5029))

(declare-fun b_and!7973 () Bool)

(assert (= b_and!7971 (and (=> t!5029 result!4567) b_and!7973)))

(assert (=> bs!11355 m!38317))

(assert (=> bs!11355 m!38317))

(declare-fun m!38331 () Bool)

(assert (=> bs!11355 m!38331))

(assert (=> (and d!18592 (= lambda!4232 env!10) start!4692) d!18602))

(push 1)

(assert (not b_lambda!9663))

(assert (not b_lambda!9671))

(assert tp_is_empty!245)

(assert (not b_lambda!9655))

(assert (not b_lambda!9669))

(assert b_and!7973)

(assert (not d!18598))

(assert (not b_next!5347))

(assert (not bs!11355))

(assert (not b_lambda!9661))

(assert (not b_lambda!9673))

(assert (not b!37028))

(assert (not b_lambda!9677))

(assert (not b_lambda!9675))

(assert tp_is_empty!247)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7973)

(assert (not b_next!5347))

(check-sat)

(pop 1)

