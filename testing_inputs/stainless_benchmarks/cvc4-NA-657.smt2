; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4704 () Bool)

(assert start!4704)

(declare-fun b!37082 () Bool)

(declare-fun b_free!2213 () Bool)

(declare-fun b_next!5367 () Bool)

(assert (=> b!37082 (= b_free!2213 (not b_next!5367))))

(declare-fun tp!7340 () Bool)

(declare-fun b_and!8077 () Bool)

(assert (=> b!37082 (= tp!7340 b_and!8077)))

(declare-fun lambda!4255 () Int)

(declare-datatypes () ((K!272 (K!273 (val!127 Int)))))

(declare-datatypes () ((V!284 (V!285 (val!128 Int)))))

(declare-datatypes () ((Option!215 (Some!209 (v!677 V!284)) (None!209))))

(declare-datatypes () ((Env!5 (Env!6 (f!2513 Int)))))

(declare-fun env!13 () Env!5)

(declare-fun b_next!5369 () Bool)

(assert (=> b!37082 (= b_next!5367 (or (and start!4704 (= lambda!4255 (f!2513 env!13))) b_next!5369))))

(declare-fun k0!11 () K!272)

(declare-fun apply!51 (Env!5 K!272) Option!215)

(declare-fun merge!7 (Env!5 Env!5) Env!5)

(assert (=> start!4704 (not (= (apply!51 (merge!7 (Env!6 lambda!4255) env!13) k0!11) (apply!51 env!13 k0!11)))))

(declare-fun e!19048 () Bool)

(assert (=> start!4704 e!19048))

(declare-fun tp_is_empty!253 () Bool)

(assert (=> start!4704 tp_is_empty!253))

(assert (=> b!37082 (= e!19048 tp!7340)))

(assert (= start!4704 b!37082))

(declare-fun m!38441 () Bool)

(assert (=> start!4704 m!38441))

(assert (=> start!4704 m!38441))

(declare-fun m!38443 () Bool)

(assert (=> start!4704 m!38443))

(declare-fun m!38445 () Bool)

(assert (=> start!4704 m!38445))

(push 1)

(assert (not start!4704))

(assert tp_is_empty!253)

(assert b_and!8077)

(assert (not b_next!5369))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8077)

(assert (not b_next!5369))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18674 () Bool)

(declare-fun dynLambda!662 (Int K!272) Option!215)

(assert (=> d!18674 (= (apply!51 (merge!7 (Env!6 lambda!4255) env!13) k0!11) (dynLambda!662 (f!2513 (merge!7 (Env!6 lambda!4255) env!13)) k0!11))))

(declare-fun b_lambda!9847 () Bool)

(assert (=> (not b_lambda!9847) (not d!18674)))

(declare-fun tb!4339 () Bool)

(declare-fun t!5062 () Bool)

(assert (=> (and b!37082 (= (f!2513 env!13) (f!2513 (merge!7 (Env!6 lambda!4255) env!13))) t!5062) tb!4339))

(declare-fun b!37087 () Bool)

(declare-fun e!19051 () Bool)

(declare-fun tp_is_empty!255 () Bool)

(assert (=> b!37087 (= e!19051 tp_is_empty!255)))

(declare-fun result!4601 () Bool)

(assert (=> tb!4339 (= result!4601 e!19051)))

(assert (= (and tb!4339 (is-Some!209 (dynLambda!662 (f!2513 (merge!7 (Env!6 lambda!4255) env!13)) k0!11))) b!37087))

(assert (=> d!18674 t!5062))

(declare-fun b_and!8079 () Bool)

(assert (= b_and!8077 (and (=> t!5062 result!4601) b_and!8079)))

(declare-fun m!38447 () Bool)

(assert (=> d!18674 m!38447))

(assert (=> start!4704 d!18674))

(declare-fun bs!11430 () Bool)

(declare-fun d!18676 () Bool)

(assert (= bs!11430 (and d!18676 start!4704)))

(declare-fun lambda!4260 () Int)

(assert (=> bs!11430 (not (= lambda!4260 lambda!4255))))

(declare-fun b!37092 () Bool)

(declare-fun e!19054 () Bool)

(assert (=> b!37092 (= e!19054 true)))

(assert (=> d!18676 e!19054))

(assert (= d!18676 b!37092))

(declare-fun order!415 () Int)

(declare-fun dynLambda!663 (Int Int) Int)

(assert (=> b!37092 (< (dynLambda!663 order!415 (f!2513 env!13)) (dynLambda!663 order!415 lambda!4260))))

