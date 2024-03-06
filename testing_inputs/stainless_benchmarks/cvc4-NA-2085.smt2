; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13122 () Bool)

(assert start!13122)

(assert (=> start!13122 false))

(push 1)

(check-sat)

(pop 1)

