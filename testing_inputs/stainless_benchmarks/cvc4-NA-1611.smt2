; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11200 () Bool)

(assert start!11200)

(assert (=> start!11200 true))

(declare-fun bs!41046 () Bool)

(declare-fun b!85528 () Bool)

(assert (= bs!41046 (and b!85528 start!11200)))

(declare-fun lambda!10763 () Int)

(declare-fun lambda!10764 () Int)

(declare-fun x!29263 () Int)

(declare-fun x!29266 () Int)

(assert (=> bs!41046 (= (= x!29266 x!29263) (= lambda!10764 lambda!10763))))

(assert (=> b!85528 true))

(declare-fun res!44426 () Bool)

(declare-fun e!46369 () Bool)

(assert (=> start!11200 (=> (not res!44426) (not e!46369))))

(declare-datatypes () ((List!709 (Cons!666 (h!1039 Int) (t!48154 List!709)) (Nil!668))))

(declare-fun ls!63 () List!709)

(declare-fun forall!57 (List!709 Int) Bool)

(assert (=> start!11200 (= res!44426 (forall!57 ls!63 lambda!10763))))

(assert (=> start!11200 e!46369))

(assert (=> start!11200 true))

(declare-fun b!85527 () Bool)

(declare-fun res!44427 () Bool)

(assert (=> b!85527 (=> (not res!44427) (not e!46369))))

(declare-fun ls!64 () List!709)

(assert (=> b!85527 (= res!44427 (and (is-Cons!666 ls!63) (= ls!64 (t!48154 ls!63)) (= x!29266 x!29263)))))

(assert (=> b!85528 (= e!46369 (not (forall!57 ls!64 lambda!10764)))))

(assert (= (and start!11200 res!44426) b!85527))

(assert (= (and b!85527 res!44427) b!85528))

(declare-fun m!81346 () Bool)

(assert (=> start!11200 m!81346))

(declare-fun m!81348 () Bool)

(assert (=> b!85528 m!81348))

(push 1)

(assert (not b!85528))

(assert (not start!11200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57377 () Bool)

(declare-fun res!44432 () Bool)

(declare-fun e!46374 () Bool)

(assert (=> d!57377 (=> res!44432 e!46374)))

(assert (=> d!57377 (= res!44432 (is-Nil!668 ls!64))))

(assert (=> d!57377 (= (forall!57 ls!64 lambda!10764) e!46374)))

(declare-fun b!85535 () Bool)

(declare-fun e!46375 () Bool)

(assert (=> b!85535 (= e!46374 e!46375)))

(declare-fun res!44433 () Bool)

(assert (=> b!85535 (=> (not res!44433) (not e!46375))))

(declare-fun dynLambda!1018 (Int Int) Bool)

(assert (=> b!85535 (= res!44433 (dynLambda!1018 lambda!10764 (h!1039 ls!64)))))

(declare-fun b!85536 () Bool)

(assert (=> b!85536 (= e!46375 (forall!57 (t!48154 ls!64) lambda!10764))))

(assert (= (and d!57377 (not res!44432)) b!85535))

(assert (= (and b!85535 res!44433) b!85536))

(declare-fun b_lambda!16859 () Bool)

(assert (=> (not b_lambda!16859) (not b!85535)))

(declare-fun m!81350 () Bool)

(assert (=> b!85535 m!81350))

(declare-fun m!81352 () Bool)

(assert (=> b!85536 m!81352))

(assert (=> b!85528 d!57377))

(declare-fun d!57379 () Bool)

(declare-fun res!44434 () Bool)

(declare-fun e!46376 () Bool)

(assert (=> d!57379 (=> res!44434 e!46376)))

(assert (=> d!57379 (= res!44434 (is-Nil!668 ls!63))))

(assert (=> d!57379 (= (forall!57 ls!63 lambda!10763) e!46376)))

(declare-fun b!85537 () Bool)

(declare-fun e!46377 () Bool)

(assert (=> b!85537 (= e!46376 e!46377)))

(declare-fun res!44435 () Bool)

(assert (=> b!85537 (=> (not res!44435) (not e!46377))))

(assert (=> b!85537 (= res!44435 (dynLambda!1018 lambda!10763 (h!1039 ls!63)))))

(declare-fun b!85538 () Bool)

(assert (=> b!85538 (= e!46377 (forall!57 (t!48154 ls!63) lambda!10763))))

(assert (= (and d!57379 (not res!44434)) b!85537))

(assert (= (and b!85537 res!44435) b!85538))

(declare-fun b_lambda!16861 () Bool)

(assert (=> (not b_lambda!16861) (not b!85537)))

(declare-fun m!81354 () Bool)

(assert (=> b!85537 m!81354))

(declare-fun m!81356 () Bool)

(assert (=> b!85538 m!81356))

(assert (=> start!11200 d!57379))

(declare-fun b_lambda!16863 () Bool)

(assert (= b_lambda!16861 (or start!11200 b_lambda!16863)))

(declare-fun bs!41047 () Bool)

(declare-fun d!57381 () Bool)

(assert (= bs!41047 (and d!57381 start!11200)))

(assert (=> bs!41047 (= (dynLambda!1018 lambda!10763 (h!1039 ls!63)) (< (h!1039 ls!63) x!29263))))

(assert (=> b!85537 d!57381))

(declare-fun b_lambda!16865 () Bool)

(assert (= b_lambda!16859 (or b!85528 b_lambda!16865)))

(declare-fun bs!41048 () Bool)

(declare-fun d!57383 () Bool)

(assert (= bs!41048 (and d!57383 b!85528)))

(assert (=> bs!41048 (= (dynLambda!1018 lambda!10764 (h!1039 ls!64)) (< (h!1039 ls!64) x!29266))))

(assert (=> b!85535 d!57383))

(push 1)

(assert (not b!85536))

(assert (not b!85538))

(assert (not b_lambda!16863))

(assert (not b_lambda!16865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

