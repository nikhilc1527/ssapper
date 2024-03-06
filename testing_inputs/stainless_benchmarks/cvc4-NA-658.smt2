; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4712 () Bool)

(assert start!4712)

(declare-fun b!37113 () Bool)

(declare-fun b_free!2215 () Bool)

(declare-fun b_next!5371 () Bool)

(assert (=> b!37113 (= b_free!2215 (not b_next!5371))))

(declare-fun tp!7343 () Bool)

(declare-fun b_and!8083 () Bool)

(assert (=> b!37113 (= tp!7343 b_and!8083)))

(declare-fun lambda!4264 () Int)

(declare-datatypes () ((V!286 (V!287 (val!129 Int)))))

(declare-datatypes () ((Option!216 (Some!210 (v!678 V!286)) (None!210))))

(declare-datatypes () ((K!274 (K!275 (val!130 Int)))))

(declare-datatypes () ((Env!7 (Env!8 (f!2518 Int)))))

(declare-fun env!12 () Env!7)

(declare-fun b_next!5373 () Bool)

(assert (=> b!37113 (= b_next!5371 (or (and start!4712 (= lambda!4264 (f!2518 env!12))) b_next!5373))))

(declare-fun k0!10 () K!274)

(declare-fun apply!52 (Env!7 K!274) Option!216)

(declare-fun merge!8 (Env!7 Env!7) Env!7)

(assert (=> start!4712 (not (= (apply!52 (merge!8 env!12 (Env!8 lambda!4264)) k0!10) (apply!52 env!12 k0!10)))))

(declare-fun e!19068 () Bool)

(assert (=> start!4712 e!19068))

(declare-fun tp_is_empty!257 () Bool)

(assert (=> start!4712 tp_is_empty!257))

(assert (=> b!37113 (= e!19068 tp!7343)))

(assert (= start!4712 b!37113))

(declare-fun m!38465 () Bool)

(assert (=> start!4712 m!38465))

(assert (=> start!4712 m!38465))

(declare-fun m!38467 () Bool)

(assert (=> start!4712 m!38467))

(declare-fun m!38469 () Bool)

(assert (=> start!4712 m!38469))

(push 1)

(assert (not start!4712))

(assert tp_is_empty!257)

(assert b_and!8083)

(assert (not b_next!5373))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8083)

(assert (not b_next!5373))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18692 () Bool)

(declare-fun dynLambda!666 (Int K!274) Option!216)

(assert (=> d!18692 (= (apply!52 (merge!8 env!12 (Env!8 lambda!4264)) k0!10) (dynLambda!666 (f!2518 (merge!8 env!12 (Env!8 lambda!4264))) k0!10))))

(declare-fun b_lambda!9867 () Bool)

(assert (=> (not b_lambda!9867) (not d!18692)))

(declare-fun t!5066 () Bool)

(declare-fun tb!4343 () Bool)

(assert (=> (and b!37113 (= (f!2518 env!12) (f!2518 (merge!8 env!12 (Env!8 lambda!4264)))) t!5066) tb!4343))

(declare-fun b!37118 () Bool)

(declare-fun e!19071 () Bool)

(declare-fun tp_is_empty!259 () Bool)

(assert (=> b!37118 (= e!19071 tp_is_empty!259)))

(declare-fun result!4607 () Bool)

(assert (=> tb!4343 (= result!4607 e!19071)))

(assert (= (and tb!4343 (is-Some!210 (dynLambda!666 (f!2518 (merge!8 env!12 (Env!8 lambda!4264))) k0!10))) b!37118))

(assert (=> d!18692 t!5066))

(declare-fun b_and!8085 () Bool)

(assert (= b_and!8083 (and (=> t!5066 result!4607) b_and!8085)))

(declare-fun m!38471 () Bool)

(assert (=> d!18692 m!38471))

(assert (=> start!4712 d!18692))

(declare-fun bs!11437 () Bool)

(declare-fun d!18694 () Bool)

(assert (= bs!11437 (and d!18694 start!4712)))

(declare-fun lambda!4269 () Int)

(assert (=> bs!11437 (not (= lambda!4269 lambda!4264))))

(declare-fun b!37123 () Bool)

(declare-fun e!19074 () Bool)

(assert (=> b!37123 (= e!19074 true)))

(assert (=> d!18694 e!19074))

(assert (= d!18694 b!37123))

(declare-fun order!419 () Int)

(declare-fun dynLambda!667 (Int Int) Int)

