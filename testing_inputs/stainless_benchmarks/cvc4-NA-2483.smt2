; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13980 () Bool)

(assert start!13980)

(assert (=> start!13980 false))

(push 1)

(check-sat)

(pop 1)

