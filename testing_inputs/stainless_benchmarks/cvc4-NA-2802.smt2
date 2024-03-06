; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14676 () Bool)

(assert start!14676)

(assert (=> start!14676 false))

(push 1)

(check-sat)

(pop 1)

