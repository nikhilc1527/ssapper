; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15608 () Bool)

(assert start!15608)

(declare-fun n!1950 () Int)

(declare-fun m!92582 () Int)

(declare-fun m!92583 () Int)

(declare-fun n!1951 () Int)

(assert (=> start!15608 (and (>= n!1950 0) (>= m!92582 0) (not (= m!92582 0)) (= n!1951 n!1950) (= m!92583 (- m!92582 2)) (or (< n!1951 0) (< m!92583 0)))))

(assert (=> start!15608 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

