; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13396 () Bool)

(assert start!13396)

(assert (=> start!13396 false))

(push 1)

(check-sat)

(pop 1)

