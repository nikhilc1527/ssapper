; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15638 () Bool)

(assert start!15638)

(declare-fun res!51148 () Bool)

(declare-fun e!53876 () Bool)

(assert (=> start!15638 (=> (not res!51148) (not e!53876))))

(declare-datatypes () ((Unit!1480 (Unit!1481))))

(declare-datatypes () ((Bool!10 (True!8) (False!8))))

(declare-datatypes () ((tuple2!530 (tuple2!531 (_1!304 Unit!1480) (_2!304 Bool!10)))))

(declare-datatypes () ((Option!809 (None!780) (Some!779 (v!3298 tuple2!530)))))

(declare-fun thiss!14374 () Option!809)

(declare-fun Unit!1482 () Unit!1480)

(assert (=> start!15638 (= res!51148 (= thiss!14374 (Some!779 (tuple2!531 Unit!1482 False!8))))))

(assert (=> start!15638 e!53876))

(assert (=> start!15638 true))

(declare-fun b!98571 () Bool)

(declare-fun isDefined!31 (Option!809) Bool)

(assert (=> b!98571 (= e!53876 (not (isDefined!31 thiss!14374)))))

(assert (= (and start!15638 res!51148) b!98571))

(declare-fun m!92608 () Bool)

(assert (=> b!98571 m!92608))

(push 1)

(assert (not b!98571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63352 () Bool)

(declare-fun isEmpty!950 (Option!809) Bool)

(assert (=> d!63352 (= (isDefined!31 thiss!14374) (not (isEmpty!950 thiss!14374)))))

(declare-fun bs!43716 () Bool)

(assert (= bs!43716 d!63352))

(declare-fun m!92610 () Bool)

(assert (=> bs!43716 m!92610))

(assert (=> b!98571 d!63352))

(push 1)

(assert (not d!63352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!63354 () Bool)

(assert (=> d!63354 (= (isEmpty!950 thiss!14374) (not (is-Some!779 thiss!14374)))))

(assert (=> d!63352 d!63354))

(push 1)

(check-sat)

(pop 1)

