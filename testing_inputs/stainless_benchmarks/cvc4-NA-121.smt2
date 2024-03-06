; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!692 () Bool)

(assert start!692)

(declare-fun res!1350 () Bool)

(declare-fun e!2688 () Bool)

(assert (=> start!692 (=> (not res!1350) (not e!2688))))

(declare-fun a!334 () Int)

(assert (=> start!692 (= res!1350 (> a!334 0))))

(assert (=> start!692 e!2688))

(assert (=> start!692 true))

(declare-fun b!4545 () Bool)

(declare-fun res!1351 () Bool)

(assert (=> b!4545 (=> (not res!1351) (not e!2688))))

(declare-fun x!1839 () Int)

(declare-fun bar!13 (Int) Int)

(assert (=> b!4545 (= res!1351 (= x!1839 (+ a!334 (bar!13 1))))))

(declare-fun x$1!216 () Int)

(declare-fun b!4546 () Bool)

(assert (=> b!4546 (= e!2688 (and (> x!1839 2) (= x$1!216 x!1839) (<= x$1!216 a!334)))))

(assert (= (and start!692 res!1350) b!4545))

(assert (= (and b!4545 res!1351) b!4546))

(declare-fun m!7119 () Bool)

(assert (=> b!4545 m!7119))

(push 1)

(assert (not b!4545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3315 () Bool)

(assert (=> d!3315 (and (> 1 0) (> (+ 1 2) 1))))

(assert (=> d!3315 (= (bar!13 1) (+ 1 2))))

(assert (=> b!4545 d!3315))

(push 1)

(check-sat)

(pop 1)

