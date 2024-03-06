; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9778 () Bool)

(assert start!9778)

(declare-fun res!34848 () Bool)

(declare-fun e!38550 () Bool)

(assert (=> start!9778 (=> (not res!34848) (not e!38550))))

(declare-fun a!764 () Int)

(declare-fun b!71233 () Int)

(declare-fun x$1!963 () Int)

(assert (=> start!9778 (= res!34848 (and (>= a!764 0) (> b!71233 0) (= x$1!963 (+ b!71233 3))))))

(assert (=> start!9778 e!38550))

(assert (=> start!9778 true))

(declare-fun b!71246 () Bool)

(declare-fun prop!20 (Int Int) Bool)

(assert (=> b!71246 (= e!38550 (not (prop!20 a!764 b!71233)))))

(assert (= (and start!9778 res!34848) b!71246))

(declare-fun m!71100 () Bool)

(assert (=> b!71246 m!71100))

(push 1)

(assert (not b!71246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53990 () Bool)

(assert (=> d!53990 (= (prop!20 a!764 b!71233) (> (+ a!764 b!71233) 0))))

(assert (=> b!71246 d!53990))

(push 1)

(check-sat)

(pop 1)

