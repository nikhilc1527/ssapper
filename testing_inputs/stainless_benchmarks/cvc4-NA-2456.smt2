; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13908 () Bool)

(assert start!13908)

(assert (=> start!13908 false))

(push 1)

(check-sat)

(pop 1)

