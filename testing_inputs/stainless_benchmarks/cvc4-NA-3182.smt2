; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15612 () Bool)

(assert start!15612)

(declare-fun n!1954 () Int)

(declare-fun x$1!2430 () Int)

(declare-fun m!92586 () Int)

(assert (=> start!15612 (and (>= n!1954 0) (= x$1!2430 (+ n!1954 m!92586)) (< x$1!2430 0))))

(assert (=> start!15612 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

