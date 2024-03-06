; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!166 () Bool)

(assert start!166)

(assert (=> start!166 false))

(assert (=> start!166 true))

(push 1)

(check-sat)

(pop 1)

