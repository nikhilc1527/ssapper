; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12080 () Bool)

(assert start!12080)

(declare-fun res!47545 () Bool)

(declare-fun e!49534 () Bool)

(assert (=> start!12080 (=> (not res!47545) (not e!49534))))

(declare-datatypes () ((Unit!1269 (Unit!1270))))

(declare-datatypes () ((Bool!4 (True!3) (False!3))))

(declare-datatypes () ((tuple2!438 (tuple2!439 (_1!254 Unit!1269) (_2!254 Bool!4)))))

(declare-datatypes () ((Option!613 (Some!586 (v!2827 tuple2!438)) (None!587))))

(declare-fun thiss!10378 () Option!613)

(declare-fun Unit!1271 () Unit!1269)

(assert (=> start!12080 (= res!47545 (= thiss!10378 (Some!586 (tuple2!439 Unit!1271 True!3))))))

(assert (=> start!12080 e!49534))

(assert (=> start!12080 true))

(declare-fun b!90745 () Bool)

(declare-fun isDefined!22 (Option!613) Bool)

(assert (=> b!90745 (= e!49534 (not (isDefined!22 thiss!10378)))))

(assert (= (and start!12080 res!47545) b!90745))

(declare-fun m!86512 () Bool)

(assert (=> b!90745 m!86512))

(push 1)

(assert (not b!90745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59695 () Bool)

(declare-fun isEmpty!763 (Option!613) Bool)

(assert (=> d!59695 (= (isDefined!22 thiss!10378) (not (isEmpty!763 thiss!10378)))))

(declare-fun bs!41672 () Bool)

(assert (= bs!41672 d!59695))

(declare-fun m!86514 () Bool)

(assert (=> bs!41672 m!86514))

(assert (=> b!90745 d!59695))

(push 1)

(assert (not d!59695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59697 () Bool)

(assert (=> d!59697 (= (isEmpty!763 thiss!10378) (not (is-Some!586 thiss!10378)))))

(assert (=> d!59695 d!59697))

(push 1)

(check-sat)

(pop 1)

