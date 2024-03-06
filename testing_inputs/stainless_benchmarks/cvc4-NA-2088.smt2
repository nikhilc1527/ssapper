; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13128 () Bool)

(assert start!13128)

(assert (=> start!13128 false))

(push 1)

(check-sat)

(pop 1)

