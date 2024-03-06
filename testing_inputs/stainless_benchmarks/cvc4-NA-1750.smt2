; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12042 () Bool)

(assert start!12042)

(declare-fun b!90580 () Bool)

(declare-fun b_free!7637 () Bool)

(declare-fun b_next!40017 () Bool)

(assert (=> b!90580 (= b_free!7637 (not b_next!40017))))

(declare-fun tp!17711 () Bool)

(declare-fun b_and!60699 () Bool)

(assert (=> b!90580 (= tp!17711 b_and!60699)))

(declare-fun b_free!7639 () Bool)

(declare-fun b_next!40019 () Bool)

(assert (=> b!90580 (= b_free!7639 (not b_next!40019))))

(declare-fun tp!17712 () Bool)

(declare-fun b_and!60701 () Bool)

(assert (=> b!90580 (= tp!17712 b_and!60701)))

(declare-fun b!90578 () Bool)

(declare-fun lambda!11104 () Int)

(declare-fun b_next!40021 () Bool)

(declare-datatypes () ((tuple2!432 (tuple2!433 (_1!251 Int) (_2!251 Int)))))

(declare-datatypes () ((~>!20 (~>!21 (pre!27 Int) (f!5084 Int)))))

(declare-fun f!5069 () ~>!20)

(assert (=> b!90580 (= b_next!40017 (or (and b!90578 (= lambda!11104 (pre!27 f!5069))) b_next!40021))))

(declare-fun b_next!40023 () Bool)

(declare-fun lambda!11105 () Int)

(assert (=> b!90580 (= b_next!40019 (or (and b!90578 (= lambda!11105 (f!5084 f!5069))) b_next!40023))))

(declare-fun res!47493 () Bool)

(declare-fun e!49457 () Bool)

(assert (=> start!12042 (=> (not res!47493) (not e!49457))))

(declare-fun x!31954 () Int)

(assert (=> start!12042 (= res!47493 (> x!31954 0))))

(assert (=> start!12042 e!49457))

(assert (=> start!12042 true))

(declare-fun e!49456 () Bool)

(assert (=> start!12042 e!49456))

(declare-fun res!47494 () Bool)

(assert (=> b!90578 (=> (not res!47494) (not e!49457))))

(assert (=> b!90578 (= res!47494 (= f!5069 (~>!21 lambda!11104 lambda!11105)))))

(declare-fun b!90579 () Bool)

(declare-fun dynLambda!1100 (Int tuple2!432) Bool)

(assert (=> b!90579 (= e!49457 (dynLambda!1100 (pre!27 f!5069) (tuple2!433 0 0)))))

(assert (=> b!90580 (= e!49456 (and tp!17711 tp!17712))))

(assert (= (and start!12042 res!47493) b!90578))

(assert (= (and b!90578 res!47494) b!90579))

(assert (= start!12042 b!90580))

(declare-fun b_lambda!18449 () Bool)

(assert (=> (not b_lambda!18449) (not b!90579)))

(declare-fun t!48981 () Bool)

(declare-fun tb!46777 () Bool)

(assert (=> (and b!90580 (= (pre!27 f!5069) (pre!27 f!5069)) t!48981) tb!46777))

(declare-fun result!47265 () Bool)

(assert (=> tb!46777 (= result!47265 true)))

(assert (=> b!90579 t!48981))

(declare-fun b_and!60703 () Bool)

(assert (= b_and!60699 (and (=> t!48981 result!47265) b_and!60703)))

(declare-fun m!86394 () Bool)

(assert (=> b!90579 m!86394))

(push 1)

(assert (not b_next!40023))

(assert (not b_next!40021))

(assert (not b_lambda!18449))

(assert b_and!60703)

(assert b_and!60701)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60701)

(assert b_and!60703)

(assert (not b_next!40023))

(assert (not b_next!40021))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18451 () Bool)

(assert (= b_lambda!18449 (or (and b!90578 (= lambda!11104 (pre!27 f!5069))) (and b!90580 b_free!7637) b_lambda!18451)))

(declare-fun bs!41653 () Bool)

(declare-fun d!59639 () Bool)

(assert (= bs!41653 (and d!59639 b!90578)))

(assert (=> bs!41653 (= (dynLambda!1100 lambda!11104 (tuple2!433 0 0)) (> (_1!251 (tuple2!433 0 0)) (_2!251 (tuple2!433 0 0))))))

(assert (=> (and b!90578 (= lambda!11104 (pre!27 f!5069)) b!90579) d!59639))

(push 1)

(assert (not b_next!40023))

(assert (not b_next!40021))

(assert (not b_lambda!18451))

(assert b_and!60703)

(assert b_and!60701)

(check-sat)

(pop 1)

