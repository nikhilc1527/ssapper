; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9748 () Bool)

(assert start!9748)

(declare-fun d!53965 () Int)

(declare-fun b!71199 () Int)

(declare-fun b!71200 () Int)

(declare-fun c!17041 () Int)

(declare-fun a!743 () Int)

(declare-fun a!744 () Int)

(declare-fun c!17042 () Int)

(assert (=> start!9748 (and (>= a!743 0) (<= a!743 50) (= b!71199 (+ a!743 2)) (= c!17041 (+ a!743 b!71199)) (= a!744 a!743) (= d!53965 2) (>= a!744 0) (<= a!744 50) (= b!71200 (+ a!744 2)) (= c!17042 (+ a!744 b!71200)) (or (< d!53965 0) (> d!53965 50)))))

(assert (=> start!9748 true))

(push 1)

(check-sat)

(pop 1)

