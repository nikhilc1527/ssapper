; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!696 () Bool)

(assert start!696)

(declare-fun a!337 () Int)

(declare-fun x!1841 () Int)

(assert (=> start!696 (and (> a!337 0) (= x!1841 (+ a!337 2)) (<= x!1841 2))))

(assert (=> start!696 true))

(push 1)

(check-sat)

(pop 1)

