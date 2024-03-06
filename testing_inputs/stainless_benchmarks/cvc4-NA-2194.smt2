; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13358 () Bool)

(assert start!13358)

(assert (=> start!13358 false))

(push 1)

(check-sat)

(pop 1)

