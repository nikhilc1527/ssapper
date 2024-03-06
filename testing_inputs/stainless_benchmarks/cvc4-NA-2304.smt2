; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13582 () Bool)

(assert start!13582)

(assert (=> start!13582 false))

(push 1)

(check-sat)

(pop 1)

