; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7298 () Bool)

(assert start!7298)

(declare-fun x!20558 () Int)

(declare-fun l!1039 () Int)

(assert (=> start!7298 (and (= x!20558 1) (= l!1039 2) (<= l!1039 1))))

(assert (=> start!7298 true))

(push 1)

(check-sat)

(pop 1)

