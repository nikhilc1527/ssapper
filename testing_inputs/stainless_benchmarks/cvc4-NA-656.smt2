; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4698 () Bool)

(assert start!4698)

(declare-fun b_free!2207 () Bool)

(declare-fun b_next!5349 () Bool)

(assert (=> start!4698 (= b_free!2207 (not b_next!5349))))

(declare-fun tp!7335 () Bool)

(declare-fun b_and!7975 () Bool)

(assert (=> start!4698 (= tp!7335 b_and!7975)))

(declare-fun b_free!2209 () Bool)

(declare-fun b_next!5351 () Bool)

(assert (=> start!4698 (= b_free!2209 (not b_next!5351))))

(declare-fun tp!7336 () Bool)

(declare-fun b_and!7977 () Bool)

(assert (=> start!4698 (= tp!7336 b_and!7977)))

(declare-fun b_free!2211 () Bool)

(declare-fun b_next!5353 () Bool)

(assert (=> start!4698 (= b_free!2211 (not b_next!5353))))

(declare-fun tp!7337 () Bool)

(declare-fun b_and!7979 () Bool)

(assert (=> start!4698 (= tp!7337 b_and!7979)))

(declare-fun env3!2 () Int)

(declare-fun env1!8 () Int)

(declare-fun env2!8 () Int)

(declare-datatypes () ((K!247 (K!248 (val!125 Int)))))

(declare-fun k0!8 () K!247)

(declare-datatypes () ((V!259 (V!260 (val!126 Int)))))

(declare-datatypes () ((Option!211 (Some!206 (v!666 V!259)) (None!206))))

(declare-fun dynLambda!658 (Int K!247) Option!211)

(declare-fun merge!6 (Int Int) Int)

(assert (=> start!4698 (not (= (dynLambda!658 (merge!6 (merge!6 env1!8 env2!8) env3!2) k0!8) (dynLambda!658 (merge!6 env1!8 (merge!6 env2!8 env3!2)) k0!8)))))

(assert (=> start!4698 tp!7335))

(assert (=> start!4698 tp!7336))

(assert (=> start!4698 tp!7337))

(declare-fun tp_is_empty!249 () Bool)

(assert (=> start!4698 tp_is_empty!249))

(declare-fun b_lambda!9679 () Bool)

(assert (=> (not b_lambda!9679) (not start!4698)))

(declare-fun t!5031 () Bool)

(declare-fun tb!4309 () Bool)

(assert (=> (and start!4698 (= env1!8 (merge!6 (merge!6 env1!8 env2!8) env3!2)) t!5031) tb!4309))

(declare-fun b!37033 () Bool)

(declare-fun e!19017 () Bool)

(declare-fun tp_is_empty!251 () Bool)

(assert (=> b!37033 (= e!19017 tp_is_empty!251)))

(declare-fun result!4569 () Bool)

(assert (=> tb!4309 (= result!4569 e!19017)))

(assert (= (and tb!4309 (is-Some!206 (dynLambda!658 (merge!6 (merge!6 env1!8 env2!8) env3!2) k0!8))) b!37033))

(assert (=> start!4698 t!5031))

(declare-fun b_and!7981 () Bool)

(assert (= b_and!7975 (and (=> t!5031 result!4569) b_and!7981)))

(declare-fun t!5033 () Bool)

(declare-fun tb!4311 () Bool)

(assert (=> (and start!4698 (= env2!8 (merge!6 (merge!6 env1!8 env2!8) env3!2)) t!5033) tb!4311))

(declare-fun result!4573 () Bool)

(assert (= result!4573 result!4569))

(assert (=> start!4698 t!5033))

(declare-fun b_and!7983 () Bool)

(assert (= b_and!7977 (and (=> t!5033 result!4573) b_and!7983)))

(declare-fun tb!4313 () Bool)

(declare-fun t!5035 () Bool)

(assert (=> (and start!4698 (= env3!2 (merge!6 (merge!6 env1!8 env2!8) env3!2)) t!5035) tb!4313))

(declare-fun result!4575 () Bool)

(assert (= result!4575 result!4569))

(assert (=> start!4698 t!5035))

(declare-fun b_and!7985 () Bool)

(assert (= b_and!7979 (and (=> t!5035 result!4575) b_and!7985)))

(declare-fun b_lambda!9681 () Bool)

(assert (=> (not b_lambda!9681) (not start!4698)))

(declare-fun tb!4315 () Bool)

(declare-fun t!5037 () Bool)

(assert (=> (and start!4698 (= env1!8 (merge!6 env1!8 (merge!6 env2!8 env3!2))) t!5037) tb!4315))

(declare-fun b!37034 () Bool)

(declare-fun e!19018 () Bool)

(assert (=> b!37034 (= e!19018 tp_is_empty!251)))

(declare-fun result!4577 () Bool)

(assert (=> tb!4315 (= result!4577 e!19018)))

(assert (= (and tb!4315 (is-Some!206 (dynLambda!658 (merge!6 env1!8 (merge!6 env2!8 env3!2)) k0!8))) b!37034))

(assert (=> start!4698 t!5037))

(declare-fun b_and!7987 () Bool)

(assert (= b_and!7981 (and (=> t!5037 result!4577) b_and!7987)))

(declare-fun tb!4317 () Bool)

(declare-fun t!5039 () Bool)

(assert (=> (and start!4698 (= env2!8 (merge!6 env1!8 (merge!6 env2!8 env3!2))) t!5039) tb!4317))

(declare-fun result!4579 () Bool)

(assert (= result!4579 result!4577))

(assert (=> start!4698 t!5039))

(declare-fun b_and!7989 () Bool)

(assert (= b_and!7983 (and (=> t!5039 result!4579) b_and!7989)))

(declare-fun tb!4319 () Bool)

(declare-fun t!5041 () Bool)

(assert (=> (and start!4698 (= env3!2 (merge!6 env1!8 (merge!6 env2!8 env3!2))) t!5041) tb!4319))

(declare-fun result!4581 () Bool)

(assert (= result!4581 result!4577))

(assert (=> start!4698 t!5041))

(declare-fun b_and!7991 () Bool)

(assert (= b_and!7985 (and (=> t!5041 result!4581) b_and!7991)))

(declare-fun m!38333 () Bool)

(assert (=> start!4698 m!38333))

(assert (=> start!4698 m!38333))

(declare-fun m!38335 () Bool)

(assert (=> start!4698 m!38335))

(declare-fun m!38337 () Bool)

(assert (=> start!4698 m!38337))

(declare-fun m!38339 () Bool)

(assert (=> start!4698 m!38339))

(declare-fun m!38341 () Bool)

(assert (=> start!4698 m!38341))

(assert (=> start!4698 m!38339))

(declare-fun m!38343 () Bool)

(assert (=> start!4698 m!38343))

(push 1)

(assert (not b_next!5353))

(assert b_and!7989)

(assert tp_is_empty!249)

(assert b_and!7991)

(assert tp_is_empty!251)

(assert (not b_lambda!9679))

(assert (not start!4698))

(assert (not b_next!5351))

(assert (not b_lambda!9681))

(assert (not b_next!5349))

(assert b_and!7987)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5353))

(assert b_and!7989)

(assert b_and!7991)

(assert (not b_next!5351))

(assert (not b_next!5349))

(assert b_and!7987)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18604 () Bool)

(assert (=> d!18604 true))

(declare-fun lambda!4239 () Int)

(declare-fun order!411 () Int)

(declare-fun dynLambda!659 (Int Int) Int)

(assert (=> d!18604 (< (dynLambda!659 order!411 (merge!6 env1!8 env2!8)) (dynLambda!659 order!411 lambda!4239))))

(assert (=> d!18604 true))

(assert (=> d!18604 (< (dynLambda!659 order!411 env3!2) (dynLambda!659 order!411 lambda!4239))))

(declare-fun b_next!5355 () Bool)

(assert (=> start!4698 (= b_next!5349 (or (and d!18604 (= lambda!4239 env1!8)) b_next!5355))))

(declare-fun b_next!5357 () Bool)

(assert (=> start!4698 (= b_next!5351 (or (and d!18604 (= lambda!4239 env2!8)) b_next!5357))))

(assert (=> d!18604 (= (merge!6 (merge!6 env1!8 env2!8) env3!2) lambda!4239)))

(assert (=> start!4698 d!18604))

(declare-fun bs!11358 () Bool)

(declare-fun d!18606 () Bool)

(assert (= bs!11358 (and d!18606 d!18604)))

(declare-fun lambda!4240 () Int)

(assert (=> bs!11358 (= (and (= env1!8 (merge!6 env1!8 env2!8)) (= env2!8 env3!2)) (= lambda!4240 lambda!4239))))

(assert (=> d!18606 true))

(assert (=> d!18606 (< (dynLambda!659 order!411 env1!8) (dynLambda!659 order!411 lambda!4240))))

(assert (=> d!18606 true))

(assert (=> d!18606 (< (dynLambda!659 order!411 env2!8) (dynLambda!659 order!411 lambda!4240))))

(declare-fun b_next!5359 () Bool)

(assert (=> start!4698 (= b_next!5353 (or (and d!18606 (= lambda!4240 env3!2)) b_next!5359))))

(assert (=> d!18606 (= (merge!6 env1!8 env2!8) lambda!4240)))

(assert (=> start!4698 d!18606))

(declare-fun bs!11359 () Bool)

(declare-fun d!18608 () Bool)

(assert (= bs!11359 (and d!18608 d!18604)))

(declare-fun lambda!4241 () Int)

(assert (=> bs!11359 (= (and (= env1!8 (merge!6 env1!8 env2!8)) (= (merge!6 env2!8 env3!2) env3!2)) (= lambda!4241 lambda!4239))))

(declare-fun bs!11360 () Bool)

(assert (= bs!11360 (and d!18608 d!18606)))

(assert (=> bs!11360 (= (= (merge!6 env2!8 env3!2) env2!8) (= lambda!4241 lambda!4240))))

(assert (=> d!18608 true))

(assert (=> d!18608 (< (dynLambda!659 order!411 env1!8) (dynLambda!659 order!411 lambda!4241))))

(assert (=> d!18608 true))

(assert (=> d!18608 (< (dynLambda!659 order!411 (merge!6 env2!8 env3!2)) (dynLambda!659 order!411 lambda!4241))))

(declare-fun b_next!5361 () Bool)

(assert (=> start!4698 (= b_next!5357 (or (and d!18608 (= lambda!4241 env2!8)) b_next!5361))))

(declare-fun b_next!5363 () Bool)

(assert (=> start!4698 (= b_next!5359 (or (and d!18608 (= lambda!4241 env3!2)) b_next!5363))))

(assert (=> d!18608 (= (merge!6 env1!8 (merge!6 env2!8 env3!2)) lambda!4241)))

(assert (=> start!4698 d!18608))

(declare-fun bs!11361 () Bool)

