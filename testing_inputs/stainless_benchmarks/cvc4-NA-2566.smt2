; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14154 () Bool)

(assert start!14154)

(assert (=> start!14154 false))

(push 1)

(check-sat)

(pop 1)

