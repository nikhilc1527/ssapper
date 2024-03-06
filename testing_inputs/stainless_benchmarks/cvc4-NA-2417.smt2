; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13830 () Bool)

(assert start!13830)

(assert (=> start!13830 false))

(assert (=> start!13830 true))

(push 1)

(check-sat)

(pop 1)

