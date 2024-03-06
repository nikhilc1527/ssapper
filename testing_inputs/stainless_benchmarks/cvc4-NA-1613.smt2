; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11210 () Bool)

(assert start!11210)

(assert (=> start!11210 true))

(declare-fun bs!41063 () Bool)

(declare-fun b!85569 () Bool)

(assert (= bs!41063 (and b!85569 start!11210)))

(declare-fun lambda!10785 () Int)

(declare-fun lambda!10784 () Int)

(assert (=> bs!41063 (not (= lambda!10785 lambda!10784))))

(assert (=> b!85569 true))

(declare-fun res!44457 () Bool)

(declare-fun e!46394 () Bool)

(assert (=> start!11210 (=> (not res!44457) (not e!46394))))

(declare-datatypes () ((List!711 (Cons!668 (h!1041 Int) (t!48156 List!711)) (Nil!670))))

(declare-fun ls!63 () List!711)

(declare-fun forall!59 (List!711 Int) Bool)

(assert (=> start!11210 (= res!44457 (forall!59 ls!63 lambda!10784))))

(assert (=> start!11210 e!46394))

(assert (=> start!11210 true))

(declare-fun b!85568 () Bool)

(declare-fun res!44458 () Bool)

(assert (=> b!85568 (=> (not res!44458) (not e!46394))))

(assert (=> b!85568 (= res!44458 (not (is-Cons!668 ls!63)))))

(assert (=> b!85569 (= e!46394 (not (forall!59 ls!63 lambda!10785)))))

(assert (= (and start!11210 res!44457) b!85568))

(assert (= (and b!85568 res!44458) b!85569))

(declare-fun m!81380 () Bool)

(assert (=> start!11210 m!81380))

(declare-fun m!81382 () Bool)

(assert (=> b!85569 m!81382))

(push 1)

(assert (not b!85569))

(assert (not start!11210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57395 () Bool)

(declare-fun res!44463 () Bool)

(declare-fun e!46399 () Bool)

(assert (=> d!57395 (=> res!44463 e!46399)))

(assert (=> d!57395 (= res!44463 (is-Nil!670 ls!63))))

(assert (=> d!57395 (= (forall!59 ls!63 lambda!10785) e!46399)))

(declare-fun b!85576 () Bool)

(declare-fun e!46400 () Bool)

(assert (=> b!85576 (= e!46399 e!46400)))

(declare-fun res!44464 () Bool)

(assert (=> b!85576 (=> (not res!44464) (not e!46400))))

(declare-fun dynLambda!1020 (Int Int) Bool)

(assert (=> b!85576 (= res!44464 (dynLambda!1020 lambda!10785 (h!1041 ls!63)))))

(declare-fun b!85577 () Bool)

(assert (=> b!85577 (= e!46400 (forall!59 (t!48156 ls!63) lambda!10785))))

(assert (= (and d!57395 (not res!44463)) b!85576))

(assert (= (and b!85576 res!44464) b!85577))

(declare-fun b_lambda!16875 () Bool)

(assert (=> (not b_lambda!16875) (not b!85576)))

(declare-fun m!81384 () Bool)

(assert (=> b!85576 m!81384))

(declare-fun m!81386 () Bool)

(assert (=> b!85577 m!81386))

(assert (=> b!85569 d!57395))

(declare-fun d!57397 () Bool)

(declare-fun res!44465 () Bool)

(declare-fun e!46401 () Bool)

(assert (=> d!57397 (=> res!44465 e!46401)))

(assert (=> d!57397 (= res!44465 (is-Nil!670 ls!63))))

(assert (=> d!57397 (= (forall!59 ls!63 lambda!10784) e!46401)))

(declare-fun b!85578 () Bool)

(declare-fun e!46402 () Bool)

(assert (=> b!85578 (= e!46401 e!46402)))

(declare-fun res!44466 () Bool)

(assert (=> b!85578 (=> (not res!44466) (not e!46402))))

(assert (=> b!85578 (= res!44466 (dynLambda!1020 lambda!10784 (h!1041 ls!63)))))

(declare-fun b!85579 () Bool)

(assert (=> b!85579 (= e!46402 (forall!59 (t!48156 ls!63) lambda!10784))))

(assert (= (and d!57397 (not res!44465)) b!85578))

(assert (= (and b!85578 res!44466) b!85579))

(declare-fun b_lambda!16877 () Bool)

(assert (=> (not b_lambda!16877) (not b!85578)))

(declare-fun m!81388 () Bool)

(assert (=> b!85578 m!81388))

(declare-fun m!81390 () Bool)

(assert (=> b!85579 m!81390))

(assert (=> start!11210 d!57397))

(declare-fun b_lambda!16879 () Bool)

(assert (= b_lambda!16877 (or start!11210 b_lambda!16879)))

(declare-fun bs!41064 () Bool)

(declare-fun d!57399 () Bool)

(assert (= bs!41064 (and d!57399 start!11210)))

(declare-fun x!29263 () Int)

(assert (=> bs!41064 (= (dynLambda!1020 lambda!10784 (h!1041 ls!63)) (< (h!1041 ls!63) x!29263))))

(assert (=> b!85578 d!57399))

(declare-fun b_lambda!16881 () Bool)

(assert (= b_lambda!16875 (or b!85569 b_lambda!16881)))

(declare-fun bs!41065 () Bool)

(declare-fun d!57401 () Bool)

(assert (= bs!41065 (and d!57401 b!85569)))

(assert (=> bs!41065 (= (dynLambda!1020 lambda!10785 (h!1041 ls!63)) (<= (h!1041 ls!63) x!29263))))

(assert (=> b!85576 d!57401))

(push 1)

(assert (not b!85577))

(assert (not b!85579))

(assert (not b_lambda!16879))

(assert (not b_lambda!16881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