(declare-fun d!18610 () Bool)

(assert (= bs!11361 (and d!18610 d!18604)))

(declare-fun lambda!4242 () Int)

(assert (=> bs!11361 (= (= env2!8 (merge!6 env1!8 env2!8)) (= lambda!4242 lambda!4239))))

(declare-fun bs!11362 () Bool)

(assert (= bs!11362 (and d!18610 d!18606)))

(assert (=> bs!11362 (= (and (= env2!8 env1!8) (= env3!2 env2!8)) (= lambda!4242 lambda!4240))))

(declare-fun bs!11363 () Bool)

(assert (= bs!11363 (and d!18610 d!18608)))

(assert (=> bs!11363 (= (and (= env2!8 env1!8) (= env3!2 (merge!6 env2!8 env3!2))) (= lambda!4242 lambda!4241))))

(assert (=> d!18610 true))

(assert (=> d!18610 (< (dynLambda!659 order!411 env2!8) (dynLambda!659 order!411 lambda!4242))))

(assert (=> d!18610 true))

(assert (=> d!18610 (< (dynLambda!659 order!411 env3!2) (dynLambda!659 order!411 lambda!4242))))

(declare-fun b_next!5365 () Bool)

(assert (=> start!4698 (= b_next!5355 (or (and d!18610 (= lambda!4242 env1!8)) b_next!5365))))

(assert (=> d!18610 (= (merge!6 env2!8 env3!2) lambda!4242)))

(assert (=> start!4698 d!18610))

(declare-fun b_lambda!9683 () Bool)

(assert (= b_lambda!9681 (or d!18608 b_lambda!9683)))

(declare-fun bs!11364 () Bool)

(declare-fun d!18612 () Bool)

(assert (= bs!11364 (and d!18612 d!18608)))

(declare-fun b_lambda!9687 () Bool)

(assert (=> (not b_lambda!9687) (not bs!11364)))

(declare-fun m!38345 () Bool)

(assert (=> bs!11364 m!38345))

(assert (=> bs!11364 true))

(assert (=> bs!11364 true))

(declare-fun order!413 () Int)

(declare-fun lambda!4243 () Int)

(declare-fun dynLambda!660 (Int Int) Int)

(assert (=> bs!11364 (< (dynLambda!659 order!411 (merge!6 env2!8 env3!2)) (dynLambda!660 order!413 lambda!4243))))

(declare-fun orElse!5 (Option!211 Int) Option!211)

(assert (=> bs!11364 (= (dynLambda!658 lambda!4241 k0!8) (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4243))))

(declare-fun b_lambda!9689 () Bool)

(assert (=> (not b_lambda!9689) (not bs!11364)))

(declare-fun t!5043 () Bool)

(declare-fun tb!4321 () Bool)

(assert (=> (and start!4698 (= env1!8 env1!8) t!5043) tb!4321))

(declare-fun b!37041 () Bool)

(declare-fun e!19019 () Bool)

(assert (=> b!37041 (= e!19019 tp_is_empty!251)))

(declare-fun result!4583 () Bool)

(assert (=> tb!4321 (= result!4583 e!19019)))

(assert (= (and tb!4321 (is-Some!206 (dynLambda!658 env1!8 k0!8))) b!37041))

(assert (=> bs!11364 t!5043))

(declare-fun b_and!7993 () Bool)

(assert (= b_and!7987 (and (=> t!5043 result!4583) b_and!7993)))

(declare-fun tb!4323 () Bool)

(declare-fun t!5045 () Bool)

(assert (=> (and start!4698 (= env2!8 env1!8) t!5045) tb!4323))

(declare-fun result!4585 () Bool)

(assert (= result!4585 result!4583))

(assert (=> bs!11364 t!5045))

(declare-fun b_and!7995 () Bool)

(assert (= b_and!7989 (and (=> t!5045 result!4585) b_and!7995)))

(declare-fun t!5047 () Bool)

(declare-fun tb!4325 () Bool)

(assert (=> (and start!4698 (= env3!2 env1!8) t!5047) tb!4325))

(declare-fun result!4587 () Bool)

(assert (= result!4587 result!4583))

(assert (=> bs!11364 t!5047))

(declare-fun b_and!7997 () Bool)

(assert (= b_and!7991 (and (=> t!5047 result!4587) b_and!7997)))

(declare-fun m!38347 () Bool)

(assert (=> bs!11364 m!38347))

(assert (=> bs!11364 m!38347))

(declare-fun m!38349 () Bool)

(assert (=> bs!11364 m!38349))

(assert (=> start!4698 d!18612))

(declare-fun b_lambda!9685 () Bool)

(assert (= b_lambda!9679 (or d!18604 b_lambda!9685)))

(declare-fun bs!11365 () Bool)

(declare-fun d!18614 () Bool)

(assert (= bs!11365 (and d!18614 d!18604)))

(declare-fun b_lambda!9691 () Bool)

(assert (=> (not b_lambda!9691) (not bs!11365)))

(declare-fun tb!4327 () Bool)

(declare-fun t!5049 () Bool)

(assert (=> (and start!4698 (= env1!8 env3!2) t!5049) tb!4327))

(declare-fun b!37042 () Bool)

(declare-fun e!19020 () Bool)

(assert (=> b!37042 (= e!19020 tp_is_empty!251)))

(declare-fun result!4589 () Bool)

(assert (=> tb!4327 (= result!4589 e!19020)))

(assert (= (and tb!4327 (is-Some!206 (dynLambda!658 env3!2 k0!8))) b!37042))

(assert (=> bs!11365 t!5049))

(declare-fun b_and!7999 () Bool)

(assert (= b_and!7993 (and (=> t!5049 result!4589) b_and!7999)))

(declare-fun t!5051 () Bool)

(declare-fun tb!4329 () Bool)

(assert (=> (and start!4698 (= env2!8 env3!2) t!5051) tb!4329))

(declare-fun result!4591 () Bool)

(assert (= result!4591 result!4589))

(assert (=> bs!11365 t!5051))

(declare-fun b_and!8001 () Bool)

(assert (= b_and!7995 (and (=> t!5051 result!4591) b_and!8001)))

(declare-fun t!5053 () Bool)

(declare-fun tb!4331 () Bool)

(assert (=> (and start!4698 (= env3!2 env3!2) t!5053) tb!4331))

(declare-fun result!4593 () Bool)

(assert (= result!4593 result!4589))

(assert (=> bs!11365 t!5053))

(declare-fun b_and!8003 () Bool)

(assert (= b_and!7997 (and (=> t!5053 result!4593) b_and!8003)))

(declare-fun m!38351 () Bool)

(assert (=> bs!11365 m!38351))

(declare-fun bs!11366 () Bool)

(assert (= bs!11366 (and d!18614 d!18604 d!18612 d!18608)))

(declare-fun lambda!4244 () Int)

(assert (=> bs!11366 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4244 lambda!4243))))

(assert (=> bs!11365 true))

(assert (=> bs!11365 true))

(assert (=> bs!11365 (< (dynLambda!659 order!411 env3!2) (dynLambda!660 order!413 lambda!4244))))

(assert (=> bs!11365 (= (dynLambda!658 lambda!4239 k0!8) (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4244))))

(declare-fun b_lambda!9693 () Bool)

(assert (=> (not b_lambda!9693) (not bs!11365)))

(declare-fun m!38353 () Bool)

(assert (=> bs!11365 m!38353))

(assert (=> bs!11365 m!38353))

(declare-fun m!38355 () Bool)

(assert (=> bs!11365 m!38355))

(assert (=> start!4698 d!18614))

(push 1)

(assert (not bs!11364))

(assert (not b_next!5363))

(assert (not b_lambda!9683))

(assert tp_is_empty!249)

(assert b_and!7999)

(assert b_and!8003)

(assert (not b_next!5365))

(assert tp_is_empty!251)

(assert b_and!8001)

(assert (not bs!11365))

(assert (not b_lambda!9689))

(assert (not b_lambda!9687))

(assert (not b_lambda!9693))

(assert (not b_lambda!9685))

(assert (not b_next!5361))

(assert (not b_lambda!9691))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5363))

(assert b_and!7999)

(assert b_and!8003)

(assert (not b_next!5365))

(assert b_and!8001)

(assert (not b_next!5361))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9695 () Bool)

(assert (= b_lambda!9687 (or d!18610 b_lambda!9695)))

(declare-fun bs!11367 () Bool)

(declare-fun d!18616 () Bool)

(assert (= bs!11367 (and d!18616 d!18610)))

(declare-fun b_lambda!9703 () Bool)

(assert (=> (not b_lambda!9703) (not bs!11367)))

(assert (=> bs!11367 t!5049))

(declare-fun b_and!8005 () Bool)

(assert (= b_and!7999 (and (=> t!5049 result!4589) b_and!8005)))

(assert (=> bs!11367 t!5051))

(declare-fun b_and!8007 () Bool)

(assert (= b_and!8001 (and (=> t!5051 result!4591) b_and!8007)))

(assert (=> bs!11367 t!5053))

(declare-fun b_and!8009 () Bool)

(assert (= b_and!8003 (and (=> t!5053 result!4593) b_and!8009)))

(assert (=> bs!11367 m!38351))

(declare-fun bs!11368 () Bool)

(assert (= bs!11368 (and d!18616 d!18610 d!18612 d!18608)))

(declare-fun lambda!4245 () Int)

(assert (=> bs!11368 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4245 lambda!4243))))

(declare-fun bs!11369 () Bool)

(assert (= bs!11369 (and d!18616 d!18610 d!18614 d!18604)))

(assert (=> bs!11369 (= lambda!4245 lambda!4244)))

(assert (=> bs!11367 true))

(assert (=> bs!11367 true))

(assert (=> bs!11367 (< (dynLambda!659 order!411 env3!2) (dynLambda!660 order!413 lambda!4245))))

(assert (=> bs!11367 (= (dynLambda!658 lambda!4242 k0!8) (orElse!5 (dynLambda!658 env2!8 k0!8) lambda!4245))))

(declare-fun b_lambda!9705 () Bool)

(assert (=> (not b_lambda!9705) (not bs!11367)))

(declare-fun t!5055 () Bool)

(declare-fun tb!4333 () Bool)

(assert (=> (and start!4698 (= env1!8 env2!8) t!5055) tb!4333))

(declare-fun b!37043 () Bool)

(declare-fun e!19021 () Bool)

(assert (=> b!37043 (= e!19021 tp_is_empty!251)))

(declare-fun result!4595 () Bool)

(assert (=> tb!4333 (= result!4595 e!19021)))

(assert (= (and tb!4333 (is-Some!206 (dynLambda!658 env2!8 k0!8))) b!37043))

(assert (=> bs!11367 t!5055))

(declare-fun b_and!8011 () Bool)

(assert (= b_and!8005 (and (=> t!5055 result!4595) b_and!8011)))

(declare-fun t!5057 () Bool)

