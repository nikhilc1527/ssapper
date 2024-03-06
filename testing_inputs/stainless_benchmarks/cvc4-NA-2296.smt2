; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13566 () Bool)

(assert start!13566)

(assert (=> start!13566 false))

(push 1)

(check-sat)

(pop 1)

