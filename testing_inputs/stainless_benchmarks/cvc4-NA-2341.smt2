; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13674 () Bool)

(assert start!13674)

(assert (=> start!13674 false))

(push 1)

(check-sat)

(pop 1)

