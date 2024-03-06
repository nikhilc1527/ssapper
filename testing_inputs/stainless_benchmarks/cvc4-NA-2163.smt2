; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13296 () Bool)

(assert start!13296)

(assert (=> start!13296 false))

(push 1)

(check-sat)

(pop 1)

