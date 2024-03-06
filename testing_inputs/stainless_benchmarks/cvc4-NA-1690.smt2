; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11790 () Bool)

(assert start!11790)

(declare-fun n!1787 () Int)

(declare-fun m!85913 () Int)

(declare-fun res!47028 () Int)

(assert (=> start!11790 (and (>= n!1787 0) (>= m!85913 0) (= m!85913 0) (= res!47028 n!1787) (< res!47028 0))))

(assert (=> start!11790 true))

(push 1)

(check-sat)

(pop 1)

