; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13248 () Bool)

(assert start!13248)

(assert (=> start!13248 false))

(push 1)

(check-sat)

(pop 1)

