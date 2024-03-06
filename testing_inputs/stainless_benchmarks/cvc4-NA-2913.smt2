; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14938 () Bool)

(assert start!14938)

(assert (=> start!14938 false))

(push 1)

(check-sat)

(pop 1)

