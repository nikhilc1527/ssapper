; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4298 () Bool)

(assert start!4298)

(declare-fun res!15758 () Bool)

(declare-fun e!17415 () Bool)

(assert (=> start!4298 (=> (not res!15758) (not e!17415))))

(declare-datatypes () ((Counter!3 (Counter!4 (v!518 Int)))))

(declare-datatypes () ((Container!4 (Container!5 (t!4572 Counter!3)))))

(declare-fun cc!25 () Container!4)

(assert (=> start!4298 (= res!15758 (= cc!25 (Container!5 (Counter!4 0))))))

(assert (=> start!4298 e!17415))

(assert (=> start!4298 true))

(declare-fun b!34492 () Bool)

(declare-fun res!15759 () Bool)

(assert (=> b!34492 (=> (not res!15759) (not e!17415))))

(declare-fun lambda!4007 () Int)

(declare-datatypes () ((Unit!172 (Unit!173))))

(declare-datatypes () ((tuple2!112 (tuple2!113 (_1!56 Unit!172) (_2!56 Container!4)))))

(declare-fun res!15752 () tuple2!112)

(declare-fun apply1!1 (Container!4 Int) tuple2!112)

(assert (=> b!34492 (= res!15759 (= res!15752 (apply1!1 cc!25 lambda!4007)))))

(declare-fun b!34493 () Bool)

(declare-fun tmp!69 () Unit!172)

(declare-fun cc!28 () Container!4)

(declare-fun tmp!68 () Unit!172)

(declare-fun Unit!174 () Unit!172)

(assert (=> b!34493 (= e!17415 (and (= cc!28 (_2!56 res!15752)) (= tmp!68 Unit!174) (= tmp!69 (_1!56 res!15752)) (not (= (v!518 (t!4572 cc!28)) 1))))))

(assert (= (and start!4298 res!15758) b!34492))

(assert (= (and b!34492 res!15759) b!34493))

(declare-fun m!37125 () Bool)

(assert (=> b!34492 m!37125))

(push 1)

(assert (not b!34492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18009 () Bool)

(declare-fun lt!6481 () tuple2!112)

(declare-fun dynLambda!617 (Int Container!4) tuple2!112)

(assert (=> d!18009 (= lt!6481 (dynLambda!617 lambda!4007 cc!25))))

(assert (=> d!18009 (= (apply1!1 cc!25 lambda!4007) (tuple2!113 (_1!56 lt!6481) (_2!56 lt!6481)))))

(declare-fun b_lambda!9361 () Bool)

(assert (=> (not b_lambda!9361) (not d!18009)))

(declare-fun bs!11088 () Bool)

(assert (= bs!11088 d!18009))

(declare-fun m!37127 () Bool)

(assert (=> bs!11088 m!37127))

(assert (=> b!34492 d!18009))

(declare-fun b_lambda!9363 () Bool)

(assert (= b_lambda!9361 (or b!34492 b_lambda!9363)))

(declare-fun bs!11089 () Bool)

(declare-fun d!18011 () Bool)

(assert (= bs!11089 (and d!18011 b!34492)))

(declare-fun Unit!175 () Unit!172)

(assert (=> bs!11089 (= (dynLambda!617 lambda!4007 cc!25) (tuple2!113 Unit!175 (Container!5 (Counter!4 1))))))

(assert (=> d!18009 d!18011))

(push 1)

(assert (not b_lambda!9363))

(check-sat)

(pop 1)

