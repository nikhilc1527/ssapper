; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11196 () Bool)

(assert start!11196)

(assert (=> start!11196 true))

(declare-fun bs!41042 () Bool)

(declare-fun b!85512 () Bool)

(assert (= bs!41042 (and b!85512 start!11196)))

(declare-fun lambda!10758 () Int)

(declare-fun lambda!10757 () Int)

(assert (=> bs!41042 (not (= lambda!10758 lambda!10757))))

(assert (=> b!85512 true))

(declare-fun res!44412 () Bool)

(declare-fun e!46358 () Bool)

(assert (=> start!11196 (=> (not res!44412) (not e!46358))))

(declare-datatypes () ((List!708 (Cons!665 (h!1038 Int) (t!48153 List!708)) (Nil!667))))

(declare-fun ls!69 () List!708)

(declare-fun forall!56 (List!708 Int) Bool)

(assert (=> start!11196 (= res!44412 (forall!56 ls!69 lambda!10757))))

(assert (=> start!11196 e!46358))

(assert (=> start!11196 true))

(declare-fun b!85511 () Bool)

(declare-fun res!44413 () Bool)

(assert (=> b!85511 (=> (not res!44413) (not e!46358))))

(assert (=> b!85511 (= res!44413 (not (is-Cons!665 ls!69)))))

(assert (=> b!85512 (= e!46358 (not (forall!56 ls!69 lambda!10758)))))

(assert (= (and start!11196 res!44412) b!85511))

(assert (= (and b!85511 res!44413) b!85512))

(declare-fun m!81334 () Bool)

(assert (=> start!11196 m!81334))

(declare-fun m!81336 () Bool)

(assert (=> b!85512 m!81336))

(push 1)

(assert (not start!11196))

(assert (not b!85512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57369 () Bool)

(declare-fun res!44418 () Bool)

(declare-fun e!46363 () Bool)

(assert (=> d!57369 (=> res!44418 e!46363)))

(assert (=> d!57369 (= res!44418 (is-Nil!667 ls!69))))

(assert (=> d!57369 (= (forall!56 ls!69 lambda!10757) e!46363)))

(declare-fun b!85519 () Bool)

(declare-fun e!46364 () Bool)

(assert (=> b!85519 (= e!46363 e!46364)))

(declare-fun res!44419 () Bool)

(assert (=> b!85519 (=> (not res!44419) (not e!46364))))

(declare-fun dynLambda!1017 (Int Int) Bool)

(assert (=> b!85519 (= res!44419 (dynLambda!1017 lambda!10757 (h!1038 ls!69)))))

(declare-fun b!85520 () Bool)

(assert (=> b!85520 (= e!46364 (forall!56 (t!48153 ls!69) lambda!10757))))

(assert (= (and d!57369 (not res!44418)) b!85519))

(assert (= (and b!85519 res!44419) b!85520))

(declare-fun b_lambda!16851 () Bool)

(assert (=> (not b_lambda!16851) (not b!85519)))

(declare-fun m!81338 () Bool)

(assert (=> b!85519 m!81338))

(declare-fun m!81340 () Bool)

(assert (=> b!85520 m!81340))

(assert (=> start!11196 d!57369))

(declare-fun d!57371 () Bool)

(declare-fun res!44420 () Bool)

(declare-fun e!46365 () Bool)

(assert (=> d!57371 (=> res!44420 e!46365)))

(assert (=> d!57371 (= res!44420 (is-Nil!667 ls!69))))

(assert (=> d!57371 (= (forall!56 ls!69 lambda!10758) e!46365)))

(declare-fun b!85521 () Bool)

(declare-fun e!46366 () Bool)

(assert (=> b!85521 (= e!46365 e!46366)))

(declare-fun res!44421 () Bool)

(assert (=> b!85521 (=> (not res!44421) (not e!46366))))

(assert (=> b!85521 (= res!44421 (dynLambda!1017 lambda!10758 (h!1038 ls!69)))))

(declare-fun b!85522 () Bool)

(assert (=> b!85522 (= e!46366 (forall!56 (t!48153 ls!69) lambda!10758))))

(assert (= (and d!57371 (not res!44420)) b!85521))

(assert (= (and b!85521 res!44421) b!85522))

(declare-fun b_lambda!16853 () Bool)

(assert (=> (not b_lambda!16853) (not b!85521)))

(declare-fun m!81342 () Bool)

(assert (=> b!85521 m!81342))

(declare-fun m!81344 () Bool)

(assert (=> b!85522 m!81344))

(assert (=> b!85512 d!57371))

(declare-fun b_lambda!16855 () Bool)

(assert (= b_lambda!16853 (or b!85512 b_lambda!16855)))

(declare-fun bs!41043 () Bool)

(declare-fun d!57373 () Bool)

(assert (= bs!41043 (and d!57373 b!85512)))

(declare-fun x!29270 () Int)

(assert (=> bs!41043 (= (dynLambda!1017 lambda!10758 (h!1038 ls!69)) (<= (h!1038 ls!69) x!29270))))

(assert (=> b!85521 d!57373))

(declare-fun b_lambda!16857 () Bool)

(assert (= b_lambda!16851 (or start!11196 b_lambda!16857)))

(declare-fun bs!41044 () Bool)

(declare-fun d!57375 () Bool)

(assert (= bs!41044 (and d!57375 start!11196)))

(assert (=> bs!41044 (= (dynLambda!1017 lambda!10757 (h!1038 ls!69)) (= (h!1038 ls!69) x!29270))))

(assert (=> b!85519 d!57375))

(push 1)

(assert (not b!85522))

(assert (not b!85520))

(assert (not b_lambda!16855))

(assert (not b_lambda!16857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

