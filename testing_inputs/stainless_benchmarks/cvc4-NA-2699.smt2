; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14442 () Bool)

(assert start!14442)

(assert (=> start!14442 false))

(assert (=> start!14442 true))

(push 1)

(check-sat)

(pop 1)

