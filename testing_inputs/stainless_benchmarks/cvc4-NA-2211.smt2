; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13392 () Bool)

(assert start!13392)

(assert (=> start!13392 false))

(push 1)

(check-sat)

(pop 1)

