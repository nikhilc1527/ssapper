; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4686 () Bool)

(assert start!4686)

(declare-fun b_free!2203 () Bool)

(declare-fun b_next!5341 () Bool)

(assert (=> start!4686 (= b_free!2203 (not b_next!5341))))

(declare-fun tp!7325 () Bool)

(declare-fun b_and!7955 () Bool)

(assert (=> start!4686 (= tp!7325 b_and!7955)))

(declare-fun lambda!4217 () Int)

(declare-fun env!6 () Int)

(declare-fun b_next!5343 () Bool)

(assert (=> start!4686 (= b_next!5341 (or (and start!4686 (= lambda!4217 env!6)) b_next!5343))))

(declare-datatypes () ((K!243 (K!244 (val!121 Int)))))

(declare-fun k0!6 () K!243)

(declare-datatypes () ((V!255 (V!256 (val!122 Int)))))

(declare-datatypes () ((Option!209 (Some!204 (v!664 V!255)) (None!204))))

(declare-fun dynLambda!650 (Int K!243) Option!209)

(declare-fun merge!4 (Int Int) Int)

(assert (=> start!4686 (not (= (dynLambda!650 (merge!4 lambda!4217 env!6) k0!6) (dynLambda!650 env!6 k0!6)))))

(assert (=> start!4686 tp!7325))

(declare-fun tp_is_empty!241 () Bool)

(assert (=> start!4686 tp_is_empty!241))

(declare-fun b_lambda!9619 () Bool)

(assert (=> (not b_lambda!9619) (not start!4686)))

(declare-fun t!5023 () Bool)

(declare-fun tb!4301 () Bool)

(assert (=> (and start!4686 (= env!6 (merge!4 lambda!4217 env!6)) t!5023) tb!4301))

(declare-fun b!36991 () Bool)

(declare-fun e!18997 () Bool)

(declare-fun tp_is_empty!243 () Bool)

(assert (=> b!36991 (= e!18997 tp_is_empty!243)))

(declare-fun result!4557 () Bool)

(assert (=> tb!4301 (= result!4557 e!18997)))

(assert (= (and tb!4301 (is-Some!204 (dynLambda!650 (merge!4 lambda!4217 env!6) k0!6))) b!36991))

(assert (=> start!4686 t!5023))

(declare-fun b_and!7957 () Bool)

(assert (= b_and!7955 (and (=> t!5023 result!4557) b_and!7957)))

(declare-fun b_lambda!9621 () Bool)

(assert (=> (not b_lambda!9621) (not start!4686)))

(declare-fun t!5025 () Bool)

(declare-fun tb!4303 () Bool)

(assert (=> (and start!4686 (= env!6 env!6) t!5025) tb!4303))

(declare-fun b!36992 () Bool)

(declare-fun e!18998 () Bool)

(assert (=> b!36992 (= e!18998 tp_is_empty!243)))

(declare-fun result!4561 () Bool)

(assert (=> tb!4303 (= result!4561 e!18998)))

(assert (= (and tb!4303 (is-Some!204 (dynLambda!650 env!6 k0!6))) b!36992))

(assert (=> start!4686 t!5025))

(declare-fun b_and!7959 () Bool)

(assert (= b_and!7957 (and (=> t!5025 result!4561) b_and!7959)))

(declare-fun m!38293 () Bool)

(assert (=> start!4686 m!38293))

(declare-fun m!38295 () Bool)

(assert (=> start!4686 m!38295))

(declare-fun m!38297 () Bool)

(assert (=> start!4686 m!38297))

(push 1)

(assert tp_is_empty!243)

(assert b_and!7959)

(assert (not b_lambda!9619))

(assert (not b_lambda!9621))

(assert (not b_next!5343))

(assert (not start!4686))

(assert tp_is_empty!241)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7959)

(assert (not b_next!5343))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9623 () Bool)

(assert (= b_lambda!9621 (or (and start!4686 (= lambda!4217 env!6)) (and start!4686 b_free!2203) b_lambda!9623)))

(declare-fun bs!11342 () Bool)

(declare-fun d!18576 () Bool)

(assert (= bs!11342 (and d!18576 start!4686)))

(assert (=> bs!11342 (= (dynLambda!650 lambda!4217 k0!6) None!204)))

(assert (=> (and start!4686 (= lambda!4217 env!6)) d!18576))

(push 1)

(assert tp_is_empty!243)

(assert (not b_lambda!9623))

(assert b_and!7959)

(assert (not b_lambda!9619))

(assert (not b_next!5343))

(assert (not start!4686))

(assert tp_is_empty!241)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7959)

(assert (not b_next!5343))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11343 () Bool)

