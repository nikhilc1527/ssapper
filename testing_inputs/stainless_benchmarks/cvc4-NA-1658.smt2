; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11484 () Bool)

(assert start!11484)

(declare-fun b_free!7487 () Bool)

(declare-fun b_next!39791 () Bool)

(assert (=> start!11484 (= b_free!7487 (not b_next!39791))))

(declare-fun tp!17143 () Bool)

(declare-fun b_and!59975 () Bool)

(assert (=> start!11484 (= tp!17143 b_and!59975)))

(declare-fun res!45898 () Bool)

(declare-fun e!47718 () Bool)

(assert (=> start!11484 (=> (not res!45898) (not e!47718))))

(declare-fun x!30639 () Int)

(assert (=> start!11484 (= res!45898 (> x!30639 0))))

(assert (=> start!11484 e!47718))

(assert (=> start!11484 true))

(assert (=> start!11484 tp!17143))

(declare-fun b!87862 () Bool)

(declare-fun res!45899 () Bool)

(assert (=> b!87862 (=> (not res!45899) (not e!47718))))

(assert (=> b!87862 (= res!45899 true)))

(declare-fun b!87863 () Bool)

(declare-fun res!45897 () Bool)

(assert (=> b!87863 (=> (not res!45897) (not e!47718))))

(declare-fun res!45820 () Int)

(declare-fun f!4921 () Int)

(declare-fun dynLambda!1040 (Int Int) Int)

(assert (=> b!87863 (= res!45897 (= res!45820 (dynLambda!1040 f!4921 1)))))

(declare-fun b!87864 () Bool)

(assert (=> b!87864 (= e!47718 (<= res!45820 0))))

(assert (= (and start!11484 res!45898) b!87862))

(assert (= (and b!87862 res!45899) b!87863))

(assert (= (and b!87863 res!45897) b!87864))

(declare-fun b_lambda!17455 () Bool)

(assert (=> (not b_lambda!17455) (not b!87863)))

(declare-fun t!48570 () Bool)

(declare-fun tb!46557 () Bool)

(assert (=> (and start!11484 (= f!4921 f!4921) t!48570) tb!46557))

(declare-fun result!46987 () Bool)

(assert (=> tb!46557 (= result!46987 true)))

(assert (=> b!87863 t!48570))

(declare-fun b_and!59977 () Bool)

(assert (= b_and!59975 (and (=> t!48570 result!46987) b_and!59977)))

(declare-fun bs!41280 () Bool)

(declare-fun s!2571 () Bool)

(assert (= bs!41280 (and start!11484 b!87862 s!2571)))

(declare-fun res!45900 () Bool)

(declare-fun e!47719 () Bool)

(assert (=> bs!41280 (=> res!45900 e!47719)))

(assert (=> bs!41280 (= res!45900 (<= 1 0))))

(assert (=> bs!41280 (=> true e!47719)))

(declare-fun b!87865 () Bool)

(assert (=> b!87865 (= e!47719 (> (dynLambda!1040 f!4921 1) 0))))

(assert (= (and bs!41280 (not res!45900)) b!87865))

(declare-fun b_lambda!17457 () Bool)

(assert (=> (not b_lambda!17457) (not b!87865)))

(assert (=> b!87865 t!48570))

(declare-fun b_and!59979 () Bool)

(assert (= b_and!59977 (and (=> t!48570 result!46987) b_and!59979)))

(declare-fun bs!41281 () Bool)

(declare-fun m!84078 () Bool)

(assert (= bs!41281 m!84078))

(assert (=> bs!41281 s!2571))

(assert (=> b!87863 m!84078))

(push 1)

(assert (not b_lambda!17455))

(assert (not b_lambda!17457))

(assert b_and!59979)

(assert (not b_next!39791))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59979)

(assert (not b_next!39791))

(check-sat)

(pop 1)

