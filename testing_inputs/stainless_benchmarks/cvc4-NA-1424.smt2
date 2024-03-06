; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9808 () Bool)

(assert start!9808)

(declare-fun a2!36 () Int)

(declare-fun a!789 () Int)

(declare-fun c!17063 () Int)

(declare-fun a!788 () Int)

(declare-fun e!38565 () Int)

(declare-fun c!17068 () Int)

(declare-fun f!4325 () Int)

(declare-fun d!54011 () Int)

(declare-fun b!71280 () Int)

(declare-fun a2!37 () Int)

(declare-fun d!54012 () Int)

(declare-fun b!71284 () Int)

(declare-fun e!38564 () Int)

(assert (=> start!9808 (and (>= a!788 0) (<= a!788 50) (= b!71280 (+ a!788 2)) (= c!17063 (+ a!788 b!71280)) (> a2!36 a!788) (>= d!54011 0) (<= d!54011 50) (= e!38564 (+ (+ (+ d!54011 b!71280) c!17063) a2!36)) (= a!789 a!788) (= a2!37 a2!36) (= d!54012 d!54011) (= f!4325 (+ c!17063 1)) (>= a!789 0) (<= a!789 50) (= b!71284 (+ a!789 2)) (= c!17068 (+ a!789 b!71284)) (> a2!37 a!789) (>= d!54012 0) (<= d!54012 50) (= e!38565 (+ (+ (+ d!54012 b!71284) c!17068) a2!37)) (< f!4325 c!17068))))

(assert (=> start!9808 true))

(push 1)

(check-sat)

(pop 1)

