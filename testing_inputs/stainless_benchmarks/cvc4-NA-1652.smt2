; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11472 () Bool)

(assert start!11472)

(declare-fun b_free!7471 () Bool)

(declare-fun b_next!39775 () Bool)

(assert (=> start!11472 (= b_free!7471 (not b_next!39775))))

(declare-fun tp!17119 () Bool)

(declare-fun b_and!59919 () Bool)

(assert (=> start!11472 (= tp!17119 b_and!59919)))

(declare-fun res!45843 () Bool)

(declare-fun e!47681 () Bool)

(assert (=> start!11472 (=> (not res!45843) (not e!47681))))

(assert (=> start!11472 (= res!45843 true)))

(assert (=> start!11472 e!47681))

(assert (=> start!11472 tp!17119))

(assert (=> start!11472 true))

(declare-fun b!87792 () Bool)

(declare-fun res!45844 () Bool)

(assert (=> b!87792 (=> (not res!45844) (not e!47681))))

(declare-fun res!45818 () Int)

(declare-fun f!4919 () Int)

(declare-fun dynLambda!1033 (Int Int) Int)

(assert (=> b!87792 (= res!45844 (= res!45818 (+ (dynLambda!1033 f!4919 1) (dynLambda!1033 f!4919 2))))))

(declare-fun b!87793 () Bool)

(assert (=> b!87793 (= e!47681 (<= res!45818 2))))

(assert (= (and start!11472 res!45843) b!87792))

(assert (= (and b!87792 res!45844) b!87793))

(declare-fun b_lambda!17415 () Bool)

(assert (=> (not b_lambda!17415) (not b!87792)))

(declare-fun t!48554 () Bool)

(declare-fun tb!46541 () Bool)

(assert (=> (and start!11472 (= f!4919 f!4919) t!48554) tb!46541))

(declare-fun result!46971 () Bool)

(assert (=> tb!46541 (= result!46971 true)))

(assert (=> b!87792 t!48554))

(declare-fun b_and!59921 () Bool)

(assert (= b_and!59919 (and (=> t!48554 result!46971) b_and!59921)))

(declare-fun b_lambda!17417 () Bool)

(assert (=> (not b_lambda!17417) (not b!87792)))

(declare-fun t!48556 () Bool)

(declare-fun tb!46543 () Bool)

(assert (=> (and start!11472 (= f!4919 f!4919) t!48556) tb!46543))

(declare-fun result!46973 () Bool)

(assert (=> tb!46543 (= result!46973 true)))

(assert (=> b!87792 t!48556))

(declare-fun b_and!59923 () Bool)

(assert (= b_and!59921 (and (=> t!48556 result!46973) b_and!59923)))

(declare-fun bs!41261 () Bool)

(declare-fun s!2559 () Bool)

(assert (= bs!41261 (and start!11472 s!2559)))

(declare-fun res!45845 () Bool)

(declare-fun e!47682 () Bool)

(assert (=> bs!41261 (=> res!45845 e!47682)))

(assert (=> bs!41261 (= res!45845 (<= 1 0))))

(assert (=> bs!41261 (=> true e!47682)))

(declare-fun b!87794 () Bool)

(assert (=> b!87794 (= e!47682 (> (dynLambda!1033 f!4919 1) 1))))

(assert (= (and bs!41261 (not res!45845)) b!87794))

(declare-fun b_lambda!17419 () Bool)

(assert (=> (not b_lambda!17419) (not b!87794)))

(assert (=> b!87794 t!48554))

(declare-fun b_and!59925 () Bool)

(assert (= b_and!59923 (and (=> t!48554 result!46971) b_and!59925)))

(declare-fun bs!41262 () Bool)

(declare-fun m!84064 () Bool)

(assert (= bs!41262 m!84064))

(assert (=> bs!41262 s!2559))

(assert (=> b!87792 m!84064))

(declare-fun bs!41263 () Bool)

(declare-fun s!2561 () Bool)

(assert (= bs!41263 (and start!11472 s!2561)))

(declare-fun res!45846 () Bool)

(declare-fun e!47683 () Bool)

(assert (=> bs!41263 (=> res!45846 e!47683)))

(assert (=> bs!41263 (= res!45846 (<= 2 0))))

(assert (=> bs!41263 (=> true e!47683)))

(declare-fun b!87795 () Bool)

(assert (=> b!87795 (= e!47683 (> (dynLambda!1033 f!4919 2) 1))))

(assert (= (and bs!41263 (not res!45846)) b!87795))

(declare-fun b_lambda!17421 () Bool)

(assert (=> (not b_lambda!17421) (not b!87795)))

(assert (=> b!87795 t!48556))

(declare-fun b_and!59927 () Bool)

(assert (= b_and!59925 (and (=> t!48556 result!46973) b_and!59927)))

(declare-fun bs!41264 () Bool)

(declare-fun m!84066 () Bool)

(assert (= bs!41264 m!84066))

(assert (=> bs!41264 s!2561))

(assert (=> b!87792 m!84066))

(push 1)

(assert (not b_lambda!17419))

(assert (not b_lambda!17415))

(assert (not b_lambda!17421))

(assert b_and!59927)

(assert (not b_next!39775))

(assert (not b_lambda!17417))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59927)

(assert (not b_next!39775))

(check-sat)

(pop 1)

