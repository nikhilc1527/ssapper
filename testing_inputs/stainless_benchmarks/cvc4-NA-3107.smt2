; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15368 () Bool)

(assert start!15368)

(assert (=> start!15368 false))

(push 1)

(check-sat)

(pop 1)

