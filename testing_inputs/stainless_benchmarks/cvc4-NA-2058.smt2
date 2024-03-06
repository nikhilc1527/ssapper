; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13068 () Bool)

(assert start!13068)

(assert (=> start!13068 false))

(push 1)

(check-sat)

(pop 1)

