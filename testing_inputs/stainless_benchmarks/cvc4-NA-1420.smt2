; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9796 () Bool)

(assert start!9796)

(declare-fun res!34861 () Bool)

(declare-fun e!38556 () Bool)

(assert (=> start!9796 (=> (not res!34861) (not e!38556))))

(declare-fun a!774 () Int)

(assert (=> start!9796 (= res!34861 (> a!774 0))))

(assert (=> start!9796 e!38556))

(assert (=> start!9796 true))

(declare-fun b!71270 () Bool)

(declare-fun res!34862 () Bool)

(assert (=> b!71270 (=> (not res!34862) (not e!38556))))

(declare-fun x$2!402 () Int)

(declare-fun bar!8 (Int Int) Int)

(assert (=> b!71270 (= res!34862 (= x$2!402 (bar!8 a!774 1)))))

(declare-fun b!71271 () Bool)

(assert (=> b!71271 (= e!38556 (<= x$2!402 0))))

(assert (= (and start!9796 res!34861) b!71270))

(assert (= (and b!71270 res!34862) b!71271))

(declare-fun m!71110 () Bool)

(assert (=> b!71270 m!71110))

(push 1)

(assert (not b!71270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54004 () Bool)

(declare-fun c!17061 () Bool)

(assert (=> d!54004 (= c!17061 (< a!774 1))))

(declare-fun e!38559 () Int)

(assert (=> d!54004 (= (bar!8 a!774 1) e!38559)))

(declare-fun b!71277 () Bool)

(declare-fun rec!16 (Int Int Int) Int)

(assert (=> b!71277 (= e!38559 (rec!16 a!774 1 2))))

(declare-fun b!71278 () Bool)

(assert (=> b!71278 (= e!38559 3)))

(assert (= (and d!54004 c!17061) b!71277))

(assert (= (and d!54004 (not c!17061)) b!71278))

(declare-fun m!71112 () Bool)

(assert (=> b!71277 m!71112))

(assert (=> b!71270 d!54004))

(push 1)

(assert (not b!71277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

