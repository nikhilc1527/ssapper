; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13850 () Bool)

(assert start!13850)

(assert (=> start!13850 false))

(assert (=> start!13850 true))

(push 1)

(check-sat)

(pop 1)

