; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14298 () Bool)

(assert start!14298)

(assert (=> start!14298 false))

(assert (=> start!14298 true))

(push 1)

(check-sat)

(pop 1)

