; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!150 () Bool)

(assert start!150)

(declare-fun x!1400 () Int)

(declare-fun y!222 () Int)

(declare-fun x$1!170 () Int)

(assert (=> start!150 (and (>= x!1400 0) (>= y!222 0) (= x$1!170 (+ x!1400 y!222)) (< x$1!170 0))))

(assert (=> start!150 true))

(push 1)

(check-sat)

(pop 1)

