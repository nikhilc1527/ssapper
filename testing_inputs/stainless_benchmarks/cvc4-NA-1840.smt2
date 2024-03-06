; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12434 () Bool)

(assert start!12434)

(declare-fun res!48315 () Bool)

(declare-fun e!50314 () Bool)

(assert (=> start!12434 (=> (not res!48315) (not e!50314))))

(declare-datatypes () ((A!4298 (AExt!5 (__x!323 Int)) (C!91))))

(declare-fun thiss!10805 () A!4298)

(assert (=> start!12434 (= res!48315 (not (is-AExt!5 thiss!10805)))))

(assert (=> start!12434 e!50314))

(assert (=> start!12434 true))

(declare-fun b!91886 () Bool)

(declare-fun res!48316 () Bool)

(assert (=> b!91886 (=> (not res!48316) (not e!50314))))

(declare-fun x$1!1242 () Int)

(declare-fun f!298 (A!4298) Int)

(assert (=> b!91886 (= res!48316 (= x$1!1242 (f!298 thiss!10805)))))

(declare-fun b!91887 () Bool)

(assert (=> b!91887 (= e!50314 (<= x$1!1242 0))))

(assert (= (and start!12434 res!48315) b!91886))

(assert (= (and b!91886 res!48316) b!91887))

(declare-fun m!87732 () Bool)

(assert (=> b!91886 m!87732))

(push 1)

(assert (not b!91886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60373 () Bool)

(assert (=> d!60373 (= (f!298 thiss!10805) 0)))

(assert (=> b!91886 d!60373))

(push 1)

(check-sat)

(get-model)

(pop 1)

