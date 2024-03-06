; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12132 () Bool)

(assert start!12132)

(declare-fun b_free!7653 () Bool)

(declare-fun b_next!40041 () Bool)

(assert (=> start!12132 (= b_free!7653 (not b_next!40041))))

(declare-fun tp!17861 () Bool)

(declare-fun b_and!60737 () Bool)

(assert (=> start!12132 (= tp!17861 b_and!60737)))

(declare-fun res!47642 () Bool)

(declare-fun e!49575 () Bool)

(assert (=> start!12132 (=> (not res!47642) (not e!49575))))

(declare-fun f!5163 () Int)

(declare-datatypes () ((Positive!9 (Positive!10 (x!32307 Int)))))

(declare-fun p!1047 () Positive!9)

(declare-fun i!611 () Int)

(declare-fun dynLambda!1115 (Int Int) Positive!9)

(assert (=> start!12132 (= res!47642 (= p!1047 (dynLambda!1115 f!5163 i!611)))))

(assert (=> start!12132 e!49575))

(declare-fun inv!39 (Positive!9) Bool)

(assert (=> start!12132 (inv!39 p!1047)))

(assert (=> start!12132 tp!17861))

(assert (=> start!12132 true))

(declare-fun b!90818 () Bool)

(assert (=> b!90818 (= e!49575 (not (inv!39 (Positive!10 (- 1)))))))

(assert (= (and start!12132 res!47642) b!90818))

(declare-fun b_lambda!18493 () Bool)

(assert (=> (not b_lambda!18493) (not start!12132)))

(declare-fun t!49012 () Bool)

(declare-fun tb!46795 () Bool)

(assert (=> (and start!12132 (= f!5163 f!5163) t!49012) tb!46795))

(declare-fun result!47307 () Bool)

(assert (=> tb!46795 (= result!47307 (inv!39 (dynLambda!1115 f!5163 i!611)))))

(declare-fun m!86660 () Bool)

(assert (=> tb!46795 m!86660))

(assert (=> start!12132 t!49012))

(declare-fun b_and!60739 () Bool)

(assert (= b_and!60737 (and (=> t!49012 result!47307) b_and!60739)))

(declare-fun m!86662 () Bool)

(assert (=> start!12132 m!86662))

(declare-fun m!86664 () Bool)

(assert (=> start!12132 m!86664))

(declare-fun m!86666 () Bool)

(assert (=> b!90818 m!86666))

(push 1)

(assert (not b!90818))

(assert (not b_next!40041))

(assert (not tb!46795))

(assert (not b_lambda!18493))

(assert b_and!60739)

(assert (not start!12132))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60739)

(assert (not b_next!40041))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18495 () Bool)

(assert (= b_lambda!18493 (or (and start!12132 b_free!7653) b_lambda!18495)))

(push 1)

(assert (not b!90818))

(assert (not b_next!40041))

(assert (not b_lambda!18495))

(assert (not tb!46795))

(assert b_and!60739)

(assert (not start!12132))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60739)

(assert (not b_next!40041))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59726 () Bool)

(assert (=> d!59726 (= (inv!39 (Positive!10 (- 1))) (>= (x!32307 (Positive!10 (- 1))) 0))))

(assert (=> b!90818 d!59726))

(declare-fun d!59728 () Bool)

(assert (=> d!59728 (= (inv!39 (dynLambda!1115 f!5163 i!611)) (>= (x!32307 (dynLambda!1115 f!5163 i!611)) 0))))

(assert (=> tb!46795 d!59728))

(declare-fun d!59730 () Bool)

(assert (=> d!59730 (= (inv!39 p!1047) (>= (x!32307 p!1047) 0))))

(assert (=> start!12132 d!59730))

(push 1)

(assert (not b_lambda!18495))

(assert b_and!60739)

(assert (not b_next!40041))

(check-sat)

(get-model)

(pop 1)

