; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13310 () Bool)

(assert start!13310)

(assert (=> start!13310 false))

(push 1)

(check-sat)

(pop 1)

