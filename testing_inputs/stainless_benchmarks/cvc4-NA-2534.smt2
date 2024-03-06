; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14090 () Bool)

(assert start!14090)

(assert (=> start!14090 false))

(push 1)

(check-sat)

(pop 1)

