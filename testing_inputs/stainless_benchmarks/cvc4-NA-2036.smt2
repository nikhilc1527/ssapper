; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13020 () Bool)

(assert start!13020)

(assert (=> start!13020 false))

(push 1)

(check-sat)

(pop 1)