(assert (=> b!37123 (< (dynLambda!667 order!419 (f!2518 (Env!8 lambda!4264))) (dynLambda!667 order!419 lambda!4269))))

(declare-fun b!37124 () Bool)

(declare-fun e!19075 () Bool)

(assert (=> b!37124 (= e!19075 true)))

(assert (=> d!18694 e!19075))

(assert (= d!18694 b!37124))

(assert (=> b!37124 (< (dynLambda!667 order!419 (f!2518 env!12)) (dynLambda!667 order!419 lambda!4269))))

(assert (=> d!18694 (= (merge!8 env!12 (Env!8 lambda!4264)) (Env!8 lambda!4269))))

(assert (=> start!4712 d!18694))

(declare-fun d!18696 () Bool)

(assert (=> d!18696 (= (apply!52 env!12 k0!10) (dynLambda!666 (f!2518 env!12) k0!10))))

(declare-fun b_lambda!9869 () Bool)

(assert (=> (not b_lambda!9869) (not d!18696)))

(declare-fun t!5068 () Bool)

(declare-fun tb!4345 () Bool)

(assert (=> (and b!37113 (= (f!2518 env!12) (f!2518 env!12)) t!5068) tb!4345))

(declare-fun b!37125 () Bool)

(declare-fun e!19076 () Bool)

(assert (=> b!37125 (= e!19076 tp_is_empty!259)))

(declare-fun result!4611 () Bool)

(assert (=> tb!4345 (= result!4611 e!19076)))

(assert (= (and tb!4345 (is-Some!210 (dynLambda!666 (f!2518 env!12) k0!10))) b!37125))

(assert (=> d!18696 t!5068))

(declare-fun b_and!8087 () Bool)

(assert (= b_and!8085 (and (=> t!5068 result!4611) b_and!8087)))

(declare-fun m!38473 () Bool)

(assert (=> d!18696 m!38473))

(assert (=> start!4712 d!18696))

(declare-fun b_lambda!9871 () Bool)

(assert (= b_lambda!9869 (or (and start!4712 (= lambda!4264 (f!2518 env!12))) (and b!37113 b_free!2215) b_lambda!9871)))

(declare-fun bs!11438 () Bool)

(declare-fun d!18698 () Bool)

(assert (= bs!11438 (and d!18698 start!4712)))

(assert (=> bs!11438 (= (dynLambda!666 lambda!4264 k0!10) None!210)))

(assert (=> (and start!4712 (= lambda!4264 (f!2518 env!12)) d!18696) d!18698))

(push 1)

(assert (not b_next!5373))

(assert (not b_lambda!9871))

(assert tp_is_empty!259)

(assert b_and!8087)

(assert tp_is_empty!257)

(assert (not b_lambda!9867))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8087)

(assert (not b_next!5373))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9873 () Bool)

(assert (= b_lambda!9867 (or d!18694 b_lambda!9873)))

(declare-fun bs!11439 () Bool)

(declare-fun d!18700 () Bool)

(assert (= bs!11439 (and d!18700 d!18694)))

(declare-fun m!38475 () Bool)

(assert (=> bs!11439 m!38475))

(assert (=> bs!11439 true))

(declare-fun b!37132 () Bool)

(declare-fun e!19079 () Bool)

(assert (=> b!37132 (= e!19079 true)))

(assert (=> bs!11439 e!19079))

(assert (= bs!11439 b!37132))

(declare-fun order!421 () Int)

(declare-fun lambda!4270 () Int)

(declare-fun dynLambda!668 (Int Int) Int)

(assert (=> b!37132 (< (dynLambda!667 order!419 (f!2518 (Env!8 lambda!4264))) (dynLambda!668 order!421 lambda!4270))))

(declare-fun orElse!7 (Option!216 Int) Option!216)

(assert (=> bs!11439 (= (dynLambda!666 lambda!4269 k0!10) (orElse!7 (apply!52 env!12 k0!10) lambda!4270))))

(assert (=> bs!11439 m!38469))

(assert (=> bs!11439 m!38469))

(declare-fun m!38477 () Bool)

(assert (=> bs!11439 m!38477))

(assert (=> d!18692 d!18700))

(push 1)

(assert (not b_next!5373))

(assert (not b_lambda!9873))

(assert (not b_lambda!9871))

(assert tp_is_empty!259)

(assert b_and!8087)

(assert tp_is_empty!257)

(assert (not bs!11439))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8087)

(assert (not b_next!5373))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18702 () Bool)

