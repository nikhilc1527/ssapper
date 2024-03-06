; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9784 () Bool)

(assert start!9784)

(declare-fun res!34854 () Bool)

(declare-fun e!38553 () Bool)

(assert (=> start!9784 (=> (not res!34854) (not e!38553))))

(declare-fun a!767 () Int)

(declare-fun b!71249 () Int)

(assert (=> start!9784 (= res!34854 (and (>= a!767 0) (= b!71249 (+ a!767 2))))))

(assert (=> start!9784 e!38553))

(assert (=> start!9784 true))

(declare-fun b!71255 () Bool)

(declare-fun res!34855 () Bool)

(assert (=> b!71255 (=> (not res!34855) (not e!38553))))

(declare-fun x$1!965 () Int)

(declare-fun rec1!1 (Int Int) Int)

(declare-fun bar!9 (Int) Int)

(assert (=> b!71255 (= res!34855 (= x$1!965 (+ (rec1!1 a!767 2) (bar!9 a!767))))))

(declare-fun b!71256 () Bool)

(assert (=> b!71256 (= e!38553 (<= x$1!965 0))))

(assert (= (and start!9784 res!34854) b!71255))

(assert (= (and b!71255 res!34855) b!71256))

(declare-fun m!71102 () Bool)

(assert (=> b!71255 m!71102))

(declare-fun m!71104 () Bool)

(assert (=> b!71255 m!71104))

(push 1)

(assert (not b!71255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53994 () Bool)

(declare-fun lt!15158 () Int)

(assert (=> d!53994 (= lt!15158 (+ a!767 2))))

(assert (=> d!53994 (= (rec1!1 a!767 2) (+ (+ (+ (+ lt!15158 2) (bar!9 a!767)) (bar!9 lt!15158)) (bar!9 2)))))

(declare-fun bs!37706 () Bool)

(assert (= bs!37706 d!53994))

(assert (=> bs!37706 m!71104))

(declare-fun m!71106 () Bool)

(assert (=> bs!37706 m!71106))

(declare-fun m!71108 () Bool)

(assert (=> bs!37706 m!71108))

(assert (=> b!71255 d!53994))

(declare-fun d!53996 () Bool)

(assert (=> d!53996 (>= a!767 0)))

(assert (=> d!53996 (= (bar!9 a!767) a!767)))

(assert (=> b!71255 d!53996))

(push 1)

(assert (not d!53994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!53994 d!53996))

(declare-fun d!53998 () Bool)

(assert (=> d!53998 (>= lt!15158 0)))

(assert (=> d!53998 (= (bar!9 lt!15158) lt!15158)))

(assert (=> d!53994 d!53998))

(declare-fun d!54000 () Bool)

(assert (=> d!54000 (>= 2 0)))

(assert (=> d!54000 (= (bar!9 2) 2)))

(assert (=> d!53994 d!54000))

(push 1)

(check-sat)

(pop 1)

