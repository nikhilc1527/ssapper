; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13270 () Bool)

(assert start!13270)

(assert (=> start!13270 false))

(push 1)

(check-sat)

(pop 1)

