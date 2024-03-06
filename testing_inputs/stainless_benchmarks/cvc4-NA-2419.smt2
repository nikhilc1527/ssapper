; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13834 () Bool)

(assert start!13834)

(assert (=> start!13834 false))

(push 1)

(check-sat)

(pop 1)

