; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13188 () Bool)

(assert start!13188)

(assert (=> start!13188 false))

(push 1)

(check-sat)

(pop 1)

