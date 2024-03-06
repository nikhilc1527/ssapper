; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4416 () Bool)

(assert start!4416)

(declare-fun res!16053 () Bool)

(declare-fun e!17581 () Bool)

(assert (=> start!4416 (=> (not res!16053) (not e!17581))))

(declare-datatypes () ((Object!149 (Open!149 (value!2491 Int)))))

(declare-datatypes () ((MapWrapper!6 (MapWrapper!7 (theMap!15 Object!149)))))

(declare-fun wrapper!7 () MapWrapper!6)

(declare-fun res!16054 () MapWrapper!6)

(assert (=> start!4416 (= res!16053 (= wrapper!7 res!16054))))

(assert (=> start!4416 true))

(assert (=> start!4416 e!17581))

(declare-fun b!34815 () Bool)

(declare-fun res!16055 () Bool)

(assert (=> b!34815 (=> (not res!16055) (not e!17581))))

(declare-fun contains!38 (MapWrapper!6 Int) Bool)

(assert (=> b!34815 (= res!16055 (not (contains!38 wrapper!7 1)))))

(declare-fun b!34816 () Bool)

(declare-fun insert!25 (MapWrapper!6 Int Int) MapWrapper!6)

(assert (=> b!34816 (= e!17581 (not (contains!38 (insert!25 wrapper!7 1 2) 1)))))

(assert (= (and start!4416 res!16053) b!34815))

(assert (= (and b!34815 res!16055) b!34816))

(declare-fun m!37387 () Bool)

(assert (=> b!34815 m!37387))

(declare-fun m!37389 () Bool)

(assert (=> b!34816 m!37389))

(assert (=> b!34816 m!37389))

(declare-fun m!37391 () Bool)

(assert (=> b!34816 m!37391))

(push 1)

(assert (not b!34815))

(assert (not b!34816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18266 () Bool)

(assert (=> d!18266 true))

(assert (=> d!18266 true))

(declare-fun res!16058 () Bool)

(assert (=> d!18266 (= (contains!38 wrapper!7 1) res!16058)))

(assert (=> b!34815 d!18266))

(declare-fun d!18268 () Bool)

(assert (=> d!18268 true))

(assert (=> d!18268 true))

(declare-fun res!16059 () Bool)

(assert (=> d!18268 (= (contains!38 (insert!25 wrapper!7 1 2) 1) res!16059)))

(assert (=> b!34816 d!18268))

(declare-fun d!18270 () Bool)

(declare-fun x$1!534 () MapWrapper!6)

(assert (=> d!18270 (contains!38 x$1!534 1)))

(assert (=> d!18270 true))

(assert (=> d!18270 (= (insert!25 wrapper!7 1 2) x$1!534)))

(declare-fun bs!11202 () Bool)

(assert (= bs!11202 d!18270))

(declare-fun m!37393 () Bool)

(assert (=> bs!11202 m!37393))

(assert (=> b!34816 d!18270))

(declare-fun bs!11203 () Bool)

(declare-fun s!766 () Bool)

(assert (= bs!11203 (and start!4416 s!766)))

(assert (=> bs!11203 (=> true (not (contains!38 res!16054 1)))))

(declare-fun m!37395 () Bool)

(assert (=> m!37387 m!37395))

(assert (=> m!37387 s!766))

(assert (=> m!37391 s!766))

(push 1)

(assert (not bs!11203))

(assert (not d!18270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

