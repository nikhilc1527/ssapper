; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13888 () Bool)

(assert start!13888)

(assert (=> start!13888 false))

(push 1)

(check-sat)

(pop 1)

