; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13118 () Bool)

(assert start!13118)

(assert (=> start!13118 false))

(push 1)

(check-sat)

(pop 1)

