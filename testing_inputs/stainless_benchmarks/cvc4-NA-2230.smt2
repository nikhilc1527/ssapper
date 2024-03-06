; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13430 () Bool)

(assert start!13430)

(assert (=> start!13430 false))

(push 1)

(check-sat)

(pop 1)

