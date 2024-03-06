; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13054 () Bool)

(assert start!13054)

(assert (=> start!13054 false))

(push 1)

(check-sat)

(pop 1)

