; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13368 () Bool)

(assert start!13368)

(assert (=> start!13368 false))

(assert (=> start!13368 true))

(push 1)

(check-sat)

(pop 1)

