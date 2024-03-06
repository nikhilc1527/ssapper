; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12904 () Bool)

(assert start!12904)

(assert (=> start!12904 false))

(push 1)

(check-sat)

(pop 1)

