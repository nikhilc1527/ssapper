; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13404 () Bool)

(assert start!13404)

(assert (=> start!13404 false))

(push 1)

(check-sat)

(pop 1)

