; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14416 () Bool)

(assert start!14416)

(assert (=> start!14416 false))

(assert (=> start!14416 true))

(push 1)

(check-sat)

(pop 1)

