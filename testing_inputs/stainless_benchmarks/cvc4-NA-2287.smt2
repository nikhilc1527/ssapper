; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13548 () Bool)

(assert start!13548)

(assert (=> start!13548 false))

(push 1)

(check-sat)

(pop 1)

