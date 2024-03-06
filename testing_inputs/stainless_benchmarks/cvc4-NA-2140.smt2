; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13250 () Bool)

(assert start!13250)

(assert (=> start!13250 false))

(push 1)

(check-sat)

(pop 1)