(declare-fun d!18578 () Bool)

(assert (= bs!11343 (and d!18578 start!4686)))

(declare-fun lambda!4222 () Int)

(assert (=> bs!11343 (not (= lambda!4222 lambda!4217))))

(assert (=> d!18578 true))

(declare-fun order!403 () Int)

(declare-fun dynLambda!651 (Int Int) Int)

(assert (=> d!18578 (< (dynLambda!651 order!403 lambda!4217) (dynLambda!651 order!403 lambda!4222))))

(assert (=> d!18578 true))

(assert (=> d!18578 (< (dynLambda!651 order!403 env!6) (dynLambda!651 order!403 lambda!4222))))

(assert (=> d!18578 (= (merge!4 lambda!4217 env!6) lambda!4222)))

(assert (=> start!4686 d!18578))

(declare-fun b_lambda!9625 () Bool)

(assert (= b_lambda!9619 (or d!18578 b_lambda!9625)))

(declare-fun bs!11344 () Bool)

(declare-fun d!18580 () Bool)

(assert (= bs!11344 (and d!18580 d!18578)))

(declare-fun b_lambda!9627 () Bool)

(assert (=> (not b_lambda!9627) (not bs!11344)))

(assert (=> bs!11344 t!5025))

(declare-fun b_and!7961 () Bool)

(assert (= b_and!7959 (and (=> t!5025 result!4561) b_and!7961)))

(assert (=> bs!11344 m!38297))

(assert (=> bs!11344 true))

(assert (=> bs!11344 true))

(declare-fun order!405 () Int)

(declare-fun lambda!4223 () Int)

(declare-fun dynLambda!652 (Int Int) Int)

(assert (=> bs!11344 (< (dynLambda!651 order!403 env!6) (dynLambda!652 order!405 lambda!4223))))

(declare-fun orElse!3 (Option!209 Int) Option!209)

(assert (=> bs!11344 (= (dynLambda!650 lambda!4222 k0!6) (orElse!3 (dynLambda!650 lambda!4217 k0!6) lambda!4223))))

(declare-fun b_lambda!9629 () Bool)

(assert (=> (not b_lambda!9629) (not bs!11344)))

(declare-fun m!38299 () Bool)

(assert (=> bs!11344 m!38299))

(assert (=> bs!11344 m!38299))

(declare-fun m!38301 () Bool)

(assert (=> bs!11344 m!38301))

(assert (=> start!4686 d!18580))

(push 1)

(assert tp_is_empty!243)

(assert (not b_lambda!9623))

(assert (not bs!11344))

(assert (not b_lambda!9627))

(assert (not b_lambda!9629))

(assert (not b_next!5343))

(assert (not b_lambda!9625))

(assert b_and!7961)

(assert tp_is_empty!241)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7961)

(assert (not b_next!5343))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9631 () Bool)

(assert (= b_lambda!9627 (or (and start!4686 (= lambda!4217 env!6)) (and start!4686 b_free!2203) b_lambda!9631)))

(assert (=> (and start!4686 (= lambda!4217 env!6) bs!11344) d!18576))

(declare-fun b_lambda!9633 () Bool)

(assert (= b_lambda!9629 (or start!4686 b_lambda!9633)))

(declare-fun bs!11345 () Bool)

(declare-fun d!18582 () Bool)

(assert (= bs!11345 (and d!18582 start!4686)))

(assert (=> bs!11345 (= (dynLambda!650 lambda!4217 k0!6) None!204)))

(assert (=> bs!11344 d!18582))

(push 1)

(assert tp_is_empty!243)

(assert (not b_lambda!9623))

(assert (not b_lambda!9631))

(assert (not b_lambda!9633))

(assert (not bs!11344))

(assert (not b_next!5343))

(assert (not b_lambda!9625))

(assert b_and!7961)

(assert tp_is_empty!241)

(check-sat)

(pop 1)

(push 1)

(assert b_and!7961)

(assert (not b_next!5343))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18584 () Bool)

(declare-fun e!19003 () Bool)

(assert (=> d!18584 e!19003))

(declare-fun res!17518 () Bool)

(assert (=> d!18584 (=> res!17518 e!19003)))

(declare-fun lt!7416 () Option!209)

(declare-fun isDefined!4 (Option!209) Bool)

(assert (=> d!18584 (= res!17518 (= (isDefined!4 lt!7416) (isDefined!4 (dynLambda!650 lambda!4217 k0!6))))))

(declare-fun e!19004 () Option!209)

(assert (=> d!18584 (= lt!7416 e!19004)))

(declare-fun c!8119 () Bool)

