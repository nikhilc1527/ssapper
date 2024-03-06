; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12044 () Bool)

(assert start!12044)

(declare-fun b!90592 () Bool)

(declare-fun b_free!7641 () Bool)

(declare-fun b_next!40025 () Bool)

(assert (=> b!90592 (= b_free!7641 (not b_next!40025))))

(declare-fun tp!17718 () Bool)

(declare-fun b_and!60705 () Bool)

(assert (=> b!90592 (= tp!17718 b_and!60705)))

(declare-fun b_free!7643 () Bool)

(declare-fun b_next!40027 () Bool)

(assert (=> b!90592 (= b_free!7643 (not b_next!40027))))

(declare-fun tp!17717 () Bool)

(declare-fun b_and!60707 () Bool)

(assert (=> b!90592 (= tp!17717 b_and!60707)))

(declare-fun lambda!11110 () Int)

(declare-fun b_next!40029 () Bool)

(declare-datatypes () ((tuple2!434 (tuple2!435 (_1!252 Int) (_2!252 Int)))))

(declare-datatypes () ((~>!22 (~>!23 (pre!28 Int) (f!5089 Int)))))

(declare-fun f!5069 () ~>!22)

(declare-fun b!90589 () Bool)

(assert (=> b!90592 (= b_next!40025 (or (and b!90589 (= lambda!11110 (pre!28 f!5069))) b_next!40029))))

(declare-fun b_next!40031 () Bool)

(declare-fun lambda!11111 () Int)

(assert (=> b!90592 (= b_next!40027 (or (and b!90589 (= lambda!11111 (f!5089 f!5069))) b_next!40031))))

(declare-fun b!90591 () Bool)

(declare-fun e!49462 () Bool)

(declare-fun x!31954 () Int)

(declare-fun apply!54 (~>!22 tuple2!434) Int)

(assert (=> b!90591 (= e!49462 (<= (apply!54 f!5069 (tuple2!435 x!31954 0)) 0))))

(declare-fun e!49463 () Bool)

(assert (=> b!90592 (= e!49463 (and tp!17718 tp!17717))))

(declare-fun b!90590 () Bool)

(declare-fun res!47502 () Bool)

(assert (=> b!90590 (=> (not res!47502) (not e!49462))))

(declare-fun dynLambda!1101 (Int tuple2!434) Bool)

(assert (=> b!90590 (= res!47502 (not (dynLambda!1101 (pre!28 f!5069) (tuple2!435 0 0))))))

(declare-fun res!47503 () Bool)

(assert (=> start!12044 (=> (not res!47503) (not e!49462))))

(assert (=> start!12044 (= res!47503 (> x!31954 0))))

(assert (=> start!12044 e!49462))

(assert (=> start!12044 true))

(assert (=> start!12044 e!49463))

(declare-fun res!47501 () Bool)

(assert (=> b!90589 (=> (not res!47501) (not e!49462))))

(assert (=> b!90589 (= res!47501 (= f!5069 (~>!23 lambda!11110 lambda!11111)))))

(assert (= (and start!12044 res!47503) b!90589))

(assert (= (and b!90589 res!47501) b!90590))

(assert (= (and b!90590 res!47502) b!90591))

(assert (= start!12044 b!90592))

(declare-fun b_lambda!18453 () Bool)

(assert (=> (not b_lambda!18453) (not b!90590)))

(declare-fun t!48983 () Bool)

(declare-fun tb!46779 () Bool)

(assert (=> (and b!90592 (= (pre!28 f!5069) (pre!28 f!5069)) t!48983) tb!46779))

(declare-fun result!47267 () Bool)

(assert (=> tb!46779 (= result!47267 true)))

(assert (=> b!90590 t!48983))

(declare-fun b_and!60709 () Bool)

(assert (= b_and!60705 (and (=> t!48983 result!47267) b_and!60709)))

(declare-fun m!86396 () Bool)

(assert (=> b!90591 m!86396))

(declare-fun m!86398 () Bool)

(assert (=> b!90590 m!86398))

(push 1)

(assert (not b_next!40029))

