; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13702 () Bool)

(assert start!13702)

(assert (=> start!13702 false))

(push 1)

(check-sat)

(pop 1)

