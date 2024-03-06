; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14368 () Bool)

(assert start!14368)

(assert (=> start!14368 false))

(push 1)

(check-sat)

(pop 1)