(declare-fun tb!4335 () Bool)

(assert (=> (and start!4698 (= env2!8 env2!8) t!5057) tb!4335))

(declare-fun result!4597 () Bool)

(assert (= result!4597 result!4595))

(assert (=> bs!11367 t!5057))

(declare-fun b_and!8013 () Bool)

(assert (= b_and!8007 (and (=> t!5057 result!4597) b_and!8013)))

(declare-fun t!5059 () Bool)

(declare-fun tb!4337 () Bool)

(assert (=> (and start!4698 (= env3!2 env2!8) t!5059) tb!4337))

(declare-fun result!4599 () Bool)

(assert (= result!4599 result!4595))

(assert (=> bs!11367 t!5059))

(declare-fun b_and!8015 () Bool)

(assert (= b_and!8009 (and (=> t!5059 result!4599) b_and!8015)))

(declare-fun m!38357 () Bool)

(assert (=> bs!11367 m!38357))

(assert (=> bs!11367 m!38357))

(declare-fun m!38359 () Bool)

(assert (=> bs!11367 m!38359))

(assert (=> bs!11364 d!18616))

(declare-fun b_lambda!9697 () Bool)

(assert (= b_lambda!9691 (or (and d!18606 (= lambda!4240 env3!2)) (and d!18608 (= lambda!4241 env3!2)) (and start!4698 b_free!2207 (= env1!8 env3!2)) (and start!4698 b_free!2211) (and start!4698 b_free!2209 (= env2!8 env3!2)) b_lambda!9697)))

(declare-fun bs!11370 () Bool)

(declare-fun d!18618 () Bool)

(assert (= bs!11370 (and d!18618 d!18608)))

(declare-fun b_lambda!9707 () Bool)

(assert (=> (not b_lambda!9707) (not bs!11370)))

(assert (=> bs!11370 m!38345))

(declare-fun bs!11371 () Bool)

(assert (= bs!11371 (and d!18618 d!18608 d!18612)))

(declare-fun lambda!4246 () Int)

(assert (=> bs!11371 (= lambda!4246 lambda!4243)))

(declare-fun bs!11372 () Bool)

(assert (= bs!11372 (and d!18618 d!18608 d!18614 d!18604)))

(assert (=> bs!11372 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4246 lambda!4244))))

(declare-fun bs!11373 () Bool)

(assert (= bs!11373 (and d!18618 d!18608 d!18616 d!18610)))

(assert (=> bs!11373 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4246 lambda!4245))))

(assert (=> bs!11370 true))

(assert (=> bs!11370 true))

(assert (=> bs!11370 (< (dynLambda!659 order!411 (merge!6 env2!8 env3!2)) (dynLambda!660 order!413 lambda!4246))))

(assert (=> bs!11370 (= (dynLambda!658 lambda!4241 k0!8) (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4246))))

(declare-fun b_lambda!9709 () Bool)

(assert (=> (not b_lambda!9709) (not bs!11370)))

(assert (=> bs!11370 t!5043))

(declare-fun b_and!8017 () Bool)

(assert (= b_and!8011 (and (=> t!5043 result!4583) b_and!8017)))

(assert (=> bs!11370 t!5045))

(declare-fun b_and!8019 () Bool)

(assert (= b_and!8013 (and (=> t!5045 result!4585) b_and!8019)))

(assert (=> bs!11370 t!5047))

(declare-fun b_and!8021 () Bool)

(assert (= b_and!8015 (and (=> t!5047 result!4587) b_and!8021)))

(assert (=> bs!11370 m!38347))

(assert (=> bs!11370 m!38347))

(declare-fun m!38361 () Bool)

(assert (=> bs!11370 m!38361))

(assert (=> (and d!18608 (= lambda!4241 env3!2) bs!11365) d!18618))

(declare-fun bs!11374 () Bool)

(declare-fun d!18620 () Bool)

(assert (= bs!11374 (and d!18620 d!18606)))

(declare-fun b_lambda!9711 () Bool)

(assert (=> (not b_lambda!9711) (not bs!11374)))

(assert (=> bs!11374 t!5055))

(declare-fun b_and!8023 () Bool)

(assert (= b_and!8017 (and (=> t!5055 result!4595) b_and!8023)))

(assert (=> bs!11374 t!5057))

(declare-fun b_and!8025 () Bool)

(assert (= b_and!8019 (and (=> t!5057 result!4597) b_and!8025)))

(assert (=> bs!11374 t!5059))

(declare-fun b_and!8027 () Bool)

(assert (= b_and!8021 (and (=> t!5059 result!4599) b_and!8027)))

(assert (=> bs!11374 m!38357))

(declare-fun bs!11375 () Bool)

(assert (= bs!11375 (and d!18620 d!18606 d!18612 d!18608)))

(declare-fun lambda!4247 () Int)

(assert (=> bs!11375 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4247 lambda!4243))))

(declare-fun bs!11376 () Bool)

(assert (= bs!11376 (and d!18620 d!18606 d!18614 d!18604)))

(assert (=> bs!11376 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4247 lambda!4244))))

(declare-fun bs!11377 () Bool)

(assert (= bs!11377 (and d!18620 d!18606 d!18616 d!18610)))

(assert (=> bs!11377 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4247 lambda!4245))))

(declare-fun bs!11378 () Bool)

(assert (= bs!11378 (and d!18620 d!18606 d!18618 d!18608)))

(assert (=> bs!11378 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4247 lambda!4246))))

(assert (=> bs!11374 true))

(assert (=> bs!11374 true))

(assert (=> bs!11374 (< (dynLambda!659 order!411 env2!8) (dynLambda!660 order!413 lambda!4247))))

(assert (=> bs!11374 (= (dynLambda!658 lambda!4240 k0!8) (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4247))))

(declare-fun b_lambda!9713 () Bool)

(assert (=> (not b_lambda!9713) (not bs!11374)))

(assert (=> bs!11374 t!5043))

(declare-fun b_and!8029 () Bool)

(assert (= b_and!8023 (and (=> t!5043 result!4583) b_and!8029)))

(assert (=> bs!11374 t!5045))

(declare-fun b_and!8031 () Bool)

(assert (= b_and!8025 (and (=> t!5045 result!4585) b_and!8031)))

(assert (=> bs!11374 t!5047))

(declare-fun b_and!8033 () Bool)

(assert (= b_and!8027 (and (=> t!5047 result!4587) b_and!8033)))

(assert (=> bs!11374 m!38347))

(assert (=> bs!11374 m!38347))

(declare-fun m!38363 () Bool)

(assert (=> bs!11374 m!38363))

(assert (=> (and d!18606 (= lambda!4240 env3!2) bs!11365) d!18620))

(declare-fun b_lambda!9699 () Bool)

(assert (= b_lambda!9693 (or d!18606 b_lambda!9699)))

(declare-fun bs!11379 () Bool)

(declare-fun d!18622 () Bool)

(assert (= bs!11379 (and d!18622 d!18606)))

(declare-fun b_lambda!9715 () Bool)

(assert (=> (not b_lambda!9715) (not bs!11379)))

(assert (=> bs!11379 t!5055))

(declare-fun b_and!8035 () Bool)

(assert (= b_and!8029 (and (=> t!5055 result!4595) b_and!8035)))

(assert (=> bs!11379 t!5057))

(declare-fun b_and!8037 () Bool)

(assert (= b_and!8031 (and (=> t!5057 result!4597) b_and!8037)))

(assert (=> bs!11379 t!5059))

(declare-fun b_and!8039 () Bool)

(assert (= b_and!8033 (and (=> t!5059 result!4599) b_and!8039)))

(assert (=> bs!11379 m!38357))

(declare-fun bs!11380 () Bool)

(assert (= bs!11380 (and d!18622 d!18606 d!18614 d!18604)))

(declare-fun lambda!4248 () Int)

(assert (=> bs!11380 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4248 lambda!4244))))

(declare-fun bs!11381 () Bool)

(assert (= bs!11381 (and d!18622 d!18606 d!18612 d!18608)))

(assert (=> bs!11381 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4248 lambda!4243))))

(declare-fun bs!11382 () Bool)

(assert (= bs!11382 (and d!18622 d!18606 d!18618 d!18608)))

(assert (=> bs!11382 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4248 lambda!4246))))

(declare-fun bs!11383 () Bool)

(assert (= bs!11383 (and d!18622 d!18606 d!18616 d!18610)))

(assert (=> bs!11383 (= (= (dynLambda!658 env2!8 k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4248 lambda!4245))))

(declare-fun bs!11384 () Bool)

(assert (= bs!11384 (and d!18622 d!18606 d!18620)))

(assert (=> bs!11384 (= lambda!4248 lambda!4247)))

(assert (=> bs!11379 true))

(assert (=> bs!11379 true))

(assert (=> bs!11379 (< (dynLambda!659 order!411 env2!8) (dynLambda!660 order!413 lambda!4248))))

(assert (=> bs!11379 (= (dynLambda!658 lambda!4240 k0!8) (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4248))))

(declare-fun b_lambda!9717 () Bool)

(assert (=> (not b_lambda!9717) (not bs!11379)))

(assert (=> bs!11379 t!5043))

(declare-fun b_and!8041 () Bool)

(assert (= b_and!8035 (and (=> t!5043 result!4583) b_and!8041)))

(assert (=> bs!11379 t!5045))

(declare-fun b_and!8043 () Bool)

(assert (= b_and!8037 (and (=> t!5045 result!4585) b_and!8043)))

(assert (=> bs!11379 t!5047))

(declare-fun b_and!8045 () Bool)

(assert (= b_and!8039 (and (=> t!5047 result!4587) b_and!8045)))

(assert (=> bs!11379 m!38347))

(assert (=> bs!11379 m!38347))

(declare-fun m!38365 () Bool)

(assert (=> bs!11379 m!38365))

(assert (=> bs!11365 d!18622))

(declare-fun b_lambda!9701 () Bool)

(assert (= b_lambda!9689 (or (and d!18610 (= lambda!4242 env1!8)) (and start!4698 b_free!2207) (and start!4698 b_free!2211 (= env3!2 env1!8)) (and start!4698 b_free!2209 (= env2!8 env1!8)) (and d!18604 (= lambda!4239 env1!8)) b_lambda!9701)))

(declare-fun bs!11385 () Bool)

(declare-fun d!18624 () Bool)

(assert (= bs!11385 (and d!18624 d!18604)))

(declare-fun b_lambda!9719 () Bool)

(assert (=> (not b_lambda!9719) (not bs!11385)))

(assert (=> bs!11385 t!5049))

(declare-fun b_and!8047 () Bool)

(assert (= b_and!8041 (and (=> t!5049 result!4589) b_and!8047)))

(assert (=> bs!11385 t!5051))

(declare-fun b_and!8049 () Bool)

(assert (= b_and!8043 (and (=> t!5051 result!4591) b_and!8049)))

(assert (=> bs!11385 t!5053))

(declare-fun b_and!8051 () Bool)

(assert (= b_and!8045 (and (=> t!5053 result!4593) b_and!8051)))

(assert (=> bs!11385 m!38351))

(declare-fun bs!11386 () Bool)

(assert (= bs!11386 (and d!18624 d!18604 d!18614)))

(declare-fun lambda!4249 () Int)

(assert (=> bs!11386 (= lambda!4249 lambda!4244)))

(declare-fun bs!11387 () Bool)

(assert (= bs!11387 (and d!18624 d!18604 d!18612 d!18608)))

(assert (=> bs!11387 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4249 lambda!4243))))

