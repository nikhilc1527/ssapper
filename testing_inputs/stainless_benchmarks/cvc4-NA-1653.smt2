; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11474 () Bool)

(assert start!11474)

(declare-fun b_free!7473 () Bool)

(declare-fun b_next!39777 () Bool)

(assert (=> start!11474 (= b_free!7473 (not b_next!39777))))

(declare-fun tp!17122 () Bool)

(declare-fun b_and!59929 () Bool)

(assert (=> start!11474 (= tp!17122 b_and!59929)))

(declare-fun res!45853 () Bool)

(declare-fun e!47688 () Bool)

(assert (=> start!11474 (=> (not res!45853) (not e!47688))))

(assert (=> start!11474 (= res!45853 true)))

(assert (=> start!11474 e!47688))

(assert (=> start!11474 tp!17122))

(assert (=> start!11474 true))

(declare-fun b!87802 () Bool)

(declare-fun res!45854 () Bool)

(assert (=> b!87802 (=> (not res!45854) (not e!47688))))

(declare-fun res!45827 () Int)

(declare-fun f!4925 () Int)

(declare-fun dynLambda!1034 (Int Int) Int)

(assert (=> b!87802 (= res!45854 (= res!45827 (dynLambda!1034 f!4925 8)))))

(declare-fun b!87803 () Bool)

(assert (=> b!87803 (= e!47688 (= res!45827 0))))

(assert (= (and start!11474 res!45853) b!87802))

(assert (= (and b!87802 res!45854) b!87803))

(declare-fun b_lambda!17423 () Bool)

(assert (=> (not b_lambda!17423) (not b!87802)))

(declare-fun t!48558 () Bool)

(declare-fun tb!46545 () Bool)

(assert (=> (and start!11474 (= f!4925 f!4925) t!48558) tb!46545))

(declare-fun result!46975 () Bool)

(assert (=> tb!46545 (= result!46975 true)))

(assert (=> b!87802 t!48558))

(declare-fun b_and!59931 () Bool)

(assert (= b_and!59929 (and (=> t!48558 result!46975) b_and!59931)))

(declare-fun bs!41266 () Bool)

(declare-fun s!2563 () Bool)

(assert (= bs!41266 (and start!11474 s!2563)))

(declare-fun res!45855 () Bool)

(declare-fun e!47689 () Bool)

(assert (=> bs!41266 (=> res!45855 e!47689)))

(assert (=> bs!41266 (= res!45855 (> (dynLambda!1034 f!4925 8) 0))))

(assert (=> bs!41266 (=> true e!47689)))

(declare-fun b!87804 () Bool)

(assert (=> b!87804 (= e!47689 (< (dynLambda!1034 f!4925 8) 0))))

(assert (= (and bs!41266 (not res!45855)) b!87804))

(declare-fun b_lambda!17425 () Bool)

(assert (=> (not b_lambda!17425) (not bs!41266)))

(assert (=> bs!41266 t!48558))

(declare-fun b_and!59933 () Bool)

(assert (= b_and!59931 (and (=> t!48558 result!46975) b_and!59933)))

(declare-fun b_lambda!17427 () Bool)

(assert (=> (not b_lambda!17427) (not b!87804)))

(assert (=> b!87804 t!48558))

(declare-fun b_and!59935 () Bool)

(assert (= b_and!59933 (and (=> t!48558 result!46975) b_and!59935)))

(declare-fun bs!41267 () Bool)

(declare-fun m!84068 () Bool)

(assert (= bs!41267 m!84068))

(assert (=> bs!41267 s!2563))

(assert (=> bs!41267 s!2563))

(assert (=> b!87802 m!84068))

(push 1)

(assert (not b_lambda!17427))

(assert (not b_lambda!17425))

(assert b_and!59935)

(assert (not b_lambda!17423))

(assert (not b_next!39777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59935)

(assert (not b_next!39777))

(check-sat)

(pop 1)

