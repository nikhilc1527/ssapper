; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11486 () Bool)

(assert start!11486)

(declare-fun b_free!7489 () Bool)

(declare-fun b_next!39793 () Bool)

(assert (=> start!11486 (= b_free!7489 (not b_next!39793))))

(declare-fun tp!17146 () Bool)

(declare-fun b_and!59981 () Bool)

(assert (=> start!11486 (= tp!17146 b_and!59981)))

(declare-fun res!45911 () Bool)

(declare-fun e!47724 () Bool)

(assert (=> start!11486 (=> (not res!45911) (not e!47724))))

(assert (=> start!11486 (= res!45911 true)))

(assert (=> start!11486 e!47724))

(assert (=> start!11486 tp!17146))

(assert (=> start!11486 true))

(declare-fun b!87874 () Bool)

(declare-fun res!45909 () Bool)

(assert (=> b!87874 (=> (not res!45909) (not e!47724))))

(declare-fun a!1033 () Int)

(declare-fun f!4924 () Int)

(declare-fun dynLambda!1041 (Int Int) Int)

(assert (=> b!87874 (= res!45909 (= a!1033 (dynLambda!1041 f!4924 (- 1))))))

(declare-fun b!87875 () Bool)

(declare-fun res!45910 () Bool)

(assert (=> b!87875 (=> (not res!45910) (not e!47724))))

(declare-fun res!45826 () Int)

(assert (=> b!87875 (= res!45910 (= res!45826 (dynLambda!1041 f!4924 2)))))

(declare-fun b!87876 () Bool)

(assert (=> b!87876 (= e!47724 (<= res!45826 0))))

(assert (= (and start!11486 res!45911) b!87874))

(assert (= (and b!87874 res!45909) b!87875))

(assert (= (and b!87875 res!45910) b!87876))

(declare-fun b_lambda!17459 () Bool)

(assert (=> (not b_lambda!17459) (not b!87874)))

(declare-fun t!48572 () Bool)

(declare-fun tb!46559 () Bool)

(assert (=> (and start!11486 (= f!4924 f!4924) t!48572) tb!46559))

(declare-fun result!46989 () Bool)

(assert (=> tb!46559 (= result!46989 true)))

(assert (=> b!87874 t!48572))

(declare-fun b_and!59983 () Bool)

(assert (= b_and!59981 (and (=> t!48572 result!46989) b_and!59983)))

(declare-fun b_lambda!17461 () Bool)

(assert (=> (not b_lambda!17461) (not b!87875)))

(declare-fun t!48574 () Bool)

(declare-fun tb!46561 () Bool)

(assert (=> (and start!11486 (= f!4924 f!4924) t!48574) tb!46561))

(declare-fun result!46991 () Bool)

(assert (=> tb!46561 (= result!46991 true)))

(assert (=> b!87875 t!48574))

(declare-fun b_and!59985 () Bool)

(assert (= b_and!59983 (and (=> t!48574 result!46991) b_and!59985)))

(declare-fun bs!41283 () Bool)

(declare-fun s!2573 () Bool)

(assert (= bs!41283 (and start!11486 s!2573)))

(declare-fun res!45912 () Bool)

(declare-fun e!47725 () Bool)

(assert (=> bs!41283 (=> res!45912 e!47725)))

(assert (=> bs!41283 (= res!45912 (<= (- 1) 0))))

(assert (=> bs!41283 (=> true e!47725)))

(declare-fun b!87877 () Bool)

(assert (=> b!87877 (= e!47725 (> (dynLambda!1041 f!4924 (- 1)) 0))))

(assert (= (and bs!41283 (not res!45912)) b!87877))

(declare-fun b_lambda!17463 () Bool)

(assert (=> (not b_lambda!17463) (not b!87877)))

(assert (=> b!87877 t!48572))

(declare-fun b_and!59987 () Bool)

(assert (= b_and!59985 (and (=> t!48572 result!46989) b_and!59987)))

(declare-fun bs!41284 () Bool)

(declare-fun m!84080 () Bool)

(assert (= bs!41284 m!84080))

(assert (=> bs!41284 s!2573))

(assert (=> b!87874 m!84080))

(declare-fun bs!41285 () Bool)

(declare-fun s!2575 () Bool)

(assert (= bs!41285 (and start!11486 s!2575)))

(declare-fun res!45913 () Bool)

(declare-fun e!47726 () Bool)

(assert (=> bs!41285 (=> res!45913 e!47726)))

(assert (=> bs!41285 (= res!45913 (<= 2 0))))

(assert (=> bs!41285 (=> true e!47726)))

(declare-fun b!87878 () Bool)

(assert (=> b!87878 (= e!47726 (> (dynLambda!1041 f!4924 2) 0))))

(assert (= (and bs!41285 (not res!45913)) b!87878))

(declare-fun b_lambda!17465 () Bool)

(assert (=> (not b_lambda!17465) (not b!87878)))

(assert (=> b!87878 t!48574))

(declare-fun b_and!59989 () Bool)

(assert (= b_and!59987 (and (=> t!48574 result!46991) b_and!59989)))

(declare-fun bs!41286 () Bool)

(declare-fun m!84082 () Bool)

(assert (= bs!41286 m!84082))

(assert (=> bs!41286 s!2575))

(assert (=> b!87875 m!84082))

(push 1)

(assert (not b_lambda!17463))

(assert (not b_next!39793))

(assert (not b_lambda!17465))

(assert (not b_lambda!17459))

(assert b_and!59989)

(assert (not b_lambda!17461))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59989)

(assert (not b_next!39793))

(check-sat)

(pop 1)

