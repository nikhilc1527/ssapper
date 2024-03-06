; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13240 () Bool)

(assert start!13240)

(assert (=> start!13240 false))

(push 1)

(check-sat)

(pop 1)

