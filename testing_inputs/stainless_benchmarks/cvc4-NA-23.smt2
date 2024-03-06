; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!90 () Bool)

(assert start!90)

(declare-fun res!409 () Bool)

(declare-fun e!303 () Bool)

(assert (=> start!90 (=> (not res!409) (not e!303))))

(declare-datatypes () ((Unit!22 (Unit!23))))

(declare-fun x$1!165 () Unit!22)

(declare-datatypes () ((AbstractPost!3 (AbstractPostExt!1 (__x!14 Int)))))

(declare-fun thiss!109 () AbstractPost!3)

(declare-fun f!356 (AbstractPost!3) Unit!22)

(assert (=> start!90 (= res!409 (= x$1!165 (f!356 thiss!109)))))

(assert (=> start!90 e!303))

(assert (=> start!90 true))

(declare-fun b!439 () Bool)

(declare-fun inv!22 (AbstractPost!3) Bool)

(assert (=> b!439 (= e!303 (not (inv!22 thiss!109)))))

(assert (= (and start!90 res!409) b!439))

(declare-fun m!295 () Bool)

(assert (=> start!90 m!295))

(declare-fun m!297 () Bool)

(assert (=> b!439 m!297))

(push 1)

(assert (not b!439))

(assert (not start!90))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!156 () Bool)

(declare-fun inv!91 (AbstractPost!3) Bool)

(assert (=> d!156 (= (inv!22 thiss!109) (inv!91 thiss!109))))

(declare-fun bs!42 () Bool)

(assert (= bs!42 d!156))

(declare-fun m!299 () Bool)

(assert (=> bs!42 m!299))

(assert (=> b!439 d!156))

(declare-fun d!158 () Bool)

(assert (=> d!158 (inv!22 thiss!109)))

(assert (=> d!158 true))

(declare-fun x$1!169 () Unit!22)

(assert (=> d!158 (= (f!356 thiss!109) x$1!169)))

(declare-fun bs!43 () Bool)

(assert (= bs!43 d!158))

(assert (=> bs!43 m!297))

(assert (=> start!90 d!158))

(push 1)

(assert (not d!158))

(assert (not d!156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

