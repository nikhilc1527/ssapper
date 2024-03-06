; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14164 () Bool)

(assert start!14164)

(assert (=> start!14164 false))

(push 1)

(check-sat)

(pop 1)

