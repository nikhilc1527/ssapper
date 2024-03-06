; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13096 () Bool)

(assert start!13096)

(assert (=> start!13096 false))

(push 1)

(check-sat)

(pop 1)

