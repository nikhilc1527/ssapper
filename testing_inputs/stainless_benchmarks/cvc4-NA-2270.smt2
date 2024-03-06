; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13514 () Bool)

(assert start!13514)

(assert (=> start!13514 false))

(assert (=> start!13514 true))

(push 1)

(check-sat)

(pop 1)