(declare-fun bs!11388 () Bool)

(assert (= bs!11388 (and d!18624 d!18604 d!18618 d!18608)))

(assert (=> bs!11388 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4249 lambda!4246))))

(declare-fun bs!11389 () Bool)

(assert (= bs!11389 (and d!18624 d!18604 d!18616 d!18610)))

(assert (=> bs!11389 (= lambda!4249 lambda!4245)))

(declare-fun bs!11390 () Bool)

(assert (= bs!11390 (and d!18624 d!18604 d!18620 d!18606)))

(assert (=> bs!11390 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4249 lambda!4247))))

(declare-fun bs!11391 () Bool)

(assert (= bs!11391 (and d!18624 d!18604 d!18622 d!18606)))

(assert (=> bs!11391 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4249 lambda!4248))))

(assert (=> bs!11385 true))

(assert (=> bs!11385 true))

(assert (=> bs!11385 (< (dynLambda!659 order!411 env3!2) (dynLambda!660 order!413 lambda!4249))))

(assert (=> bs!11385 (= (dynLambda!658 lambda!4239 k0!8) (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4249))))

(declare-fun b_lambda!9721 () Bool)

(assert (=> (not b_lambda!9721) (not bs!11385)))

(assert (=> bs!11385 m!38353))

(assert (=> bs!11385 m!38353))

(declare-fun m!38367 () Bool)

(assert (=> bs!11385 m!38367))

(assert (=> (and d!18604 (= lambda!4239 env1!8) bs!11364) d!18624))

(declare-fun bs!11392 () Bool)

(declare-fun d!18626 () Bool)

(assert (= bs!11392 (and d!18626 d!18610)))

(declare-fun b_lambda!9723 () Bool)

(assert (=> (not b_lambda!9723) (not bs!11392)))

(assert (=> bs!11392 t!5049))

(declare-fun b_and!8053 () Bool)

(assert (= b_and!8047 (and (=> t!5049 result!4589) b_and!8053)))

(assert (=> bs!11392 t!5051))

(declare-fun b_and!8055 () Bool)

(assert (= b_and!8049 (and (=> t!5051 result!4591) b_and!8055)))

(assert (=> bs!11392 t!5053))

(declare-fun b_and!8057 () Bool)

(assert (= b_and!8051 (and (=> t!5053 result!4593) b_and!8057)))

(assert (=> bs!11392 m!38351))

(declare-fun bs!11393 () Bool)

(assert (= bs!11393 (and d!18626 d!18610 d!18614 d!18604)))

(declare-fun lambda!4250 () Int)

(assert (=> bs!11393 (= lambda!4250 lambda!4244)))

(declare-fun bs!11394 () Bool)

(assert (= bs!11394 (and d!18626 d!18610 d!18612 d!18608)))

(assert (=> bs!11394 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4250 lambda!4243))))

(declare-fun bs!11395 () Bool)

(assert (= bs!11395 (and d!18626 d!18610 d!18618 d!18608)))

(assert (=> bs!11395 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4250 lambda!4246))))

(declare-fun bs!11396 () Bool)

(assert (= bs!11396 (and d!18626 d!18610 d!18616)))

(assert (=> bs!11396 (= lambda!4250 lambda!4245)))

(declare-fun bs!11397 () Bool)

(assert (= bs!11397 (and d!18626 d!18610 d!18620 d!18606)))

(assert (=> bs!11397 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4250 lambda!4247))))

(declare-fun bs!11398 () Bool)

(assert (= bs!11398 (and d!18626 d!18610 d!18624 d!18604)))

(assert (=> bs!11398 (= lambda!4250 lambda!4249)))

(declare-fun bs!11399 () Bool)

(assert (= bs!11399 (and d!18626 d!18610 d!18622 d!18606)))

(assert (=> bs!11399 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4250 lambda!4248))))

(assert (=> bs!11392 true))

(assert (=> bs!11392 true))

(assert (=> bs!11392 (< (dynLambda!659 order!411 env3!2) (dynLambda!660 order!413 lambda!4250))))

(assert (=> bs!11392 (= (dynLambda!658 lambda!4242 k0!8) (orElse!5 (dynLambda!658 env2!8 k0!8) lambda!4250))))

(declare-fun b_lambda!9725 () Bool)

(assert (=> (not b_lambda!9725) (not bs!11392)))

(assert (=> bs!11392 t!5055))

(declare-fun b_and!8059 () Bool)

(assert (= b_and!8053 (and (=> t!5055 result!4595) b_and!8059)))

(assert (=> bs!11392 t!5057))

(declare-fun b_and!8061 () Bool)

(assert (= b_and!8055 (and (=> t!5057 result!4597) b_and!8061)))

(assert (=> bs!11392 t!5059))

(declare-fun b_and!8063 () Bool)

(assert (= b_and!8057 (and (=> t!5059 result!4599) b_and!8063)))

(assert (=> bs!11392 m!38357))

(assert (=> bs!11392 m!38357))

(declare-fun m!38369 () Bool)

(assert (=> bs!11392 m!38369))

(assert (=> (and d!18610 (= lambda!4242 env1!8) bs!11364) d!18626))

(push 1)

(assert (not b_lambda!9725))

(assert b_and!8063)

(assert (not bs!11364))

(assert (not bs!11385))

(assert (not b_lambda!9721))

(assert (not b_next!5363))

(assert (not b_lambda!9703))

(assert (not b_lambda!9683))

(assert (not b_lambda!9697))

(assert (not b_lambda!9711))

(assert tp_is_empty!249)

(assert (not b_lambda!9719))

(assert (not b_next!5365))

(assert tp_is_empty!251)

(assert (not bs!11365))

(assert b_and!8059)

(assert (not bs!11392))

(assert (not b_lambda!9705))

(assert (not b_lambda!9709))

(assert (not bs!11370))

(assert (not bs!11367))

(assert (not b_lambda!9713))

(assert (not b_lambda!9717))

(assert (not b_lambda!9701))

(assert (not b_lambda!9715))

(assert (not b_lambda!9685))

(assert (not b_lambda!9695))

(assert (not b_lambda!9723))

(assert (not b_lambda!9699))

(assert (not b_lambda!9707))

(assert (not bs!11374))

(assert (not b_next!5361))

(assert b_and!8061)

(assert (not bs!11379))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8063)

(assert (not b_next!5363))

(assert (not b_next!5365))

(assert b_and!8059)

(assert (not b_next!5361))

(assert b_and!8061)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!9727 () Bool)

(assert (= b_lambda!9709 (or (and d!18610 (= lambda!4242 env1!8)) (and start!4698 b_free!2207) (and start!4698 b_free!2211 (= env3!2 env1!8)) (and start!4698 b_free!2209 (= env2!8 env1!8)) (and d!18604 (= lambda!4239 env1!8)) b_lambda!9727)))

(assert (=> (and d!18604 (= lambda!4239 env1!8) bs!11370) d!18624))

(assert (=> (and d!18610 (= lambda!4242 env1!8) bs!11370) d!18626))

(declare-fun b_lambda!9729 () Bool)

(assert (= b_lambda!9715 (or (and start!4698 b_free!2209) (and d!18608 (= lambda!4241 env2!8)) (and start!4698 b_free!2207 (= env1!8 env2!8)) (and d!18604 (= lambda!4239 env2!8)) (and start!4698 b_free!2211 (= env3!2 env2!8)) b_lambda!9729)))

(declare-fun bs!11400 () Bool)

(declare-fun d!18628 () Bool)

(assert (= bs!11400 (and d!18628 d!18608)))

(declare-fun b_lambda!9751 () Bool)

(assert (=> (not b_lambda!9751) (not bs!11400)))

(assert (=> bs!11400 m!38345))

(declare-fun bs!11401 () Bool)

(assert (= bs!11401 (and d!18628 d!18608 d!18626 d!18610)))

(declare-fun lambda!4251 () Int)

(assert (=> bs!11401 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4251 lambda!4250))))

(declare-fun bs!11402 () Bool)

(assert (= bs!11402 (and d!18628 d!18608 d!18614 d!18604)))

(assert (=> bs!11402 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4251 lambda!4244))))

(declare-fun bs!11403 () Bool)

(assert (= bs!11403 (and d!18628 d!18608 d!18612)))

(assert (=> bs!11403 (= lambda!4251 lambda!4243)))

(declare-fun bs!11404 () Bool)

(assert (= bs!11404 (and d!18628 d!18608 d!18618)))

(assert (=> bs!11404 (= lambda!4251 lambda!4246)))

(declare-fun bs!11405 () Bool)

(assert (= bs!11405 (and d!18628 d!18608 d!18616 d!18610)))

(assert (=> bs!11405 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4251 lambda!4245))))

(declare-fun bs!11406 () Bool)

(assert (= bs!11406 (and d!18628 d!18608 d!18620 d!18606)))

(assert (=> bs!11406 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4251 lambda!4247))))

(declare-fun bs!11407 () Bool)

(assert (= bs!11407 (and d!18628 d!18608 d!18624 d!18604)))

(assert (=> bs!11407 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env3!2 k0!8)) (= lambda!4251 lambda!4249))))

(declare-fun bs!11408 () Bool)

(assert (= bs!11408 (and d!18628 d!18608 d!18622 d!18606)))

