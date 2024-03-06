; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13196 () Bool)

(assert start!13196)

(assert (=> start!13196 false))

(push 1)

(check-sat)

(pop 1)

