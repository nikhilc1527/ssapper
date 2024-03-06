; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13224 () Bool)

(assert start!13224)

(assert (=> start!13224 false))

(push 1)

(check-sat)

(pop 1)

