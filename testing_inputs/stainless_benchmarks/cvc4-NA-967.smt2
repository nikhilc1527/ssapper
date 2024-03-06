; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7304 () Bool)

(assert start!7304)

(declare-fun x!20592 () Bool)

(declare-fun l!1056 () Int)

(assert (=> start!7304 (and (= x!20592 false) (= l!1056 2) (<= l!1056 1))))

(assert (=> start!7304 true))

(push 1)

(check-sat)

(pop 1)

