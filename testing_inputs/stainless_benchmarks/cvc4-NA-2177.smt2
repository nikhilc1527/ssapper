; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13324 () Bool)

(assert start!13324)

(assert (=> start!13324 false))

(push 1)

(check-sat)

(pop 1)

