; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!686 () Bool)

(assert start!686)

(declare-fun res!1344 () Bool)

(declare-fun e!2685 () Bool)

(assert (=> start!686 (=> (not res!1344) (not e!2685))))

(declare-fun a!334 () Int)

(assert (=> start!686 (= res!1344 (> a!334 0))))

(assert (=> start!686 e!2685))

(assert (=> start!686 true))

(declare-fun b!4537 () Bool)

(declare-fun res!1345 () Bool)

(assert (=> b!4537 (=> (not res!1345) (not e!2685))))

(declare-fun x!1839 () Int)

(declare-fun bar!13 (Int) Int)

(assert (=> b!4537 (= res!1345 (= x!1839 (+ a!334 (bar!13 1))))))

(declare-fun b!4538 () Bool)

(assert (=> b!4538 (= e!2685 (<= x!1839 2))))

(assert (= (and start!686 res!1344) b!4537))

(assert (= (and b!4537 res!1345) b!4538))

(declare-fun m!7117 () Bool)

(assert (=> b!4537 m!7117))

(push 1)

(assert (not b!4537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3313 () Bool)

(assert (=> d!3313 (and (> 1 0) (> (+ 1 2) 1))))

(assert (=> d!3313 (= (bar!13 1) (+ 1 2))))

(assert (=> b!4537 d!3313))

(push 1)

(check-sat)

(pop 1)

