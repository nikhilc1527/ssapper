; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12096 () Bool)

(assert start!12096)

(declare-fun res!47561 () Bool)

(declare-fun e!49540 () Bool)

(assert (=> start!12096 (=> (not res!47561) (not e!49540))))

(declare-fun res!47556 () Int)

(assert (=> start!12096 (= res!47561 (= res!47556 3))))

(assert (=> start!12096 e!49540))

(assert (=> start!12096 true))

(declare-fun b!90752 () Bool)

(declare-fun isPositive!0 (Int) Bool)

(assert (=> b!90752 (= e!49540 (not (isPositive!0 res!47556)))))

(assert (= (and start!12096 res!47561) b!90752))

(declare-fun m!86518 () Bool)

(assert (=> b!90752 m!86518))

(push 1)

(assert (not b!90752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59705 () Bool)

(assert (=> d!59705 (= (isPositive!0 res!47556) (>= res!47556 0))))

(assert (=> b!90752 d!59705))

(push 1)

(check-sat)

(pop 1)

