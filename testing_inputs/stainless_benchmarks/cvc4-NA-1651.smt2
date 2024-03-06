; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11470 () Bool)

(assert start!11470)

(declare-fun b_free!7469 () Bool)

(declare-fun b_next!39773 () Bool)

(assert (=> start!11470 (= b_free!7469 (not b_next!39773))))

(declare-fun tp!17116 () Bool)

(declare-fun b_and!59913 () Bool)

(assert (=> start!11470 (= tp!17116 b_and!59913)))

(declare-fun res!45834 () Bool)

(declare-fun e!47675 () Bool)

(assert (=> start!11470 (=> (not res!45834) (not e!47675))))

(assert (=> start!11470 (= res!45834 true)))

(assert (=> start!11470 e!47675))

(assert (=> start!11470 tp!17116))

(assert (=> start!11470 true))

(declare-fun b!87783 () Bool)

(declare-fun res!45835 () Bool)

(assert (=> b!87783 (=> (not res!45835) (not e!47675))))

(declare-fun res!45819 () Int)

(declare-fun f!4920 () Int)

(declare-fun dynLambda!1032 (Int Int) Int)

(assert (=> b!87783 (= res!45835 (= res!45819 (dynLambda!1032 f!4920 10)))))

(declare-fun b!87784 () Bool)

(assert (=> b!87784 (= e!47675 (<= res!45819 0))))

(assert (= (and start!11470 res!45834) b!87783))

(assert (= (and b!87783 res!45835) b!87784))

(declare-fun b_lambda!17411 () Bool)

(assert (=> (not b_lambda!17411) (not b!87783)))

(declare-fun t!48552 () Bool)

(declare-fun tb!46539 () Bool)

(assert (=> (and start!11470 (= f!4920 f!4920) t!48552) tb!46539))

(declare-fun result!46969 () Bool)

(assert (=> tb!46539 (= result!46969 true)))

(assert (=> b!87783 t!48552))

(declare-fun b_and!59915 () Bool)

(assert (= b_and!59913 (and (=> t!48552 result!46969) b_and!59915)))

(declare-fun bs!41258 () Bool)

(declare-fun s!2557 () Bool)

(assert (= bs!41258 (and start!11470 s!2557)))

(declare-fun res!45836 () Bool)

(declare-fun e!47676 () Bool)

(assert (=> bs!41258 (=> res!45836 e!47676)))

(assert (=> bs!41258 (= res!45836 (<= 10 0))))

(assert (=> bs!41258 (=> true e!47676)))

(declare-fun b!87785 () Bool)

(assert (=> b!87785 (= e!47676 (> (dynLambda!1032 f!4920 10) 0))))

(assert (= (and bs!41258 (not res!45836)) b!87785))

(declare-fun b_lambda!17413 () Bool)

(assert (=> (not b_lambda!17413) (not b!87785)))

(assert (=> b!87785 t!48552))

(declare-fun b_and!59917 () Bool)

(assert (= b_and!59915 (and (=> t!48552 result!46969) b_and!59917)))

(declare-fun bs!41259 () Bool)

(declare-fun m!84062 () Bool)

(assert (= bs!41259 m!84062))

(assert (=> bs!41259 s!2557))

(assert (=> b!87783 m!84062))

(push 1)

(assert (not b_lambda!17413))

(assert (not b_lambda!17411))

(assert b_and!59917)

(assert (not b_next!39773))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59917)

(assert (not b_next!39773))

(check-sat)

(pop 1)

