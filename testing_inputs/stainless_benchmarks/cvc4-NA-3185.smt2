; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15630 () Bool)

(assert start!15630)

(declare-fun res!51142 () Bool)

(declare-fun e!53870 () Bool)

(assert (=> start!15630 (=> (not res!51142) (not e!53870))))

(declare-datatypes () ((Unit!1475 (Unit!1476))))

(declare-datatypes () ((Bool!8 (True!6) (False!6))))

(declare-datatypes () ((tuple2!526 (tuple2!527 (_1!302 Unit!1475) (_2!302 Bool!8)))))

(declare-datatypes () ((Option!807 (None!778) (Some!777 (v!3296 tuple2!526)))))

(declare-fun thiss!14370 () Option!807)

(declare-fun Unit!1477 () Unit!1475)

(assert (=> start!15630 (= res!51142 (= thiss!14370 (Some!777 (tuple2!527 Unit!1477 False!6))))))

(assert (=> start!15630 e!53870))

(assert (=> start!15630 true))

(declare-fun b!98565 () Bool)

(declare-fun isDefined!29 (Option!807) Bool)

(assert (=> b!98565 (= e!53870 (not (isDefined!29 thiss!14370)))))

(assert (= (and start!15630 res!51142) b!98565))

(declare-fun m!92602 () Bool)

(assert (=> b!98565 m!92602))

(push 1)

(assert (not b!98565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63348 () Bool)

(declare-fun isEmpty!949 (Option!807) Bool)

(assert (=> d!63348 (= (isDefined!29 thiss!14370) (not (isEmpty!949 thiss!14370)))))

(declare-fun bs!43713 () Bool)

(assert (= bs!43713 d!63348))

(declare-fun m!92604 () Bool)

(assert (=> bs!43713 m!92604))

(assert (=> b!98565 d!63348))

(push 1)

(assert (not d!63348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63350 () Bool)

(assert (=> d!63350 (= (isEmpty!949 thiss!14370) (not (is-Some!777 thiss!14370)))))

(assert (=> d!63348 d!63350))

(push 1)

(check-sat)

(pop 1)