(assert (=> d!18702 (= (apply!52 (Env!8 lambda!4264) k0!10) (dynLambda!666 (f!2518 (Env!8 lambda!4264)) k0!10))))

(declare-fun b_lambda!9875 () Bool)

(assert (=> (not b_lambda!9875) (not d!18702)))

(declare-fun bs!11440 () Bool)

(assert (= bs!11440 d!18702))

(declare-fun m!38479 () Bool)

(assert (=> bs!11440 m!38479))

(assert (=> bs!11439 d!18702))

(declare-fun d!18704 () Bool)

(declare-fun e!19084 () Bool)

(assert (=> d!18704 e!19084))

(declare-fun res!17542 () Bool)

(assert (=> d!18704 (=> res!17542 e!19084)))

(declare-fun lt!7437 () Option!216)

(declare-fun isDefined!8 (Option!216) Bool)

(assert (=> d!18704 (= res!17542 (= (isDefined!8 lt!7437) (isDefined!8 (apply!52 env!12 k0!10))))))

(declare-fun e!19085 () Option!216)

(assert (=> d!18704 (= lt!7437 e!19085)))

(declare-fun c!8140 () Bool)

(assert (=> d!18704 (= c!8140 (is-Some!210 (apply!52 env!12 k0!10)))))

(assert (=> d!18704 (= (orElse!7 (apply!52 env!12 k0!10) lambda!4270) lt!7437)))

(declare-fun b!37139 () Bool)

(assert (=> b!37139 (= e!19085 (apply!52 env!12 k0!10))))

(declare-fun b!37140 () Bool)

(declare-fun dynLambda!669 (Int) Option!216)

(assert (=> b!37140 (= e!19085 (dynLambda!669 lambda!4270))))

(declare-fun b!37141 () Bool)

(assert (=> b!37141 (= e!19084 (isDefined!8 (dynLambda!669 lambda!4270)))))

(assert (= (and d!18704 c!8140) b!37139))

(assert (= (and d!18704 (not c!8140)) b!37140))

(assert (= (and d!18704 (not res!17542)) b!37141))

(declare-fun b_lambda!9877 () Bool)

(assert (=> (not b_lambda!9877) (not b!37140)))

(declare-fun b_lambda!9879 () Bool)

(assert (=> (not b_lambda!9879) (not b!37141)))

(declare-fun m!38481 () Bool)

(assert (=> d!18704 m!38481))

(assert (=> d!18704 m!38469))

(declare-fun m!38483 () Bool)

(assert (=> d!18704 m!38483))

(declare-fun m!38485 () Bool)

(assert (=> b!37140 m!38485))

(assert (=> b!37141 m!38485))

(assert (=> b!37141 m!38485))

(declare-fun m!38487 () Bool)

(assert (=> b!37141 m!38487))

(assert (=> bs!11439 d!18704))

(assert (=> bs!11439 d!18696))

(declare-fun b_lambda!9881 () Bool)

(assert (= b_lambda!9879 (or bs!11439 b_lambda!9881)))

(declare-fun bs!11441 () Bool)

(declare-fun d!18706 () Bool)

(assert (= bs!11441 (and d!18706 d!18700 d!18694)))

(assert (=> bs!11441 (= (dynLambda!669 lambda!4270) (apply!52 (Env!8 lambda!4264) k0!10))))

(assert (=> b!37141 d!18706))

(declare-fun b_lambda!9883 () Bool)

(assert (= b_lambda!9875 (or start!4712 b_lambda!9883)))

(declare-fun bs!11442 () Bool)

(declare-fun d!18708 () Bool)

(assert (= bs!11442 (and d!18708 start!4712)))

(assert (=> bs!11442 (= (dynLambda!666 lambda!4264 k0!10) None!210)))

(assert (=> d!18702 d!18708))

(declare-fun b_lambda!9885 () Bool)

(assert (= b_lambda!9877 (or bs!11439 b_lambda!9885)))

(assert (=> b!37140 d!18706))

(push 1)

(assert (not b_next!5373))

(assert (not b_lambda!9873))

(assert (not b_lambda!9883))

(assert (not b_lambda!9885))

(assert (not b_lambda!9871))

(assert tp_is_empty!259)

(assert b_and!8087)

(assert tp_is_empty!257)

(assert (not b_lambda!9881))

(assert (not d!18704))

(assert (not b!37141))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8087)

(assert (not b_next!5373))

(check-sat)

(pop 1)

