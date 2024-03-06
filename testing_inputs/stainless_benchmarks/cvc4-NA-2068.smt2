; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13088 () Bool)

(assert start!13088)

(assert (=> start!13088 false))

(push 1)

(check-sat)

(pop 1)