(assert (=> bs!11408 (= (= (dynLambda!658 (merge!6 env2!8 env3!2) k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4251 lambda!4248))))

(assert (=> bs!11400 true))

(assert (=> bs!11400 true))

(assert (=> bs!11400 (< (dynLambda!659 order!411 (merge!6 env2!8 env3!2)) (dynLambda!660 order!413 lambda!4251))))

(assert (=> bs!11400 (= (dynLambda!658 lambda!4241 k0!8) (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4251))))

(declare-fun b_lambda!9753 () Bool)

(assert (=> (not b_lambda!9753) (not bs!11400)))

(assert (=> bs!11400 t!5043))

(declare-fun b_and!8065 () Bool)

(assert (= b_and!8059 (and (=> t!5043 result!4583) b_and!8065)))

(assert (=> bs!11400 t!5045))

(declare-fun b_and!8067 () Bool)

(assert (= b_and!8061 (and (=> t!5045 result!4585) b_and!8067)))

(assert (=> bs!11400 t!5047))

(declare-fun b_and!8069 () Bool)

(assert (= b_and!8063 (and (=> t!5047 result!4587) b_and!8069)))

(assert (=> bs!11400 m!38347))

(assert (=> bs!11400 m!38347))

(declare-fun m!38371 () Bool)

(assert (=> bs!11400 m!38371))

(assert (=> (and d!18608 (= lambda!4241 env2!8) bs!11379) d!18628))

(declare-fun bs!11409 () Bool)

(declare-fun d!18630 () Bool)

(assert (= bs!11409 (and d!18630 d!18604)))

(declare-fun b_lambda!9755 () Bool)

(assert (=> (not b_lambda!9755) (not bs!11409)))

(assert (=> bs!11409 t!5049))

(declare-fun b_and!8071 () Bool)

(assert (= b_and!8065 (and (=> t!5049 result!4589) b_and!8071)))

(assert (=> bs!11409 t!5051))

(declare-fun b_and!8073 () Bool)

(assert (= b_and!8067 (and (=> t!5051 result!4591) b_and!8073)))

(assert (=> bs!11409 t!5053))

(declare-fun b_and!8075 () Bool)

(assert (= b_and!8069 (and (=> t!5053 result!4593) b_and!8075)))

(assert (=> bs!11409 m!38351))

(declare-fun bs!11410 () Bool)

(assert (= bs!11410 (and d!18630 d!18604 d!18626 d!18610)))

(declare-fun lambda!4252 () Int)

(assert (=> bs!11410 (= lambda!4252 lambda!4250)))

(declare-fun bs!11411 () Bool)

(assert (= bs!11411 (and d!18630 d!18604 d!18614)))

(assert (=> bs!11411 (= lambda!4252 lambda!4244)))

(declare-fun bs!11412 () Bool)

(assert (= bs!11412 (and d!18630 d!18604 d!18612 d!18608)))

(assert (=> bs!11412 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4252 lambda!4243))))

(declare-fun bs!11413 () Bool)

(assert (= bs!11413 (and d!18630 d!18604 d!18618 d!18608)))

(assert (=> bs!11413 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4252 lambda!4246))))

(declare-fun bs!11414 () Bool)

(assert (= bs!11414 (and d!18630 d!18604 d!18628 d!18608)))

(assert (=> bs!11414 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8)) (= lambda!4252 lambda!4251))))

(declare-fun bs!11415 () Bool)

(assert (= bs!11415 (and d!18630 d!18604 d!18616 d!18610)))

(assert (=> bs!11415 (= lambda!4252 lambda!4245)))

(declare-fun bs!11416 () Bool)

(assert (= bs!11416 (and d!18630 d!18604 d!18620 d!18606)))

(assert (=> bs!11416 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4252 lambda!4247))))

(declare-fun bs!11417 () Bool)

(assert (= bs!11417 (and d!18630 d!18604 d!18624)))

(assert (=> bs!11417 (= lambda!4252 lambda!4249)))

(declare-fun bs!11418 () Bool)

(assert (= bs!11418 (and d!18630 d!18604 d!18622 d!18606)))

(assert (=> bs!11418 (= (= (dynLambda!658 env3!2 k0!8) (dynLambda!658 env2!8 k0!8)) (= lambda!4252 lambda!4248))))

(assert (=> bs!11409 true))

(assert (=> bs!11409 true))

(assert (=> bs!11409 (< (dynLambda!659 order!411 env3!2) (dynLambda!660 order!413 lambda!4252))))

(assert (=> bs!11409 (= (dynLambda!658 lambda!4239 k0!8) (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4252))))

(declare-fun b_lambda!9757 () Bool)

(assert (=> (not b_lambda!9757) (not bs!11409)))

(assert (=> bs!11409 m!38353))

(assert (=> bs!11409 m!38353))

(declare-fun m!38373 () Bool)

(assert (=> bs!11409 m!38373))

(assert (=> (and d!18604 (= lambda!4239 env2!8) bs!11379) d!18630))

(declare-fun b_lambda!9731 () Bool)

(assert (= b_lambda!9711 (or (and start!4698 b_free!2209) (and d!18608 (= lambda!4241 env2!8)) (and start!4698 b_free!2207 (= env1!8 env2!8)) (and d!18604 (= lambda!4239 env2!8)) (and start!4698 b_free!2211 (= env3!2 env2!8)) b_lambda!9731)))

(assert (=> (and d!18608 (= lambda!4241 env2!8) bs!11374) d!18628))

(assert (=> (and d!18604 (= lambda!4239 env2!8) bs!11374) d!18630))

(declare-fun b_lambda!9733 () Bool)

(assert (= b_lambda!9721 (or d!18606 b_lambda!9733)))

(assert (=> bs!11385 d!18622))

(declare-fun b_lambda!9735 () Bool)

(assert (= b_lambda!9713 (or (and d!18610 (= lambda!4242 env1!8)) (and start!4698 b_free!2207) (and start!4698 b_free!2211 (= env3!2 env1!8)) (and start!4698 b_free!2209 (= env2!8 env1!8)) (and d!18604 (= lambda!4239 env1!8)) b_lambda!9735)))

(assert (=> (and d!18604 (= lambda!4239 env1!8) bs!11374) d!18624))

(assert (=> (and d!18610 (= lambda!4242 env1!8) bs!11374) d!18626))

(declare-fun b_lambda!9737 () Bool)

(assert (= b_lambda!9705 (or (and start!4698 b_free!2209) (and d!18608 (= lambda!4241 env2!8)) (and start!4698 b_free!2207 (= env1!8 env2!8)) (and d!18604 (= lambda!4239 env2!8)) (and start!4698 b_free!2211 (= env3!2 env2!8)) b_lambda!9737)))

(assert (=> (and d!18608 (= lambda!4241 env2!8) bs!11367) d!18628))

(assert (=> (and d!18604 (= lambda!4239 env2!8) bs!11367) d!18630))

(declare-fun b_lambda!9739 () Bool)

(assert (= b_lambda!9707 (or d!18610 b_lambda!9739)))

(assert (=> bs!11370 d!18616))

(declare-fun b_lambda!9741 () Bool)

(assert (= b_lambda!9723 (or (and d!18606 (= lambda!4240 env3!2)) (and d!18608 (= lambda!4241 env3!2)) (and start!4698 b_free!2207 (= env1!8 env3!2)) (and start!4698 b_free!2211) (and start!4698 b_free!2209 (= env2!8 env3!2)) b_lambda!9741)))

(assert (=> (and d!18608 (= lambda!4241 env3!2) bs!11392) d!18618))

(assert (=> (and d!18606 (= lambda!4240 env3!2) bs!11392) d!18620))

(declare-fun b_lambda!9743 () Bool)

(assert (= b_lambda!9725 (or (and start!4698 b_free!2209) (and d!18608 (= lambda!4241 env2!8)) (and start!4698 b_free!2207 (= env1!8 env2!8)) (and d!18604 (= lambda!4239 env2!8)) (and start!4698 b_free!2211 (= env3!2 env2!8)) b_lambda!9743)))

(assert (=> (and d!18608 (= lambda!4241 env2!8) bs!11392) d!18628))

(assert (=> (and d!18604 (= lambda!4239 env2!8) bs!11392) d!18630))

(declare-fun b_lambda!9745 () Bool)

(assert (= b_lambda!9719 (or (and d!18606 (= lambda!4240 env3!2)) (and d!18608 (= lambda!4241 env3!2)) (and start!4698 b_free!2207 (= env1!8 env3!2)) (and start!4698 b_free!2211) (and start!4698 b_free!2209 (= env2!8 env3!2)) b_lambda!9745)))

(assert (=> (and d!18608 (= lambda!4241 env3!2) bs!11385) d!18618))

(assert (=> (and d!18606 (= lambda!4240 env3!2) bs!11385) d!18620))

(declare-fun b_lambda!9747 () Bool)

(assert (= b_lambda!9717 (or (and d!18610 (= lambda!4242 env1!8)) (and start!4698 b_free!2207) (and start!4698 b_free!2211 (= env3!2 env1!8)) (and start!4698 b_free!2209 (= env2!8 env1!8)) (and d!18604 (= lambda!4239 env1!8)) b_lambda!9747)))

(assert (=> (and d!18604 (= lambda!4239 env1!8) bs!11379) d!18624))

(assert (=> (and d!18610 (= lambda!4242 env1!8) bs!11379) d!18626))

(declare-fun b_lambda!9749 () Bool)

(assert (= b_lambda!9703 (or (and d!18606 (= lambda!4240 env3!2)) (and d!18608 (= lambda!4241 env3!2)) (and start!4698 b_free!2207 (= env1!8 env3!2)) (and start!4698 b_free!2211) (and start!4698 b_free!2209 (= env2!8 env3!2)) b_lambda!9749)))

(assert (=> (and d!18608 (= lambda!4241 env3!2) bs!11367) d!18618))

(assert (=> (and d!18606 (= lambda!4240 env3!2) bs!11367) d!18620))

(push 1)

(assert (not b_lambda!9751))

(assert (not b_lambda!9757))

(assert (not b_lambda!9749))

(assert (not bs!11364))

(assert (not bs!11385))

(assert (not b_next!5363))

(assert (not b_lambda!9731))

(assert (not b_lambda!9683))

(assert b_and!8071)

(assert (not b_lambda!9697))

(assert tp_is_empty!249)

(assert (not b_lambda!9755))

(assert (not b_next!5365))

(assert tp_is_empty!251)

(assert (not bs!11365))

(assert (not b_lambda!9733))

(assert (not b_lambda!9739))

(assert (not b_lambda!9753))

(assert (not bs!11392))

(assert (not bs!11370))

(assert (not bs!11367))

(assert (not b_lambda!9701))

(assert (not b_lambda!9747))

(assert (not b_lambda!9729))

(assert (not b_lambda!9741))

(assert (not b_lambda!9685))

(assert b_and!8075)

(assert (not b_lambda!9737))

(assert (not b_lambda!9695))

(assert (not b_lambda!9699))

(assert b_and!8073)

(assert (not b_lambda!9735))

(assert (not b_lambda!9743))

(assert (not bs!11374))

(assert (not bs!11400))

(assert (not b_next!5361))

(assert (not bs!11409))

(assert (not bs!11379))

(assert (not b_lambda!9745))

(assert (not b_lambda!9727))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5363))

(assert b_and!8071)

(assert (not b_next!5365))

(assert b_and!8075)

(assert b_and!8073)

(assert (not b_next!5361))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18632 () Bool)

(declare-fun e!19027 () Bool)

(assert (=> d!18632 e!19027))

(declare-fun res!17524 () Bool)

(assert (=> d!18632 (=> res!17524 e!19027)))

(declare-fun lt!7422 () Option!211)

(declare-fun isDefined!6 (Option!211) Bool)