(assert (=> d!18584 (= c!8119 (is-Some!204 (dynLambda!650 lambda!4217 k0!6)))))

(assert (=> d!18584 (= (orElse!3 (dynLambda!650 lambda!4217 k0!6) lambda!4223) lt!7416)))

(declare-fun b!37005 () Bool)

(assert (=> b!37005 (= e!19004 (dynLambda!650 lambda!4217 k0!6))))

(declare-fun b!37006 () Bool)

(declare-fun dynLambda!653 (Int) Option!209)

(assert (=> b!37006 (= e!19004 (dynLambda!653 lambda!4223))))

(declare-fun b!37007 () Bool)

(assert (=> b!37007 (= e!19003 (isDefined!4 (dynLambda!653 lambda!4223)))))

(assert (= (and d!18584 c!8119) b!37005))

(assert (= (and d!18584 (not c!8119)) b!37006))

(assert (= (and d!18584 (not res!17518)) b!37007))

(declare-fun b_lambda!9635 () Bool)

(assert (=> (not b_lambda!9635) (not b!37006)))

(declare-fun b_lambda!9637 () Bool)

(assert (=> (not b_lambda!9637) (not b!37007)))

(declare-fun m!38303 () Bool)

(assert (=> d!18584 m!38303))

(assert (=> d!18584 m!38299))

(declare-fun m!38305 () Bool)

(assert (=> d!18584 m!38305))

(declare-fun m!38307 () Bool)

(assert (=> b!37006 m!38307))

(assert (=> b!37007 m!38307))

(assert (=> b!37007 m!38307))

(declare-fun m!38309 () Bool)

(assert (=> b!37007 m!38309))

(assert (=> bs!11344 d!18584))

(declare-fun b_lambda!9639 () Bool)

(assert (= b_lambda!9635 (or bs!11344 b_lambda!9639)))

(declare-fun bs!11346 () Bool)

(declare-fun d!18586 () Bool)

(assert (= bs!11346 (and d!18586 d!18580 d!18578)))

(assert (=> bs!11346 (= (dynLambda!653 lambda!4223) (dynLambda!650 env!6 k0!6))))

(assert (=> b!37006 d!18586))

(declare-fun b_lambda!9641 () Bool)

(assert (= b_lambda!9637 (or bs!11344 b_lambda!9641)))

(assert (=> b!37007 d!18586))

(declare-fun b_lambda!9643 () Bool)

(assert (= b_lambda!9623 (or (and d!18578 (= lambda!4222 env!6)) b_lambda!9643)))

(declare-fun bs!11347 () Bool)

(declare-fun d!18588 () Bool)

(assert (= bs!11347 (and d!18588 d!18578)))

(declare-fun b_lambda!9645 () Bool)

(assert (=> (not b_lambda!9645) (not bs!11347)))

(assert (=> bs!11347 t!5025))

(declare-fun b_and!7963 () Bool)

(assert (= b_and!7961 (and (=> t!5025 result!4561) b_and!7963)))

(assert (=> bs!11347 m!38297))

(declare-fun bs!11348 () Bool)

(assert (= bs!11348 (and d!18588 d!18578 d!18580)))

(declare-fun lambda!4224 () Int)

(assert (=> bs!11348 (= lambda!4224 lambda!4223)))

(assert (=> bs!11347 true))

(assert (=> bs!11347 true))

(assert (=> bs!11347 (< (dynLambda!651 order!403 env!6) (dynLambda!652 order!405 lambda!4224))))

(assert (=> bs!11347 (= (dynLambda!650 lambda!4222 k0!6) (orElse!3 (dynLambda!650 lambda!4217 k0!6) lambda!4224))))

(declare-fun b_lambda!9647 () Bool)

(assert (=> (not b_lambda!9647) (not bs!11347)))

(assert (=> bs!11347 m!38299))

(assert (=> bs!11347 m!38299))

(declare-fun m!38311 () Bool)

(assert (=> bs!11347 m!38311))

(assert (=> (and d!18578 (= lambda!4222 env!6) start!4686) d!18588))

(push 1)

(assert tp_is_empty!243)

(assert (not bs!11347))

(assert (not b_lambda!9639))

(assert (not b_lambda!9641))

(assert (not b_lambda!9631))

(assert (not b_lambda!9633))

(assert (not d!18584))

(assert (not b_lambda!9643))

(assert (not b!37007))

(assert (not b_lambda!9645))

(assert (not b_next!5343))

(assert (not b_lambda!9625))

(assert b_and!7963)

(assert tp_is_empty!241)

(assert (not b_lambda!9647))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7963)

(assert (not b_next!5343))

(check-sat)

(pop 1)