(declare-fun b!37093 () Bool)

(declare-fun e!19055 () Bool)

(assert (=> b!37093 (= e!19055 true)))

(assert (=> d!18676 e!19055))

(assert (= d!18676 b!37093))

(assert (=> b!37093 (< (dynLambda!663 order!415 (f!2513 (Env!6 lambda!4255))) (dynLambda!663 order!415 lambda!4260))))

(assert (=> d!18676 (= (merge!7 (Env!6 lambda!4255) env!13) (Env!6 lambda!4260))))

(assert (=> start!4704 d!18676))

(declare-fun d!18678 () Bool)

(assert (=> d!18678 (= (apply!51 env!13 k0!11) (dynLambda!662 (f!2513 env!13) k0!11))))

(declare-fun b_lambda!9849 () Bool)

(assert (=> (not b_lambda!9849) (not d!18678)))

(declare-fun t!5064 () Bool)

(declare-fun tb!4341 () Bool)

(assert (=> (and b!37082 (= (f!2513 env!13) (f!2513 env!13)) t!5064) tb!4341))

(declare-fun b!37094 () Bool)

(declare-fun e!19056 () Bool)

(assert (=> b!37094 (= e!19056 tp_is_empty!255)))

(declare-fun result!4605 () Bool)

(assert (=> tb!4341 (= result!4605 e!19056)))

(assert (= (and tb!4341 (is-Some!209 (dynLambda!662 (f!2513 env!13) k0!11))) b!37094))

(assert (=> d!18678 t!5064))

(declare-fun b_and!8081 () Bool)

(assert (= b_and!8079 (and (=> t!5064 result!4605) b_and!8081)))

(declare-fun m!38449 () Bool)

(assert (=> d!18678 m!38449))

(assert (=> start!4704 d!18678))

(declare-fun b_lambda!9851 () Bool)

(assert (= b_lambda!9849 (or (and start!4704 (= lambda!4255 (f!2513 env!13))) (and b!37082 b_free!2213) b_lambda!9851)))

(declare-fun bs!11431 () Bool)

(declare-fun d!18680 () Bool)

(assert (= bs!11431 (and d!18680 start!4704)))

(assert (=> bs!11431 (= (dynLambda!662 lambda!4255 k0!11) None!209)))

(assert (=> (and start!4704 (= lambda!4255 (f!2513 env!13)) d!18678) d!18680))

(push 1)

(assert (not b_next!5369))

(assert tp_is_empty!253)

(assert b_and!8081)

(assert (not b_lambda!9847))

(assert (not b_lambda!9851))

(assert tp_is_empty!255)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8081)

(assert (not b_next!5369))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9853 () Bool)

(assert (= b_lambda!9847 (or d!18676 b_lambda!9853)))

(declare-fun bs!11432 () Bool)

(declare-fun d!18682 () Bool)

(assert (= bs!11432 (and d!18682 d!18676)))

(assert (=> bs!11432 m!38445))

(assert (=> bs!11432 true))

(declare-fun b!37101 () Bool)

(declare-fun e!19059 () Bool)

(assert (=> b!37101 (= e!19059 true)))

(assert (=> bs!11432 e!19059))

(assert (= bs!11432 b!37101))

(declare-fun lambda!4261 () Int)

(declare-fun order!417 () Int)

(declare-fun dynLambda!664 (Int Int) Int)

(assert (=> b!37101 (< (dynLambda!663 order!415 (f!2513 env!13)) (dynLambda!664 order!417 lambda!4261))))

(declare-fun orElse!6 (Option!215 Int) Option!215)

(assert (=> bs!11432 (= (dynLambda!662 lambda!4260 k0!11) (orElse!6 (apply!51 (Env!6 lambda!4255) k0!11) lambda!4261))))

(declare-fun m!38451 () Bool)

(assert (=> bs!11432 m!38451))

(assert (=> bs!11432 m!38451))

(declare-fun m!38453 () Bool)

(assert (=> bs!11432 m!38453))

(assert (=> d!18674 d!18682))

(push 1)

(assert (not b_next!5369))

(assert (not bs!11432))

(assert tp_is_empty!253)

(assert b_and!8081)

(assert (not b_lambda!9851))

(assert (not b_lambda!9853))

(assert tp_is_empty!255)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8081)

(assert (not b_next!5369))

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!11432 d!18678))

(declare-fun d!18684 () Bool)

(declare-fun e!19064 () Bool)