(assert (=> d!18632 (= res!17524 (= (isDefined!6 lt!7422) (isDefined!6 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))))

(declare-fun e!19026 () Option!211)

(assert (=> d!18632 (= lt!7422 e!19026)))

(declare-fun c!8125 () Bool)

(assert (=> d!18632 (= c!8125 (is-Some!206 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8)))))

(assert (=> d!18632 (= (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4244) lt!7422)))

(declare-fun b!37050 () Bool)

(assert (=> b!37050 (= e!19026 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))

(declare-fun b!37051 () Bool)

(declare-fun dynLambda!661 (Int) Option!211)

(assert (=> b!37051 (= e!19026 (dynLambda!661 lambda!4244))))

(declare-fun b!37052 () Bool)

(assert (=> b!37052 (= e!19027 (isDefined!6 (dynLambda!661 lambda!4244)))))

(assert (= (and d!18632 c!8125) b!37050))

(assert (= (and d!18632 (not c!8125)) b!37051))

(assert (= (and d!18632 (not res!17524)) b!37052))

(declare-fun b_lambda!9759 () Bool)

(assert (=> (not b_lambda!9759) (not b!37051)))

(declare-fun b_lambda!9761 () Bool)

(assert (=> (not b_lambda!9761) (not b!37052)))

(declare-fun m!38375 () Bool)

(assert (=> d!18632 m!38375))

(assert (=> d!18632 m!38353))

(declare-fun m!38377 () Bool)

(assert (=> d!18632 m!38377))

(declare-fun m!38379 () Bool)

(assert (=> b!37051 m!38379))

(assert (=> b!37052 m!38379))

(assert (=> b!37052 m!38379))

(declare-fun m!38381 () Bool)

(assert (=> b!37052 m!38381))

(assert (=> bs!11365 d!18632))

(declare-fun d!18634 () Bool)

(declare-fun e!19029 () Bool)

(assert (=> d!18634 e!19029))

(declare-fun res!17525 () Bool)

(assert (=> d!18634 (=> res!17525 e!19029)))

(declare-fun lt!7423 () Option!211)

(assert (=> d!18634 (= res!17525 (= (isDefined!6 lt!7423) (isDefined!6 (dynLambda!658 env1!8 k0!8))))))

(declare-fun e!19028 () Option!211)

(assert (=> d!18634 (= lt!7423 e!19028)))

(declare-fun c!8126 () Bool)

(assert (=> d!18634 (= c!8126 (is-Some!206 (dynLambda!658 env1!8 k0!8)))))

(assert (=> d!18634 (= (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4243) lt!7423)))

(declare-fun b!37053 () Bool)

(assert (=> b!37053 (= e!19028 (dynLambda!658 env1!8 k0!8))))

(declare-fun b!37054 () Bool)

(assert (=> b!37054 (= e!19028 (dynLambda!661 lambda!4243))))

(declare-fun b!37055 () Bool)

(assert (=> b!37055 (= e!19029 (isDefined!6 (dynLambda!661 lambda!4243)))))

(assert (= (and d!18634 c!8126) b!37053))

(assert (= (and d!18634 (not c!8126)) b!37054))

(assert (= (and d!18634 (not res!17525)) b!37055))

(declare-fun b_lambda!9763 () Bool)

(assert (=> (not b_lambda!9763) (not b!37054)))

(declare-fun b_lambda!9765 () Bool)

(assert (=> (not b_lambda!9765) (not b!37055)))

(declare-fun m!38383 () Bool)

(assert (=> d!18634 m!38383))

(assert (=> d!18634 m!38347))

(declare-fun m!38385 () Bool)

(assert (=> d!18634 m!38385))

(declare-fun m!38387 () Bool)

(assert (=> b!37054 m!38387))

(assert (=> b!37055 m!38387))

(assert (=> b!37055 m!38387))

(declare-fun m!38389 () Bool)

(assert (=> b!37055 m!38389))

(assert (=> bs!11364 d!18634))

(declare-fun b_lambda!9767 () Bool)

(assert (= b_lambda!9765 (or bs!11364 b_lambda!9767)))

(declare-fun bs!11419 () Bool)

(declare-fun d!18636 () Bool)

(assert (= bs!11419 (and d!18636 d!18612 d!18608)))

(assert (=> bs!11419 (= (dynLambda!661 lambda!4243) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8))))

(assert (=> b!37055 d!18636))

(declare-fun b_lambda!9769 () Bool)

(assert (= b_lambda!9751 (or d!18610 b_lambda!9769)))

(assert (=> bs!11400 d!18616))

(declare-fun b_lambda!9771 () Bool)

(assert (= b_lambda!9755 (or (and d!18606 (= lambda!4240 env3!2)) (and d!18608 (= lambda!4241 env3!2)) (and start!4698 b_free!2207 (= env1!8 env3!2)) (and start!4698 b_free!2211) (and start!4698 b_free!2209 (= env2!8 env3!2)) b_lambda!9771)))

(assert (=> (and d!18608 (= lambda!4241 env3!2) bs!11409) d!18618))

(assert (=> (and d!18606 (= lambda!4240 env3!2) bs!11409) d!18620))

(declare-fun b_lambda!9773 () Bool)

(assert (= b_lambda!9763 (or bs!11364 b_lambda!9773)))

(assert (=> b!37054 d!18636))

(declare-fun b_lambda!9775 () Bool)

(assert (= b_lambda!9761 (or bs!11365 b_lambda!9775)))

(declare-fun bs!11420 () Bool)

(declare-fun d!18638 () Bool)

(assert (= bs!11420 (and d!18638 d!18614 d!18604)))

(assert (=> bs!11420 (= (dynLambda!661 lambda!4244) (dynLambda!658 env3!2 k0!8))))

(assert (=> b!37052 d!18638))

(declare-fun b_lambda!9777 () Bool)

(assert (= b_lambda!9759 (or bs!11365 b_lambda!9777)))

(assert (=> b!37051 d!18638))

(declare-fun b_lambda!9779 () Bool)

(assert (= b_lambda!9757 (or d!18606 b_lambda!9779)))

(assert (=> bs!11409 d!18622))

(declare-fun b_lambda!9781 () Bool)

(assert (= b_lambda!9753 (or (and d!18610 (= lambda!4242 env1!8)) (and start!4698 b_free!2207) (and start!4698 b_free!2211 (= env3!2 env1!8)) (and start!4698 b_free!2209 (= env2!8 env1!8)) (and d!18604 (= lambda!4239 env1!8)) b_lambda!9781)))

(assert (=> (and d!18604 (= lambda!4239 env1!8) bs!11400) d!18624))

(assert (=> (and d!18610 (= lambda!4242 env1!8) bs!11400) d!18626))

(push 1)

(assert (not d!18634))

(assert (not b_lambda!9749))

(assert (not bs!11385))

(assert (not b_next!5363))

(assert (not b_lambda!9771))

(assert (not b_lambda!9731))

(assert (not b_lambda!9683))

(assert b_and!8071)

(assert (not b_lambda!9697))

(assert tp_is_empty!249)

(assert (not d!18632))

(assert (not b_next!5365))

(assert tp_is_empty!251)

(assert (not b_lambda!9733))

(assert (not b_lambda!9739))

(assert (not bs!11392))

(assert (not bs!11370))

(assert (not bs!11367))

(assert (not b_lambda!9701))

(assert (not b_lambda!9747))

(assert (not b_lambda!9767))

(assert (not b_lambda!9729))

(assert (not b_lambda!9741))

(assert (not b_lambda!9685))

(assert (not b_lambda!9769))

(assert (not b_lambda!9777))

(assert (not b_lambda!9773))

(assert b_and!8075)

(assert (not b_lambda!9737))

(assert (not b_lambda!9695))

(assert (not b_lambda!9699))

(assert b_and!8073)

(assert (not b_lambda!9735))

(assert (not b_lambda!9743))

(assert (not b!37052))

(assert (not b_lambda!9775))

(assert (not b_lambda!9781))

(assert (not bs!11374))

(assert (not bs!11400))

(assert (not b_next!5361))

(assert (not b!37055))

(assert (not bs!11409))

(assert (not b_lambda!9779))

(assert (not bs!11379))

(assert (not b_lambda!9745))

(assert (not b_lambda!9727))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5363))

(assert b_and!8071)

(assert (not b_next!5365))

(assert b_and!8075)

(assert b_and!8073)

(assert (not b_next!5361))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18640 () Bool)

(declare-fun e!19031 () Bool)

(assert (=> d!18640 e!19031))

(declare-fun res!17526 () Bool)

(assert (=> d!18640 (=> res!17526 e!19031)))

(declare-fun lt!7424 () Option!211)

(assert (=> d!18640 (= res!17526 (= (isDefined!6 lt!7424) (isDefined!6 (dynLambda!658 env1!8 k0!8))))))

(declare-fun e!19030 () Option!211)

(assert (=> d!18640 (= lt!7424 e!19030)))

(declare-fun c!8127 () Bool)

(assert (=> d!18640 (= c!8127 (is-Some!206 (dynLambda!658 env1!8 k0!8)))))

(assert (=> d!18640 (= (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4247) lt!7424)))

(declare-fun b!37056 () Bool)

(assert (=> b!37056 (= e!19030 (dynLambda!658 env1!8 k0!8))))

(declare-fun b!37057 () Bool)

(assert (=> b!37057 (= e!19030 (dynLambda!661 lambda!4247))))

(declare-fun b!37058 () Bool)

(assert (=> b!37058 (= e!19031 (isDefined!6 (dynLambda!661 lambda!4247)))))

(assert (= (and d!18640 c!8127) b!37056))

(assert (= (and d!18640 (not c!8127)) b!37057))

(assert (= (and d!18640 (not res!17526)) b!37058))

(declare-fun b_lambda!9783 () Bool)

(assert (=> (not b_lambda!9783) (not b!37057)))

(declare-fun b_lambda!9785 () Bool)

(assert (=> (not b_lambda!9785) (not b!37058)))

(declare-fun m!38391 () Bool)

(assert (=> d!18640 m!38391))

(assert (=> d!18640 m!38347))

(assert (=> d!18640 m!38385))

(declare-fun m!38393 () Bool)

(assert (=> b!37057 m!38393))

(assert (=> b!37058 m!38393))

(assert (=> b!37058 m!38393))

(declare-fun m!38395 () Bool)

(assert (=> b!37058 m!38395))

(assert (=> bs!11374 d!18640))

(declare-fun d!18642 () Bool)

(declare-fun e!19033 () Bool)

(assert (=> d!18642 e!19033))

(declare-fun res!17527 () Bool)

(assert (=> d!18642 (=> res!17527 e!19033)))

(declare-fun lt!7425 () Option!211)

(assert (=> d!18642 (= res!17527 (= (isDefined!6 lt!7425) (isDefined!6 (dynLambda!658 env1!8 k0!8))))))

(declare-fun e!19032 () Option!211)

