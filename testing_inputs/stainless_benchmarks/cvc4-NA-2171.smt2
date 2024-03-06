; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13312 () Bool)

(assert start!13312)

(assert (=> start!13312 false))

(push 1)

(check-sat)

(pop 1)

