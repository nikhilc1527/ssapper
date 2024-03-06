; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4 () Bool)

(assert start!4)

(declare-fun b_free!1 () Bool)

(declare-fun b_next!1 () Bool)

(assert (=> start!4 (= b_free!1 (not b_next!1))))

(declare-fun tp!2 () Bool)

(declare-fun b_and!1 () Bool)

(assert (=> start!4 (= tp!2 b_and!1)))

(declare-fun res!318 () Bool)

(declare-fun e!59 () Bool)

(assert (=> start!4 (=> (not res!318) (not e!59))))

(declare-datatypes () ((Positive!5 (Positive!6 (i!178 Int)))))

(declare-fun res!315 () Positive!5)

(declare-fun f!311 () Int)

(declare-fun dynLambda!0 (Int Positive!5) Positive!5)

(assert (=> start!4 (= res!318 (= res!315 (dynLambda!0 f!311 (Positive!6 1))))))

(assert (=> start!4 e!59))

(declare-fun inv!18 (Positive!5) Bool)

(assert (=> start!4 (inv!18 res!315)))

(assert (=> start!4 tp!2))

(declare-fun b!190 () Bool)

(assert (=> b!190 (= e!59 (<= (i!178 res!315) 0))))

(assert (= (and start!4 res!318) b!190))

(declare-fun b_lambda!1 () Bool)

(assert (=> (not b_lambda!1) (not start!4)))

(declare-fun t!249 () Bool)

(declare-fun tb!1 () Bool)

(assert (=> (and start!4 (= f!311 f!311) t!249) tb!1))

(declare-fun result!3 () Bool)

(assert (=> tb!1 (= result!3 (inv!18 (dynLambda!0 f!311 (Positive!6 1))))))

(declare-fun m!51 () Bool)

(assert (=> tb!1 m!51))

(assert (=> start!4 t!249))

(declare-fun b_and!3 () Bool)

(assert (= b_and!1 (and (=> t!249 result!3) b_and!3)))

(declare-fun m!53 () Bool)

(assert (=> start!4 m!53))

(declare-fun m!55 () Bool)

(assert (=> start!4 m!55))

(push 1)

(assert b_and!3)

(assert (not b_next!1))

(assert (not tb!1))

(assert (not b_lambda!1))

(assert (not start!4))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3)

(assert (not b_next!1))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3 () Bool)

(assert (= b_lambda!1 (or (and start!4 b_free!1) b_lambda!3)))

(push 1)

(assert (not b_lambda!3))

(assert b_and!3)

(assert (not b_next!1))

(assert (not tb!1))

(assert (not start!4))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3)

(assert (not b_next!1))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!34 () Bool)

(assert (=> d!34 (= (inv!18 res!315) (> (i!178 res!315) 0))))

(assert (=> start!4 d!34))

(declare-fun d!36 () Bool)

(assert (=> d!36 (= (inv!18 (dynLambda!0 f!311 (Positive!6 1))) (> (i!178 (dynLambda!0 f!311 (Positive!6 1))) 0))))

(assert (=> tb!1 d!36))

(push 1)

(assert (not b_lambda!3))

(assert b_and!3)

(assert (not b_next!1))

(check-sat)

(pop 1)

