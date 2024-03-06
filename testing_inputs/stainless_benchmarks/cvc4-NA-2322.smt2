; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13636 () Bool)

(assert start!13636)

(assert (=> start!13636 false))

(push 1)

(check-sat)

(pop 1)

