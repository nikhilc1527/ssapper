; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!578 () Bool)

(assert start!578)

(declare-fun b_free!51 () Bool)

(declare-fun b_next!51 () Bool)

(assert (=> start!578 (= b_free!51 (not b_next!51))))

(declare-fun tp!199 () Bool)

(declare-fun b_and!197 () Bool)

(assert (=> start!578 (= tp!199 b_and!197)))

(declare-fun b!4293 () Bool)

(declare-fun i!203 () Int)

(declare-fun b_next!53 () Bool)

(declare-fun lambda!2 () Int)

(assert (=> start!578 (= b_next!51 (or (and b!4293 (= lambda!2 i!203)) b_next!53))))

(declare-fun res!1287 () Bool)

(declare-fun e!2390 () Bool)

(assert (=> start!578 (=> (not res!1287) (not e!2390))))

(declare-fun x!1595 () Int)

(assert (=> start!578 (= res!1287 (> x!1595 0))))

(assert (=> start!578 e!2390))

(assert (=> start!578 true))

(assert (=> start!578 tp!199))

(declare-fun res!1289 () Bool)

(assert (=> b!4293 (=> (not res!1289) (not e!2390))))

(assert (=> b!4293 (= res!1289 (= i!203 lambda!2))))

(declare-fun b!4294 () Bool)

(declare-fun res!1288 () Bool)

(assert (=> b!4294 (=> (not res!1288) (not e!2390))))

(declare-fun res!1280 () Int)

(declare-fun dynLambda!9 (Int Int) Int)

(assert (=> b!4294 (= res!1288 (= res!1280 (+ (dynLambda!9 i!203 x!1595) (dynLambda!9 i!203 2))))))

(declare-fun b!4295 () Bool)

(assert (=> b!4295 (= e!2390 (<= res!1280 0))))

(assert (= (and start!578 res!1287) b!4293))

(assert (= (and b!4293 res!1289) b!4294))

(assert (= (and b!4294 res!1288) b!4295))

(declare-fun b_lambda!165 () Bool)

(assert (=> (not b_lambda!165) (not b!4294)))

(declare-fun t!392 () Bool)

(declare-fun tb!93 () Bool)

(assert (=> (and start!578 (= i!203 i!203) t!392) tb!93))

(declare-fun result!127 () Bool)

(assert (=> tb!93 (= result!127 true)))

(assert (=> b!4294 t!392))

(declare-fun b_and!199 () Bool)

(assert (= b_and!197 (and (=> t!392 result!127) b_and!199)))

(declare-fun b_lambda!167 () Bool)

(assert (=> (not b_lambda!167) (not b!4294)))

(declare-fun t!394 () Bool)

(declare-fun tb!95 () Bool)

(assert (=> (and start!578 (= i!203 i!203) t!394) tb!95))

(declare-fun result!129 () Bool)

(assert (=> tb!95 (= result!129 true)))

(assert (=> b!4294 t!394))

(declare-fun b_and!201 () Bool)

(assert (= b_and!199 (and (=> t!394 result!129) b_and!201)))

(declare-fun m!6721 () Bool)

(assert (=> b!4294 m!6721))

(declare-fun m!6723 () Bool)

(assert (=> b!4294 m!6723))

(push 1)

(assert (not b_lambda!165))

(assert (not b_lambda!167))

(assert b_and!201)

(assert (not b_next!53))

(check-sat)

(pop 1)

(push 1)

(assert b_and!201)

(assert (not b_next!53))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!169 () Bool)

(assert (= b_lambda!165 (or (and b!4293 (= lambda!2 i!203)) (and start!578 b_free!51) b_lambda!169)))

(declare-fun bs!285 () Bool)

(declare-fun d!3072 () Bool)

(assert (= bs!285 (and d!3072 b!4293)))

(assert (=> bs!285 (= (dynLambda!9 lambda!2 x!1595) (+ x!1595 1))))

(assert (=> (and b!4293 (= lambda!2 i!203) b!4294) d!3072))

(declare-fun b_lambda!171 () Bool)

(assert (= b_lambda!167 (or (and b!4293 (= lambda!2 i!203)) (and start!578 b_free!51) b_lambda!171)))

(declare-fun bs!286 () Bool)

(declare-fun d!3074 () Bool)

(assert (= bs!286 (and d!3074 b!4293)))

(assert (=> bs!286 (= (dynLambda!9 lambda!2 2) (+ 2 1))))

(assert (=> (and b!4293 (= lambda!2 i!203) b!4294) d!3074))

(push 1)

(assert (not b_lambda!169))

(assert (not b_lambda!171))

(assert b_and!201)

(assert (not b_next!53))

(check-sat)

(pop 1)

