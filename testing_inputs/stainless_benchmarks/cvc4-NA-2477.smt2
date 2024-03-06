; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13968 () Bool)

(assert start!13968)

(assert (=> start!13968 false))

(assert (=> start!13968 true))

(push 1)

(check-sat)

(pop 1)

