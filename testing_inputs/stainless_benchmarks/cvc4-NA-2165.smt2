; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13300 () Bool)

(assert start!13300)

(assert (=> start!13300 false))

(push 1)

(check-sat)

(pop 1)

