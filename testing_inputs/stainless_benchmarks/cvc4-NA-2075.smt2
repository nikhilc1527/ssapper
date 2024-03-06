; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13102 () Bool)

(assert start!13102)

(assert (=> start!13102 false))

(push 1)

(check-sat)

(pop 1)

