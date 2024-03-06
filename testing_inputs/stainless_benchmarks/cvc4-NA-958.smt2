; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7282 () Bool)

(assert start!7282)

(declare-fun x!20530 () Int)

(declare-fun l!1026 () Int)

(assert (=> start!7282 (and (= x!20530 42) (= l!1026 10) (<= l!1026 1))))

(assert (=> start!7282 true))

(push 1)

(check-sat)

(pop 1)

