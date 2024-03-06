; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13006 () Bool)

(assert start!13006)

(assert (=> start!13006 false))

(push 1)

(check-sat)

(pop 1)

