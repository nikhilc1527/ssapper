; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13856 () Bool)

(assert start!13856)

(assert (=> start!13856 false))

(push 1)

(check-sat)

(pop 1)

