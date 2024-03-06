; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14308 () Bool)

(assert start!14308)

(assert (=> start!14308 false))

(assert (=> start!14308 true))

(push 1)

(check-sat)

(pop 1)

