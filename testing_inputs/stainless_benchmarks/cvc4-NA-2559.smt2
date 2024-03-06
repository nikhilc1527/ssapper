; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14140 () Bool)

(assert start!14140)

(assert (=> start!14140 false))

(push 1)

(check-sat)

(pop 1)