(assert (=> d!18642 (= lt!7425 e!19032)))

(declare-fun c!8128 () Bool)

(assert (=> d!18642 (= c!8128 (is-Some!206 (dynLambda!658 env1!8 k0!8)))))

(assert (=> d!18642 (= (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4248) lt!7425)))

(declare-fun b!37059 () Bool)

(assert (=> b!37059 (= e!19032 (dynLambda!658 env1!8 k0!8))))

(declare-fun b!37060 () Bool)

(assert (=> b!37060 (= e!19032 (dynLambda!661 lambda!4248))))

(declare-fun b!37061 () Bool)

(assert (=> b!37061 (= e!19033 (isDefined!6 (dynLambda!661 lambda!4248)))))

(assert (= (and d!18642 c!8128) b!37059))

(assert (= (and d!18642 (not c!8128)) b!37060))

(assert (= (and d!18642 (not res!17527)) b!37061))

(declare-fun b_lambda!9787 () Bool)

(assert (=> (not b_lambda!9787) (not b!37060)))

(declare-fun b_lambda!9789 () Bool)

(assert (=> (not b_lambda!9789) (not b!37061)))

(declare-fun m!38397 () Bool)

(assert (=> d!18642 m!38397))

(assert (=> d!18642 m!38347))

(assert (=> d!18642 m!38385))

(declare-fun m!38399 () Bool)

(assert (=> b!37060 m!38399))

(assert (=> b!37061 m!38399))

(assert (=> b!37061 m!38399))

(declare-fun m!38401 () Bool)

(assert (=> b!37061 m!38401))

(assert (=> bs!11379 d!18642))

(declare-fun d!18644 () Bool)

(declare-fun e!19035 () Bool)

(assert (=> d!18644 e!19035))

(declare-fun res!17528 () Bool)

(assert (=> d!18644 (=> res!17528 e!19035)))

(declare-fun lt!7426 () Option!211)

(assert (=> d!18644 (= res!17528 (= (isDefined!6 lt!7426) (isDefined!6 (dynLambda!658 env2!8 k0!8))))))

(declare-fun e!19034 () Option!211)

(assert (=> d!18644 (= lt!7426 e!19034)))

(declare-fun c!8129 () Bool)

(assert (=> d!18644 (= c!8129 (is-Some!206 (dynLambda!658 env2!8 k0!8)))))

(assert (=> d!18644 (= (orElse!5 (dynLambda!658 env2!8 k0!8) lambda!4245) lt!7426)))

(declare-fun b!37062 () Bool)

(assert (=> b!37062 (= e!19034 (dynLambda!658 env2!8 k0!8))))

(declare-fun b!37063 () Bool)

(assert (=> b!37063 (= e!19034 (dynLambda!661 lambda!4245))))

(declare-fun b!37064 () Bool)

(assert (=> b!37064 (= e!19035 (isDefined!6 (dynLambda!661 lambda!4245)))))

(assert (= (and d!18644 c!8129) b!37062))

(assert (= (and d!18644 (not c!8129)) b!37063))

(assert (= (and d!18644 (not res!17528)) b!37064))

(declare-fun b_lambda!9791 () Bool)

(assert (=> (not b_lambda!9791) (not b!37063)))

(declare-fun b_lambda!9793 () Bool)

(assert (=> (not b_lambda!9793) (not b!37064)))

(declare-fun m!38403 () Bool)

(assert (=> d!18644 m!38403))

(assert (=> d!18644 m!38357))

(declare-fun m!38405 () Bool)

(assert (=> d!18644 m!38405))

(declare-fun m!38407 () Bool)

(assert (=> b!37063 m!38407))

(assert (=> b!37064 m!38407))

(assert (=> b!37064 m!38407))

(declare-fun m!38409 () Bool)

(assert (=> b!37064 m!38409))

(assert (=> bs!11367 d!18644))

(declare-fun d!18646 () Bool)

(declare-fun e!19037 () Bool)

(assert (=> d!18646 e!19037))

(declare-fun res!17529 () Bool)

(assert (=> d!18646 (=> res!17529 e!19037)))

(declare-fun lt!7427 () Option!211)

(assert (=> d!18646 (= res!17529 (= (isDefined!6 lt!7427) (isDefined!6 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))))

(declare-fun e!19036 () Option!211)

(assert (=> d!18646 (= lt!7427 e!19036)))

(declare-fun c!8130 () Bool)

(assert (=> d!18646 (= c!8130 (is-Some!206 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8)))))

(assert (=> d!18646 (= (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4249) lt!7427)))

(declare-fun b!37065 () Bool)

(assert (=> b!37065 (= e!19036 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))

(declare-fun b!37066 () Bool)

(assert (=> b!37066 (= e!19036 (dynLambda!661 lambda!4249))))

(declare-fun b!37067 () Bool)

(assert (=> b!37067 (= e!19037 (isDefined!6 (dynLambda!661 lambda!4249)))))

(assert (= (and d!18646 c!8130) b!37065))

(assert (= (and d!18646 (not c!8130)) b!37066))

(assert (= (and d!18646 (not res!17529)) b!37067))

(declare-fun b_lambda!9795 () Bool)

(assert (=> (not b_lambda!9795) (not b!37066)))

(declare-fun b_lambda!9797 () Bool)

(assert (=> (not b_lambda!9797) (not b!37067)))

(declare-fun m!38411 () Bool)

(assert (=> d!18646 m!38411))

(assert (=> d!18646 m!38353))

(assert (=> d!18646 m!38377))

(declare-fun m!38413 () Bool)

(assert (=> b!37066 m!38413))

(assert (=> b!37067 m!38413))

(assert (=> b!37067 m!38413))

(declare-fun m!38415 () Bool)

(assert (=> b!37067 m!38415))

(assert (=> bs!11385 d!18646))

(declare-fun d!18648 () Bool)

(declare-fun e!19039 () Bool)

(assert (=> d!18648 e!19039))

(declare-fun res!17530 () Bool)

(assert (=> d!18648 (=> res!17530 e!19039)))

(declare-fun lt!7428 () Option!211)

(assert (=> d!18648 (= res!17530 (= (isDefined!6 lt!7428) (isDefined!6 (dynLambda!658 env1!8 k0!8))))))

(declare-fun e!19038 () Option!211)

(assert (=> d!18648 (= lt!7428 e!19038)))

(declare-fun c!8131 () Bool)

(assert (=> d!18648 (= c!8131 (is-Some!206 (dynLambda!658 env1!8 k0!8)))))

(assert (=> d!18648 (= (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4246) lt!7428)))

(declare-fun b!37068 () Bool)

(assert (=> b!37068 (= e!19038 (dynLambda!658 env1!8 k0!8))))

(declare-fun b!37069 () Bool)

(assert (=> b!37069 (= e!19038 (dynLambda!661 lambda!4246))))

(declare-fun b!37070 () Bool)

(assert (=> b!37070 (= e!19039 (isDefined!6 (dynLambda!661 lambda!4246)))))

(assert (= (and d!18648 c!8131) b!37068))

(assert (= (and d!18648 (not c!8131)) b!37069))

(assert (= (and d!18648 (not res!17530)) b!37070))

(declare-fun b_lambda!9799 () Bool)

(assert (=> (not b_lambda!9799) (not b!37069)))

(declare-fun b_lambda!9801 () Bool)

(assert (=> (not b_lambda!9801) (not b!37070)))

(declare-fun m!38417 () Bool)

(assert (=> d!18648 m!38417))

(assert (=> d!18648 m!38347))

(assert (=> d!18648 m!38385))

(declare-fun m!38419 () Bool)

(assert (=> b!37069 m!38419))

(assert (=> b!37070 m!38419))

(assert (=> b!37070 m!38419))

(declare-fun m!38421 () Bool)

(assert (=> b!37070 m!38421))

(assert (=> bs!11370 d!18648))

(declare-fun d!18650 () Bool)

(declare-fun e!19041 () Bool)

(assert (=> d!18650 e!19041))

(declare-fun res!17531 () Bool)

(assert (=> d!18650 (=> res!17531 e!19041)))

(declare-fun lt!7429 () Option!211)

(assert (=> d!18650 (= res!17531 (= (isDefined!6 lt!7429) (isDefined!6 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))))

(declare-fun e!19040 () Option!211)

(assert (=> d!18650 (= lt!7429 e!19040)))

(declare-fun c!8132 () Bool)

(assert (=> d!18650 (= c!8132 (is-Some!206 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8)))))

(assert (=> d!18650 (= (orElse!5 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8) lambda!4252) lt!7429)))

(declare-fun b!37071 () Bool)

(assert (=> b!37071 (= e!19040 (dynLambda!658 (merge!6 env1!8 env2!8) k0!8))))

(declare-fun b!37072 () Bool)

(assert (=> b!37072 (= e!19040 (dynLambda!661 lambda!4252))))

(declare-fun b!37073 () Bool)

(assert (=> b!37073 (= e!19041 (isDefined!6 (dynLambda!661 lambda!4252)))))

(assert (= (and d!18650 c!8132) b!37071))

(assert (= (and d!18650 (not c!8132)) b!37072))

(assert (= (and d!18650 (not res!17531)) b!37073))

(declare-fun b_lambda!9803 () Bool)

(assert (=> (not b_lambda!9803) (not b!37072)))

(declare-fun b_lambda!9805 () Bool)

(assert (=> (not b_lambda!9805) (not b!37073)))

(declare-fun m!38423 () Bool)

(assert (=> d!18650 m!38423))

(assert (=> d!18650 m!38353))

(assert (=> d!18650 m!38377))

(declare-fun m!38425 () Bool)

(assert (=> b!37072 m!38425))

(assert (=> b!37073 m!38425))

(assert (=> b!37073 m!38425))

(declare-fun m!38427 () Bool)

(assert (=> b!37073 m!38427))

(assert (=> bs!11409 d!18650))

(declare-fun d!18652 () Bool)

(declare-fun e!19043 () Bool)

(assert (=> d!18652 e!19043))

(declare-fun res!17532 () Bool)

(assert (=> d!18652 (=> res!17532 e!19043)))

(declare-fun lt!7430 () Option!211)

(assert (=> d!18652 (= res!17532 (= (isDefined!6 lt!7430) (isDefined!6 (dynLambda!658 env2!8 k0!8))))))

(declare-fun e!19042 () Option!211)

(assert (=> d!18652 (= lt!7430 e!19042)))

(declare-fun c!8133 () Bool)

(assert (=> d!18652 (= c!8133 (is-Some!206 (dynLambda!658 env2!8 k0!8)))))

(assert (=> d!18652 (= (orElse!5 (dynLambda!658 env2!8 k0!8) lambda!4250) lt!7430)))

(declare-fun b!37074 () Bool)

(assert (=> b!37074 (= e!19042 (dynLambda!658 env2!8 k0!8))))

(declare-fun b!37075 () Bool)

