; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12040 () Bool)

(assert start!12040)

(declare-fun b!90569 () Bool)

(declare-fun b_free!7629 () Bool)

(declare-fun b_next!40001 () Bool)

(assert (=> b!90569 (= b_free!7629 (not b_next!40001))))

(declare-fun tp!17706 () Bool)

(declare-fun b_and!60683 () Bool)

(assert (=> b!90569 (= tp!17706 b_and!60683)))

(declare-fun b_free!7631 () Bool)

(declare-fun b_next!40003 () Bool)

(assert (=> b!90569 (= b_free!7631 (not b_next!40003))))

(declare-fun tp!17703 () Bool)

(declare-fun b_and!60685 () Bool)

(assert (=> b!90569 (= tp!17703 b_and!60685)))

(declare-fun b!90570 () Bool)

(declare-fun b_free!7633 () Bool)

(declare-fun b_next!40005 () Bool)

(assert (=> b!90570 (= b_free!7633 (not b_next!40005))))

(declare-fun tp!17705 () Bool)

(declare-fun b_and!60687 () Bool)

(assert (=> b!90570 (= tp!17705 b_and!60687)))

(declare-fun b_free!7635 () Bool)

(declare-fun b_next!40007 () Bool)

(assert (=> b!90570 (= b_free!7635 (not b_next!40007))))

(declare-fun tp!17704 () Bool)

(declare-fun b_and!60689 () Bool)

(assert (=> b!90570 (= tp!17704 b_and!60689)))

(declare-fun b_next!40009 () Bool)

(declare-fun lambda!11098 () Int)

(declare-datatypes () ((tuple2!430 (tuple2!431 (_1!250 Int) (_2!250 Int)))))

(declare-datatypes () ((~>!18 (~>!19 (pre!26 Int) (f!5079 Int)))))

(declare-fun f!5069 () ~>!18)

(declare-fun b!90571 () Bool)

(assert (=> b!90569 (= b_next!40001 (or (and b!90571 (= lambda!11098 (pre!26 f!5069))) b_next!40009))))

(declare-fun thiss!10364 () ~>!18)

(declare-fun b_next!40011 () Bool)

(assert (=> b!90570 (= b_next!40005 (or (and b!90571 (= lambda!11098 (pre!26 thiss!10364))) b_next!40011))))

(declare-fun lambda!11099 () Int)

(declare-fun b_next!40013 () Bool)

(assert (=> b!90569 (= b_next!40003 (or (and b!90571 (= lambda!11099 (f!5079 f!5069))) b_next!40013))))

(declare-fun b_next!40015 () Bool)

(assert (=> b!90570 (= b_next!40007 (or (and b!90571 (= lambda!11099 (f!5079 thiss!10364))) b_next!40015))))

(declare-fun b!90566 () Bool)

(declare-fun res!47487 () Bool)

(declare-fun e!49449 () Bool)

(assert (=> b!90566 (=> (not res!47487) (not e!49449))))

(declare-fun x!31954 () Int)

(declare-fun a!1065 () tuple2!430)

(assert (=> b!90566 (= res!47487 (and (= thiss!10364 f!5069) (= a!1065 (tuple2!431 x!31954 0))))))

(declare-fun b!90567 () Bool)

(declare-fun dynLambda!1099 (Int tuple2!430) Bool)

(assert (=> b!90567 (= e!49449 (not (dynLambda!1099 (pre!26 thiss!10364) a!1065)))))

(declare-fun b!90568 () Bool)

(declare-fun res!47485 () Bool)

(assert (=> b!90568 (=> (not res!47485) (not e!49449))))

(assert (=> b!90568 (= res!47485 (not (dynLambda!1099 (pre!26 f!5069) (tuple2!431 0 0))))))

(declare-fun e!49450 () Bool)

(assert (=> b!90569 (= e!49450 (and tp!17706 tp!17703))))

(declare-fun e!49451 () Bool)

(assert (=> b!90570 (= e!49451 (and tp!17705 tp!17704))))

(declare-fun res!47486 () Bool)

(assert (=> b!90571 (=> (not res!47486) (not e!49449))))

(assert (=> b!90571 (= res!47486 (= f!5069 (~>!19 lambda!11098 lambda!11099)))))

(declare-fun res!47488 () Bool)

(assert (=> start!12040 (=> (not res!47488) (not e!49449))))

(assert (=> start!12040 (= res!47488 (> x!31954 0))))

(assert (=> start!12040 e!49449))

(assert (=> start!12040 true))

(assert (=> start!12040 e!49450))

(assert (=> start!12040 e!49451))

(assert (= (and start!12040 res!47488) b!90571))

(assert (= (and b!90571 res!47486) b!90568))

(assert (= (and b!90568 res!47485) b!90566))

(assert (= (and b!90566 res!47487) b!90567))

(assert (= start!12040 b!90569))

(assert (= start!12040 b!90570))

