; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13572 () Bool)

(assert start!13572)

(assert (=> start!13572 false))

(push 1)

(check-sat)

(pop 1)

