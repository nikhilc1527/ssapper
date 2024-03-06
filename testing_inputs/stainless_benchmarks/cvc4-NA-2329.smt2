; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13650 () Bool)

(assert start!13650)

(assert (=> start!13650 false))

(push 1)

(check-sat)

(pop 1)

