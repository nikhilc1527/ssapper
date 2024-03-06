; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11476 () Bool)

(assert start!11476)

(declare-fun b_free!7475 () Bool)

(declare-fun b_next!39779 () Bool)

(assert (=> start!11476 (= b_free!7475 (not b_next!39779))))

(declare-fun tp!17125 () Bool)

(declare-fun b_and!59937 () Bool)

(assert (=> start!11476 (= tp!17125 b_and!59937)))

(declare-fun res!45863 () Bool)

(declare-fun e!47692 () Bool)

(assert (=> start!11476 (=> (not res!45863) (not e!47692))))

(assert (=> start!11476 (= res!45863 true)))

(assert (=> start!11476 e!47692))

(assert (=> start!11476 tp!17125))

(assert (=> start!11476 true))

(declare-fun b!87813 () Bool)

(declare-fun res!45864 () Bool)

(assert (=> b!87813 (=> (not res!45864) (not e!47692))))

(declare-fun x!30640 () Int)

(assert (=> b!87813 (= res!45864 (<= x!30640 0))))

(declare-fun b!87814 () Bool)

(declare-fun res!45862 () Bool)

(assert (=> b!87814 (=> (not res!45862) (not e!47692))))

(declare-fun res!45822 () Int)

(declare-fun f!4922 () Int)

(declare-fun dynLambda!1035 (Int Int) Int)

(assert (=> b!87814 (= res!45862 (= res!45822 (+ (dynLambda!1035 f!4922 x!30640) (dynLambda!1035 f!4922 x!30640))))))

(declare-fun b!87815 () Bool)

(assert (=> b!87815 (= e!47692 (<= res!45822 0))))

(assert (= (and start!11476 res!45863) b!87813))

(assert (= (and b!87813 res!45864) b!87814))

(assert (= (and b!87814 res!45862) b!87815))

(declare-fun b_lambda!17429 () Bool)

(assert (=> (not b_lambda!17429) (not b!87814)))

(declare-fun t!48560 () Bool)

(declare-fun tb!46547 () Bool)

(assert (=> (and start!11476 (= f!4922 f!4922) t!48560) tb!46547))

(declare-fun result!46977 () Bool)

(assert (=> tb!46547 (= result!46977 true)))

(assert (=> b!87814 t!48560))

(declare-fun b_and!59939 () Bool)

(assert (= b_and!59937 (and (=> t!48560 result!46977) b_and!59939)))

(declare-fun bs!41269 () Bool)

(declare-fun s!2565 () Bool)

(assert (= bs!41269 (and start!11476 s!2565)))

(assert (=> bs!41269 (=> true (> (+ (dynLambda!1035 f!4922 x!30640) (dynLambda!1035 f!4922 x!30640)) 0))))

(declare-fun b_lambda!17431 () Bool)

(assert (=> (not b_lambda!17431) (not bs!41269)))

(assert (=> bs!41269 t!48560))

(declare-fun b_and!59941 () Bool)

(assert (= b_and!59939 (and (=> t!48560 result!46977) b_and!59941)))

(declare-fun bs!41270 () Bool)

(declare-fun m!84070 () Bool)

(assert (= bs!41270 m!84070))

(assert (=> bs!41270 s!2565))

(assert (=> bs!41270 s!2565))

(assert (=> b!87814 m!84070))

(push 1)

(assert (not b_lambda!17429))

(assert (not b_lambda!17431))

(assert b_and!59941)

(assert (not b_next!39779))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59941)

(assert (not b_next!39779))

(check-sat)

(pop 1)

