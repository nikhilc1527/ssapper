; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13638 () Bool)

(assert start!13638)

(assert (=> start!13638 false))

(push 1)

(check-sat)

(pop 1)

