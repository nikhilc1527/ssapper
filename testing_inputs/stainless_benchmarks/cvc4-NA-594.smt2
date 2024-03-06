; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4412 () Bool)

(assert start!4412)

(declare-fun res!16042 () Bool)

(declare-fun e!17578 () Bool)

(assert (=> start!4412 (=> (not res!16042) (not e!17578))))

(declare-datatypes () ((Object!148 (Open!148 (value!2490 Int)))))

(declare-datatypes () ((MapWrapper!4 (MapWrapper!5 (theMap!14 Object!148)))))

(declare-fun wrapper!7 () MapWrapper!4)

(declare-fun res!16043 () MapWrapper!4)

(assert (=> start!4412 (= res!16042 (= wrapper!7 res!16043))))

(assert (=> start!4412 true))

(assert (=> start!4412 e!17578))

(declare-fun b!34810 () Bool)

(declare-fun contains!37 (MapWrapper!4 Int) Bool)

(assert (=> b!34810 (= e!17578 (contains!37 wrapper!7 1))))

(assert (= (and start!4412 res!16042) b!34810))

(declare-fun m!37383 () Bool)

(assert (=> b!34810 m!37383))

(push 1)

(assert (not b!34810))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18264 () Bool)

(assert (=> d!18264 true))

(assert (=> d!18264 true))

(declare-fun res!16046 () Bool)

(assert (=> d!18264 (= (contains!37 wrapper!7 1) res!16046)))

(assert (=> b!34810 d!18264))

(declare-fun bs!11200 () Bool)

(declare-fun s!764 () Bool)

(assert (= bs!11200 (and start!4412 s!764)))

(assert (=> bs!11200 (=> true (not (contains!37 res!16043 1)))))

(declare-fun m!37385 () Bool)

(assert (=> m!37383 m!37385))

(assert (=> m!37383 s!764))

(push 1)

(assert (not bs!11200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

