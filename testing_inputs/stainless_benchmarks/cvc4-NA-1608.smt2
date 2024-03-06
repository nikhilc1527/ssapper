; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11186 () Bool)

(assert start!11186)

(assert (=> start!11186 true))

(declare-fun bs!41025 () Bool)

(declare-fun b!85471 () Bool)

(assert (= bs!41025 (and b!85471 start!11186)))

(declare-fun lambda!10736 () Int)

(declare-fun x!29270 () Int)

(declare-fun lambda!10737 () Int)

(declare-fun x!29273 () Int)

(assert (=> bs!41025 (= (= x!29273 x!29270) (= lambda!10737 lambda!10736))))

(assert (=> b!85471 true))

(declare-fun res!44381 () Bool)

(declare-fun e!46333 () Bool)

(assert (=> start!11186 (=> (not res!44381) (not e!46333))))

(declare-datatypes () ((List!706 (Cons!663 (h!1036 Int) (t!48151 List!706)) (Nil!665))))

(declare-fun ls!69 () List!706)

(declare-fun forall!54 (List!706 Int) Bool)

(assert (=> start!11186 (= res!44381 (forall!54 ls!69 lambda!10736))))

(assert (=> start!11186 e!46333))

(assert (=> start!11186 true))

(declare-fun b!85470 () Bool)

(declare-fun res!44382 () Bool)

(assert (=> b!85470 (=> (not res!44382) (not e!46333))))

(declare-fun ls!70 () List!706)

(assert (=> b!85470 (= res!44382 (and (is-Cons!663 ls!69) (= ls!70 (t!48151 ls!69)) (= x!29273 x!29270)))))

(assert (=> b!85471 (= e!46333 (not (forall!54 ls!70 lambda!10737)))))

(assert (= (and start!11186 res!44381) b!85470))

(assert (= (and b!85470 res!44382) b!85471))

(declare-fun m!81300 () Bool)

(assert (=> start!11186 m!81300))

(declare-fun m!81302 () Bool)

(assert (=> b!85471 m!81302))

(push 1)

(assert (not start!11186))

(assert (not b!85471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57351 () Bool)

(declare-fun res!44387 () Bool)

(declare-fun e!46338 () Bool)

(assert (=> d!57351 (=> res!44387 e!46338)))

(assert (=> d!57351 (= res!44387 (is-Nil!665 ls!69))))

(assert (=> d!57351 (= (forall!54 ls!69 lambda!10736) e!46338)))

(declare-fun b!85478 () Bool)

(declare-fun e!46339 () Bool)

(assert (=> b!85478 (= e!46338 e!46339)))

(declare-fun res!44388 () Bool)

(assert (=> b!85478 (=> (not res!44388) (not e!46339))))

(declare-fun dynLambda!1015 (Int Int) Bool)

(assert (=> b!85478 (= res!44388 (dynLambda!1015 lambda!10736 (h!1036 ls!69)))))

(declare-fun b!85479 () Bool)

(assert (=> b!85479 (= e!46339 (forall!54 (t!48151 ls!69) lambda!10736))))

(assert (= (and d!57351 (not res!44387)) b!85478))

(assert (= (and b!85478 res!44388) b!85479))

(declare-fun b_lambda!16835 () Bool)

(assert (=> (not b_lambda!16835) (not b!85478)))

(declare-fun m!81304 () Bool)

(assert (=> b!85478 m!81304))

(declare-fun m!81306 () Bool)

(assert (=> b!85479 m!81306))

(assert (=> start!11186 d!57351))

(declare-fun d!57353 () Bool)

(declare-fun res!44389 () Bool)

(declare-fun e!46340 () Bool)

(assert (=> d!57353 (=> res!44389 e!46340)))

(assert (=> d!57353 (= res!44389 (is-Nil!665 ls!70))))

(assert (=> d!57353 (= (forall!54 ls!70 lambda!10737) e!46340)))

(declare-fun b!85480 () Bool)

(declare-fun e!46341 () Bool)

(assert (=> b!85480 (= e!46340 e!46341)))

(declare-fun res!44390 () Bool)

(assert (=> b!85480 (=> (not res!44390) (not e!46341))))

(assert (=> b!85480 (= res!44390 (dynLambda!1015 lambda!10737 (h!1036 ls!70)))))

(declare-fun b!85481 () Bool)

(assert (=> b!85481 (= e!46341 (forall!54 (t!48151 ls!70) lambda!10737))))

(assert (= (and d!57353 (not res!44389)) b!85480))

(assert (= (and b!85480 res!44390) b!85481))

(declare-fun b_lambda!16837 () Bool)

(assert (=> (not b_lambda!16837) (not b!85480)))

(declare-fun m!81308 () Bool)

(assert (=> b!85480 m!81308))

(declare-fun m!81310 () Bool)

(assert (=> b!85481 m!81310))

(assert (=> b!85471 d!57353))

(declare-fun b_lambda!16839 () Bool)

(assert (= b_lambda!16837 (or b!85471 b_lambda!16839)))

(declare-fun bs!41026 () Bool)

(declare-fun d!57355 () Bool)

(assert (= bs!41026 (and d!57355 b!85471)))

(assert (=> bs!41026 (= (dynLambda!1015 lambda!10737 (h!1036 ls!70)) (= (h!1036 ls!70) x!29273))))

(assert (=> b!85480 d!57355))

(declare-fun b_lambda!16841 () Bool)

(assert (= b_lambda!16835 (or start!11186 b_lambda!16841)))

(declare-fun bs!41027 () Bool)

(declare-fun d!57357 () Bool)

(assert (= bs!41027 (and d!57357 start!11186)))

(assert (=> bs!41027 (= (dynLambda!1015 lambda!10736 (h!1036 ls!69)) (= (h!1036 ls!69) x!29270))))

(assert (=> b!85478 d!57357))

(push 1)

(assert (not b!85479))

(assert (not b!85481))

(assert (not b_lambda!16839))

(assert (not b_lambda!16841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

