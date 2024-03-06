; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9804 () Bool)

(assert start!9804)

(declare-fun res!34868 () Bool)

(declare-fun e!38568 () Bool)

(assert (=> start!9804 (=> (not res!34868) (not e!38568))))

(declare-fun a!784 () Int)

(declare-fun c!17066 () Int)

(declare-fun a2!32 () Int)

(declare-fun b!71282 () Int)

(assert (=> start!9804 (= res!34868 (and (>= a!784 0) (<= a!784 50) (= b!71282 (+ a!784 2)) (= c!17066 (+ a!784 b!71282)) (> a2!32 a!784)))))

(assert (=> start!9804 e!38568))

(assert (=> start!9804 true))

(declare-fun b!71289 () Bool)

(declare-fun res!34869 () Bool)

(assert (=> b!71289 (=> (not res!34869) (not e!38568))))

(declare-fun x$3!161 () Int)

(declare-fun rec1!0 (Int Int Int) Int)

(assert (=> b!71289 (= res!34869 (= x$3!161 (rec1!0 a!784 a2!32 2)))))

(declare-fun b!71290 () Bool)

(assert (=> b!71290 (= e!38568 (<= x$3!161 0))))

(assert (= (and start!9804 res!34868) b!71289))

(assert (= (and b!71289 res!34869) b!71290))

(declare-fun m!71114 () Bool)

(assert (=> b!71289 m!71114))

(push 1)

(assert (not b!71289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54016 () Bool)

(declare-fun lt!15161 () Int)

(assert (=> d!54016 (> lt!15161 0)))

(declare-fun rec2!12 (Int Int Int Int) Int)

(assert (=> d!54016 (= lt!15161 (rec2!12 a!784 a2!32 2 (+ (+ a!784 (+ a!784 2)) 1)))))

(assert (=> d!54016 (and (>= 2 0) (<= 2 50))))

(assert (=> d!54016 (= (rec1!0 a!784 a2!32 2) lt!15161)))

(declare-fun bs!37714 () Bool)

(assert (= bs!37714 d!54016))

(declare-fun m!71116 () Bool)

(assert (=> bs!37714 m!71116))

(assert (=> b!71289 d!54016))

(push 1)

(assert (not d!54016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

