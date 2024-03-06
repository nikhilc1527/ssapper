; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13892 () Bool)

(assert start!13892)

(assert (=> start!13892 false))

(push 1)

(check-sat)

(pop 1)

