; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14394 () Bool)

(assert start!14394)

(assert (=> start!14394 false))

(assert (=> start!14394 true))

(push 1)

(check-sat)

(pop 1)

