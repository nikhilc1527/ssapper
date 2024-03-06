; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13726 () Bool)

(assert start!13726)

(assert (=> start!13726 false))

(push 1)

(check-sat)

(pop 1)

