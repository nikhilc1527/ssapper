; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9826 () Bool)

(assert start!9826)

(declare-fun n!1674 () Int)

(declare-fun n!1675 () Int)

(assert (=> start!9826 (and (>= n!1674 0) (not (= n!1674 0)) (= n!1675 (- n!1674 1)) (< n!1675 0))))

(assert (=> start!9826 true))

(push 1)

(check-sat)

(pop 1)

