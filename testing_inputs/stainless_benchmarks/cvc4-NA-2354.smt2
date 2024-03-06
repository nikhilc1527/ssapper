; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13700 () Bool)

(assert start!13700)

(assert (=> start!13700 false))

(push 1)

(check-sat)

(pop 1)