(assert (not b!90591))

(assert (not b_next!40031))

(assert b_and!60707)

(assert b_and!60709)

(assert (not b_lambda!18453))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60707)

(assert b_and!60709)

(assert (not b_next!40031))

(assert (not b_next!40029))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18455 () Bool)

(assert (= b_lambda!18453 (or (and b!90589 (= lambda!11110 (pre!28 f!5069))) (and b!90592 b_free!7641) b_lambda!18455)))

(declare-fun bs!41655 () Bool)

(declare-fun d!59641 () Bool)

(assert (= bs!41655 (and d!59641 b!90589)))

(assert (=> bs!41655 (= (dynLambda!1101 lambda!11110 (tuple2!435 0 0)) (> (_1!252 (tuple2!435 0 0)) (_2!252 (tuple2!435 0 0))))))

(assert (=> (and b!90589 (= lambda!11110 (pre!28 f!5069)) b!90590) d!59641))

(push 1)

(assert (not b_lambda!18455))

(assert (not b_next!40029))

(assert (not b!90591))

(assert (not b_next!40031))

(assert b_and!60707)

(assert b_and!60709)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60707)

(assert b_and!60709)

(assert (not b_next!40031))

(assert (not b_next!40029))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59643 () Bool)

(declare-fun dynLambda!1102 (Int tuple2!434) Int)

(assert (=> d!59643 (= (apply!54 f!5069 (tuple2!435 x!31954 0)) (dynLambda!1102 (f!5089 f!5069) (tuple2!435 x!31954 0)))))

(declare-fun b_lambda!18457 () Bool)

(assert (=> (not b_lambda!18457) (not d!59643)))

(declare-fun t!48985 () Bool)

(declare-fun tb!46781 () Bool)

(assert (=> (and b!90592 (= (f!5089 f!5069) (f!5089 f!5069)) t!48985) tb!46781))

(declare-fun result!47269 () Bool)

(assert (=> tb!46781 (= result!47269 true)))

(assert (=> d!59643 t!48985))

(declare-fun b_and!60711 () Bool)

(assert (= b_and!60707 (and (=> t!48985 result!47269) b_and!60711)))

(declare-fun m!86400 () Bool)

(assert (=> d!59643 m!86400))

(assert (=> b!90591 d!59643))

(declare-fun b_lambda!18459 () Bool)

(assert (= b_lambda!18457 (or (and b!90589 (= lambda!11111 (f!5089 f!5069))) (and b!90592 b_free!7643) b_lambda!18459)))

(declare-fun bs!41656 () Bool)

(declare-fun d!59645 () Bool)

(assert (= bs!41656 (and d!59645 b!90589)))

(assert (=> bs!41656 (> (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0)))))

(declare-fun partial!0 (Int Int) Int)

(assert (=> bs!41656 (= (dynLambda!1102 lambda!11111 (tuple2!435 x!31954 0)) (partial!0 (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0))))))

(declare-fun m!86402 () Bool)

(assert (=> bs!41656 m!86402))

(assert (=> (and b!90589 (= lambda!11111 (f!5089 f!5069)) d!59643) d!59645))

(push 1)

(assert (not b_lambda!18455))

(assert b_and!60711)

(assert (not b_next!40029))

(assert (not b_next!40031))

(assert (not b_lambda!18459))

(assert b_and!60709)

(assert (not bs!41656))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60711)

(assert b_and!60709)

(assert (not b_next!40031))

(assert (not b_next!40029))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59647 () Bool)

(assert (=> d!59647 (and (> (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0))) (>= (- (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0))) 0))))

(assert (=> d!59647 (= (partial!0 (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0))) (- (_1!252 (tuple2!435 x!31954 0)) (_2!252 (tuple2!435 x!31954 0))))))

(assert (=> bs!41656 d!59647))

(push 1)

(assert (not b_lambda!18455))

(assert b_and!60711)

(assert (not b_next!40029))

(assert (not b_next!40031))

(assert (not b_lambda!18459))

(assert b_and!60709)

(check-sat)

(pop 1)

