; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10122 () Bool)

(assert start!10122)

(declare-fun res!35645 () Bool)

(declare-fun e!39430 () Bool)

(assert (=> start!10122 (=> (not res!35645) (not e!39430))))

(declare-datatypes () ((List!632 (Cons!593 (head!1022 Int) (tail!1043 List!632)) (Nil!595))))

(declare-fun list!955 () List!632)

(declare-fun res!35620 () List!632)

(assert (=> start!10122 (= res!35645 (and (not (is-Cons!593 list!955)) (= res!35620 Nil!595)))))

(assert (=> start!10122 e!39430))

(assert (=> start!10122 true))

(declare-fun b!72966 () Bool)

(declare-fun positive!1 (List!632) Bool)

(assert (=> b!72966 (= e!39430 (not (positive!1 res!35620)))))

(assert (= (and start!10122 res!35645) b!72966))

(declare-fun m!72688 () Bool)

(assert (=> b!72966 m!72688))

(push 1)

(assert (not b!72966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54719 () Bool)

(declare-fun res!35650 () Bool)

(declare-fun e!39435 () Bool)

(assert (=> d!54719 (=> res!35650 e!39435)))

(assert (=> d!54719 (= res!35650 (not (is-Cons!593 res!35620)))))

(assert (=> d!54719 (= (positive!1 res!35620) e!39435)))

(declare-fun b!72971 () Bool)

(declare-fun e!39436 () Bool)

(assert (=> b!72971 (= e!39435 e!39436)))

(declare-fun res!35651 () Bool)

(assert (=> b!72971 (=> (not res!35651) (not e!39436))))

(assert (=> b!72971 (= res!35651 (not (< (head!1022 res!35620) 0)))))

(declare-fun b!72972 () Bool)

(assert (=> b!72972 (= e!39436 (positive!1 (tail!1043 res!35620)))))

(assert (= (and d!54719 (not res!35650)) b!72971))

(assert (= (and b!72971 res!35651) b!72972))

(declare-fun m!72690 () Bool)

(assert (=> b!72972 m!72690))

(assert (=> b!72966 d!54719))

(push 1)

(assert (not b!72972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

