; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13036 () Bool)

(assert start!13036)

(assert (=> start!13036 false))

(push 1)

(check-sat)

(pop 1)

