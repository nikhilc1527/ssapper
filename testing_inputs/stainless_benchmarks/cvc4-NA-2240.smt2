; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13450 () Bool)

(assert start!13450)

(assert (=> start!13450 false))

(push 1)

(check-sat)

(pop 1)

