; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7312 () Bool)

(assert start!7312)

(declare-fun l!1054 () Int)

(declare-fun x!20590 () Bool)

(declare-fun x!20589 () Bool)

(declare-fun m!57012 () Int)

(declare-fun l!1053 () Int)

(declare-fun y!1586 () Bool)

(assert (=> start!7312 (and (> l!1053 1) (= l!1054 l!1053) (= x!20590 x!20589) (= y!1586 true) (= m!57012 3) (<= m!57012 2))))

(assert (=> start!7312 true))

(push 1)

(check-sat)

(pop 1)

