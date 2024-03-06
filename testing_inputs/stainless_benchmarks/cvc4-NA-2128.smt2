; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13226 () Bool)

(assert start!13226)

(assert (=> start!13226 false))

(push 1)

(check-sat)

(pop 1)

