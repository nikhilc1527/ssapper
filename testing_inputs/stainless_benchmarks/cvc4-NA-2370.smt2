; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13732 () Bool)

(assert start!13732)

(assert (=> start!13732 false))

(push 1)

(check-sat)

(pop 1)