(assert (=> d!18684 e!19064))

(declare-fun res!17539 () Bool)

(assert (=> d!18684 (=> res!17539 e!19064)))

(declare-fun lt!7434 () Option!215)

(declare-fun isDefined!7 (Option!215) Bool)

(assert (=> d!18684 (= res!17539 (= (isDefined!7 lt!7434) (isDefined!7 (apply!51 (Env!6 lambda!4255) k0!11))))))

(declare-fun e!19065 () Option!215)

(assert (=> d!18684 (= lt!7434 e!19065)))

(declare-fun c!8137 () Bool)

(assert (=> d!18684 (= c!8137 (is-Some!209 (apply!51 (Env!6 lambda!4255) k0!11)))))

(assert (=> d!18684 (= (orElse!6 (apply!51 (Env!6 lambda!4255) k0!11) lambda!4261) lt!7434)))

(declare-fun b!37108 () Bool)

(assert (=> b!37108 (= e!19065 (apply!51 (Env!6 lambda!4255) k0!11))))

(declare-fun b!37109 () Bool)

(declare-fun dynLambda!665 (Int) Option!215)

(assert (=> b!37109 (= e!19065 (dynLambda!665 lambda!4261))))

(declare-fun b!37110 () Bool)

(assert (=> b!37110 (= e!19064 (isDefined!7 (dynLambda!665 lambda!4261)))))

(assert (= (and d!18684 c!8137) b!37108))

(assert (= (and d!18684 (not c!8137)) b!37109))

(assert (= (and d!18684 (not res!17539)) b!37110))

(declare-fun b_lambda!9855 () Bool)

(assert (=> (not b_lambda!9855) (not b!37109)))

(declare-fun b_lambda!9857 () Bool)

(assert (=> (not b_lambda!9857) (not b!37110)))

(declare-fun m!38455 () Bool)

(assert (=> d!18684 m!38455))

(assert (=> d!18684 m!38451))

(declare-fun m!38457 () Bool)

(assert (=> d!18684 m!38457))

(declare-fun m!38459 () Bool)

(assert (=> b!37109 m!38459))

(assert (=> b!37110 m!38459))

(assert (=> b!37110 m!38459))

(declare-fun m!38461 () Bool)

(assert (=> b!37110 m!38461))

(assert (=> bs!11432 d!18684))

(declare-fun d!18686 () Bool)

(assert (=> d!18686 (= (apply!51 (Env!6 lambda!4255) k0!11) (dynLambda!662 (f!2513 (Env!6 lambda!4255)) k0!11))))

(declare-fun b_lambda!9859 () Bool)

(assert (=> (not b_lambda!9859) (not d!18686)))

(declare-fun bs!11433 () Bool)

(assert (= bs!11433 d!18686))

(declare-fun m!38463 () Bool)

(assert (=> bs!11433 m!38463))

(assert (=> bs!11432 d!18686))

(declare-fun b_lambda!9861 () Bool)

(assert (= b_lambda!9859 (or start!4704 b_lambda!9861)))

(declare-fun bs!11434 () Bool)

(declare-fun d!18688 () Bool)

(assert (= bs!11434 (and d!18688 start!4704)))

(assert (=> bs!11434 (= (dynLambda!662 lambda!4255 k0!11) None!209)))

(assert (=> d!18686 d!18688))

(declare-fun b_lambda!9863 () Bool)

(assert (= b_lambda!9855 (or bs!11432 b_lambda!9863)))

(declare-fun bs!11435 () Bool)

(declare-fun d!18690 () Bool)

(assert (= bs!11435 (and d!18690 d!18682 d!18676)))

(assert (=> bs!11435 (= (dynLambda!665 lambda!4261) (apply!51 env!13 k0!11))))

(assert (=> b!37109 d!18690))

(declare-fun b_lambda!9865 () Bool)

(assert (= b_lambda!9857 (or bs!11432 b_lambda!9865)))

(assert (=> b!37110 d!18690))

(push 1)

(assert (not b_next!5369))

(assert (not b_lambda!9863))

(assert tp_is_empty!253)

(assert b_and!8081)

(assert (not b_lambda!9861))

(assert (not d!18684))

(assert (not b_lambda!9851))

(assert (not b_lambda!9865))

(assert (not b_lambda!9853))

(assert (not b!37110))

(assert tp_is_empty!255)

(check-sat)

(pop 1)

(push 1)

(assert b_and!8081)

(assert (not b_next!5369))

(check-sat)

(pop 1)

