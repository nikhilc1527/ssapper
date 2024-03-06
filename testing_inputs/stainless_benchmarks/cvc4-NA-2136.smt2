; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13242 () Bool)

(assert start!13242)

(assert (=> start!13242 false))

(push 1)

(check-sat)

(pop 1)

