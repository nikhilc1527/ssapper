; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11824 () Bool)

(assert start!11824)

(declare-fun n!1799 () Int)

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(assert (=> start!11824 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (not (= (- n!1799 2) (- (- n!1799 1) 1))))))

(assert (=> start!11824 true))

(push 1)

(check-sat)

(pop 1)

