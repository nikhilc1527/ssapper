; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4422 () Bool)

(assert start!4422)

(declare-fun res!16063 () Bool)

(declare-fun e!17584 () Bool)

(assert (=> start!4422 (=> (not res!16063) (not e!17584))))

(declare-datatypes () ((Unit!239 (Unit!240))))

(declare-fun tmp!94 () Unit!239)

(declare-fun n!373 () Int)

(declare-fun f!186 (Int) Unit!239)

(assert (=> start!4422 (= res!16063 (= tmp!94 (f!186 n!373)))))

(assert (=> start!4422 e!17584))

(assert (=> start!4422 true))

(declare-fun b!34819 () Bool)

(declare-fun lambda!4141 () Int)

(declare-fun recursive!0 (Int Int) Bool)

(assert (=> b!34819 (= e!17584 (not (recursive!0 n!373 lambda!4141)))))

(assert (= (and start!4422 res!16063) b!34819))

(declare-fun m!37397 () Bool)

(assert (=> start!4422 m!37397))

(declare-fun m!37399 () Bool)

(assert (=> b!34819 m!37399))

(push 1)

(assert (not b!34819))

(assert (not start!4422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18274 () Bool)

(declare-fun res!16066 () Bool)

(declare-fun e!17587 () Bool)

(assert (=> d!18274 (=> res!16066 e!17587)))

(assert (=> d!18274 (= res!16066 (<= n!373 0))))

(assert (=> d!18274 (= (recursive!0 n!373 lambda!4141) e!17587)))

(declare-fun b!34822 () Bool)

(assert (=> b!34822 (= e!17587 (recursive!0 (- n!373 1) lambda!4141))))

(assert (= (and d!18274 (not res!16066)) b!34822))

(declare-fun m!37401 () Bool)

(assert (=> b!34822 m!37401))

(assert (=> b!34819 d!18274))

(declare-fun bs!11205 () Bool)

(declare-fun d!18276 () Bool)

(assert (= bs!11205 (and d!18276 b!34819)))

(declare-fun lambda!4144 () Int)

(assert (=> bs!11205 (= lambda!4144 lambda!4141)))

(assert (=> d!18276 (recursive!0 n!373 lambda!4144)))

(assert (=> d!18276 true))

(declare-fun x$1!538 () Unit!239)

(assert (=> d!18276 (= (f!186 n!373) x$1!538)))

(declare-fun bs!11206 () Bool)

(assert (= bs!11206 d!18276))

(declare-fun m!37403 () Bool)

(assert (=> bs!11206 m!37403))

(assert (=> start!4422 d!18276))

(push 1)

(assert (not d!18276))

(assert (not b!34822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

