; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13470 () Bool)

(assert start!13470)

(assert (=> start!13470 false))

(push 1)

(check-sat)

(pop 1)

