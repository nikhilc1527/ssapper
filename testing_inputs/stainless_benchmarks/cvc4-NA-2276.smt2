; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13526 () Bool)

(assert start!13526)

(assert (=> start!13526 false))

(push 1)

(check-sat)

(pop 1)

