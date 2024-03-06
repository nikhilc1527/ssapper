; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13206 () Bool)

(assert start!13206)

(assert (=> start!13206 false))

(push 1)

(check-sat)

(pop 1)

