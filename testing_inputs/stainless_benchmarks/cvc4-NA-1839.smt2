; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12430 () Bool)

(assert start!12430)

(declare-fun res!48309 () Bool)

(declare-fun e!50311 () Bool)

(assert (=> start!12430 (=> (not res!48309) (not e!50311))))

(declare-datatypes () ((A!4297 (AExt!4 (__x!322 Int)) (C!90))))

(declare-fun thiss!10805 () A!4297)

(assert (=> start!12430 (= res!48309 (is-AExt!4 thiss!10805))))

(assert (=> start!12430 e!50311))

(assert (=> start!12430 true))

(declare-fun b!91880 () Bool)

(declare-fun res!48310 () Bool)

(assert (=> b!91880 (=> (not res!48310) (not e!50311))))

(declare-fun x$1!1240 () Int)

(declare-fun f!5359 (A!4297) Int)

(assert (=> b!91880 (= res!48310 (= x$1!1240 (f!5359 thiss!10805)))))

(declare-fun b!91881 () Bool)

(assert (=> b!91881 (= e!50311 (<= x$1!1240 0))))

(assert (= (and start!12430 res!48309) b!91880))

(assert (= (and b!91880 res!48310) b!91881))

(declare-fun m!87730 () Bool)

(assert (=> b!91880 m!87730))

(push 1)

(assert (not b!91880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60371 () Bool)

(declare-fun x$1!1245 () Int)

(assert (=> d!60371 (> x$1!1245 0)))

(assert (=> d!60371 true))

(assert (=> d!60371 (= (f!5359 thiss!10805) x$1!1245)))

(assert (=> b!91880 d!60371))

(push 1)

(check-sat)

(pop 1)

