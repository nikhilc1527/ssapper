; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14268 () Bool)

(assert start!14268)

(assert (=> start!14268 false))

(assert (=> start!14268 true))

(push 1)

(check-sat)

(pop 1)

