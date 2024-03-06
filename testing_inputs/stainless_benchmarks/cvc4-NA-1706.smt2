; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11826 () Bool)

(assert start!11826)

(declare-fun n!1799 () Int)

(declare-fun head!1085 () Int)

(assert (=> start!11826 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (< (- n!1799 1) 0))))

(assert (=> start!11826 true))

(push 1)

(check-sat)

(pop 1)

