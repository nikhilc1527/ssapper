; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10172 () Bool)

(assert start!10172)

(declare-fun res!35824 () Bool)

(declare-fun e!39531 () Bool)

(assert (=> start!10172 (=> (not res!35824) (not e!39531))))

(declare-fun e!39532 () Bool)

(assert (=> start!10172 (= res!35824 e!39532)))

(declare-fun res!35822 () Bool)

(assert (=> start!10172 (=> res!35822 e!39532)))

(declare-fun i!574 () Int)

(assert (=> start!10172 (= res!35822 (= i!574 0))))

(assert (=> start!10172 e!39531))

(assert (=> start!10172 true))

(declare-fun b!73138 () Bool)

(declare-fun e!39530 () Bool)

(declare-fun f!65 (Int) Bool)

(assert (=> b!73138 (= e!39530 (f!65 (- i!574 1)))))

(declare-fun b!73139 () Bool)

(declare-fun res!35823 () Bool)

(assert (=> b!73139 (=> (not res!35823) (not e!39531))))

(declare-fun res!35803 () Int)

(assert (=> b!73139 (= res!35823 (= res!35803 (+ i!574 1)))))

(declare-fun b!73140 () Bool)

(declare-fun g!6 (Int) Bool)

(assert (=> b!73140 (= e!39531 (not (g!6 (+ i!574 1))))))

(declare-fun b!73137 () Bool)

(assert (=> b!73137 (= e!39532 e!39530)))

(declare-fun res!35821 () Bool)

(assert (=> b!73137 (=> (not res!35821) (not e!39530))))

(assert (=> b!73137 (= res!35821 (> i!574 0))))

(assert (= (and start!10172 (not res!35822)) b!73137))

(assert (= (and b!73137 res!35821) b!73138))

(assert (= (and start!10172 res!35824) b!73139))

(assert (= (and b!73139 res!35823) b!73140))

(declare-fun m!72766 () Bool)

(assert (=> b!73138 m!72766))

(declare-fun m!72768 () Bool)

(assert (=> b!73140 m!72768))

(push 1)

(assert (not b!73140))

(assert (not b!73138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54749 () Bool)

(assert (=> d!54749 (and (> (+ i!574 1) 0) (>= (+ i!574 1) (- 1)))))

(assert (=> d!54749 (= (g!6 (+ i!574 1)) (>= (+ i!574 1) (- 1)))))

(assert (=> b!73140 d!54749))

(declare-fun d!54751 () Bool)

(assert (=> d!54751 (= (f!65 (- i!574 1)) (> (- i!574 1) 0))))

(assert (=> b!73138 d!54751))

(push 1)

(check-sat)

(pop 1)

