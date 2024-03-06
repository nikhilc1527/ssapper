; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4394 () Bool)

(assert start!4394)

(declare-fun res!15972 () Bool)

(declare-fun e!17560 () Bool)

(assert (=> start!4394 (=> (not res!15972) (not e!17560))))

(declare-datatypes () ((Object!143 (Open!143 (value!2455 Int)))))

(declare-datatypes () ((TrieMapWrapper!8 (TrieMapWrapper!9 (theMap!9 Object!143)))))

(declare-fun wrapper!5 () TrieMapWrapper!8)

(declare-fun res!15973 () TrieMapWrapper!8)

(assert (=> start!4394 (= res!15972 (= wrapper!5 res!15973))))

(assert (=> start!4394 true))

(assert (=> start!4394 e!17560))

(declare-fun b!34774 () Bool)

(declare-fun contains!34 (TrieMapWrapper!8 Int) Bool)

(assert (=> b!34774 (= e!17560 (contains!34 wrapper!5 42))))

(assert (= (and start!4394 res!15972) b!34774))

(declare-fun m!37351 () Bool)

(assert (=> b!34774 m!37351))

(push 1)

(assert (not b!34774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18246 () Bool)

(assert (=> d!18246 true))

(assert (=> d!18246 true))

(declare-fun res!15976 () Bool)

(assert (=> d!18246 (= (contains!34 wrapper!5 42) res!15976)))

(assert (=> b!34774 d!18246))

(declare-fun bs!11193 () Bool)

(declare-fun s!756 () Bool)

(assert (= bs!11193 (and start!4394 s!756)))

(assert (=> bs!11193 (=> true (not (contains!34 res!15973 42)))))

(declare-fun m!37353 () Bool)

(assert (=> m!37351 m!37353))

(assert (=> m!37351 s!756))

(push 1)

(assert (not bs!11193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

