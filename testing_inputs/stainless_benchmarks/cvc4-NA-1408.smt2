; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9762 () Bool)

(assert start!9762)

(declare-fun a2!28 () Int)

(declare-fun a!752 () Int)

(declare-fun e!38533 () Int)

(declare-fun d!53976 () Int)

(declare-fun c!17045 () Int)

(declare-fun b!71209 () Int)

(declare-fun x$1!953 () Int)

(assert (=> start!9762 (and (>= a!752 0) (<= a!752 50) (= b!71209 (+ a!752 2)) (= c!17045 (+ a!752 b!71209)) (> a2!28 a!752) (>= d!53976 0) (<= d!53976 50) (= e!38533 (+ (+ (+ d!53976 b!71209) c!17045) a2!28)) (= x$1!953 e!38533) (<= x$1!953 0))))

(assert (=> start!9762 true))

(push 1)

(check-sat)

(pop 1)

