; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9756 () Bool)

(assert start!9756)

(declare-fun res!34827 () Bool)

(declare-fun e!38536 () Bool)

(assert (=> start!9756 (=> (not res!34827) (not e!38536))))

(declare-fun c!17046 () Int)

(declare-fun b!71210 () Int)

(declare-fun a!749 () Int)

(declare-fun a2!25 () Int)

(assert (=> start!9756 (= res!34827 (and (>= a!749 0) (<= a!749 50) (= b!71210 (+ a!749 2)) (= c!17046 (+ a!749 b!71210)) (> a2!25 a!749)))))

(assert (=> start!9756 e!38536))

(assert (=> start!9756 true))

(declare-fun b!71216 () Bool)

(declare-fun res!34828 () Bool)

(assert (=> b!71216 (=> (not res!34828) (not e!38536))))

(declare-fun x!28352 () Int)

(declare-fun rec1!2 (Int Int Int) Int)

(assert (=> b!71216 (= res!34828 (= x!28352 (rec1!2 a!749 a2!25 2)))))

(declare-fun b!71217 () Bool)

(assert (=> b!71217 (= e!38536 (<= x!28352 0))))

(assert (= (and start!9756 res!34827) b!71216))

(assert (= (and b!71216 res!34828) b!71217))

(declare-fun m!71092 () Bool)

(assert (=> b!71216 m!71092))

(push 1)

(assert (not b!71216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53979 () Bool)

(declare-fun lt!15151 () Int)

(declare-fun lt!15152 () Int)

(assert (=> d!53979 (and (>= 2 0) (<= 2 50) (> (+ (+ (+ 2 lt!15151) lt!15152) a2!25) 0))))

(assert (=> d!53979 (= lt!15152 (+ a!749 lt!15151))))

(assert (=> d!53979 (= lt!15151 (+ a!749 2))))

(assert (=> d!53979 (= (rec1!2 a!749 a2!25 2) (+ (+ (+ 2 lt!15151) lt!15152) a2!25))))

(assert (=> b!71216 d!53979))

(push 1)

(check-sat)

(pop 1)

