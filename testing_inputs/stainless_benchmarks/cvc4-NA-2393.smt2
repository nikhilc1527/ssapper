; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13778 () Bool)

(assert start!13778)

(assert (=> start!13778 false))

(push 1)

(check-sat)

(pop 1)