(assert (=> b!37075 (= e!19042 (dynLambda!661 lambda!4250))))

(declare-fun b!37076 () Bool)

(assert (=> b!37076 (= e!19043 (isDefined!6 (dynLambda!661 lambda!4250)))))

(assert (= (and d!18652 c!8133) b!37074))

(assert (= (and d!18652 (not c!8133)) b!37075))

(assert (= (and d!18652 (not res!17532)) b!37076))

(declare-fun b_lambda!9807 () Bool)

(assert (=> (not b_lambda!9807) (not b!37075)))

(declare-fun b_lambda!9809 () Bool)

(assert (=> (not b_lambda!9809) (not b!37076)))

(declare-fun m!38429 () Bool)

(assert (=> d!18652 m!38429))

(assert (=> d!18652 m!38357))

(assert (=> d!18652 m!38405))

(declare-fun m!38431 () Bool)

(assert (=> b!37075 m!38431))

(assert (=> b!37076 m!38431))

(assert (=> b!37076 m!38431))

(declare-fun m!38433 () Bool)

(assert (=> b!37076 m!38433))

(assert (=> bs!11392 d!18652))

(declare-fun d!18654 () Bool)

(declare-fun e!19045 () Bool)

(assert (=> d!18654 e!19045))

(declare-fun res!17533 () Bool)

(assert (=> d!18654 (=> res!17533 e!19045)))

(declare-fun lt!7431 () Option!211)

(assert (=> d!18654 (= res!17533 (= (isDefined!6 lt!7431) (isDefined!6 (dynLambda!658 env1!8 k0!8))))))

(declare-fun e!19044 () Option!211)

(assert (=> d!18654 (= lt!7431 e!19044)))

(declare-fun c!8134 () Bool)

(assert (=> d!18654 (= c!8134 (is-Some!206 (dynLambda!658 env1!8 k0!8)))))

(assert (=> d!18654 (= (orElse!5 (dynLambda!658 env1!8 k0!8) lambda!4251) lt!7431)))

(declare-fun b!37077 () Bool)

(assert (=> b!37077 (= e!19044 (dynLambda!658 env1!8 k0!8))))

(declare-fun b!37078 () Bool)

(assert (=> b!37078 (= e!19044 (dynLambda!661 lambda!4251))))

(declare-fun b!37079 () Bool)

(assert (=> b!37079 (= e!19045 (isDefined!6 (dynLambda!661 lambda!4251)))))

(assert (= (and d!18654 c!8134) b!37077))

(assert (= (and d!18654 (not c!8134)) b!37078))

(assert (= (and d!18654 (not res!17533)) b!37079))

(declare-fun b_lambda!9811 () Bool)

(assert (=> (not b_lambda!9811) (not b!37078)))

(declare-fun b_lambda!9813 () Bool)

(assert (=> (not b_lambda!9813) (not b!37079)))

(declare-fun m!38435 () Bool)

(assert (=> d!18654 m!38435))

(assert (=> d!18654 m!38347))

(assert (=> d!18654 m!38385))

(declare-fun m!38437 () Bool)

(assert (=> b!37078 m!38437))

(assert (=> b!37079 m!38437))

(assert (=> b!37079 m!38437))

(declare-fun m!38439 () Bool)

(assert (=> b!37079 m!38439))

(assert (=> bs!11400 d!18654))

(declare-fun b_lambda!9815 () Bool)

(assert (= b_lambda!9791 (or bs!11367 b_lambda!9815)))

(declare-fun bs!11421 () Bool)

(declare-fun d!18656 () Bool)

(assert (= bs!11421 (and d!18656 d!18616 d!18610)))

(assert (=> bs!11421 (= (dynLambda!661 lambda!4245) (dynLambda!658 env3!2 k0!8))))

(assert (=> b!37063 d!18656))

(declare-fun b_lambda!9817 () Bool)

(assert (= b_lambda!9803 (or bs!11409 b_lambda!9817)))

(declare-fun bs!11422 () Bool)

(declare-fun d!18658 () Bool)

(assert (= bs!11422 (and d!18658 d!18630 d!18604)))

(assert (=> bs!11422 (= (dynLambda!661 lambda!4252) (dynLambda!658 env3!2 k0!8))))

(assert (=> b!37072 d!18658))

(declare-fun b_lambda!9819 () Bool)

(assert (= b_lambda!9811 (or bs!11400 b_lambda!9819)))

(declare-fun bs!11423 () Bool)

(declare-fun d!18660 () Bool)

(assert (= bs!11423 (and d!18660 d!18628 d!18608)))

(assert (=> bs!11423 (= (dynLambda!661 lambda!4251) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8))))

(assert (=> b!37078 d!18660))

(declare-fun b_lambda!9821 () Bool)

(assert (= b_lambda!9787 (or bs!11379 b_lambda!9821)))

(declare-fun bs!11424 () Bool)

(declare-fun d!18662 () Bool)

(assert (= bs!11424 (and d!18662 d!18622 d!18606)))

(assert (=> bs!11424 (= (dynLambda!661 lambda!4248) (dynLambda!658 env2!8 k0!8))))

(assert (=> b!37060 d!18662))

(declare-fun b_lambda!9823 () Bool)

(assert (= b_lambda!9807 (or bs!11392 b_lambda!9823)))

(declare-fun bs!11425 () Bool)

(declare-fun d!18664 () Bool)

(assert (= bs!11425 (and d!18664 d!18626 d!18610)))

(assert (=> bs!11425 (= (dynLambda!661 lambda!4250) (dynLambda!658 env3!2 k0!8))))

(assert (=> b!37075 d!18664))

(declare-fun b_lambda!9825 () Bool)

(assert (= b_lambda!9809 (or bs!11392 b_lambda!9825)))

(assert (=> b!37076 d!18664))

(declare-fun b_lambda!9827 () Bool)

(assert (= b_lambda!9783 (or bs!11374 b_lambda!9827)))

(declare-fun bs!11426 () Bool)

(declare-fun d!18666 () Bool)

(assert (= bs!11426 (and d!18666 d!18620 d!18606)))

(assert (=> bs!11426 (= (dynLambda!661 lambda!4247) (dynLambda!658 env2!8 k0!8))))

(assert (=> b!37057 d!18666))

(declare-fun b_lambda!9829 () Bool)

(assert (= b_lambda!9799 (or bs!11370 b_lambda!9829)))

(declare-fun bs!11427 () Bool)

(declare-fun d!18668 () Bool)

(assert (= bs!11427 (and d!18668 d!18618 d!18608)))

(assert (=> bs!11427 (= (dynLambda!661 lambda!4246) (dynLambda!658 (merge!6 env2!8 env3!2) k0!8))))

(assert (=> b!37069 d!18668))

(declare-fun b_lambda!9831 () Bool)

(assert (= b_lambda!9789 (or bs!11379 b_lambda!9831)))

(assert (=> b!37061 d!18662))

(declare-fun b_lambda!9833 () Bool)

(assert (= b_lambda!9795 (or bs!11385 b_lambda!9833)))

(declare-fun bs!11428 () Bool)

(declare-fun d!18670 () Bool)

(assert (= bs!11428 (and d!18670 d!18624 d!18604)))

(assert (=> bs!11428 (= (dynLambda!661 lambda!4249) (dynLambda!658 env3!2 k0!8))))

(assert (=> b!37066 d!18670))

(declare-fun b_lambda!9835 () Bool)

(assert (= b_lambda!9813 (or bs!11400 b_lambda!9835)))

(assert (=> b!37079 d!18660))

(declare-fun b_lambda!9837 () Bool)

(assert (= b_lambda!9785 (or bs!11374 b_lambda!9837)))

(assert (=> b!37058 d!18666))

(declare-fun b_lambda!9839 () Bool)

(assert (= b_lambda!9805 (or bs!11409 b_lambda!9839)))

(assert (=> b!37073 d!18658))

(declare-fun b_lambda!9841 () Bool)

(assert (= b_lambda!9797 (or bs!11385 b_lambda!9841)))

(assert (=> b!37067 d!18670))

(declare-fun b_lambda!9843 () Bool)

(assert (= b_lambda!9801 (or bs!11370 b_lambda!9843)))

(assert (=> b!37070 d!18668))

(declare-fun b_lambda!9845 () Bool)

(assert (= b_lambda!9793 (or bs!11367 b_lambda!9845)))

(assert (=> b!37064 d!18656))

(push 1)

(assert (not d!18634))

(assert (not b_lambda!9749))

(assert (not d!18652))

(assert (not b!37061))

(assert (not d!18644))

(assert (not b_lambda!9845))

(assert (not b_next!5363))

(assert (not d!18648))

(assert (not b_lambda!9771))

(assert (not b_lambda!9731))

(assert (not b_lambda!9833))

(assert (not b_lambda!9683))

(assert b_and!8071)

(assert (not b_lambda!9837))

(assert (not b_lambda!9825))

(assert (not b_lambda!9843))

(assert (not b_lambda!9697))

(assert (not b_lambda!9819))

(assert tp_is_empty!249)

(assert (not b!37067))

(assert (not b!37073))

(assert (not b_lambda!9815))

(assert (not b!37058))

(assert (not d!18654))

(assert (not b!37079))

(assert (not d!18632))

(assert (not d!18646))

(assert (not b_next!5365))

(assert tp_is_empty!251)

(assert (not b_lambda!9841))

(assert (not b_lambda!9733))

(assert (not b_lambda!9739))

(assert (not b_lambda!9829))

(assert (not b_lambda!9817))

(assert (not b!37076))

(assert (not d!18650))

(assert (not b_lambda!9839))

(assert (not b_lambda!9701))

(assert (not b_lambda!9747))

(assert (not b_lambda!9767))

(assert (not b_lambda!9831))

(assert (not b_lambda!9827))

(assert (not b_lambda!9729))

(assert (not b_lambda!9741))

(assert (not b_lambda!9685))

(assert (not b_lambda!9769))

(assert (not b_lambda!9835))

(assert (not b_lambda!9777))

(assert (not b_lambda!9773))

(assert b_and!8075)

(assert (not b_lambda!9737))

(assert (not b_lambda!9695))

(assert (not d!18642))

(assert (not b_lambda!9821))

(assert (not b_lambda!9699))

(assert b_and!8073)

(assert (not b_lambda!9735))

(assert (not b_lambda!9743))

(assert (not b!37070))

(assert (not b!37052))

(assert (not b_lambda!9775))

(assert (not b_lambda!9781))

(assert (not b!37064))

(assert (not b_next!5361))

(assert (not d!18640))

(assert (not b!37055))

(assert (not b_lambda!9823))

(assert (not b_lambda!9779))

(assert (not b_lambda!9745))

(assert (not b_lambda!9727))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5363))

(assert b_and!8071)

(assert (not b_next!5365))

(assert b_and!8075)

(assert b_and!8073)

(assert (not b_next!5361))

(check-sat)

(pop 1)

