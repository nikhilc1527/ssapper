; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!698 () Bool)

(assert start!698)

(declare-fun a!337 () Int)

(declare-fun x!1841 () Int)

(declare-fun x$2!101 () Int)

(assert (=> start!698 (and (> a!337 0) (= x!1841 (+ a!337 2)) (> x!1841 2) (= x$2!101 x!1841) (<= x$2!101 a!337))))

(assert (=> start!698 true))

(push 1)

(check-sat)

(pop 1)

