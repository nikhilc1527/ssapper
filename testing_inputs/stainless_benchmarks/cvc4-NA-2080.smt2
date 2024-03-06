; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13112 () Bool)

(assert start!13112)

(assert (=> start!13112 false))

(assert (=> start!13112 true))

(push 1)

(check-sat)

(pop 1)