(declare-fun b_lambda!18441 () Bool)

(assert (=> (not b_lambda!18441) (not b!90567)))

(declare-fun t!48973 () Bool)

(declare-fun tb!46769 () Bool)

(assert (=> (and b!90569 (= (pre!26 f!5069) (pre!26 thiss!10364)) t!48973) tb!46769))

(declare-fun result!47257 () Bool)

(assert (=> tb!46769 (= result!47257 true)))

(assert (=> b!90567 t!48973))

(declare-fun b_and!60691 () Bool)

(assert (= b_and!60683 (and (=> t!48973 result!47257) b_and!60691)))

(declare-fun t!48975 () Bool)

(declare-fun tb!46771 () Bool)

(assert (=> (and b!90570 (= (pre!26 thiss!10364) (pre!26 thiss!10364)) t!48975) tb!46771))

(declare-fun result!47259 () Bool)

(assert (=> tb!46771 (= result!47259 true)))

(assert (=> b!90567 t!48975))

(declare-fun b_and!60693 () Bool)

(assert (= b_and!60687 (and (=> t!48975 result!47259) b_and!60693)))

(declare-fun b_lambda!18443 () Bool)

(assert (=> (not b_lambda!18443) (not b!90568)))

(declare-fun t!48977 () Bool)

(declare-fun tb!46773 () Bool)

(assert (=> (and b!90569 (= (pre!26 f!5069) (pre!26 f!5069)) t!48977) tb!46773))

(declare-fun result!47261 () Bool)

(assert (=> tb!46773 (= result!47261 true)))

(assert (=> b!90568 t!48977))

(declare-fun b_and!60695 () Bool)

(assert (= b_and!60691 (and (=> t!48977 result!47261) b_and!60695)))

(declare-fun tb!46775 () Bool)

(declare-fun t!48979 () Bool)

(assert (=> (and b!90570 (= (pre!26 thiss!10364) (pre!26 f!5069)) t!48979) tb!46775))

(declare-fun result!47263 () Bool)

(assert (=> tb!46775 (= result!47263 true)))

(assert (=> b!90568 t!48979))

(declare-fun b_and!60697 () Bool)

(assert (= b_and!60693 (and (=> t!48979 result!47263) b_and!60697)))

(declare-fun m!86390 () Bool)

(assert (=> b!90567 m!86390))

(declare-fun m!86392 () Bool)

(assert (=> b!90568 m!86392))

(push 1)

(assert (not b_lambda!18441))

(assert (not b_next!40011))

(assert (not b_lambda!18443))

(assert (not b_next!40015))

(assert b_and!60685)

(assert b_and!60689)

(assert b_and!60695)

(assert (not b_next!40013))

(assert b_and!60697)

(assert (not b_next!40009))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40011))

(assert (not b_next!40015))

(assert b_and!60685)

(assert b_and!60689)

(assert b_and!60695)

(assert (not b_next!40013))

(assert b_and!60697)

(assert (not b_next!40009))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18445 () Bool)

(assert (= b_lambda!18443 (or (and b!90571 (= lambda!11098 (pre!26 f!5069))) (and b!90569 b_free!7629) (and b!90570 b_free!7633 (= (pre!26 thiss!10364) (pre!26 f!5069))) b_lambda!18445)))

(declare-fun bs!41650 () Bool)

(declare-fun d!59635 () Bool)

(assert (= bs!41650 (and d!59635 b!90571)))

(assert (=> bs!41650 (= (dynLambda!1099 lambda!11098 (tuple2!431 0 0)) (> (_1!250 (tuple2!431 0 0)) (_2!250 (tuple2!431 0 0))))))

(assert (=> (and b!90571 (= lambda!11098 (pre!26 f!5069)) b!90568) d!59635))

(declare-fun b_lambda!18447 () Bool)

(assert (= b_lambda!18441 (or (and b!90571 (= lambda!11098 (pre!26 thiss!10364))) (and b!90569 b_free!7629 (= (pre!26 f!5069) (pre!26 thiss!10364))) (and b!90570 b_free!7633) b_lambda!18447)))

(declare-fun bs!41651 () Bool)

(declare-fun d!59637 () Bool)

(assert (= bs!41651 (and d!59637 b!90571)))

(assert (=> bs!41651 (= (dynLambda!1099 lambda!11098 a!1065) (> (_1!250 a!1065) (_2!250 a!1065)))))

(assert (=> (and b!90571 (= lambda!11098 (pre!26 thiss!10364)) b!90567) d!59637))

(push 1)

(assert (not b_lambda!18447))

(assert (not b_next!40011))

(assert (not b_next!40015))

(assert (not b_lambda!18445))

(assert b_and!60685)

(assert b_and!60689)

(assert b_and!60695)

(assert (not b_next!40013))

(assert b_and!60697)

(assert (not b_next!40009))

(check-sat)

(pop 1)

