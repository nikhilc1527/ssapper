; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4306 () Bool)

(assert start!4306)

(declare-fun res!15772 () Bool)

(declare-fun e!17421 () Bool)

(assert (=> start!4306 (=> (not res!15772) (not e!17421))))

(declare-datatypes () ((Counter!7 (Counter!8 (v!520 Int)))))

(declare-datatypes () ((Container!8 (Container!9 (t!4578 Counter!7)))))

(declare-fun cc!21 () Container!8)

(assert (=> start!4306 (= res!15772 (= cc!21 (Container!9 (Counter!8 0))))))

(assert (=> start!4306 e!17421))

(assert (=> start!4306 true))

(declare-fun b!34504 () Bool)

(declare-fun res!15773 () Bool)

(assert (=> b!34504 (=> (not res!15773) (not e!17421))))

(declare-datatypes () ((Unit!180 (Unit!181))))

(declare-datatypes () ((tuple2!118 (tuple2!119 (_1!59 Unit!180) (_2!59 Container!8)))))

(declare-fun res!15749 () tuple2!118)

(declare-fun lambda!4013 () Int)

(declare-fun apply3!1 (Container!8 Int) tuple2!118)

(assert (=> b!34504 (= res!15773 (= res!15749 (apply3!1 cc!21 lambda!4013)))))

(declare-fun b!34505 () Bool)

(declare-fun tmp!64 () Unit!180)

(declare-fun cc!24 () Container!8)

(declare-fun tmp!63 () Unit!180)

(declare-fun Unit!182 () Unit!180)

(assert (=> b!34505 (= e!17421 (and (= cc!24 (_2!59 res!15749)) (= tmp!63 Unit!182) (= tmp!64 (_1!59 res!15749)) (not (= (v!520 (t!4578 cc!24)) 1))))))

(assert (= (and start!4306 res!15772) b!34504))

(assert (= (and b!34504 res!15773) b!34505))

(declare-fun m!37133 () Bool)

(assert (=> b!34504 m!37133))

(push 1)

(assert (not b!34504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18017 () Bool)

(declare-fun lt!6487 () tuple2!118)

(declare-fun dynLambda!619 (Int Container!8) tuple2!118)

(assert (=> d!18017 (= lt!6487 (dynLambda!619 lambda!4013 cc!21))))

(assert (=> d!18017 (= (apply3!1 cc!21 lambda!4013) (tuple2!119 (_1!59 lt!6487) (_2!59 lt!6487)))))

(declare-fun b_lambda!9369 () Bool)

(assert (=> (not b_lambda!9369) (not d!18017)))

(declare-fun bs!11094 () Bool)

(assert (= bs!11094 d!18017))

(declare-fun m!37135 () Bool)

(assert (=> bs!11094 m!37135))

(assert (=> b!34504 d!18017))

(declare-fun b_lambda!9371 () Bool)

(assert (= b_lambda!9369 (or b!34504 b_lambda!9371)))

(declare-fun bs!11095 () Bool)

(declare-fun d!18019 () Bool)

(assert (= bs!11095 (and d!18019 b!34504)))

(declare-fun Unit!183 () Unit!180)

(assert (=> bs!11095 (= (dynLambda!619 lambda!4013 cc!21) (tuple2!119 Unit!183 (Container!9 (Counter!8 1))))))

(assert (=> d!18017 d!18019))

(push 1)

(assert (not b_lambda!9371))

(check-sat)

(pop 1)

