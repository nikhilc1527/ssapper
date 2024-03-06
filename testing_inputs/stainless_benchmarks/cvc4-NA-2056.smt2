; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13064 () Bool)

(assert start!13064)

(assert (=> start!13064 false))

(push 1)

(check-sat)

(pop 1)

