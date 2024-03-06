; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9814 () Bool)

(assert start!9814)

(declare-fun a2!35 () Int)

(declare-fun a!787 () Int)

(declare-fun e!38562 () Int)

(declare-fun d!54010 () Int)

(declare-fun c!17065 () Int)

(declare-fun b!71281 () Int)

(declare-fun x$1!972 () Int)

(declare-fun f!4324 () Int)

(assert (=> start!9814 (and (>= a!787 0) (<= a!787 50) (= b!71281 (+ a!787 2)) (= c!17065 (+ a!787 b!71281)) (> a2!35 a!787) (>= d!54010 0) (<= d!54010 50) (= e!38562 (+ (+ (+ d!54010 b!71281) c!17065) a2!35)) (>= f!4324 c!17065) (= x$1!972 (+ f!4324 e!38562)) (<= x$1!972 0))))

(assert (=> start!9814 true))

(push 1)

(check-sat)

(pop 1)

