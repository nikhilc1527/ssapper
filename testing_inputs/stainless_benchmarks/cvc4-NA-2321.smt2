; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13634 () Bool)

(assert start!13634)

(assert (=> start!13634 false))

(push 1)

(check-sat)

(pop 1)

