; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13970 () Bool)

(assert start!13970)

(assert (=> start!13970 false))

(assert (=> start!13970 true))

(push 1)

(check-sat)

(pop 1)

