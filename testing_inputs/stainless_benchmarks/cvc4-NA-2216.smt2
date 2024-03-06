; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13402 () Bool)

(assert start!13402)

(assert (=> start!13402 false))

(push 1)

(check-sat)

(pop 1)

