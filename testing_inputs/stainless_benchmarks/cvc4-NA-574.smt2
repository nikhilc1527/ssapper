; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4302 () Bool)

(assert start!4302)

(declare-fun res!15765 () Bool)

(declare-fun e!17418 () Bool)

(assert (=> start!4302 (=> (not res!15765) (not e!17418))))

(declare-datatypes () ((Counter!5 (Counter!6 (v!519 Int)))))

(declare-datatypes () ((Container!6 (Container!7 (t!4576 Counter!5)))))

(declare-fun cc!18 () Container!6)

(assert (=> start!4302 (= res!15765 (= cc!18 (Container!7 (Counter!6 0))))))

(assert (=> start!4302 e!17418))

(assert (=> start!4302 true))

(declare-fun b!34498 () Bool)

(declare-fun res!15766 () Bool)

(assert (=> b!34498 (=> (not res!15766) (not e!17418))))

(declare-fun lambda!4010 () Int)

(declare-datatypes () ((Unit!176 (Unit!177))))

(declare-datatypes () ((tuple2!114 (tuple2!115 (_1!57 Unit!176) (_2!57 Container!6)))))

(declare-fun res!15744 () tuple2!114)

(declare-fun apply2!1 (Container!6 Int) tuple2!114)

(assert (=> b!34498 (= res!15766 (= res!15744 (apply2!1 cc!18 lambda!4010)))))

(declare-fun res!15746 () Unit!176)

(declare-fun t!4564 () tuple2!114)

(declare-fun b!34499 () Bool)

(declare-fun cc!20 () Container!6)

(declare-fun tmp!58 () Unit!176)

(declare-fun tmp!57 () Unit!176)

(declare-fun Unit!178 () Unit!176)

(assert (=> b!34499 (= e!17418 (and (= t!4564 (tuple2!115 Unit!178 (_2!57 res!15744))) (= res!15746 (_1!57 t!4564)) (= cc!20 (_2!57 t!4564)) (= tmp!57 res!15746) (= tmp!58 (_1!57 res!15744)) (not (= (v!519 (t!4576 cc!20)) 1))))))

(assert (= (and start!4302 res!15765) b!34498))

(assert (= (and b!34498 res!15766) b!34499))

(declare-fun m!37129 () Bool)

(assert (=> b!34498 m!37129))

(push 1)

(assert (not b!34498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18013 () Bool)

(declare-datatypes () ((tuple2!116 (tuple2!117 (_1!58 Unit!176) (_2!58 Counter!5)))))

(declare-fun lt!6484 () tuple2!116)

(declare-fun dynLambda!618 (Int Counter!5) tuple2!116)

(assert (=> d!18013 (= lt!6484 (dynLambda!618 lambda!4010 (t!4576 cc!18)))))

(assert (=> d!18013 (= (apply2!1 cc!18 lambda!4010) (tuple2!115 (_1!58 lt!6484) (Container!7 (_2!58 lt!6484))))))

(declare-fun b_lambda!9365 () Bool)

(assert (=> (not b_lambda!9365) (not d!18013)))

(declare-fun bs!11091 () Bool)

(assert (= bs!11091 d!18013))

(declare-fun m!37131 () Bool)

(assert (=> bs!11091 m!37131))

(assert (=> b!34498 d!18013))

(declare-fun b_lambda!9367 () Bool)

(assert (= b_lambda!9365 (or b!34498 b_lambda!9367)))

(declare-fun bs!11092 () Bool)

(declare-fun d!18015 () Bool)

(assert (= bs!11092 (and d!18015 b!34498)))

(declare-fun Unit!179 () Unit!176)

(assert (=> bs!11092 (= (dynLambda!618 lambda!4010 (t!4576 cc!18)) (tuple2!117 Unit!179 (Counter!6 1)))))

(assert (=> d!18013 d!18015))

(push 1)

(assert (not b_lambda!9367))

(check-sat)

(pop 1)

