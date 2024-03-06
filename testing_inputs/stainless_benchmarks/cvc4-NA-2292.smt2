; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13558 () Bool)

(assert start!13558)

(assert (=> start!13558 false))

(push 1)

(check-sat)

(pop 1)

