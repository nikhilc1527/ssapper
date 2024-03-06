; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11788 () Bool)

(assert start!11788)

(declare-fun m!85913 () Int)

(declare-fun m!85914 () Int)

(declare-fun n!1787 () Int)

(declare-fun n!1788 () Int)

(assert (=> start!11788 (and (>= n!1787 0) (>= m!85913 0) (not (= m!85913 0)) (= n!1788 n!1787) (= m!85914 (- m!85913 1)) (or (< n!1788 0) (< m!85914 0)))))

(assert (=> start!11788 true))

(push 1)

(check-sat)

(pop 1)

