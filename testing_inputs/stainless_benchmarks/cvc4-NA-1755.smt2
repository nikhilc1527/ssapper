; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12074 () Bool)

(assert start!12074)

(declare-fun res!47542 () Bool)

(declare-fun e!49531 () Bool)

(assert (=> start!12074 (=> (not res!47542) (not e!49531))))

(declare-datatypes () ((Unit!1266 (Unit!1267))))

(declare-datatypes () ((Bool!3 (True!2) (False!2))))

(declare-datatypes () ((tuple2!436 (tuple2!437 (_1!253 Unit!1266) (_2!253 Bool!3)))))

(declare-datatypes () ((Option!612 (Some!585 (v!2826 tuple2!436)) (None!586))))

(declare-fun thiss!10376 () Option!612)

(declare-fun Unit!1268 () Unit!1266)

(assert (=> start!12074 (= res!47542 (= thiss!10376 (Some!585 (tuple2!437 Unit!1268 True!2))))))

(assert (=> start!12074 e!49531))

(assert (=> start!12074 true))

(declare-fun b!90742 () Bool)

(declare-fun isDefined!21 (Option!612) Bool)

(assert (=> b!90742 (= e!49531 (not (isDefined!21 thiss!10376)))))

(assert (= (and start!12074 res!47542) b!90742))

(declare-fun m!86508 () Bool)

(assert (=> b!90742 m!86508))

(push 1)

(assert (not b!90742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59691 () Bool)

(declare-fun isEmpty!762 (Option!612) Bool)

(assert (=> d!59691 (= (isDefined!21 thiss!10376) (not (isEmpty!762 thiss!10376)))))

(declare-fun bs!41670 () Bool)

(assert (= bs!41670 d!59691))

(declare-fun m!86510 () Bool)

(assert (=> bs!41670 m!86510))

(assert (=> b!90742 d!59691))

(push 1)

(assert (not d!59691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59693 () Bool)

(assert (=> d!59693 (= (isEmpty!762 thiss!10376) (not (is-Some!585 thiss!10376)))))

(assert (=> d!59691 d!59693))

(push 1)

(check-sat)

(pop 1)

