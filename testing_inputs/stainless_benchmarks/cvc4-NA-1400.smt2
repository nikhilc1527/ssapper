; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9740 () Bool)

(assert start!9740)

(declare-fun b!71185 () Int)

(declare-fun c!17032 () Int)

(declare-fun a!733 () Int)

(declare-fun a!734 () Int)

(assert (=> start!9740 (and (> a!733 0) (= a!734 a!733) (= c!17032 b!71185) (<= a!734 0))))

(assert (=> start!9740 true))

(push 1)

(check-sat)

(pop 1)

