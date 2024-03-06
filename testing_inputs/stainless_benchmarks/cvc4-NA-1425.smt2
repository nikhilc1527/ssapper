; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9810 () Bool)

(assert start!9810)

(declare-fun res!34874 () Bool)

(declare-fun e!38572 () Bool)

(assert (=> start!9810 (=> (not res!34874) (not e!38572))))

(declare-fun a2!36 () Int)

(declare-fun c!17063 () Int)

(declare-fun a!788 () Int)

(declare-fun d!54011 () Int)

(declare-fun b!71280 () Int)

(declare-fun e!38564 () Int)

(assert (=> start!9810 (= res!34874 (and (>= a!788 0) (<= a!788 50) (= b!71280 (+ a!788 2)) (= c!17063 (+ a!788 b!71280)) (> a2!36 a!788) (>= d!54011 0) (<= d!54011 50) (= e!38564 (+ (+ (+ d!54011 b!71280) c!17063) a2!36))))))

(assert (=> start!9810 e!38572))

(assert (=> start!9810 true))

(declare-fun b!71296 () Bool)

(declare-fun res!34875 () Bool)

(assert (=> b!71296 (=> (not res!34875) (not e!38572))))

(declare-fun x$2!405 () Int)

(declare-fun rec2!12 (Int Int Int Int) Int)

(assert (=> b!71296 (= res!34875 (= x$2!405 (rec2!12 a!788 a2!36 d!54011 (+ c!17063 1))))))

(declare-fun b!71297 () Bool)

(assert (=> b!71297 (= e!38572 (<= x$2!405 0))))

(assert (= (and start!9810 res!34874) b!71296))

(assert (= (and b!71296 res!34875) b!71297))

(declare-fun m!71118 () Bool)

(assert (=> b!71296 m!71118))

(push 1)

(assert (not b!71296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54019 () Bool)

(declare-fun lt!15169 () Int)

(declare-fun lt!15170 () Int)

(assert (=> d!54019 (and (>= (+ c!17063 1) lt!15169) (> (+ (+ c!17063 1) lt!15170) 0))))

(declare-fun lt!15168 () Int)

(assert (=> d!54019 (= lt!15170 (+ (+ (+ d!54011 lt!15168) lt!15169) a2!36))))

(assert (=> d!54019 (= lt!15169 (+ a!788 lt!15168))))

(assert (=> d!54019 (= lt!15168 (+ a!788 2))))

(assert (=> d!54019 (= (rec2!12 a!788 a2!36 d!54011 (+ c!17063 1)) (+ (+ c!17063 1) lt!15170))))

(assert (=> b!71296 d!54019))

(push 1)

(check-sat)

(pop 1)

