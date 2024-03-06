; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7314 () Bool)

(assert start!7314)

(declare-fun y!1583 () Bool)

(declare-fun z!199 () Bool)

(declare-fun m!57009 () Int)

(declare-fun m!57010 () Int)

(declare-fun x!20587 () Bool)

(declare-fun x!20586 () Bool)

(declare-fun l!1050 () Int)

(declare-fun o!11 () Int)

(declare-fun y!1584 () Bool)

(declare-fun l!1051 () Int)

(assert (=> start!7314 (and (> l!1050 1) (> m!57009 2) (= l!1051 l!1050) (= m!57010 m!57009) (= x!20587 x!20586) (= y!1584 y!1583) (= z!199 false) (= o!11 4) (<= o!11 3))))

(assert (=> start!7314 true))

(push 1)

(check-sat)

(pop 1)

