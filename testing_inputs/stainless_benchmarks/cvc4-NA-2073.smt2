; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13098 () Bool)

(assert start!13098)

(assert (=> start!13098 false))

(push 1)

(check-sat)

(pop 1)

