; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13220 () Bool)

(assert start!13220)

(assert (=> start!13220 false))

(push 1)

(check-sat)

(pop 1)

