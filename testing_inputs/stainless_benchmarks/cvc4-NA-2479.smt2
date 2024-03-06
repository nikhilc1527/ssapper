; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13972 () Bool)

(assert start!13972)

(assert (=> start!13972 false))

(push 1)

(check-sat)

(pop 1)

