; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11810 () Bool)

(assert start!11810)

(declare-fun n!1819 () Int)

(declare-fun n!1821 () Int)

(assert (=> start!11810 (and (>= n!1819 0) (> n!1819 0) (= n!1821 (- n!1819 1)) (not (= (- n!1819 1) n!1821)))))

(assert (=> start!11810 true))

(push 1)

(check-sat)

(pop 1)

