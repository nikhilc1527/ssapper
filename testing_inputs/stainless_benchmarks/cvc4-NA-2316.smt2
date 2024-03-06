; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13624 () Bool)

(assert start!13624)

(assert (=> start!13624 false))

(push 1)

(check-sat)

(pop 1)

