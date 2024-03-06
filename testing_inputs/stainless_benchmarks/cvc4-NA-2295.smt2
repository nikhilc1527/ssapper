; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13564 () Bool)

(assert start!13564)

(assert (=> start!13564 false))

(push 1)

(check-sat)

(pop 1)

