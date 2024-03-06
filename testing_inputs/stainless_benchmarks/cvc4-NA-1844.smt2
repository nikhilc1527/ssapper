; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12444 () Bool)

(assert start!12444)

(declare-fun res!48323 () Bool)

(declare-fun e!50317 () Bool)

(assert (=> start!12444 (=> (not res!48323) (not e!50317))))

(declare-datatypes () ((A!4314 (C!95) (BExt!6 (__x!336 Int)) (AExt!10 (__x!337 Int)))))

(declare-fun thiss!10819 () A!4314)

(assert (=> start!12444 (= res!48323 (is-C!95 thiss!10819))))

(assert (=> start!12444 e!50317))

(assert (=> start!12444 true))

(declare-fun b!91892 () Bool)

(declare-fun res!48324 () Bool)

(assert (=> b!91892 (=> (not res!48324) (not e!50317))))

(declare-fun x$1!1246 () Int)

(declare-fun f!296 (A!4314) Int)

(assert (=> b!91892 (= res!48324 (= x$1!1246 (f!296 thiss!10819)))))

(declare-fun b!91893 () Bool)

(assert (=> b!91893 (= e!50317 (<= x$1!1246 0))))

(assert (= (and start!12444 res!48323) b!91892))

(assert (= (and b!91892 res!48324) b!91893))

(declare-fun m!87734 () Bool)

(assert (=> b!91892 m!87734))

(push 1)

(assert (not b!91892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60377 () Bool)

(assert (=> d!60377 (= (f!296 thiss!10819) 0)))

(assert (=> b!91892 d!60377))

(push 1)

(check-sat)

(get-model)

(pop 1)

